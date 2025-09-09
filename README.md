<div align="center">
<h1 align="center">🛡️ PenGOD 🛡️</h1>
<strong>Um pendrive de ferramentas essenciais para suporte técnico em Windows.</strong>
<p>Criado por Juan Reis para agilizar a manutenção, reparo e diagnóstico de sistemas.</p>
</div>

<div align="center">
<img src="https://www.google.com/search?q=https://img.shields.io/badge/Vers%C3%A3o-2.1-blue" alt="Versão 2.1">
<img src="https://www.google.com/search?q=https://img.shields.io/badge/Compatibilidade-Windows_7_|8|10|_11-brightgreen" alt="Compatibilidade">
<img src="https://www.google.com/search?q=https://img.shields.io/badge/Licen%C3%A7a-MIT-lightgrey" alt="Licença MIT">
</div>

📖 Manual Detalhado do Sistema
Este pendrive contém um sistema completo de ferramentas para suporte técnico em Windows, organizado em um menu interativo que facilita o acesso a 47 comandos essenciais de manutenção, diagnóstico e reparo do sistema.

🚀 Configurações Iniciais do Script
Comandos de Inicialização
@echo off                    # Oculta os comandos executados
chcp 65001 >nul             # Define codificação UTF-8 para caracteres especiais
mode con: cols=100 lines=35  # Define janela do console
setlocal enabledelayedexpansion # Habilita expansão atrasada de variáveis
title MENU DE SUPORTE E REPARO - PenGOD # Define título da janela
color 0A                     # Define cor: fundo preto, texto verde claro


🔒 Verificação de Privilégios Administrativos
O script verifica automaticamente se está sendo executado como administrador. Esta etapa é crucial, pois muitas funções (CHKDSK, SFC, DISM) exigem privilégios elevados para funcionar corretamente.

Comando: cacls.exe "%SYSTEMROOT%\system32\config\system"

Resultado: Se a verificação falhar, o script exibe um aviso e é encerrado.

📋 MENU PRINCIPAL
O menu é dividido em 4 categorias principais para facilitar a navegação:

💾 Manutenção de Disco

⚙️ Ferramentas de Sistema

🌐 Ferramentas de Rede

🔧 Outras Ferramentas

🚪 Sair

💾 1. MENU DE MANUTENÇÃO DE DISCO (7 Opções)
Verificar e Reparar Disco (CHKDSK): chkdsk /f C:

Desfragmentar Disco: defrag C: /h

Testar Velocidade de Disco: winsat disk

Limpar Arquivos Temporários (CMD): del /q /f /s "%TEMP%\*.*"

Limpar Arquivos Temporários (GUI): cleanmgr.exe

Verificar Saúde do Disco: wmic diskdrive get status

⚙️ 2. MENU DE FERRAMENTAS DE SISTEMA (14 Opções)
Reparar Arquivos de Sistema (SFC): sfc /scannow

Verificar Erros de Memória: mdsched

Restaurar Sistema: rstrui

Gerenciar Processos (Task Manager): taskmgr

Informações do Sistema: systeminfo | more

Gerenciar Usuários Locais: lusrmgr.msc

Verificar Integridade de Arquivos (DISM): DISM /Online /Cleanup-Image /ScanHealth

Ativar/Desativar Firewall do Windows: netsh advfirewall set allprofiles state <on|off>

Ver Logs de Eventos: eventvwr

Criar Ponto de Restauração: powershell.exe -Command "Checkpoint-Computer -Description 'Ponto Manual'"

Executar Comando Personalizado (CMD): cmd

Atualizar Todos os Programas (Winget): winget update --all

Desativar Windows Defender ⚠️: powershell -ExecutionPolicy Bypass -Command "Set-MpPreference -DisableRealtimeMonitoring $true"

Verificar Atualizações do Windows: powershell.exe -command "Get-WindowsUpdateLog"

🌐 3. MENU DE FERRAMENTAS DE REDE (4 Opções)
Verificar Conectividade (Ping): ping 8.8.8.8 -n 5

Limpar Cache DNS: ipconfig /flushdns

Reiniciar Serviços de Rede: netsh winsock reset e netsh int ip reset (requer reinicialização)

Exibir Configurações Detalhadas de Rede: ipconfig /all

🔧 4. OUTRAS FERRAMENTAS (2 Opções)
Backup de Drivers: dism /online /export-driver /destination:%destino%

Abrir Desinstalador (Geek Uninstaller): start "" "%~dp0APP\Desinstaldor.exe"

<details>
<summary><strong>🎯 Análise Detalhada do Geek Uninstaller (Clique para expandir)</strong></summary>

Visão Geral Técnica
O Geek Uninstaller é um desinstalador avançado e portátil que vai muito além das capacidades do desinstalador padrão do Windows. Foi desenvolvido para garantir a remoção completa de programas sem deixar vestígios no sistema.

📊 Características Técnicas
Tamanho: Extremamente leve (~3-5 MB)

Tipo: Aplicação portátil (não requer instalação)

Arquitetura: Suporte nativo para 32 e 64 bits

Compatibilidade: Windows 7/8/8.1/10/11

Licença: 100% Gratuito (versão Pro disponível)

