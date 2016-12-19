# Use this file to run your own startup commands

## Prompt Customization
<#
.SYNTAX
    <PrePrompt><CMDER DEFAULT>
    λ <PostPrompt> <repl input>
.EXAMPLE
    <PrePrompt>N:\Documents\src\cmder [master]
    λ <PostPrompt> |
#>

[ScriptBlock]$PrePrompt = {

}

# Replace the cmder prompt entirely with this.
# [ScriptBlock]$CmderPrompt = {}

[ScriptBlock]$PostPrompt = {

}

## <Continue to add your own>
# custom alias
$sublimeRoot = "D:\Program Files (x86)\Sublime Text 3\sublime_text.exe"
$userHome = "C:\Users\15050107"

Set-Alias z j
Set-Alias open explorer
Set-Alias st $sublimeRoot


function cnpm {
    npm --registry=https://registry.npm.taobao.org --cache=$userHome\.npm\.cache\cnpm --disturl=https://npm.taobao.org/dist --userconfig=$userHome\.cnpmrc $args
}

function mip
{
    param([int]$version=4)
    $ComputerName = ''

    if ($version -eq 4)
    {
        "IPV4:"
        [System.Net.Dns]::GetHostAddresses($ComputerName) |
        Where-Object {
            $_.AddressFamily -eq 'InterNetwork'
        } |
        Select-Object -ExpandProperty IPAddressToString
    }
    elseif ($version -eq 6)
    {
        "IPV6:"
        [System.Net.Dns]::GetHostAddresses($ComputerName) |
        Where-Object {
            $_.AddressFamily -eq 'InterNetworkV6'
        } |
        Select-Object -ExpandProperty IPAddressToString
    }
    else
    {
         "IP:"
         [System.Net.Dns]::GetHostAddresses($ComputerName).IPAddressToString
    }
}

# Import modules
# Load posh-git example profile
. 'C:\Users\15050107\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1'


# Load Jump-Location profile
Import-Module 'C:\Users\15050107\Documents\WindowsPowerShell\Modules\Jump.Location\Jump.Location.psd1'