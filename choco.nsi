!include psexec.nsh

# name the installer
OutFile "ChocolateyInstaller.exe"
 
# default section start; every NSIS script has at least one section.
Section
NSISdl::download https://chocolatey.org/install.ps1 $0
inetc::get /POPUP "" /CAPTION "https://chocolatey.org/install.ps1" "https://chocolatey.org/install.ps1" "$TEMP\install.ps1"
exec "unblock-file $TEMP\install.ps1"
${PowerShellExecFileLog} "$TEMP\install.ps1"


# default section end
SectionEnd

 