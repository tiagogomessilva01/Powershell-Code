
echo "Realizando a instalacao do Opera"
[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
[System.Windows.Forms.MessageBox]::Show('Instalando o Opera  , por favor aguarde !!! ','AVISO - Opera')
cls
timeout /t 5
Start-Process C:\CriacaoScripts\Softwares\Opera\Opera_96.0.4693.31_Setup_x64.exe -Argument "/silent /allusers=1 /launchopera=0 /setdefaultbrowser=0"


$Logfile = "C:\temp\Opera_$env:computername.log"
function WriteLog
{
Param ([string]$LogString)
$Stamp = (Get-Date).toString("yyyy/MM/dd HH:mm:ss")
$LogMessage = "$Stamp $LogString"
Add-content $LogFile -value $LogMessage

}
WriteLog "The script esta rodando"
WriteLog "Instalando…."
Start-Sleep 2
WriteLog "Arquivo instalado com sucesso"
[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,'AVISO - Opera','Sera gerado um arquivo de log da instalação no seguinte caminho: "C:\temp\"',[system.windows.forms.tooltipicon]::None)
Start-Transcript -Append C:\temp\Opera_$env:computername.log
cls


