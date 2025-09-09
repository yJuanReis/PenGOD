# PenGOD
Pendrive com ferramentas de suporte Windows por Juan Reis. Menu interativo com 47 funções para manutenção, reparo e diagnóstico de sistema. Contém script batch, Geek Uninstaller para remoção completa de programas e God Mode para configurações avançadas. Ideal para técnicos e usuários avançados.


# Pendrive de Suporte Técnico - Juan Reis
## Manual Detalhado do Sistema de Ferramentas de Reparo e Manutenção

Este pendrive contém um sistema completo de ferramentas para suporte técnico em Windows, organizado em um menu interativo que facilita o acesso a comandos essenciais de manutenção, diagnóstico e reparo do sistema.

---

## 🚀 Configurações Iniciais do Script

### Comandos de Inicialização
```batch
@echo off                    # Oculta os comandos executados
chcp 65001 >nul             # Define codificação UTF-8 para caracteres especiais
mode con: cols=100 lines=35  # Define janela do console: 100 colunas x 35 linhas
setlocal enabledelayedexpansion # Habilita expansão atrasada de variáveis
title MENU DE SUPORTE E REPARO - FUNESA # Define título da janela
color 0A                     # Define cor: fundo preto, texto verde claro
```

### 🔒 Verificação de Privilégios Administrativos
O script verifica automaticamente se está sendo executado como administrador:
- **Comando**: `cacls.exe "%SYSTEMROOT%\system32\config\system"`
- **Função**: Tenta acessar arquivo do sistema que requer privilégios administrativos
- **Resultado**: Se falhar, exibe aviso e encerra o script
- **Importância**: Muitas funções (CHKDSK, SFC, DISM) requerem privilégios elevados

---

## 📋 MENU PRINCIPAL - 5 Opções

### 1. Manutenção de Disco
### 2. Ferramentas de Sistema  
### 3. Ferramentas de Rede
### 4. Outras Ferramentas
### 5. Sair

---

## 💾 MENU DE MANUTENÇÃO DE DISCO (7 Opções)

### 1. Verificar e Reparar Disco (CHKDSK)
- **Comando**: `chkdsk /f C:`
- **Função**: Verifica e corrige erros no sistema de arquivos
- **Parâmetros**: 
  - `/f`: Corrige erros automaticamente
  - `C:`: Especifica a unidade C (sistema)
- **Tempo**: Pode demorar de minutos a horas dependendo do tamanho do disco
- **Aviso**: Pode requerer reinicialização se a unidade estiver em uso

### 2. Desfragmentar Disco
- **Comando**: `defrag C: /h`
- **Função**: Reorganiza arquivos no disco para melhor performance
- **Parâmetros**:
  - `C:`: Unidade a ser desfragmentada
  - `/h`: Prioridade alta para o processo
- **Benefício**: Melhora velocidade de acesso aos arquivos
- **Tempo**: Varia conforme fragmentação do disco

### 3. Testar Velocidade de Disco
- **Comando**: `winsat disk`
- **Função**: Executa benchmark de performance do disco
- **Resultados**: Mostra velocidade de leitura/escrita sequencial e aleatória
- **Uso**: Identificar problemas de performance de armazenamento

### 4. Limpar Arquivos Temporários (Linha de Comando)
- **Comando**: `del /q /f /s "%TEMP%\*.*"`
- **Função**: Remove todos os arquivos da pasta temporária do usuário
- **Parâmetros**:
  - `/q`: Modo silencioso (não pede confirmação)
  - `/f`: Force (remove arquivos somente leitura)
  - `/s`: Remove subdiretórios
- **Aviso**: Ação irreversível - pede confirmação antes de executar
- **Benefício**: Libera espaço em disco

### 5. Limpar Arquivos Temporários (Interface Gráfica)
- **Comando**: `cleanmgr.exe`
- **Função**: Abre a ferramenta nativa de limpeza de disco do Windows
- **Vantagem**: Interface gráfica permite escolher o que limpar
- **Opções**: Arquivos temporários, lixeira, cache do navegador, etc.

