
echo "Realizando a instalacao do pdfsam"
[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
[System.Windows.Forms.MessageBox]::Show('Instalando o pdfsam  , por favor aguarde !!! ','AVISO - PDFSAM')
cls
timeout /t 5
msiexec.exe /i "C:\CriacaoScripts\Softwares\Pdfsam\pdfsam-5.0.3.msi" ALLUSERS=1 /qb /l*v "C:\temp\PDFSam_$env:computername.log"
Start-Sleep -Seconds 60
[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,'AVISO - PDFSam','Sera gerado um arquivo de log da instalacao no seguinte caminho: "C:\temp\"',[system.windows.forms.tooltipicon]::None)
cls


