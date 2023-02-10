function Get-Bookmarks {
    [CmdletBinding()]
    Param(
    [Parameter(Mandatory=$true)]
    [string]$ComputerName,
    [string]$UserName
    )

    Process {
        $cred = Get-Credential
        $fullName = $ComputerName + ""
        $session = New-PSSession -ComputerName $ComputerName -Credential $cred
        [string]$path = "C:\Users\" + $userName + "\AppData\Local\Google\Chrome\User Data\Default\Bookmarks"
        $checkPath = Test-Path -Path $path
        if ($checkPath -eq $True) {
            Copy-Item -Path $path -Destination "C:\Intel" -FromSession $session
        }
    }
}
