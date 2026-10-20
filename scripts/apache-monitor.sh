#!/bin/bash

echo "===== Apache Service Monitor ====="

if systemctl is-active --quiet apache2; then
    echo "Apache is running."
else
    echo "Apache is not running. Attempting to restart..."

    sudo systemctl start apache2

    if systemctl is-active --quiet apache2; then
        echo "Apache restarted successfully."
    else
        echo "ERROR: Apache could not be started."
        exit 1
    fi
fi

echo "===== Monitoring Completed ====="
