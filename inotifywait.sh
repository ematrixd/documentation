#!/bin/bash

# Путь к директории documentation
DOCUMENTATION_DIR=/home/matrix/Documents/documentation/

# Переход в директорию documentation
cd "$DOCUMENTATION_DIR" || exit

# Отслеживание изменений в директории для всех файлов, включая вложенные директории
inotifywait -m -r --monitor -e modify,create,delete "$DOCUMENTATION_DIR" |
while read -r path action file; do
    # Проверяем, что файл имеет расширение .md
    if [[ "$file" == *.md ]]; then
        echo "File '$file' $action in directory $path"  # Выводим сообщение о действии
        # Запускаем скрипт для автоматического коммита
        /home/matrix/Documents/documentation/autocommit.sh
    fi
done
