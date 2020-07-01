## This powershell script will retrieve the last 10 entries in the windows eventlog in the security folder ##

get-eventlog -LogName Security | Select-Object -first 10 -Property instanceid,timewritten,message | Format-Table -Wrap

