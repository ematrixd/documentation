# Настройка удаленного debugger для python
## На локальном компьютере

> Данное руководство предпологает что у вас уже установлен vscode

> ip адрес 192.168.5.136 в примерах указан для примера, используйте свой адрес удаленного хоста

1. ( необязательно ) Установка дополнительных утилит для удобства синхронизации локальных файлов проекта с удаленными
```json
sudo apt install inotifywait
```

2. Установка python в vscode ( открываем доп. меню SHIFT + CTRL + P ) вместе с python установится и python-debugger
```json
ext install ms-python.python
```
3. Настройка launch.json конфигурации для удаленного подключения дебагера
- В корне проекта создаем дирректорию .vscode
- В дирректории создаем файл launch.json
- Добавляем в него конфигурацию
```json
{
  "version": "0.2.0",
  "configurations": [
      {
          "name": "Python Debugger: Attach",
          "type": "debugpy",
          "request": "attach",
          "connect": {
              "port": 5678,
              "host": "192.168.5.136"
          },
          "pathMappings": [
              {
                  "localRoot": "${workspaceFolder}",
                  "remoteRoot": "/home/admin/vair"
              }
          ]
      }
  ]
}
```
__name__ - название при запуске дебаггера
__type__ - какую утилиту использовать для дебагга
__request__ - attach означает удаленное подключение
__port__ - порт на котором будет запущен дебаггер на удаленном хосте
__host__ - ip адрес хоста
__localRoot__ - будет использовать дирректорию где создна launch.json
__remoteRoot__ - дирректория проекта на удаленном хосте

- Сохраняем файл

4. ( необязательно ) Для удобства сделайте проброс ssh ключей на удаленный хост
```json
ssh-copy-id root@192.168.5.136
```

5. Пробрасываем тонель на удаленный хост
```json
ssh -2 -L 5678:localhost:5678 -i identityfile root@192.168.5.136
```

## На удаленном хосте

1. Установка debugpy в вирутальное окружение или глобально
- Для установки глобально просто выполните команду
```json
pip3 install --upgrade debugpy
```
Для установки в виртуальное окружение, сначало выполните активацию в окружение __source venv/bin/activate__

2. ( необязательно )Раскоментируйте строчку в sshd_config
```
AllowTcpForwarding yes
```
перезапустите сервис sshd.service

3. Переходим в дирректорию проекта и запускаем debugger
```json
python3 -m debugpy --listen 192.168.5.136:5678 --wait-for-client -m wsgi
```
> Если debugpy установлен в виртуальное окружение, перед запуском debugpy активируйте виртуальное окружение

> После перейдите в vscode поставте точку останова, и запустите python debug через файл launch.json. В правом верхнем углу нажмите на стрелочку открытия меню рядом с кнопкой запуска дебаггера. Выбирете Python Debugger: Debug using launch.json


## Синхронизация файлов проекта

> Можно настроить deploy reloader в vscode

> Создать сервис systemd который будет отслеживать изменение файлов в дирректории

### Создание сервиса мониторинга изменения файлов в дирректории

1. Создаем в /home/<user_name>/ дирректории файл inotifywait.sh
```json
#!/bin/bash

# Путь к директории проекта
PROJECT_DIR=<путь до дирректории проекта> # Пример: /home/admin/vair/
DESTINATION_DIR=<путь до дирректории проекта на удаленном хосте>
HOST=root@<ip host>

# Переход в директорию проекта
cd "$PROJECT_DIR" || exit

# Отслеживание изменений в директории для всех файлов, включая вложенные директории
inotifywait -m -r --monitor -e modify,create,delete "$PROJECT_DIR" |
while read -r path action file; do
    # Проверяем, что файл имеет расширение .py, .sh . Добавляйте любые файлы с нужым вам расширением
    if [[ "$file" == *.py || "$file" == *.sh ]]; then
        # Формируем путь к файлу относительно директории проекта
        relative_path=$(echo "$path" | awk -F "$PROJECT_DIR" '{print $2}')
        # Копируем измененный файл с помощью rsync
        # echo "File '$file' $action in directory $path$file on directory $DESTINATION_DIR/$relative_path"  # Выводим сообщение о действии
        scp "$path$file" "$HOST":"$DESTINATION_DIR/$relative_path"
    fi
done
```
2. Добавить разрешене на исполнение
```
chmod +x inorifywait.sh
```

3. Создаем файл сервиса
```
sudo vim /etc/systemd/system/auto_rsync.service
```

```json
[Unit]
Description=Auto Commit Service
After=network.target

[Service]
Group=<имя пользователя>
User=<имя пользователя>
Type=simple
ExecStart=/bin/bash -c '/home/<user_name>/inotifywait.sh'

[Install]
WantedBy=multi-user.target
```

4. Инициализируем и запускаем сервис
```
sudo systemctl daemon-reload
```
```
sudo systemctl enable auto_rsync.service
```
```
sudo systemctl start auto_rsync.service
```