### 6. Verificar Saúde do Disco
- **Comando**: `wmic diskdrive get status`
- **Função**: Exibe status de saúde de todos os discos conectados
- **Informações**: Mostra se os discos estão "OK", "Degraded", etc.
- **Uso**: Diagnóstico rápido de problemas de hardware

---

## ⚙️ MENU DE FERRAMENTAS DE SISTEMA (14 Opções)

### 1. Reparar Arquivos de Sistema (SFC)
- **Comando**: `sfc /scannow`
- **Função**: Verifica integridade dos arquivos do sistema Windows
- **Processo**: Compara arquivos com versões originais e substitui corrompidos
- **Tempo**: 15-30 minutos normalmente
- **Resultado**: Relatório de arquivos corrompidos encontrados/reparados

### 2. Verificar Erros de Memória
- **Comando**: `mdsched`
- **Função**: Agenda diagnóstico completo da memória RAM
- **Processo**: Reinicia o PC e executa teste antes da inicialização do Windows
- **Detecção**: Identifica problemas de hardware na memória
- **Tempo**: Pode levar 20+ minutos dependendo da quantidade de RAM

### 3. Restaurar Sistema
- **Comando**: `rstrui`
- **Função**: Abre a ferramenta de Restauração do Sistema
- **Uso**: Retorna o sistema a um ponto anterior funcionando
- **Requisito**: Pontos de restauração previamente criados

### 4. Gerenciar Processos (Task Manager)
- **Comando**: `taskmgr`
- **Função**: Abre o Gerenciador de Tarefas
- **Uso**: Monitorar/finalizar processos, verificar uso de recursos
- **Informações**: CPU, memória, disco, rede por processo

### 5. Informações do Sistema
- **Comando**: `systeminfo | more`
- **Função**: Exibe informações detalhadas do sistema
- **Dados**: SO, hardware, patches instalados, configuração de rede
- **Formato**: Saída paginada para fácil leitura

### 6. Gerenciar Usuários Locais
- **Comando**: `lusrmgr.msc`
- **Função**: Abre console de gerenciamento de usuários e grupos locais
- **Uso**: Criar, modificar, desabilitar contas de usuário
- **Acesso**: Requer privilégios administrativos

### 7. Verificar Integridade de Arquivos (DISM)
- **Comando**: `DISM /Online /Cleanup-Image /ScanHealth`
- **Função**: Verifica integridade da imagem do Windows
- **Complemento**: Mais profundo que o SFC, verifica repositório de componentes
- **Uso**: Quando SFC falha ou não resolve problemas

### 8. Ativar/Desativar Firewall do Windows
- **Comandos**: 
  - Desativar: `netsh advfirewall set allprofiles state off`
  - Ativar: `netsh advfirewall set allprofiles state on`
- **Função**: Controla firewall para todos os perfis de rede
- **Perfis**: Domínio, Privado, Público
- **Aviso**: Desativar firewall reduz segurança do sistema

### 9. Ver Logs de Eventos
- **Comando**: `eventvwr`
- **Função**: Abre Visualizador de Eventos do Windows
- **Uso**: Diagnosticar erros, avisos, informações do sistema
- **Categorias**: Sistema, Aplicativo, Segurança, etc.

### 10. Criar Ponto de Restauração
- **Comando**: `powershell.exe -Command "Checkpoint-Computer -Description 'Ponto de Restauracao Manual'"`
- **Função**: Cria snapshot do estado atual do sistema
- **Uso**: Backup antes de alterações críticas
- **Recuperação**: Permite retornar a este estado específico

### 11. Executar Comando Personalizado (CMD)
- **Comando**: `cmd`
- **Função**: Abre prompt de comando para execução manual de comandos
- **Uso**: Comandos específicos não contemplados no menu
- **Flexibilidade**: Acesso total à linha de comando

### 12. Atualizar Todos os Programas (Winget)
- **Comando**: `winget update --all`
- **Função**: Atualiza todos os programas gerenciados pelo Winget
- **Requisito**: Windows Package Manager instalado
- **Benefício**: Atualização em lote de software

