#!/bin/bash

# Путь к вашему репозиторию
REPO_PATH=/путь/к/вашему/репозиторию

# Переход в директорию с репозиторием
cd $REPO_PATH

# Добавление всех измененных файлов
git add .

# Проверка наличия изменений
if [[ -n "$(git status --porcelain)" ]]; then
    # Настройка пользователя для коммита
    git config --local user.email "e.matrixd@e.ematrixd.ru"
    git config --local user.name "ematrixd"

    # Коммит изменений
    git commit -m "autocommit: change doc file" || exit 0

    # Отправка изменений в удаленный репозиторий
    git push origin main
fi
