
echo "Realizando a instalacao do Java Run Time"
[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
[System.Windows.Forms.MessageBox]::Show('Instalando o Java RunTime  , por favor aguarde !!! ','AVISO - Java Runtime 8u')
cls
timeout /t 5
Start-Process C:\CriacaoScripts\Softwares\java\jre-8u361-windows-x64.exe -Argument "INSTALL_SILENT=1"

$SiteList = @()
$SiteList = (
    "https://www.google.com.br",
    "https://www.terra.com.br",
    "https://www.yahoo.com.br",
    "https://www.github.com",
    "https://www.lol.com.br",
    "https://www.amazon.com.br",
    "https://www.confluence.com",
    "https://wwww.bitbucket.com"

)

$UserFolders = Get-ChildItem -Path C:\Users | select -ExpandProperty Name

foreach ($User in $UserFolders) {
    foreach ($Site in $SiteList) {
        Add-Content -Path "C:\users\$User\AppData\LocalLow\Sun\Java\Deployment\security\exception.sites" -Value "$Site"
    }    
}




[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,'AVISO - Java','Sera gerado um arquivo de log da instalacao no seguinte caminho: "C:\temp\"',[system.windows.forms.tooltipicon]::None)
Start-Sleep -Seconds 30
Start-Transcript -Append C:\temp\Java_$env:computername.log
Stop-Transcript
cls


