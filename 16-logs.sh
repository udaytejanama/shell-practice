#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGPATH=/var/log/shell-script
SCRIPTNAME=$(echo $0 | awk -F "." '{print $1}')
LOGFILE="$LOGPATH/$SCRIPTNAME.log"
#LOGFILE=$(echo $0 | cut -d "." -f1) using cut command

mkdir -p $LOGPATH
echo "Script executed at the date : $(date)" | tee -a $LOGFILE
USERID=$(id -u)
if [ $USERID -ne 0 ]; then
    echo -e "$R FAILED  $N Please execute the script: $0 with root privilege" | tee -a $LOGFILE
    exit 1
fi

VALIDATE (){
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2 is a $R FAILURE $N"
        exit 1
    else 
        echo -e "Installing $2 is a $G SUCCESS $N"
    fi
}

dnf list installed mysql &>> $LOGFILE
if [ $? -ne 0 ]; then
    dnf install mysql -y &>> $LOGFILE
    VALIDATE $? "Mysql"
else
    echo -e "Mysql is already exist.. $Y SKIPPING $N" | tee -a $LOGFILE
fi

dnf list installed nginx &>> $LOGFILE
if [ $? -ne 0 ]; then
    dnf install nginx -y &>> $LOGFILE
    VALIDATE $? "nginx"
else
    echo -e "nginx is already exist.. $Y SKIPPING $N" | tee -a $LOGFILE
fi

dnf list installed python3 &>> $LOGFILE
if [ $? -ne 0 ]; then
    dnf install python3 -y &>> $LOGFILE
    VALIDATE $? "python3"
else
    echo -e "python3 is already exist.. $Y SKIPPING $N" | tee -a $LOGFILE
fi