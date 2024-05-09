#!/bin/bash

REPO_PATH="/home/matrix/Documents"
# Путь к вашему репозиторию

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
