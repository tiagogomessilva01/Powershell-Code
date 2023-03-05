

echo "Realizando a instalacao do PdfCreator"
[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
[System.Windows.Forms.MessageBox]::Show('Instalando o PDFCreator  , por favor aguarde !!! ','AVISO - Pdfcreator')
cls
timeout /t 5
mkdir C:\CriacaoScripts\Logs\
Start-Process C:\CriacaoScripts\Softwares\PdfCreator\PDFCreator.exe  -Argument "/ForceInstall /VERYSILENT /NORESTART"

$Logfile = "C:\temp\PdfCreator_$env:computername.log"
function WriteLog
{
Param ([string]$LogString)
$Stamp = (Get-Date).toString("yyyy/MM/dd HH:mm:ss")
$LogMessage = "$Stamp $LogString"
Add-content $LogFile -value $LogMessage

}
WriteLog "The script esta rodando"
WriteLog "Instalando…."
Start-Sleep 20
WriteLog "Arquivo instalado com sucesso"


[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,'AVISO - PdfCreator','Sera gerado um arquivo de log da instalacao no seguinte caminho: "C:\temp\"',[system.windows.forms.tooltipicon]::None)
Start-Transcript -Append C:\temp\PdfCreator_$env:computername.log
cls



