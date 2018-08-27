# OraclePS

## Description

Connects PowerShell to Oracle using ODP.NET Managed Driver

Authored by Henry Lawrance

## Installing

Extract /files/ODP.NET_Managed_ODAC12cR4.7z

Run cmd as administrator, navigate to C:\ODP.NET_Managed_ODAC12cR4, and run:
`install_odpm.bat C:\oracle\instantclient_10_2 both`

### Inspecting the module

Best practice is that you inspect modules prior to installing them. You can do this by saving the module to a local path:

``` PowerShell
PS> Save-Module -Name OraclePS -Path <path>
```

### Installing the module

Install-Module ./OraclePS.psm1


