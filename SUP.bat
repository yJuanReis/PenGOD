::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDFBTQq+GG6pDaET+NTy7OWJpwMUV+1f
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDFBTQq+GG6pDaET+NTI+vqIsFkYGdYWOJmJlLGWJYA=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
chcp 65001 >nul
mode con: cols=100 lines=35
setlocal enabledelayedexpansion
title MENU DE SUPORTE E REPARO - Juan Reis
color 0A

:: ==============================================
:: Verificação de administrador
:: ==============================================
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if %errorlevel% neq 0 (
    echo.
    echo ------------------------------------------------------------------
    echo ATENCAO! Este script precisa ser executado como administrador.
    echo ------------------------------------------------------------------
    echo.
    echo Clique com o botao direito no arquivo .bat e escolha "Executar como administrador".
    echo.
    pause
    exit
)

:: ==============================================
:: MENU PRINCIPAL
:: ==============================================
:MENU
cls
echo ==============================================
echo        MENU PRINCIPAL - Juan Reis
echo ==============================================
echo.
echo  1. Manutencao de Disco
echo  2. Ferramentas de Sistema
echo  3. Ferramentas de Rede
echo  4. Outras Ferramentas
echo  5. Sair
echo ==============================================

choice /c 12345 /n /m "Escolha uma opcao:"

if %errorlevel%==5 exit
if %errorlevel%==4 goto MENU_OUTRAS
if %errorlevel%==3 goto MENU_REDE
if %errorlevel%==2 goto MENU_SISTEMA
if %errorlevel%==1 goto MENU_DISCO

goto MENU

:: ==============================================
:: MENU DE DISCO
:: ==============================================
:MENU_DISCO
cls
echo ==============================================
echo        MENU DE MANUTENCAO DE DISCO
echo ==============================================
echo.
echo  1. Verificar e Reparar Disco (CHKDSK) -> Pagina
echo  2. Desfragmentar Disco
echo  3. Testar Velocidade de Disco
echo  4. Limpar Arquivos Temporarios (Linha de Comando)
echo  5. Limpar Arquivos Temporarios (Interface Grafica)
echo  6. Verificar Saude do Disco (Status)
echo  0. Voltar ao Menu Principal
echo ==============================================

choice /c 1234560 /n /m "Escolha uma opcao:"

if %errorlevel%==7 goto MENU
if %errorlevel%==6 (wmic diskdrive get status & pause & goto MENU_DISCO)
if %errorlevel%==5 (cleanmgr.exe & goto MENU_DISCO)
if %errorlevel%==4 (
    echo.
    echo AVISO: Esta acao ira deletar todos os arquivos da pasta temporaria do usuario.
    choice /c SN /n /m "Deseja continuar (S/N)? "
    if %errorlevel%==1 (del /q /f /s "%TEMP%\*.*" & echo Limpeza concluida. & pause)
    goto MENU_DISCO
)
if %errorlevel%==3 (winsat disk & pause & goto MENU_DISCO)
if %errorlevel%==2 (defrag C: /h & pause & goto MENU_DISCO)
if %errorlevel%==1 goto CHKDSK_PAGINA

goto MENU_DISCO

:: ==============================================
:: MENU DE SISTEMA
:: ==============================================
:MENU_SISTEMA
cls
echo ==============================================
echo        MENU DE FERRAMENTAS DE SISTEMA
echo ==============================================
echo.
echo  1. Reparar Arquivos de Sistema (SFC) -> Pagina
echo  2. Verificar Erros de Memoria (Diagnostico)
echo  3. Restaurar Sistema
echo  4. Gerenciar Processos (Task Manager)
echo  5. Informacoes do Sistema
echo  6. Gerenciar Usuarios Locais
echo  7. Verificar Integridade de Arquivos (DISM)
echo  8. Ativar/Desativar Firewall do Windows
echo  9. Ver Logs de Eventos
echo 10. Criar Ponto de Restauracao
echo 11. Executar Comando Personalizado (CMD)
echo 12. Atualizar Todos os Programas (Winget Update)
echo 13. Desativar Windows Defender (ATENCAO!)
echo 14. Verificar Atualizacoes do Windows
echo  0. Voltar ao Menu Principal
echo ==============================================

choice /c 123456789ABCDE0 /n /m "Escolha uma opcao:"

