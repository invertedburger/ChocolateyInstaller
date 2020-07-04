!include psexec.nsh

# name the installer
OutFile "Choco-Installer.exe"
 
# default section start; every NSIS script has at least one section.
Section
NSISdl::download https://chocolatey.org/install.ps1 $0
inetc::get /POPUP "" /CAPTION "https://chocolatey.org/install.ps1" "https://chocolatey.org/install.ps1" "$EXEDIR\install.ps1"
${PowerShellExecFileLog} "$EXEDIR\install.ps1"


# default section end
SectionEnd

 