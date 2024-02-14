#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo "=> Provision configurations"
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    cp -f $SCRIPT_DIR/linux/keybindings.json $HOME/.config/Code/User/keybindings.json
    cp -f $SCRIPT_DIR/linux/settings.json $HOME/.config/Code/User/settings.json
elif [[ "$OSTYPE" == "darwin"* ]]; then
    cp -f $SCRIPT_DIR/mac/keybindings.json $HOME/.config/Code/User/keybindings.json
    cp -f $SCRIPT_DIR/mac/settings.json $HOME/.config/Code/User/settings.json
fi

echo "=> Install extensions"

code --install-extension "4ops.terraform"
code --install-extension aaron-bond.better-comments
code --install-extension batisteo.vscode-django
code --install-extension chakrounanas.turbo-console-log
code --install-extension christian-kohler.path-intellisense
code --install-extension chrmarti.regex
code --install-extension davidanson.vscode-markdownlint
code --install-extension dionmunk.vscode-notes
code --install-extension donjayamanne.python-environment-manager
code --install-extension donjayamanne.python-extension-pack
code --install-extension eamodio.gitlens
code --install-extension emilast.logfilehighlighter
code --install-extension esbenp.prettier-vscode
code --install-extension golang.go
code --install-extension googlecloudtools.cloudcode
code --install-extension gruntfuggly.todo-tree
code --install-extension hashicorp.terraform
code --install-extension jinliming2.vscode-go-template
code --install-extension kevinrose.vsc-python-indent
code --install-extension mads-hartmann.bash-ide-vscode
code --install-extension magicstack.magicpython
code --install-extension monokai.theme-monokai-pro-vscode
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-python.black-formatter
code --install-extension ms-python.debugpy
code --install-extension ms-python.flake8
code --install-extension ms-python.isort
code --install-extension ms-python.pylint
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode-remote.remote-ssh
code --install-extension ms-vscode-remote.remote-ssh-edit
code --install-extension ms-vscode.remote-explorer
code --install-extension msyrus.go-doc
code --install-extension njpwerner.autodocstring
code --install-extension plex.vscode-regolint
code --install-extension rangav.vscode-thunder-client
code --install-extension redhat.vscode-yaml
code --install-extension softwaredotcom.music-time
code --install-extension tim-koehler.helm-intellisense
code --install-extension timonwong.shellcheck
code --install-extension tsandall.opa
code --install-extension visualstudioexptteam.intellicode-api-usage-examples
code --install-extension visualstudioexptteam.vscodeintellicode
code --install-extension vscode-icons-team.vscode-icons
code --install-extension wholroyd.jinja
code --install-extension yzhang.markdown-all-in-one

echo "=> Please restart Visual Studio Code to make sure all extensions are enabled!"
