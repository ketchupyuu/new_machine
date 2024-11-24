#!/bin/bash
set -x

# Create ssh folders and configs
SSH_DIR="${HOME}/.ssh"
AUTHORIZED_KEYS="${SSH_DIR}/authorized_keys"
PRIVATE_KEY="${SSH_DIR}/homekey"
if [ ! -d "${SSH_DIR}" ]; then
    echo "Creathing .ssh directory"
    mkdir -vp "${SSH_DIR}"
    chmod 700 ${SSH_DIR}
fi

if [ ! -f "${AUTHORIZED_KEYS}" ]; then
    echo "Creating authorized keys file"
    cp -pv ./files/authorized_keys "${AUTHORIZED_KEYS}"
    chmod 600 "${AUTHORIZED_KEYS}"
fi

echo ".ssh directory and authorized_keys file are set up with proper permissions."

if [ ! -f "${PRIVATE_KEY}" ]; then
    echo "Creating dummy ssh key file"
    touch "${PRIVATE_KEY}"
    chmod 600 ${PRIVATE_KEY}
fi
