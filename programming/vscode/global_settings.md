### Глобальные настройки vscode
```json
{
    "deploy.reloaded": {

        "showDeployResultInStatusBar": true,
        "deployOnChangeButton":true,
        "deployOnSaveButton":true,
        "targets": [
            {
                "type": "batch",
                "name": "name deploy",
                "description": "Deploys to",
                "targets": ["end ip", "end ip"]
            },
            {
                "type": "sftp",
                "name": "name deploy",
                "description": "Server",
                "host": "ip address", "port": 22,
                "user": "", "password": "",
                "checkBeforeDeploy": true,
                "dir": "path to remote dir",
                "modes": {"/**/*.py": 777}
            }
        ]
    },
    "workbench.iconTheme": "material-icon-theme",
    "editor.cursorStyle": "block-outline",
    "editor.cursorBlinking": "smooth",
    "editor.fontLigatures": false,
    "editor.fontWeight": "bold",
    "diffEditor.ignoreTrimWhitespace": false,
    "git.alwaysShowStagedChangesResourceGroup": true,
    "git.confirmSync": false,
    "keyboard.dispatch": "keyCode",
    "notebook.lineNumbers": "on",
    "git.autofetch": true,
    "[python]": {
        "editor.formatOnType": true
    },
    "workbench.editorAssociations": {
        "*.sqlite3": "default"
    },
    "react-native-tools.showUserTips": false,
    "volar-service-vetur": "latest",
    "obsidianmd.vaultPath": "/home/matrix/Documents",
    "http.proxyAuthorization": null,
    "window.menuBarVisibility": "toggle",
    // "autoHideSidebar": true,
    "editor.minimap.enabled": false,
    "workbench.editor.showTabs": "multiple",
    "window.newWindowDimensions": "maximized",
    "workbench.startupEditor": "none",
    "liveServer.settings.donotShowInfoMsg": true,
    "liveServer.settings.CustomBrowser": "chrome",
    "explorer.confirmDelete": false,
    "vscode_custom_css.imports": [
    
    ],
    "dateTime.showDayOfMonth": true,
    "dateTime.showMonth": true,
    "cmake.configureOnOpen": true,
    "files.associations": {
        "*.ts": "typescript"
    },
    "git.openRepositoryInParentFolders": "never",
    "hediet.vscode-drawio.resizeImages": null,
    "gitProjectManager.baseProjectsFolders": [
         "/home/matrix/Project/aerodisk"
    ],
    "tabnine.experimentalAutoImports": true,
    "workbench.colorCustomizations": {
        // "tab.activeBorder": "#0d1117",
        // "tab.activeBorderTop": "#0d1117",
        // "tab.activeForeground": "#2958af",
        // "tab.activeModifiedBorder": "#ff0000",
        // "tab.border": "#0d1117",
        // "tab.hoverBorder": "#598DEF00",
        // "tab.hoverForeground": "#d7dae0",
        // "tab.inactiveBackground": "#0d1117",
        // "tab.inactiveForeground": "#676E95",
        // "tab.inactiveModifiedBorder": "#A78CFA",
        // "tab.unfocusedActiveBackground": "#282c34",
        // "tab.unfocusedActiveBorder": "#282c3400",
        // "tab.unfocusedActiveBorderTop": "#282c3400",
        // "tab.unfocusedActiveForeground": "#d7dae0BF",
        // "tab.unfocusedActiveModifiedBorder": "#A78CFA",
        // "tab.unfocusedInactiveModifiedBorder": "#ff0000",


        // "widget.shadow": "#0800ff76",
                // "panelSection.border": "#282c34",
        // "editorLineNumber.foreground": "#2958af",
        // "titleBar.activeBackground": "#ff0000",
        // "titleBar.inactiveBackground": "#282c34",
        // "titleBar.border": "#282c34",
        // "titleBar.activeBorder": "#282c34",
        // "panel.background": "#141619",
        // "panel.border": "#282c34",
        // "panel.dropBackground": "#282c34",
        // "panel.dropBorder": "#282c34",
        // "panelTitle.activeForeground": "#ff0000",
        // "panelTitle.activeBorder": "#ff0000",
        // "editorLineNumber.activeForeground": "#ff0000",
        // "tab.activeBackground": "#1c2532",
        // "editor.background": "#0d1117",
        // "terminal.background": "#0d1117",
        // "terminal.foreground": "#FFFFFF",

        // Другие параметры для ANSI-цветов по вашему выбору
        // "terminal.ansiBlack": "#000000",
        // "terminal.ansiBlue": "#0000FF",
        // "terminal.ansiBrightBlack": "#808080",
        // "terminal.ansiBrightBlue": "#0000FF",
        // "terminal.ansiBrightCyan": "#00FFFF",
        // "terminal.ansiBrightGreen": "#00FF00",
        // "terminal.ansiBrightMagenta": "#FF00FF",
        // "terminal.ansiBrightRed": "#FF0000",
        // "terminal.ansiBrightWhite": "#FFFFFF",
        // "terminal.ansiBrightYellow": "#FFFF00",
        // "terminal.ansiCyan": "#00FFFF",
        // "terminal.ansiGreen": "#005780",
        // "terminal.ansiMagenta": "#800080",
        // "terminal.ansiRed": "#FF0000",
        // "terminal.ansiWhite": "#C0C0C0",
        // "terminal.ansiYellow": "#FFFF00"
    },
    "terminal.integrated.fontFamily": "'Cascadia Code', monospace",
    "terminal.integrated.fontSize": 16,
    "terminal.integrated.lineHeight": 1,
    "terminal.integrated.letterSpacing": 1,
    "terminal.integrated.fontWeight": "bold",
    // "workbench.colorTheme": "Bearded Theme Vivid Purple",
    "workbench.settings.applyToAllProfiles": [
    ],
    "settingsSync.ignoredExtensions": [
        "tabnine.tabnine-vscode"
    ],
    "window.zoomLevel": -1,
  }
```