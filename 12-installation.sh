#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error:: Please run this script with root previlege"
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing the Mysql is a failure"
    exit 1
else
    echo "Installing the Mysql is a success"
fi

