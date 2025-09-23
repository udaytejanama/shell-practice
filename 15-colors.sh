#!/bin/bash

R="\e[31m"
R="\e[32m"
R="\e[33m"
N="\e[0m"

USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo -e "$R FAILED  $N Please execute the script: $0 with root privilege"
    exit 1
fi

VALIDATE (){
    if [ $1 -ne 0 ]; then
        echo "Installing $2 is a $R FAILURE $N"
        exit 1
    else 
        echo "Installing $2 is a $G SUCCESS $N"
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "Mysql"
else
    echo "Mysql is already exist.. $Y SKIPPING $N"
fi

dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo "nginx is already exist.. $Y SKIPPING $N"
fi

dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo "python3 is already exist.. $Y SKIPPING $N"
fi