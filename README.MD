# OraclePS

## Description

Connects PowerShell to Oracle using ODP.NET Managed Driver

Authored by Henry Lawrance

## Installing ODP.NET Managed Driver

#### Not Required - If you install the driver to a different location, change the path in OraclePS.psm1

Extract /files/ODP.NET_Managed_ODAC12cR4.7z

Run cmd as administrator, navigate to C:\ODP.NET_Managed_ODAC12cR4, and run:
`install_odpm.bat C:\oracle\instantclient_10_2 both`

### Import the module

Import-Module ./OraclePS.psm1

### Using the module

`PS> Invoke-Oracmd -Query "select * from spriden where spriden_id = 'X10000000'" -ServerAddress xxx.xxx.xxx.xx -ServiceName 'PROD.domain.com' -Username 'awesomeadmin' -Password 'supersecret'`

`PS> Invoke-Oracmd -Query "select * from spriden where spriden_id = 'X10000000'" -ServerAddress xxx.xxx.xxx.xx -ServiceName 'PROD.domain.com' -Cred (Get-Credential)'`