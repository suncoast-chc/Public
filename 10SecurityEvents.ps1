get-eventlog -LogName Security | Select-Object -first 10 -Property instanceid,timewritten,message | Format-Table -Wrap