if %errorlevel%==15 goto MENU
if %errorlevel%==14 (
    powershell.exe -command "Get-WindowsUpdateLog"
    pause
    goto MENU_SISTEMA
)
if %errorlevel%==13 (
    choice /c SN /n /m "Deseja desativar o Windows Defender? (S/N): "
    if %errorlevel%==1 (powershell -ExecutionPolicy Bypass -Command "Set-MpPreference -DisableRealtimeMonitoring $true" & echo Windows Defender desativado. & pause)
    goto MENU_SISTEMA
)
if %errorlevel%==12 (winget update --all & pause & goto MENU_SISTEMA)
if %errorlevel%==11 (cmd & goto MENU_SISTEMA)
if %errorlevel%==10 (
    powershell.exe -Command "Checkpoint-Computer -Description 'Ponto de Restauracao Manual'"
    echo Ponto de restauracao criado!
    pause
    goto MENU_SISTEMA
)
if %errorlevel%==9 (eventvwr & goto MENU_SISTEMA)
if %errorlevel%==8 (
    choice /c AD /n /m "(A) Desativar Firewall, (D) Ativar Firewall: "
    if %errorlevel%==1 (netsh advfirewall set allprofiles state off & echo Firewall desativado. & pause)
    if %errorlevel%==2 (netsh advfirewall set allprofiles state on & echo Firewall ativado. & pause)
    goto MENU_SISTEMA
)
if %errorlevel%==7 (DISM /Online /Cleanup-Image /ScanHealth & pause & goto MENU_SISTEMA)
if %errorlevel%==6 (lusrmgr.msc & goto MENU_SISTEMA)
if %errorlevel%==5 (systeminfo | more & pause & goto MENU_SISTEMA)
if %errorlevel%==4 (taskmgr & goto MENU_SISTEMA)
if %errorlevel%==3 (rstrui & goto MENU_SISTEMA)
if %errorlevel%==2 (mdsched & goto MENU_SISTEMA)
if %errorlevel%==1 goto SFC_PAGINA

goto MENU_SISTEMA

:: ==============================================
:: MENU DE REDE
:: ==============================================
:MENU_REDE
cls
echo ==============================================
echo        MENU DE FERRAMENTAS DE REDE
echo ==============================================
echo.
echo  1. Verificar Conectividade (Ping/Teste)
echo  2. Limpar Cache DNS
echo  3. Reiniciar Servicos de Rede
echo  4. Exibir Configuracoes Detalhadas de Rede
echo  0. Voltar ao Menu Principal
echo ==============================================

choice /c 12340 /n /m "Escolha uma opcao:"

if %errorlevel%==5 goto MENU
if %errorlevel%==4 (ipconfig /all & pause & goto MENU_REDE)
if %errorlevel%==3 (
    netsh winsock reset
    netsh int ip reset
    echo Servicos de rede resetados. Reinicie o PC!
    pause
    goto MENU_REDE
)
if %errorlevel%==2 (ipconfig /flushdns & echo DNS limpo! & pause & goto MENU_REDE)
if %errorlevel%==1 (ping 8.8.8.8 -n 5 & pause & goto MENU_REDE)

goto MENU_REDE

:: ==============================================
:: MENU OUTRAS FERRAMENTAS
:: ==============================================
:MENU_OUTRAS
cls
echo ==============================================
echo        OUTRAS FERRAMENTAS
echo ==============================================
echo.
echo  1. Backup de Drivers
echo  2. Abrir Desinstalador (Geek)
echo  0. Voltar ao Menu Principal
echo ==============================================

choice /c 120 /n /m "Escolha uma opcao:"

if %errorlevel%==3 goto MENU
if %errorlevel%==2 goto REVO_UNINSTALLER
if %errorlevel%==1 goto BACKUP_DRIVERS

goto MENU_OUTRAS


:BACKUP_DRIVERS
cls
echo ==============================================
echo        BACKUP DE DRIVERS
echo ==============================================
set "destino=%~dp0DriversBackup"
echo Os drivers serao exportados para: %destino%
choice /c SN /n /m "Deseja continuar (S/N)? "
if %errorlevel%==2 goto MENU_OUTRAS

if not exist "%destino%" mkdir "%destino%"
dism /online /export-driver /destination:%destino%

echo Backup concluido! Drivers salvos em %destino%
pause
goto MENU_OUTRAS


:REVO_UNINSTALLER
cls
echo ==============================================
echo        DESINSTALADOR DE PROGRAMAS
echo ==============================================
echo Iniciando o Desinstalador...
echo.

start "" "%~dp0APP\Desinstaldor.exe"

echo.
echo Pressione qualquer tecla para voltar ao menu...
pause >nul
goto MENU_OUTRAS

:: ==============================================
:: PAGINAS DAS ACOES
:: ==============================================
:CHKDSK_PAGINA
cls
echo ==============================================
echo        Verificar e Reparar Disco (CHKDSK)
echo ==============================================
choice /c SN /n /m "Deseja continuar (S/N)? "
if %errorlevel%==1 chkdsk /f C:
pause
goto MENU_DISCO

:SFC_PAGINA
cls
echo ==============================================
echo        Reparar Arquivos de Sistema (SFC)
echo ==============================================
sfc /scannow
pause
goto MENU_SISTEMA