🔍 Funcionalidades Principais
Remoção Limpa (Clean Removal): Executa o desinstalador padrão e, em seguida, faz uma varredura profunda para remover arquivos residuais, entradas de registro órfãs e atalhos inválidos.

Remoção Forçada (Force Removal): Ideal para programas teimosos, corrompidos ou parcialmente desinstalados que não podem ser removidos da forma convencional.

Suporte a Aplicativos Microsoft Store: Desinstala aplicativos UWP (Universal Windows Platform), incluindo bloatware pré-instalado no Windows.

🆚 Comparação: Windows Padrão vs. Geek Uninstaller
Aspecto

Windows Padrão

Geek Uninstaller

Arquivos Residuais

Deixa muitos vestígios

✅ Remove completamente

Entradas de Registro

Mantém entradas órfãs

✅ Limpa o registro

Programas Corrompidos

Falha frequentemente

✅ Remoção forçada eficaz

Aplicativos Store

Limitado

✅ Suporte completo

Velocidade

Padrão

✅ Varredura rápida

Interface

Básica

✅ Avançada com busca e filtros

🔧 Casos de Uso
Técnicos de Suporte: Ideal para limpeza de sistemas, resolução de conflitos de software e preparação de máquinas.

Usuários Avançados: Perfeito para otimização de sistema, remoção de bloatware e manutenção da organização do PC.

</details>

<details>
<summary><strong>📦 Detalhes sobre a Conversão "Bat to Exe" (Clique para expandir)</strong></summary>

A conversão de um script .bat (batch) para um arquivo .exe (executável) é feita por um programa conversor. Este processo não "compila" o código batch em código de máquina, mas sim o empacota.

Processo de Empacotamento
Empacotador: O conversor cria um .exe que contém o script .bat original e um pequeno "extrator".

Execução: Ao rodar o .exe, o extrator extrai o script .bat para uma pasta temporária e o executa de forma oculta.

Limpeza: Após a execução, o arquivo temporário é removido.

Vantagens
Portabilidade: Facilita a execução para usuários sem conhecimento técnico.

Ocultação do Código: Protege a lógica do seu script.

Profissionalismo: Permite associar um ícone personalizado ao arquivo.

⚠️ Atenção: A técnica de empacotar scripts é frequentemente usada para distribuir malware. Por isso, programas antivírus podem identificar seu .exe como uma ameaça (falso positivo), mesmo sendo seguro. Este é o principal ponto de atenção ao distribuir ferramentas convertidas dessa forma.

</details>

📁 Estrutura de Arquivos no Pendrive
📁 Pendrive de Suporte/
├── 📄 Menu_Suporte_PenGOD.bat (script principal)
├── 📄 README.md (este arquivo)
├── 📁 APP/
│   └── 📄 Desinstaldor.exe (Geek Uninstaller)
├── 📁 DriversBackup/ (criada automaticamente)
└── 📁 GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}/


🆘 Solução de Problemas Comuns
Script não executa: Verifique se foi executado "Como Administrador".

Geek Uninstaller não abre: Confirme que o Desinstaldor.exe está na pasta APP/.

God Mode não funciona: O nome da pasta deve ser exato e pode não funcionar em todas as versões do Windows.

📜 Licença
Este projeto é distribuído sob a Licença MIT. Para mais detalhes, veja o texto completo abaixo.

<details>
<summary>Ver texto da Licença MIT</summary>

Copyright (c) 2025 Juan Reis

É concedida permissão, gratuitamente, a qualquer pessoa que obtenha uma cópia deste software e dos arquivos de documentação associados (o "Software"), para negociar o Software sem restrições, incluindo, sem limitação, os direitos de usar, copiar, modificar, mesclar, publicar, distribuir, sublicenciar e/ou vender cópias do Software, e permitir que as pessoas a quem o Software é fornecido o façam, sujeito às seguintes condições:

O aviso de direitos autorais acima e este aviso de permissão devem ser incluídos em todas as cópias ou partes substanciais do Software.

O SOFTWARE É FORNECIDO "COMO ESTÁ", SEM GARANTIA DE QUALQUER TIPO, EXPRESSA OU IMPLÍCITA, INCLUINDO, MAS NÃO SE LIMITANDO ÀS GARANTIAS DE COMERCIALIZAÇÃO, ADEQUAÇÃO A UM FIM ESPECÍFICO E NÃO VIOLAÇÃO. EM NENHUMA CIRCUNSTÂNCIA OS AUTORES OU DETENTORES DOS DIREITOS AUTORAIS SERÃO RESPONSÁVEIS POR QUALQUER RECLAMAÇÃO, DANOS OU OUTRA RESPONSABILIDADE, SEJA EM UMA AÇÃO DE CONTRATO, DELITO OU DE OUTRA FORMA, DECORRENTE DE, FORA DE OU EM CONEXÃO COM O SOFTWARE OU O USO OU OUTRAS NEGOCIAÇÕES NO SOFTWARE.

</details>

<div align="center">
<p>Desenvolvido por <strong>Juan Reis</strong></p>
<a href="https://www.linkedin.com/in/juanreis">
<img src="https://www.google.com/search?q=https://img.shields.io/badge/LinkedIn-Juan_Reis-0077B5%3Fstyle%3Dfor-the-badge%26logo%3Dlinkedin" alt="LinkedIn">
</a>
</div>
