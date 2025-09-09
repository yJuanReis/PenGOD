# 🛠️ PenGOD

<div align="center">

<picture>
<img alt="Windows" src="https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white" />
</picture>
<picture>
<img alt="Batch" src="https://img.shields.io/badge/Batch-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white" />
</picture>
<picture>
<img alt="MIT License" src="https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge" />
</picture>
<picture>
<img alt="Version" src="https://img.shields.io/badge/Version-1.0-blue?style=for-the-badge" />
</picture>

<p><strong>Pendrive com ferramentas de suporte Windows por Juan Reis</strong></p>
<p>Menu interativo com <strong>47 funções</strong> para manutenção, reparo e diagnóstico de sistema<br/>Contém script batch, Geek Uninstaller e God Mode<br/>Ideal para técnicos e usuários avançados</p>

<a href="https://www.linkedin.com/in/juanreis" rel="nofollow" target="_blank">
<picture>
<img alt="LinkedIn - Juan Reis" src="https://img.shields.io/badge/LinkedIn-Juan_Reis-0077B5?style=for-the-badge&logo=linkedin" />
</picture>
</a>

</div>

---

## 📋 Índice

- [🚀 Configurações Iniciais](#-configurações-iniciais)
- [📋 Menu Principal](#-menu-principal)
- [💾 Manutenção de Disco](#-manutenção-de-disco)
- [⚙️ Ferramentas de Sistema](#️-ferramentas-de-sistema)
- [🌐 Ferramentas de Rede](#-ferramentas-de-rede)
- [🔧 Outras Ferramentas](#-outras-ferramentas)
- [🎯 Geek Uninstaller](#-geek-uninstaller-detalhado)
- [📁 Estrutura de Arquivos](#-estrutura-de-arquivos)
- [⚠️ Avisos Importantes](#️-avisos-importantes)
- [🆘 Solução de Problemas](#-solução-de-problemas)
- [📞 Suporte](#-suporte)

---

## 🚀 Configurações Iniciais

### Comandos de Inicialização
```batch
@echo off                    # Oculta os comandos executados
chcp 65001 >nul             # Define codificação UTF-8 
mode con: cols=100 lines=35  # Define janela: 100x35
setlocal enabledelayedexpansion # Habilita expansão de variáveis
title MENU DE SUPORTE E REPARO - FUNESA # Título da janela
color 0A                     # Cor: fundo preto, texto verde
```

### 🔒 Verificação de Privilégios
- **Comando**: `cacls.exe "%SYSTEMROOT%\system32\config\system"`
- **Função**: Verifica privilégios administrativos automaticamente
- **Importância**: Muitas funções requerem acesso elevado

---

## 📋 Menu Principal

| Opção | Descrição | Funções |
|-------|-----------|---------|
| **1** | Manutenção de Disco | 7 opções |
| **2** | Ferramentas de Sistema | 14 opções |
| **3** | Ferramentas de Rede | 4 opções |
| **4** | Outras Ferramentas | 2 opções |
| **5** | Sair | - |

---

## 💾 Manutenção de Disco

### 🔧 Funcionalidades Disponíveis (7 opções)

| # | Ferramenta | Comando | Descrição |
|---|------------|---------|-----------|
| **1** | CHKDSK | `chkdsk /f C:` | Verifica e corrige erros no disco |
| **2** | Desfragmentar | `defrag C: /h` | Reorganiza arquivos para melhor performance |
| **3** | Teste de Velocidade | `winsat disk` | Benchmark de performance do disco |
| **4** | Limpeza CMD | `del /q /f /s "%TEMP%*.*"` | Remove arquivos temporários via linha de comando |
| **5** | Limpeza GUI | `cleanmgr.exe` | Interface gráfica de limpeza do Windows |
| **6** | Saúde do Disco | `wmic diskdrive get status` | Verifica status de saúde de todos os discos |

### ⏱️ Tempos Estimados
- **CHKDSK**: 30 min - 2 horas (dependendo do tamanho)
- **Desfragmentação**: 15 min - 1 hora
- **Outros**: 1-5 minutos

---

## ⚙️ Ferramentas de Sistema

### 🛠️ Funcionalidades Disponíveis (14 opções)

<details>
<summary><b>🔍 Clique para ver todas as ferramentas</b></summary>

| # | Ferramenta | Comando | Função Principal |
|---|------------|---------|------------------|
| **1** | SFC Scan | `sfc /scannow` | Repara arquivos de sistema |
| **2** | Teste RAM | `mdsched` | Diagnóstico de memória |
| **3** | Restauração | `rstrui` | Restaurar sistema |
| **4** | Task Manager | `taskmgr` | Gerenciar processos |
| **5** | Info Sistema | `systeminfo` | Informações detalhadas |
| **6** | Usuários | `lusrmgr.msc` | Gerenciar contas locais |
| **7** | DISM | `DISM /Online /Cleanup-Image /ScanHealth` | Integridade da imagem Windows |
| **8** | Firewall | `netsh advfirewall` | Controlar firewall |
| **9** | Event Viewer | `eventvwr` | Visualizar logs do sistema |
| **10** | Ponto Restauração | `Checkpoint-Computer` | Criar backup do estado |
| **11** | CMD Personalizado | `cmd` | Prompt de comando |
| **12** | Atualizar Apps | `winget update --all` | Atualizar programas via Winget |
| **13** | Defender OFF | `Set-MpPreference` | ⚠️ Desativar Windows Defender |
| **14** | Windows Update | `Get-WindowsUpdateLog` | Log de atualizações |

</details>

### ⚠️ Comandos de Alto Risco
- **Desativar Defender**: Reduz segurança drasticamente
- **Desativar Firewall**: Expõe sistema a ameaças
- **DISM/SFC**: Podem demorar 30+ minutos

---

## 🌐 Ferramentas de Rede

| # | Ferramenta | Comando | Descrição |
|---|------------|---------|-----------|
| **1** | Teste Conectividade | `ping 8.8.8.8 -n 5` | Testa conexão com DNS Google |
| **2** | Limpar DNS | `ipconfig /flushdns` | Remove cache DNS local |
| **3** | Reset Rede | `netsh winsock reset` | Restaura configurações de rede |
| **4** | Config Rede | `ipconfig /all` | Mostra configuração completa |

> **⚠️ Importante**: Reset de rede requer reinicialização do sistema.

---

## 🔧 Outras Ferramentas

### 📦 Funcionalidades Extras

| # | Ferramenta | Descrição | Localização |
|---|------------|-----------|-------------|
| **1** | Backup Drivers | Exporta todos os drivers instalados | `DriversBackup/` |
| **2** | Geek Uninstaller | Desinstalador avançado e completo | `APP/Desinstaldor.exe` |

---

## 🎯 Geek Uninstaller Detalhado

### 📊 Especificações Técnicas

| Característica | Especificação |
|----------------|---------------|
| **Tamanho** | ~3-5 MB |
| **Tipo** | Portátil (não requer instalação) |
| **Arquitetura** | 32 e 64 bits |
| **Compatibilidade** | Windows 7/8/10/11 |
| **Idiomas** | Mais de 40 idiomas |
| **Licença** | 100% Gratuito |

</div>

### ⚡ Funcionalidades Principais

#### 🧹 **Remoção Limpa**
- Executa desinstalação padrão
- Realiza varredura profunda do sistema  
- Remove todos os vestígios (arquivos, registro, atalhos)
- Taxa de sucesso: ~95%

#### 💪 **Remoção Forçada**  
- Para programas corrompidos ou teimosos
- Remove arquivos bloqueados
- Elimina software sem desinstalador
- Força remoção de programas defeituosos

#### 🏪 **Suporte Microsoft Store**
- Desinstala aplicativos UWP
- Remove bloatware pré-instalado
- Acesso via Ctrl+Tab

#### 🔍 **Interface Avançada**
- Busca instantânea (digite para localizar)
- Programas recentes destacados
- Exibição de tamanho total
- Menu de contexto completo

### 🆚 Comparação com Desinstalador Padrão

| Aspecto | Windows Padrão | Geek Uninstaller |
|---------|---------------|------------------|
| **Arquivos Residuais** | ❌ Deixa vestígios | ✅ Remove completamente |
| **Registro** | ❌ Entradas órfãs | ✅ Limpeza completa |
| **Programas Corrompidos** | ❌ Falha frequente | ✅ Remoção forçada |
| **Apps Store** | ❌ Limitado | ✅ Suporte completo |
| **Velocidade** | ⚡ Padrão | ⚡⚡ Rápido e eficiente |
| **Interface** | 📱 Básica | 📱📱 Avançada com filtros |

---

## 📁 Estrutura de Arquivos

```
📁 Pendrive de Suporte/
├── 📄 Menu_Suporte_FUNESA.bat     # Script principal
├── 📄 README.md                   # Documentação
├── 📁 APP/
│   └── 📄 Desinstaldor.exe       # Geek Uninstaller (~3-5MB)
├── 📁 DriversBackup/             # Backup de drivers (auto-criada)
└── 📁 GodMode.{ED7BA470-8E54-465E-825C-99712043E01C}/
    └── # Acesso direto a configurações avançadas do Windows
```

---

## ⚠️ Avisos Importantes

### 🔐 Requisitos Obrigatórios
- ✅ **Privilégios Administrativos** - Execute como administrador
- ✅ **Windows Compatível** - Testado em Windows 7/8/10/11  
- ✅ **Backup** - Sempre faça backup antes de reparos críticos

### 🔄 Comandos que Requerem Reinicialização
- Reset de serviços de rede
- Teste de memória (mdsched)
- CHKDSK em disco do sistema

### ⚠️ Comandos de Alto Risco
> **Atenção**: Os comandos abaixo podem afetar a segurança do sistema

- 🛡️ Desativação do Windows Defender
- 🔥 Desativação do Firewall  
- 🗑️ Limpeza de arquivos temporários (irreversível)
- 💥 Remoção forçada (pode remover componentes importantes)

### ⏰ Tempo de Execução Estimado

| Categoria | Tempo | Exemplos |
|-----------|-------|----------|
| **Rápidos** | < 1 min | ping, taskmgr, Geek (iniciar) |
| **Médios** | 1-5 min | cleanmgr, ipconfig, Geek (remoção padrão) |
| **Longos** | 5-30 min | sfc, DISM, defrag |
| **Muito Longos** | 30+ min | chkdsk, mdsched |

---

## 🎯 Casos de Uso Recomendados

### 🔍 **Diagnóstico Inicial**
1. ✅ Verificar saúde do disco
2. ✅ Informações do sistema  
3. ✅ Ver logs de eventos
4. ✅ Testar conectividade
5. ✅ Identificar software problemático (Geek)

### 🧹 **Manutenção Preventiva** 
1. ✅ Desfragmentar disco
2. ✅ Limpar arquivos temporários
3. ✅ Atualizar programas
4. ✅ Criar ponto de restauração
5. ✅ Remover bloatware (Geek)

### 🔧 **Reparo de Problemas**
1. ✅ Reparar arquivos de sistema (SFC)
2. ✅ Verificar integridade (DISM)
3. ✅ Reset de rede
4. ✅ Restauração do sistema
5. ✅ Remover software corrompido (Geek)

### 💾 **Preparação para Formatação**
1. ✅ Listar programas instalados (Geek)
2. ✅ Backup de drivers
3. ✅ Criar ponto de restauração  
4. ✅ Backup manual de arquivos
5. ✅ Limpeza completa do sistema

---

## 🆘 Solução de Problemas

<details>
<summary><b>🔧 Clique para ver soluções comuns</b></summary>

### ❌ **Script não executa**
- **Causa**: Falta privilégios administrativos
- **Solução**: Clicar direito → "Executar como administrador"

### ❌ **Comandos falham**  
- **Causa**: Windows corrompido ou hardware defeituoso
- **Solução**: Executar em modo segurança ou usar Windows PE

### ❌ **Geek Uninstaller não abre**
- **Causa**: Arquivo não encontrado em `APP/`
- **Solução**: Verificar se `Desinstaldor.exe` está na pasta correta

### ❌ **Geek não remove programa**
- **Soluções**:
  1. Tentar remoção forçada
  2. Executar como administrador  
  3. Finalizar processo antes da remoção
  4. Usar modo segurança

### ❌ **Remoção forçada remove muito**
- **Precauções**:
  1. Revisar lista cuidadosamente
  2. Desmarcar itens de outros programas
  3. Pesquisar entradas desconhecidas
  4. Criar ponto de restauração antes

### ❌ **God Mode não funciona**
- **Solução**: Verificar nome exato da pasta

</details>

---

## 🔗 Links Úteis

### 📥 Downloads e Recursos
- **Geek Uninstaller**: [geekuninstaller.com](https://geekuninstaller.com)
- **Microsoft Docs**: [docs.microsoft.com/windows](https://docs.microsoft.com/windows)  
- **Sysinternals**: [docs.microsoft.com/sysinternals](https://docs.microsoft.com/sysinternals)

### 📚 Documentação de Comandos
- **CHKDSK**: `chkdsk /?`
- **SFC**: `sfc /?` 
- **DISM**: `dism /?`
- **Geek**: Menu Ajuda no aplicativo

---

## 📞 Suporte

<div align="center">

Para dúvidas ou problemas técnicos:

Contato:
<a href="mailto:juanreissilva@gmail.com" rel="nofollow"> <p><strong>Pendrive com ferramentas de suporte Windows por Juan Reis</strong></p> <p>Menu interativo com <strong>47 funções</strong> para manutenção, reparo e diagnóstico de sistema<br/>Contém script batch, Geek Uninstaller e God Mode<br/>Ideal para técnicos e usuários avançados</p> </a> <a href="mailto:juanreissilva@gmail.com" rel="nofollow"> <picture> <img alt="E-mail - Juan Reis" src="https://img.shields.io/badge/Email-juanreissilva%40gmail.com-6c757d?style=for-the-badge&logo=gmail&logoColor=white" /> </picture> </a> <a href="https://www.linkedin.com/in/juanreis" rel="nofollow"> <picture> <img alt="LinkedIn - Juan Reis" src="https://img.shields.io/badge/LinkedIn-Juan_Reis-0077B5?style=for-the-badge&logo=linkedin" /> </picture> </a>

</div>

---

## 📜 Licença

<details>
<summary><b>MIT License - Clique para ver o texto completo</b></summary>

```
MIT License

Copyright (c) 2025 Juan Reis

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

</details>

---

<div align="center">
<picture>
<img alt="Feito para" src="https://img.shields.io/badge/Feito_para-Windows-0078D6?style=flat-square&logo=windows" />
</picture>

<picture>
<img alt="Script" src="https://img.shields.io/badge/Script-Batch-4EAA25?style=flat-square&logo=gnu-bash" />
</picture>

<picture>
<img alt="Se útil" src="https://img.shields.io/badge/%E2%AD%90_Se_%C3%BAtil,-favorite_este_repo-yellow?style=flat-square" />
</picture>

</div>
