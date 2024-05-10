### Отключение Wayland

```
sudo nano /etc/gdm/custom.conf
```

> Раскоментировать строку
WaylandEnable=false

### bashrc файл

> Изменяем строку ввода

```
PS1="\[\033[1;34m\]\u \w\\n$\[\033[0;33m\] "
```