### 13. Desativar Windows Defender ⚠️
- **Comando**: `powershell -ExecutionPolicy Bypass -Command "Set-MpPreference -DisableRealtimeMonitoring $true"`
- **Função**: Desabilita monitoramento em tempo real do Windows Defender
- **ATENÇÃO**: Reduz drasticamente a segurança do sistema
- **Uso**: Apenas para troubleshooting específico

### 14. Verificar Atualizações do Windows
- **Comando**: `powershell.exe -command "Get-WindowsUpdateLog"`
- **Função**: Exibe log de atualizações do Windows
- **Informações**: Histórico de instalação, falhas, status

---

## 🌐 MENU DE FERRAMENTAS DE REDE (4 Opções)

### 1. Verificar Conectividade (Ping)
- **Comando**: `ping 8.8.8.8 -n 5`
- **Função**: Testa conectividade com servidor DNS do Google
- **Parâmetros**:
  - `8.8.8.8`: DNS público do Google (sempre disponível)
  - `-n 5`: Enviar 5 pacotes de teste
- **Resultados**: Tempo de resposta, perda de pacotes
- **Diagnóstico**: Identifica problemas de conectividade

### 2. Limpar Cache DNS
- **Comando**: `ipconfig /flushdns`
- **Função**: Remove entradas cached do DNS local
- **Uso**: Resolver problemas de resolução de nomes
- **Benefício**: Força nova consulta DNS para sites

### 3. Reiniciar Serviços de Rede
- **Comandos**: 
  - `netsh winsock reset`: Reset do catálogo Winsock
  - `netsh int ip reset`: Reset da pilha TCP/IP
- **Função**: Restaura configurações de rede aos padrões
- **Uso**: Resolver problemas de conectividade complexos
- **IMPORTANTE**: Requer reinicialização do sistema

### 4. Exibir Configurações Detalhadas de Rede
- **Comando**: `ipconfig /all`
- **Função**: Mostra configuração completa de todas as interfaces de rede
- **Informações**: IP, máscara, gateway, DNS, DHCP, MAC address
- **Uso**: Diagnóstico de configuração de rede

---

## 🔧 OUTRAS FERRAMENTAS (2 Opções)

### 1. Backup de Drivers
- **Comando**: `dism /online /export-driver /destination:%destino%`
- **Função**: Exporta todos os drivers instalados para uma pasta
- **Destino**: Pasta "DriversBackup" no mesmo local do script
- **Uso**: Backup antes de formatação ou mudança de hardware
- **Vantagem**: Permite reinstalar drivers sem internet

### 2. Abrir Desinstalador (Geek)
- **Comando**: `start "" "%~dp0APP\Desinstaldor.exe"`
- **Função**: Inicia o Geek Uninstaller portátil
- **Localização**: Pasta APP no mesmo diretório do script
- **Vantagem**: Desinstalação mais limpa que o desinstalador padrão
- **Funcionalidade**: Remove resíduos de registro e arquivos

---

## 🎯 ESPECIFICAÇÕES DETALHADAS DO GEEK UNINSTALLER

### Visão Geral Técnica
O **Geek Uninstaller** é um desinstalador avançado e portátil que vai muito além das capacidades do desinstalador padrão do Windows. Foi desenvolvido para garantir remoção completa de programas sem deixar vestígios no sistema.

### 📊 Características Técnicas

#### **Especificações do Software**
- **Tamanho**: Extremamente leve (~3-5 MB)
- **Tipo**: Aplicação portátil (não requer instalação)
- **Arquitetura**: Suporte nativo para 32 e 64 bits
- **Compatibilidade**: Windows 7/8/8.1/10/11
- **Idiomas**: Suporte para mais de 40 idiomas
- **Licença**: 100% Gratuito (versão Pro paga disponível)
- **Desenvolvedor**: Atualizado regularmente para máxima confiabilidade

