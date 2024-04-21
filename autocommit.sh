#!/bin/bash

# Путь к вашему репозиторию
REPO_PATH=/home/matrix/Documents/documentation/

# Переход в директорию с репозиторием
cd $REPO_PATH

# Добавление всех измененных файлов
git add .

# Проверка наличия изменений
if [[ -n "$(git status --porcelain)" ]]; then

    # Коммит изменений
    git commit -m "autocommit: change doc file" || exit 0

    # Отправка изменений в удаленный репозиторий
    git push
fi
