# Setup Desktop Workstation

## Overview

The following steps will be performed while provisioning your workstation:

Installs the following packages and tools:

- `ansible`
- `apt-transport-https` (on ubuntu)
- `aptitude`
- `code` (Visual Studio Code)
- `curl`
- `deja-dup`
- `docker`
- `git`
- `go` (Version: 1.16.6)
- `chrome` (Google Chrome)
- `gcloud` (Google Cloud SDK)
- `golang`
- `helm` (Version 3)
- `htop`
- `jq`
- `keepassxc`
- `kubectl`
- `minikube`
- `mlocate`
- `pip3`
- `fonts-powerline` (Powerline Fonts)
- `python3`
- `terraform`
- `vim`
- `virtualbox`
- `wget`
- `zsh`

Others:

- oh-my-zsh plugins
  - thefuck
  - zsh-autosuggestions
  - zsh-syntax-highlighting
- MesloLGS NF fonts

## OS support

The ansible playbook is tested and support on the following OS:

- Ubuntu 16.04 / 18.04 / 20.04.3
- Fedora 35

If an error occurs, please create an issue.

## Quick installation

If you just want to get started with your work or update your workstation, run:

```bash
wget -q -O - https://raw.githubusercontent.com/patricklubach/setup-workstation/main/install.sh | bash
```

and reboot your workstation when the provisioning is done. Have fun!

## Useful links

- [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- [powerline fonts](https://github.com/powerline/fonts)
- [vscode](https://github.com/racoon63/vscode)