#### **Interface do Usuário**
- **Design**: Interface minimalista e intuitiva
- **Funcionalidades visuais**: 
  - Programas recém-instalados/modificados destacados em cor roxa/laranja
  - Busca instantânea (digite para localizar aplicativo imediatamente)
  - Exibição de tamanho total dos programas instalados
  - Filtros para aplicativos Desktop vs Microsoft Store

### 🔍 Funcionalidades Principais

#### **1. Remoção Limpa (Clean Removal)**
- **Processo**: 
  1. Executa desinstalação padrão do programa
  2. Realiza varredura profunda e rápida do sistema
  3. Localiza e remove todos os vestígios restantes
- **Vantagens**: 
  - Remove arquivos residuais em pastas do sistema
  - Elimina entradas de registro órfãs
  - Limpa atalhos inválidos no Menu Iniciar
  - Remove pastas vazias deixadas pelo programa

#### **2. Remoção Forçada (Force Removal)**
- **Uso**: Para programas teimosos, corrompidos ou parcialmente instalados
- **Processo**:
  1. Identifica todos os componentes do programa no sistema
  2. Remove forçadamente arquivos bloqueados ou em uso
  3. Elimina entradas de registro mesmo sem desinstalador
- **Capacidades especiais**:
  - Remove programas que falharam na desinstalação normal
  - Elimina software corrompido que não responde
  - Força remoção de programas com desinstalador defeituoso

#### **3. Suporte a Aplicativos Microsoft Store**
- **Função**: Desinstala aplicativos UWP (Universal Windows Platform)
- **Acesso**: Menu View ou Ctrl+Tab para alternar entre Desktop e Store apps
- **Vantagem**: Remove aplicativos pré-instalados do Windows que normalmente são difíceis de remover

#### **4. Recursos Avançados de Interface**
- **Busca Instantânea**: Digite qualquer parte do nome para localizar programas rapidamente
- **Menu de Contexto Completo**:
  - Desinstalar (padrão)
  - Forçar Remoção
  - Remover Entrada de Registro
  - Pesquisar programa no Google
  - Acessar página do desenvolvedor
- **Informações Detalhadas**: Exibe tamanho, data de instalação e localização dos programas

### ⚡ Processo de Funcionamento Detalhado

#### **Etapa 1: Análise Inicial**
```
1. Geek Uninstaller lista todos os programas instalados
2. Identifica programas recentes (destacados em cor)
3. Calcula espaço total ocupado pelos programas
4. Separa aplicativos Desktop de aplicativos Store
```

#### **Etapa 2: Desinstalação Padrão**
```
1. Executa desinstalador oficial do programa (se disponível)
2. Monitora processo de desinstalação
3. Registra arquivos e pastas que deveriam ser removidos
```

#### **Etapa 3: Varredura Profunda**
```
1. Escaneia sistema de arquivos em busca de vestígios
2. Verifica registro do Windows para entradas órfãs
3. Localiza atalhos inválidos em menus e desktop
4. Identifica pastas vazias deixadas pelo programa
```

#### **Etapa 4: Apresentação dos Resultados**
```
1. Exibe lista de itens órfãos encontrados
2. Permite seleção individual do que remover
3. Mostra localização exata de cada arquivo/registro
4. Oferece opção de manter itens específicos se necessário
```

#### **Etapa 5: Limpeza Final**
```
1. Remove arquivos e pastas selecionados
2. Elimina entradas de registro escolhidas
3. Limpa atalhos inválidos
4. Remove pastas vazias
5. Confirma conclusão da remoção completa
```

### 🆚 Comparação com Desinstalador Padrão do Windows

| Aspecto | Windows Padrão | Geek Uninstaller |
|---------|---------------|------------------|
| **Arquivos Residuais** | Deixa muitos vestígios | Remove completamente |
| **Entradas de Registro** | Mantém entradas órfãs | Limpa registro completamente |
| **Programas Corrompidos** | Falha frequentemente | Remoção forçada eficaz |
| **Aplicativos Store** | Limitado | Suporte completo |
| **Velocidade** | Padrão | Varredura rápida e eficiente |
| **Interface** | Básica | Avançada com busca e filtros |
| **Informações** | Mínimas | Detalhadas (tamanho, data, etc.) |

