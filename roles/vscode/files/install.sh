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

code --install-extension aaron-bond.better-comments
code --install-extension atlassian.atlascode
code --install-extension ChakrounAnas.turbo-console-log
code --install-extension christian-kohler.path-intellisense
code --install-extension CoenraadS.bracket-pair-colorizer-2
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension deerawan.vscode-faker
code --install-extension eamodio.gitlens
code --install-extension emilast.LogFileHighlighter
code --install-extension esbenp.prettier-vscode
code --install-extension golang.go
code --install-extension Gruntfuggly.todo-tree
code --install-extension hashicorp.terraform
code --install-extension johnpapa.vscode-peacock
code --install-extension kiteco.kite
code --install-extension magicstack.MagicPython
code --install-extension mechatroner.rainbow-csv
code --install-extension mohsen1.prettify-json
code --install-extension monokai.theme-monokai-pro-vscode
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension ms-vscode-remote.remote-containers
code --install-extension msyrus.go-doc
code --install-extension rangav.vscode-thunder-client
code --install-extension redhat.fabric8-analytics
code --install-extension redhat.vscode-commons
code --install-extension redhat.vscode-yaml
code --install-extension softwaredotcom.music-time
code --install-extension softwaredotcom.swdc-vscode
code --install-extension vscode-icons-team.vscode-icons

echo "=> Please restart Visual Studio Code to make sure all extensions are enabled!"
