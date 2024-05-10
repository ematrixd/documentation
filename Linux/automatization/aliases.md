> Создавать alias в файле .bash_aliases, в домашней дирректории

> После добавления/изменения нового alias перезапустить bashrc (source ~/.bashrc)

> Подключение шары
```
alias mount_share="sudo mount -t nfs <ip>:<path_share> <path_mount>"
```

> Запуск vpn
```
alias vpn_aerodisk="nmcli connection up <name vpn>"
```

> Запуск RDP подключения
```
alias work_vm="xfreerdp /v:<ip RDP> /u:<user_name> /p:<user_pass> /size:2240x1400 /sound:sys:alsa /microphone:sys:pulse /gfx /video &"
```

> Alias с функцией для проброса параметров во время выполнения alias
```
alias copyid="function _copyid() { ssh-copy-id root@\"\$1\"; }; _copyid" 
```