### 🔧 Casos de Uso Específicos

#### **Para Técnicos de Suporte**
- **Limpeza antes da entrega**: Remove completamente software de teste ou temporário
- **Resolução de conflitos**: Elimina programas que causam instabilidade
- **Preparação para formatação**: Remove software preservando lista para reinstalação futura
- **Manutenção preventiva**: Limpeza profunda de software desnecessário

#### **Para Usuários Avançados**
- **Otimização de sistema**: Remove bloatware pré-instalado
- **Resolução de problemas**: Elimina software corrompido que não desinstala normalmente
- **Limpeza de sistema**: Mantém PC organizado sem vestígios de programas antigos
- **Gerenciamento de espaço**: Remove efetivamente programas grandes com todos os componentes

### 🛡️ Recursos de Segurança

#### **Proteções Implementadas**
- **Lista de Exclusão Automática**: Protege arquivos críticos do Windows
- **Confirmação Dupla**: Pede confirmação antes de remover itens importantes
- **Modo de Visualização**: Permite revisar o que será removido antes da execução
- **Log de Atividades**: Registra todas as ações para auditoria posterior

#### **Precauções Recomendadas**
- Criar ponto de restauração antes de remoções forçadas
- Revisar lista de itens órfãos antes de confirmar remoção
- Não remover entradas de registro se não tiver certeza da função
- Fazer backup de dados importantes antes de limpezas extensas

### 📈 Performance e Eficiência

#### **Velocidade de Execução**
- **Inicialização**: Instantânea (aplicativo portátil)
- **Varredura**: 15-60 segundos dependendo do tamanho do programa
- **Remoção**: Alguns segundos para maioria dos vestígios
- **Uso de Recursos**: Mínimo impacto no sistema durante operação

#### **Eficácia de Limpeza**
- **Taxa de Detecção**: ~95% dos vestígios encontrados e removidos
- **Falsos Positivos**: Muito baixos devido a algoritmos refinados
- **Compatibilidade**: Funciona com virtualmente todos os tipos de software
- **Confiabilidade**: Processo seguro sem danificar sistema operacional

### 🎯 Configurações e Personalização

#### **Opções Disponíveis**
- **Modo de Exibição**: Lista detalhada ou ícones grandes
- **Filtros**: Por tipo de aplicativo, data de instalação, tamanho
- **Idioma**: Seleção entre mais de 40 idiomas disponíveis
- **Comportamento**: Configuração de confirmações e avisos

#### **Versão Pro (Opcional)**
- **Recursos Adicionais**: 
  - Monitoramento de instalação em tempo real
  - Remoção em lote de múltiplos programas
  - Histórico detalhado de desinstalações
  - Suporte técnico prioritário
- **Custo**: Valor único (não é mensalidade)
- **Diferencial**: Versão gratuita já oferece funcionalidades completas para uso geral

---

## 📁 Estrutura de Arquivos no Pendrive

```
📁 Pendrive de Suporte/
├── 📄 Menu_Suporte_FUNESA.bat (script principal)
├── 📄 README.md (este arquivo)
├── 📁 APP/
│   └── 📄 Desinstaldor.exe (Geek Uninstaller - ~3-5MB)
├── 📁 DriversBackup/ (criada automaticamente)
└── 📁 GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}/
    └── (Atalhos para todas as configurações do Windows)
```

---

## ⚠️ Avisos e Precauções

### Requisitos Obrigatórios
- **Privilégios Administrativos**: Script deve ser executado como administrador
- **Windows Compatível**: Testado em Windows 7/8/10/11
- **Backup**: Sempre faça backup antes de executar reparos críticos

### Comandos que Requerem Reinicialização
- Reset de serviços de rede (`netsh winsock reset`)
- Teste de memória (`mdsched`)
- CHKDSK em unidade do sistema (dependendo do uso)

### Comandos com Riscos de Segurança
- Desativação do Windows Defender
- Desativação do Firewall
- Limpeza de arquivos temporários (irreversível)
- **Remoção forçada pelo Geek Uninstaller** (pode remover componentes importantes se mal utilizado)

