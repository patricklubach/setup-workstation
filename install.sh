#!/usr/bin/env bash

# Usage:
# wget -q -O - https://raw.githubusercontent.com/patricklubach/setup-workstation/master/install.sh | bash

set -ex

prepare_ubuntu_based() {
    # Update and upgrade workstation
    sudo apt update
    sudo apt upgrade -y
    sudo apt autoremove -y

    # Install python3 to install ansible in the next step
    sudo apt install -y python3 \
                        python3-pip \
                        git
}

prepare_fedora_based() {
    # Update and upgrade workstation
    sudo dnf update -y

    # Install python3 to install ansible in the next step
    sudo dnf install -y python3 \
                        python3-pip \
                        git
}

source <(grep ID /etc/os-release)

if [[ $ID == "fedora" ]]; then
    prepare_fedora_based
fi

if [[ $ID == "ubuntu" ]]; then
    prepare_ubuntu_based
fi

pip3 install --user ansible

# Add ansible bin to PATH
export "PATH=$PATH:$HOME/.local/bin"

SETUP_DIR=$HOME/.setup-workstation

# Clone respository
if [[ ! -d $HOME/.setup-workstation ]]
then
    git clone --progress https://github.com/patricklubach/setup-workstation.git ${SETUP_DIR}
fi

# Switch to workdir
cd ${SETUP_DIR}

# Provision workstation
ansible-playbook playbook.yml --ask-become-pass 2>&1 | tee -a provision.log
