
function ListUsersADlastLogon (){
    
    Get-ADUser -Filter {Enabled -eq $TRUE} -Properties Name,SamAccountName,LastLogonDate | Where {($_.LastLogonDate -lt (Get-Date).AddDays(-30)) -and ($_.LastLogonDate -ne $NULL)} | Sort | Select Name,SamAccountName,LastLogonDate
}