### Tempo de Execução Estimado
- **Comandos Rápidos** (< 1 min): ping, ipconfig, taskmgr, lusrmgr, Geek Uninstaller (inicialização)
- **Comandos Médios** (1-5 min): cleanmgr, systeminfo, flush DNS, Geek Uninstaller (remoção padrão)
- **Comandos Longos** (5-30 min): sfc, DISM, defrag, Geek Uninstaller (remoção forçada com muitos vestígios)
- **Comandos Muito Longos** (30+ min): chkdsk, mdsched

---

## 🎯 Casos de Uso Recomendados

### Diagnóstico Inicial
1. Verificar saúde do disco
2. Informações do sistema
3. Ver logs de eventos
4. Testar conectividade de rede
5. **Verificar programas instalados com Geek Uninstaller (identificar software problemático)**

### Manutenção Preventiva
1. Desfragmentar disco
2. Limpar arquivos temporários
3. Atualizar programas (Winget)
4. Criar ponto de restauração
5. **Remover bloatware e programas desnecessários com Geek Uninstaller**

### Reparo de Problemas
1. Reparar arquivos de sistema (SFC)
2. Verificar integridade (DISM)
3. Reset de rede (se problemas de conectividade)
4. Restauração do sistema
5. **Remover software corrompido ou conflitante com remoção forçada**

### Preparação para Formatação
1. **Fazer lista de programas instalados via Geek Uninstaller**
2. Backup de drivers
3. Criar ponto de restauração
4. Backup de arquivos importantes (manual)
5. **Limpeza completa de software temporário ou de teste**

---

## 🆘 Solução de Problemas

### Script não executa
- **Causa**: Falta de privilégios administrativos
- **Solução**: Clicar direito → "Executar como administrador"

### Comandos falham
- **Causa**: Windows corrompido ou hardware defeituoso
- **Solução**: Executar em modo de segurança ou usar Windows PE

### Geek Uninstaller não abre
- **Causa**: Arquivo `Desinstaldor.exe` não encontrado na pasta APP
- **Solução**: Verificar se o arquivo está na pasta correta com nome exato

### Geek Uninstaller não remove programa
- **Causa**: Programa com proteção especial ou profundamente integrado ao sistema
- **Solução**: 
  1. Tentar remoção forçada
  2. Executar como administrador
  3. Finalizar processo do programa antes da remoção
  4. Usar modo de segurança se necessário

### Remoção forçada remove muitos itens
- **Causa**: Programa compartilha componentes com outros software
- **Solução**: 
  1. Revisar lista de itens órfãos cuidadosamente
  2. Desmarcar itens que pertencem a outros programas
  3. Pesquisar online sobre entradas de registro desconhecidas
  4. Criar ponto de restauração antes da remoção

### God Mode não funciona
- **Causa**: Nome da pasta incorreto ou Windows não suportado
- **Solução**: Verificar se o nome da pasta está exato como especificado

---

## 📞 Suporte e Contato

Para dúvidas sobre o uso das ferramentas ou problemas específicos:
- **Documentação adicional**: Parâmetro `/?` em cada ferramenta de linha de comando
- **Logs detalhados**: Visualizador de Eventos para análise de problemas
- **Geek Uninstaller**: Site oficial em https://geekuninstaller.com
- **Contato**: Juan Reis
- **LinkedIn**: [www.linkedin.com/in/juanreis](https://www.linkedin.com/in/juanreis)

---

## 🔗 Links Úteis

### Downloads e Recursos
- **Geek Uninstaller Oficial**: https://geekuninstaller.com/download
- **Documentação Microsoft**: https://docs.microsoft.com/windows
- **Ferramentas Sysinternals**: https://docs.microsoft.com/sysinternals

### Documentação de Comandos
- **CHKDSK**: `chkdsk /?`
- **SFC**: `sfc /?`
- **DISM**: `dism /?`
- **Geek Uninstaller**: Menu Ajuda dentro do aplicativo

---
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
