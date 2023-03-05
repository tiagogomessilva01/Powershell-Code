
cls
echo "====================================================================================="
echo "=     SCRIPT DE INSTALACAO DE SILENCIOSA DE PROGRAMAS  WINDOWS POWERSHELL X64       ="
echo "=                                                                                   ="
echo "= AUTOR DO SCRIPT : TIAGO GOMES DA SILVA               DESENVOLVIDO 03/04/2023      =" 
echo "= GITHUB:  TIAGOGOMESDASILVAITDS                                                    ="
echo "=                                                                                   ="
echo "=                                                                                   ="
echo "= AJUDA , SUGESTÕES , MELHORIAS NO CODIGO SÃO BEM VINDAS                            ="
echo "=                                                                                   ="
echo "=                                                                                   ="
echo "====================================================================================="
echo ""
echo ""
echo ""
echo "APERTE QUALQUER BOTAO PARA CONTINUAR!!!"
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
timeout /t 10
cls
echo "Instalando os programas !!!"
timeout /t 10
echo ""
echo ""
echo ""
PAUSE
cls
echo "Instalando o 7ZIP"
$7zip = Start-Process  C:\CriacaoScripts\Scripts\7zip.ps1 -ArgumentList "-command " -Wait
Start-Sleep -Seconds 10
echo ""
echo "Instalando o Adobe Acrobat Reader"
$Adobe = Start-Process  C:\CriacaoScripts\Scripts\Adobe.ps1 -ArgumentList "-command " -Wait
Start-Sleep -Seconds 10
echo ""
echo "Instalando o Firefox"
$Firefox = Start-Process  C:\CriacaoScripts\Scripts\Firefox.ps1 -ArgumentList "-command " -Wait
Start-Sleep -Seconds 10
echo ""
echo "Instalando o FOXITPDF"
$Foxit = Start-Process  C:\CriacaoScripts\Scripts\Foxit.ps1 -ArgumentList "-command " -Wait
Start-Sleep -Seconds 10
echo ""
echo "Instalando o Google Chrome"
$Chrome = Start-Process  C:\CriacaoScripts\Scripts\GoogleChrome.ps1 -ArgumentList "-command " -Wait
Start-Sleep -Seconds 10
echo ""
echo "Instalando o Java RunTime"
$Java = Start-Process  C:\CriacaoScripts\Scripts\Java.ps1 -ArgumentList "-command " -Wait
Start-Sleep -Seconds 10
echo ""
echo "Instalando o KeePass"
$Keepass = Start-Process  C:\CriacaoScripts\Scripts\keepass.ps1 -ArgumentList "-command " -Wait
Start-Sleep -Seconds 10
echo ""
echo "Instalando o OneDrive"
$Keepass = Start-Process  C:\CriacaoScripts\Scripts\OneDrive.ps1 -ArgumentList "-command " -Wait
Start-Sleep -Seconds 10
echo ""
echo "Instalando o Opera"
$Opera = Start-Process  C:\CriacaoScripts\Scripts\Opera.ps1 -ArgumentList "-command " -Wait
Start-Sleep -Seconds 10
echo ""
echo "Instalando o PDFCreator"
$PDFCreator = Start-Process  C:\CriacaoScripts\Scripts\PdfCreator.ps1 -ArgumentList "-command " -Wait
Start-Sleep -Seconds 10
echo ""
echo "Instalando o PDFSam"
$PDFSAM = Start-Process  C:\CriacaoScripts\Scripts\Pdfsam.ps1 -ArgumentList "-command " -Wait
Start-Sleep -Seconds 10
echo ""
echo "Instalando o Teams"
$Teams = Start-Process  C:\CriacaoScripts\Scripts\Teams.ps1 -ArgumentList "-command " -Wait
Start-Sleep -Seconds 10
echo ""
echo "Instalando o FortClient"
$FortClient = Start-Process  C:\CriacaoScripts\Scripts\Fortclient.ps1 -ArgumentList "-command " -Wait
Start-Sleep -Seconds 10
echo ""
echo "Instalando o VisualStudio Code"
$VSCode = Start-Process  C:\CriacaoScripts\Scripts\VSCode.ps1 -ArgumentList "-command " -Wait
Start-Sleep -Seconds 10
echo ""
echo ""
cls
echo "Todos os programas foram instalados com sucesso. O computador sera desligado"
cls
echo "Aperte Enter para continuar"
PAUSE
echo ""
echo ""
echo ""
shutdown /s /t 0 