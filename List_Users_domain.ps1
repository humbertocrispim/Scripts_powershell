    # --- Variaveis para setar a data de inicio e fim

$startDate = Get-Date "2022-01-01" # Data de início 
$endDate = Get-Date "2023-04-18"   # Data de término
    # -------------------------------------------------

    

function ListUsersAD (){
    Get-ADUser -Properties sAMAccountName,whenCreated -Filter {
        (whenCreated -ge $startDate) -and (whenCreated -le $endDate)} | Select-Object sAMAccountName,whenCreated | Export-Csv -Path C:\allusers2.csv
}