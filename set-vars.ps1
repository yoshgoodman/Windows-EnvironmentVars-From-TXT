Get-Content "config.txt" | foreach-object -begin {$h=@{}} -process { $k = [regex]::split($_,'=');

if(($k[0].CompareTo("") -ne 0) -and ($k[0].StartsWith("[") -ne $True))

{ [Environment]::SetEnvironmentVariable($k[0], $k[1], "Machine") } }
