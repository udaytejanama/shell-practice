#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo "Please execute the script: $0 with root privilege"
fi

VALIDATE (){
    if [ $1 -ne 0 ]; then
        echo "Installing $2 is a failure"
    else 
        echo "Installing $2 is a success"
    fi
}

dnf install mysql -y
VALIDATE $? "Mysql"

dnf install nginx  -y
VALIDATE $? "Nginx"

dnf install python3 -y
VALIDATE $? "Python"