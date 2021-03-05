function Welcome-Message
{
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true,HelpMessage="Enter names of size between 10-100 characters")]
        [ValidateLength(10,100)]         
		    [string] $message
    )

    Process
    {
        Write-Host ("Welcome" + $message + "!")
    }
}

Welcome-Message "to your Kodak moment!"

Welcome-Message "Now Burns, release the hounds!!! Muahaha!"

Welcome-Message "Failure!" # This message will fail due to the character length. 
