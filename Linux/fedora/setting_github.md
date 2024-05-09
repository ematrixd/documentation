## Первоначальная настройка github

1. Настройка глобальных пользователей и почту
```json
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
gh auth login
```

## Добавление дирректорий с репозиторями в глобальный конфиг
```json
git config --global --add safe.directory /home/matrix/Documents
```