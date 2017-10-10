﻿#region Apply settings
Set-PSFConfig -Module PSFramework -Name 'message.info.minimum' -Value 1 -Initialize -Validation "integer0to9" -Handler { [PSFramework.Message.MessageHost]::MinimumInformation = $args[0] } -Description "The minimum required message level for messages that will be shown to the user."
Set-PSFConfig -Module PSFramework -Name 'message.info.maximum' -Value 3 -Initialize -Validation "integer0to9" -Handler { [PSFramework.Message.MessageHost]::MaximumInformation = $args[0] } -Description "The maximum message level to still display to the user directly."
Set-PSFConfig -Module PSFramework -Name 'message.verbose.minimum' -Value 4 -Initialize -Validation "integer0to9" -Handler { [PSFramework.Message.MessageHost]::MinimumVerbose = $args[0] } -Description "The minimum required message level where verbose information is written."
Set-PSFConfig -Module PSFramework -Name 'message.verbose.maximum' -Value 6 -Initialize -Validation "integer0to9" -Handler { [PSFramework.Message.MessageHost]::MaximumVerbose = $args[0] } -Description "The maxium message level where verbose information is still written."
Set-PSFConfig -Module PSFramework -Name 'message.debug.minimum' -Value 1 -Initialize -Validation "integer0to9" -Handler { [PSFramework.Message.MessageHost]::MinimumDebug = $args[0] } -Description "The minimum required message level where debug information is written."
Set-PSFConfig -Module PSFramework -Name 'message.debug.maximum' -Value 9 -Initialize -Validation "integer0to9" -Handler { [PSFramework.Message.MessageHost]::MaximumDebug = $args[0] } -Description "The maximum message level where debug information is still written."
Set-PSFConfig -Module PSFramework -Name 'message.info.color' -Value 'Cyan' -Initialize -Validation "consolecolor" -Handler { [PSFramework.Message.MessageHost]::InfoColor = $args[0] } -Description "The color to use when writing text to the screen on PowerShell."
Set-PSFConfig -Module PSFramework -Name 'message.info.color.emphasis' -Value 'green' -Initialize -Validation "consolecolor" -Handler { [PSFramework.Message.MessageHost]::InfoColorEmphasis = $args[0] } -Description "The color to use when emphasizing written text to the screen on PowerShell."
Set-PSFConfig -Module PSFramework -Name 'message.info.color.subtle' -Value 'gray' -Initialize -Validation "consolecolor" -Handler { [PSFramework.Message.MessageHost]::InfoColorSubtle = $args[0] } -Description "The color to use when making writing text to the screen on PowerShell appear subtle."
Set-PSFConfig -Module PSFramework -Name 'message.developercolor' -Value 'Gray' -Initialize -Validation "consolecolor" -Handler { [PSFramework.Message.MessageHost]::DeveloperColor = $args[0] } -Description "The color to use when writing text with developer specific additional information to the screen on PowerShell."
Set-PSFConfig -Module PSFramework -Name 'message.consoleoutput.disable' -Value $false -Initialize -Validation "bool" -Handler { [PSFramework.Message.MessageHost]::DisableVerbosity = $args[0] } -Description "Global toggle that allows disabling all regular messages to screen. Messages from '-Verbose' and '-Debug' are unaffected"
Set-PSFConfig -Module PSFramework -Name 'message.transform.errorqueuesize' -Value 512 -Initialize -Validation "integerpositive" -Handler { [PSFramework.Message.MessageHost]::TransformErrorQueueSize = $args[0] } -Description "The size of the queue for transformation errors. May be useful for advanced development, but can be ignored usually."
Set-PSFConfig -Module PSFramework -Name 'developer.mode.enable' -Value $false -Initialize -Validation "bool" -Handler { [PSFramework.Message.MessageHost]::DeveloperMode = $args[0] } -Description "Developermode enables advanced logging and verbosity features. There is little benefit for enabling this as a regular user. but developers can use it to more easily troubleshoot issues."
#endregion Apply settings