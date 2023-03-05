echo "Realizando a instalacao do Mozilla Firefox"
[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
[System.Windows.Forms.MessageBox]::Show('Instalando o Mozilla Firefox , por favor aguarde !!! ','AVISO - MOZILLA FIREFOX')
cls
timeout /t 5
mkdir C:\CriacaoScripts\Logs\
msiexec.exe /i "C:\CriacaoScripts\Softwares\Firefox\Firefox.msi"   ALLUSERS=1 /qb /l*v  "C:\temp\Firefox_$env:computername.log"
[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,'AVISO - MOZILLA FIREFOX','Sera gerado um arquivo de log da instalacao no seguinte caminho: "C:\temp\"',[system.windows.forms.tooltipicon]::None)
cls


