# Força o console a mostrar acentos corretamente
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

# Instalação de Softwares via Winget (Exemplos comuns)
Write-Host ""
Write-Host "=====================================================" -ForegroundColor Cyan
Write-Host "      FERRAMENTAS TECNICAS DO ONBOARDING GGBR        " -ForegroundColor Cyan
Write-Host "=====================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Instalando softwares básicos..." -ForegroundColor Cyan
Write-Host ""

$apps = @(
	"OpenVPNTechnologies.OpenVPN",
    "Mobatek.MobaXterm",
    "Notepad++.Notepad++",
    "Oracle.VirtualBox",
    "Oracle.SQLDeveloper",
    "PuTTY.PuTTY",
    "9NKSQGP7F2NH"                  #Whatsapp

)

foreach ($app in $apps) {
    Write-Host ""
    Write-Host "Instalando: $app" -ForegroundColor Yellow
    Write-Host ""
    winget install --id $app --silent --source winget
    Write-Host ""
}

# 3. Limpeza de Bloatware (Opcional - Ex: Remover TikTok, Disney+ que vêm no Windows)
Write-Host ""
Write-Host "Removendo itens desnecessários..." -ForegroundColor Cyan
Write-Host ""
Get-AppxPackage *TikTok* | Remove-AppxPackage
Get-AppxPackage *DisneyPlus* | Remove-AppxPackage
Get-AppxPackage *OneDrive* | Remove-AppxPackage
Get-AppxPackage *9NRX63209R7B* | Remove-AppxPackage     #Outlook For Windows
Get-AppxPackage *9MZ95KL8MR0L* | Remove-AppxPackage     #Snipping Tool   
Write-Host ""
Write-Host "Setup concluído! O sistema precisa ser reiniciado." -ForegroundColor Green