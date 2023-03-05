echo "Realizando a instalacao do KeePass"
[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
[System.Windows.Forms.MessageBox]::Show('Instalando o Keepass  , por favor aguarde !!! ','AVISO - Keepass')
cls
timeout /t 5
mkdir C:\CriacaoScripts\Logs\
msiexec.exe /i "C:\CriacaoScripts\Softwares\KeePass\KeePass-2.53.1.msi"  /quiet /passive /l*v "C:\temp\KeePass_$env:computername.log"
[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,'AVISO - Keepass','Sera gerado um arquivo de log da instalacao no seguinte caminho: "C:\temp\"',[system.windows.forms.tooltipicon]::None)
Start-Transcript -Append C:\CriacaoScripts\Logs\KeePass_$env:computername.log
cls


