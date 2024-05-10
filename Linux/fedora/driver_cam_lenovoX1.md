## Настройка камеры lenovo thinkpad x1 carbon 10

> Ссылки на гайды по установке
https://hansdegoede.dreamwidth.org/27235.html
https://rpmfusion.org/Configuration

1. Подключаем пакеты
```json
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

2. Обновляем пакеты free release (обновление ядра)
```json
sudo dnf update --enablerepo=updates-testing --enablerepo=rpmfusion-free-updates-testing --enablerepo=rpmfusion-nonfree-updates-testing 'kernel*' '*v4l2loopback'
```

3. Установка небходимых пакетов для камеры
```json
sudo dnf install --enablerepo=updates-testing --enablerepo=rpmfusion-free-updates-testing --enablerepo=rpmfusion-nonfree-updates-testing akmod-intel-ipu6
```

> systemctl reboot

