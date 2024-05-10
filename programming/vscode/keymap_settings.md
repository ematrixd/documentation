### Настройка хоткеев в стиле emacs
```json
[
    {
        "key": "ctrl+x ctrl+i",
        "command": "extension.deploy.reloaded.currentFileOrFolder"
    },
    {
        "key": "ctrl+x ctrl+z",
        "command": "editor.action.clipboardCutAction"
    },
    {
        "key": "ctrl+x",
        "command": "-editor.action.clipboardCutAction"
    },
    {
        "key": "ctrl+u",
        "command": "emacs.C-k",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "ctrl+k",
        "command": "-emacs.C-k",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "ctrl+x ctrl+j",
        "command": "python.execInTerminal-icon"
    },
    {
        "key": "ctrl+k y",
        "command": "editor.action.revealDefinition",
        "when": "editorHasDefinitionProvider && editorTextFocus && !isInEmbeddedEditor"
    },
    {
        "key": "f12",
        "command": "-editor.action.revealDefinition",
        "when": "editorHasDefinitionProvider && editorTextFocus && !isInEmbeddedEditor"
    },
    {
        "key": "ctrl+q",
        "command": "-workbench.action.quit"
    },
    {
        "key": "ctrl+shift+d",
        "command": "-workbench.view.debug",
        "when": "viewContainer.workbench.view.debug.enabled"
    },
    {
        "key": "ctrl+shift+d",
        "command": "editor.action.deleteLines",
        "when": "textInputFocus && !editorReadonly"
    },
    {
        "key": "ctrl+shift+k",
        "command": "-editor.action.deleteLines",
        "when": "textInputFocus && !editorReadonly"
    },
    {
        "key": "ctrl+x u",
        "command": "-closeFindWidget",
        "when": "editorFocus && findWidgetVisible"
    },
    {
        "key": "ctrl+x u",
        "command": "-emacs.C-x_u",
        "when": "editorTextFocus && !editorReadonly"
    },
    {
        "key": "ctrl+k t",
        "command": "workbench.action.terminal.moveToEditor"
    },
    {
        "key": "ctrl+alt+]",
        "command": "workbench.action.increaseViewSize"
    },
    {
        "key": "ctrl+alt+[",
        "command": "workbench.action.decreaseViewSize"
    },
    {
        "key": "ctrl+x ctrl+b",
        "command": "workbench.action.toggleSidebarVisibility"
    },
    {
        "key": "ctrl+b",
        "command": "-workbench.action.toggleSidebarVisibility"
    },
    {
        "key": "ctrl+x z",
        "command": "-workbench.action.toggleZenMode"
    },
    {
        "key": "ctrl+x z",
        "command": "redo"
    },
    {
        "key": "ctrl+shift+z",
        "command": "-redo"
    },
    {
        "key": "ctrl+shift+g shift+b",
        "command": "-gitlens.toggleCodeLens",
        "when": "editorTextFocus && !gitlens:disabled && !gitlens:disabledToggleCodeLens && config.gitlens.keymap == 'chorded'"
    },
    {
        "key": "ctrl+shift+g l",
        "command": "gitlens.showQuickCommitFileDetails",
        "when": "editorTextFocus && !gitlens:disabled && config.gitlens.keymap == 'chorded'"
    },
    {
        "key": "ctrl+shift+g c",
        "command": "-gitlens.showQuickCommitFileDetails",
        "when": "editorTextFocus && !gitlens:disabled && config.gitlens.keymap == 'chorded'"
    },
    {
        "key": "ctrl+shift+g c",
        "command": "git.checkout"
    },
    {
        "key": "ctrl+shift+g ctrl+p",
        "command": "git.pullFrom"
    },
    {
        "key": "ctrl+shift+g p",
        "command": "git.pull"
    },
    {
        "key": "ctrl+shift+b",
        "command": "npm.runScript"
    },
    {
        "key": "ctrl+shift+alt+b",
        "command": "workbench.action.tasks.build",
        "when": "taskCommandsRegistered"
    },
    {
        "key": "ctrl+shift+b",
        "command": "-workbench.action.tasks.build",
        "when": "taskCommandsRegistered"
    },
    {
        "key": "ctrl+x n",
        "command": "explorer.newFile"
    },
    {
        "key": "ctrl+c ctrl+f",
        "command": "workbench.action.focusActivityBar"
    },
    {
        "key": "ctrl+c ctrl+a",
        "command": "workbench.action.toggleActivityBarVisibility"
    },
    {
        "key": "ctrl+n",
        "command": "list.focusDown",
        "when": "listFocus && !inputFocus"
    },
    {
        "key": "down",
        "command": "-list.focusDown",
        "when": "listFocus && !inputFocus"
    },
    {
        "key": "ctrl+p",
        "command": "list.focusUp",
        "when": "listFocus && !inputFocus"
    },
    {
        "key": "up",
        "command": "-list.focusUp",
        "when": "listFocus && !inputFocus"
    },
    {
        "key": "ctrl+c ctrl+b",
        "command": "simpleBrowser.show"
    },
    {
        "key": "ctrl+c ctrl+v",
        "command": "livePreview.start"
    },
    {
        "key": "win+c",
        "command": "workbench.action.terminal.sendSequence",
        "args": {
            "text": "\u0003"
        },
        "when": "terminalFocus"
    },
    {
        "key": "win+x",
        "command": "workbench.action.terminal.sendSequence",
        "args": {
            "text": "\u0018"
        },
        "when": "terminalFocus"
    },
    {
        "key": "ctrl+alt+t",
        "command": "openInIntegratedTerminal"
    },
    {
        "key": "ctrl+c w",
        "command": "workbench.action.addRootFolder"
    },
    {
        "key": "ctrl+c k",
        "command": "workbench.action.terminal.killEditor",
        "when": "terminalEditorFocus && terminalFocus && terminalHasBeenCreated && resourceScheme == 'vscode-terminal' || terminalEditorFocus && terminalFocus && terminalProcessSupported && resourceScheme == 'vscode-terminal'"
    },
    {
        "key": "ctrl+w",
        "command": "-workbench.action.terminal.killEditor",
        "when": "terminalEditorFocus && terminalFocus && terminalHasBeenCreated && resourceScheme == 'vscode-terminal' || terminalEditorFocus && terminalFocus && terminalProcessSupported && resourceScheme == 'vscode-terminal'"
    },
    {
        "key": "ctrl+c k",
        "command": "workbench.action.terminal.kill"
    },
    {
        "key": "ctrl+c f",
        "command": "explorer.newFolder"
    },
    {
        "key": "ctrl+c t",
        "command": "vsc-telegram.open"
    },
    {
        "key": "ctrl+c r",
        "command": "opensshremotes.openEmptyWindow"
    },
    {
        "key": "ctrl+c ctrl+k",
        "command": "workbench.action.closePanel"
    },
    {
        "key": "ctrl+shift+g ctrl+s",
        "command": "gitlens.showQuickRepoStatus",
        "when": "!gitlens:disabled && config.gitlens.keymap == 'alternate'"
    },
    {
        "key": "alt+s",
        "command": "-gitlens.showQuickRepoStatus",
        "when": "!gitlens:disabled && config.gitlens.keymap == 'alternate'"
    },
    {
        "key": "ctrl+c d",
        "command": "discord.enable"
    },
    {
        "key": "ctrl+shift+g ctrl+n",
        "command": "gitProjectManager.openProject"
    },
    {
        "key": "ctrl+alt+p",
        "command": "-gitProjectManager.openProject"
    },
    {
        "key": "ctrl+alt+e ctrl+s",
        "command": "workbench.view.remote"
    },
    {
        "key": "ctrl+alt+e ctrl+w",
        "command": "remote-explorer.connectToFolderInCurrentWindow"
    },
    {
        "key": "ctrl+alt+e ctrl+c",
        "command": "remote-explorer.configureSsh"
    },
    {
        "key": "ctrl+alt+e ctrl+n",
        "command": "remote-explorer.connectToFolderInNewWindow"
    }
]
```
