

echo "Realizando a instalacao do OneDrive For bussiness"
[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
[System.Windows.Forms.MessageBox]::Show('Instalando o OneDrive  , por favor aguarde !!! ','AVISO - OneDrive')
cls
timeout /t 5
Start-Process C:\CriacaoScripts\Softwares\OneDrive\OneDriveSetup.exe -Argument "/S /v/qn"




$Logfile = "C:\temp\ONEDRIVE_$env:computername.log"
function WriteLog
{
Param ([string]$LogString)
$Stamp = (Get-Date).toString("yyyy/MM/dd HH:mm:ss")
$LogMessage = "$Stamp $LogString"
Add-content $LogFile -value $LogMessage

}
WriteLog "The script esta rodando"
WriteLog "Instalando…."
WriteLog "Arquivo instalado com sucesso"


[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,'AVISO - OneDrive','Sera gerado um arquivo de log da instalacao no seguinte caminho: "C:\temp\"',[system.windows.forms.tooltipicon]::None)
Start-Transcript -Append C:\temp\ONEDRIVE_$env:computername.log
cls


