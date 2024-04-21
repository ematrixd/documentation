#!/bin/bash

# Путь к директории documentation
DOCUMENTATION_DIR=/home/matrix/Documents/documentation/

# Переход в директорию documentation
cd $DOCUMENTATION_DIR

# Отслеживание изменений в директории для файлов с расширением .md
inotifywait -m -r -e modify,create,delete --include '\.md$' $DOCUMENTATION_DIR |
while read path action file; do
    echo "File '$file' $action in directory $path"  # Выводим сообщение о действии
    # Запускаем скрипт для автоматического коммита
    /home/matrix/Documents/documentation/autocommit.sh
done
