echo "Realizando a instalacao do FortClient"
[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
[System.Windows.Forms.MessageBox]::Show('Instalando o Fortclient  , por favor aguarde !!! ','AVISO - FortclientVPN')
cls
timeout /t 5
echo "Realizando a configuraçao do registro fortclient"
Start-Process  "C:\CriacaoScripts\Softwares\VPN\forticlient_restore.reg"  -ArgumentList "-command " -Wait
msiexec.exe /i "C:\CriacaoScripts\Softwares\VPN\FortiClientVPN.msi"  /quiet /passive /l*v "C:\temp\Fortclient_$env:computername.log"
[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,'AVISO - FortclientVPN','Sera gerado um arquivo de log da instalacao no seguinte caminho: "C:\temp\"',[system.windows.forms.tooltipicon]::None)
Start-Transcript -Append C:\CriacaoScripts\Logs\Fortclient_$env:computername.log
cls


