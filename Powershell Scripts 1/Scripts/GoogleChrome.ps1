
echo "Realizando a instalacao do Google Chrome"
[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
[System.Windows.Forms.MessageBox]::Show('Instalando o Google Chrome , por favor aguarde !!! ','AVISO - Google Chrome')
cls
timeout /t 5
mkdir C:\CriacaoScripts\Logs\
msiexec.exe /i "C:\CriacaoScripts\Softwares\GoogleChrome\GoogleChrome64.msi"   ALLUSERS=1 /qb /l*v  "C:\temp\GoogleChrome_$env:computername.log"
[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,'AVISO - Google Chrome','Sera gerado um arquivo de log da instalacao no seguinte caminho: "C:\temp\"',[system.windows.forms.tooltipicon]::None)
Start-Sleep -Seconds 30
cls


