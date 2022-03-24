#!/bin/sh
G_USERNAME=$(zenity \
--entry \
--title="Gordic Cloud" \
--text="Enter your Username")
if [ "$?" -eq "0" ]
then
G_PASSWORD=$(zenity \
--entry \
--title="Gordic Cloud" \
--text="Enter your Password" \
--hide-text)
else
exit 0
fi
if [ "$?" -eq "0" ]
then
xfreerdp /gu:"$G_USERNAME" /u:"$G_USERNAME" /gp:"$G_PASSWORD" /p:"$G_PASSWORD" /kbd:"0x00000409" /gd:FPO /g:app.fpobk.cz /v:FPO-BRK.fpo.local /d:FPO /load-balance-info:"tsv://MS Terminal Services Plugin.1.ASI" /cert:ignore /app:"||wslgsql" /shell:"||wslgsql" /rfx +fonts +clipboard +compression
zenity --info \
--text="Gordic Cloud was terminated"
else
exit 0
fi
