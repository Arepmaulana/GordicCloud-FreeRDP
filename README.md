# GordicCloud-FreeRDP
Commands and configuration required for connecting to Gordic Cloud with FreeRDP

This command requires FreeRDP and changing both usernames (almost 100% will be same) then putting your password 2 times and finally you will be welcomed by familiar screen.
```
xfreerdp /gu:"<USERNAME>" /u:"<USERNAME>" /kbd:"0x00000409" /gd:FPO /g:app.fpobk.cz /v:FPO-BRK.fpo.local /d:FPO /load-balance-info:"tsv://MS Terminal Services Plugin.1.ASI" /cert:ignore /app:"||wslgsql" /shell:"||wslgsql" /rfx +fonts +clipboard +compression
```
