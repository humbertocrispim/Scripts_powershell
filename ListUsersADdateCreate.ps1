
# 

#$startDate = Get-Date "2023-01-01" # Data de início
#$endDate = Get-Date "2023-04-16"   # Data de término
Get-ADUser -Filter {(whenCreated -ge $startDate) -and (whenCreated -le $endDate)} -Properties whenCreated
Get-ADComputer -Filter {(whenCreated -ge $startDate) -and (whenCreated -le $endDate)} -Properties whenCreated



function ListUsersAD ($type,$filter) {
    
    
        if ($type -eq "usuarios") {

            Get-ADUser -Filter {(whenCreated -ge $startDate) -and (whenCreated -le $endDate)} -Properties whenCreated
            <# Action to perform if the condition is true #>
        }
        elseif ($type -eq "computadores") {

            Get-ADComputer -Filter {(whenCreated -ge $startDate) -and (whenCreated -le $endDate)} -Properties whenCreated
            <# Action when this condition is true #>
        }
        #listusers = Get-ADUser -Filter {(whenCreated -ge $startDate) -and (whenCreated -le $endDate)} -Properties whenCreated
        else {
            Write-Host "Parâmetro inválido. Use '-u' para listar usuários ou '-c' para listar computadores."
        }
 


}




#ListUsersAD.