# Настройка токена на yandex disk

> Гайд по подулючению токена  
https://yandex.ru/dev/disk-api/doc/ru/concepts/quickstart#quickstart__oauth

1. Подключение токкена по гайду

2. Создаем демон для отслеживания изменений в дирректории и отправки API на yandex disk
```json
#!/bin/bash

FILENAME="somefile.txt"
FILEPATH="/home/matrix/$FILENAME"
TOKEN=''

# Путь к директории прослушивания
DEPLOY_DIR=/home/matrix/

function parseJson()
{
    local output
    regex="(\"$1\":[\"]?)([^\",\}]+)([\"]?)"
    [[ $2 =~ $regex ]] && output=${BASH_REMATCH[2]}
    echo $output
}

# Функция для отправки файла
function sendFile
{
    echo "Start sending a file: $1"

    # Получаем URL для загрузки файла
    sendUrlResponse=`curl -s -H "Authorization: OAuth $TOKEN" https://cloud-api.yandex.net:443/v1/disk/resources/upload/?path=app:/$FILENAME&overwrite=true`
    sendUrl=$(parseJson 'href' $sendUrlResponse)

    # Отправляем файл
    # echo `curl -s -T $FILEPATH -H "Authorization: OAuth $TOKEN" $sendUrl`
    sendFileResponse=`curl -s -T $FILEPATH -H "Authorization: OAuth $TOKEN" $sendUrl`

    echo "Completing a file upload: $1"
}

# Переход в директорию
cd "$DEPLOY_DIR" || exit

# Отслеживание изменений в директории для всех файлов, включая вложенные директории
inotifywait -m -r --monitor -e modify,create,delete "$DEPLOY_DIR" |
while read -r path action file; do
    sendFile ""$path$file""
done
```
3. Создание файла сервиса systemd
```json
[Unit]
Description=Auto Commit Service
After=network.target

[Service]
Type=simple
ExecStart=/bin/bash -c '<path to sh file>'

[Install]
WantedBy=multi-user.target
```

