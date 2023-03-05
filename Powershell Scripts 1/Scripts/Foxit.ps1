
echo "Realizando a instalacao do FOXIT"
[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
[System.Windows.Forms.MessageBox]::Show('Instalando o FOXIT , por favor aguarde !!! ','AVISO - FOXIT')
cls
timeout /t 5
mkdir C:\CriacaoScripts\Logs\
msiexec.exe /i "C:\CriacaoScripts\Softwares\FoxPdf\FoxitPDF.msi"   ALLUSERS=1 /qb /l*v  "C:\temp\Foxit_$env:computername.log"
[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,'AVISO - FOXIT','Sera gerado um arquivo de log da instalacao no seguinte caminho: "C:\temp\"',[system.windows.forms.tooltipicon]::None)
cls


