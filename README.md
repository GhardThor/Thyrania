# ⚔️ Thyranic 8.60 Server (Snowz Edition)

[![Tibia Version](https://img.shields.io/badge/Tibia-8.60-blue.svg)](https://tibia.com)
[![Engine](https://img.shields.io/badge/Engine-TFS%200.3.6%20%2F%200.4-orange.svg)]()
[![Database](https://img.shields.io/badge/Database-SQLite%20%7C%20MySQL-lightgrey.svg)]()
[![Status](https://img.shields.io/badge/Status-Ready%20to%20Play-brightgreen.svg)]()

Servidor de OpenTibia baseado na versão clássica **8.60**, apresentando o consagrado mapa **Thyranic / Snowz**, com sistema de guilds in-game, sistema bancário, balanceamento PvP clássico e suporte rápido via SQLite ou MySQL.

---

## 📋 Sumário
- [Características & Rates](#-características--rates)
- [Estrutura do Projeto](#-estrutura-do-projeto)
- [Requisitos](#-requisitos)
- [Como Executar](#-como-executar)
  - [Opção 1: Inicialização Rápida (SQLite)](#opção-1-inicialização-rápida-sqlite)
  - [Opção 2: Com Servidor Web (MySQL / Gesior / Znote)](#opção-2-com-servidor-web-mysql--gesior--znote)
- [Configurações Principais (config.lua)](#-configurações-principais-configlua)
- [Contas Padrão](#-contas-padrão)
- [Solução de Problemas](#-solução-de-problemas)

---

## ⚡ Características & Rates

| Configuração | Padrão | Descrição |
| :--- | :--- | :--- |
| **Versão do Cliente** | `8.60` | Compatível com clientes 8.60 e IP Changers |
| **Tipo de Mundo** | `PvP` | Proteção até nível 25 |
| **Experiência** | `50x` | Taxa fixa (ou configurável por estágios) |
| **Skills** | `30x` | Avanço rápido de combate |
| **Magic Level** | `15x` | Avanço equilibrado |
| **Loot** | `1.5x` | Drop clássico |
| **Spawns** | `1x` | Tempo de renascimento padrão |
| **Mapa** | `Thyranic` | Mapa clássico Snowz Team |

### 🛠️ Destaques
- **Account Manager in-game** nativo (`1/1`).
- **Sistema de Frags**: Red Skull e Black Skull ativos com proteção e anti-entrosa.
- **Sistemas Ativos**: Bank System, Guilds in-game (`!createguild`), Casas (`!buyhouse`).
- **Mods**: Sistema de `firstitems` configurado para novos personagens.

---

## 📂 Estrutura do Projeto

```text
├── config.lua         # Arquivo central de configurações do servidor
├── Database.s3db      # Banco de dados SQLite padrão pré-configurado
├── database.sql       # Script SQL para instalação no MySQL / phpMyAdmin
├── libmysql.dll       # DLL para suporte a conexões MySQL
├── libxml2.dll        # Biblioteca de leitura de arquivos XML
├── mods/              # Módulos customizados (ex: firstitems)
├── schemas/           # Esquemas estruturais das tabelas
└── data/
    ├── actions/       # Alavancas, baús de quest, poções e runas
    ├── creaturescripts/# Eventos de login, morte e avanço
    ├── monsters/      # Definições e balanceamento de monstros
    ├── npc/           # Vendedores, barqueiros e diálogos
    ├── spells/        # Magias e runas
    ├── talkactions/   # Comandos (!bless, !buyhouse, /b, /m)
    └── world/         # Mapa Thyranic (.otbm) e spawns
```

---

## 💻 Requisitos

1. **Windows** (7, 8, 10 ou 11).
2. **Visual C++ Redistributable (x86 / 32-bit)** instalado no sistema.
3. **Cliente Tibia 8.60** + **OtLand IP Changer** (ou cliente customizado).
4. *(Opcional)* **XAMPP** ou **UniServerZ** se desejar utilizar website (AAC) e MySQL.

---

## 🚀 Como Executar

### Opção 1: Inicialização Rápida (SQLite)
Ideal para testar localmente ou jogar com amigos de forma rápida:

1. Abra o arquivo `config.lua`.
2. Certifique-se de que a configuração de banco está em:
   ```lua
   sqlType = "sqlite"
   sqlFile = "Database.s3db"
   ```
3. Defina seu endereço de IP no `config.lua`:
   - Para jogar sozinho: `ip = "127.0.0.1"`
   - Para rede local/Hamachi/No-IP: coloque o respectivo IPv4.
4. Execute o executável do servidor (`.exe`).
5. Abra seu cliente Tibia 8.60, use o IP Changer apontando para o seu IP e crie sua conta entrando com **1/1**.

---

### Opção 2: Com Servidor Web (MySQL / Gesior / Znote)
Para servidores dedicados ou servidores com site:

1. Inicie o Apache e o MySQL no **XAMPP**.
2. Acesse `http://localhost/phpmyadmin` e crie um banco de dados chamado `database` (ou de sua preferência).
3. Importe o arquivo `database.sql`.
4. No arquivo `config.lua`, ajuste a seção SQL:
   ```lua
   sqlType = "mysql"
   sqlHost = "localhost"
   sqlPort = 3306
   sqlUser = "root"
   sqlPass = "SUA_SENHA_AQUI"
   sqlDatabase = "database"
   ```
5. Inicie o executável do servidor.

---

## ⚙️ Configurações Principais (config.lua)

- **Portas de Conexão**:
  - `loginPort = 7171`
  - `gamePort = 7172`
  *(Lembre-se de liberar essas portas TCP no firewall e roteador se for hospedar publicamente)*.
- **Taxas (Rates)**: Linhas `189-193` no `config.lua`.
- **Proteção PvP**: Linha `42` (`protectionLevel = 25`).

---

## 🔑 Contas Padrão

- **Account Manager**: `1` / `1`
- **Conta God (Padrão TFS SQLite)**:
  - *Account:* `222222` / *Password:* `tibia` (ou consulte a tabela `accounts` via SQLiteStudio).

---

## ❓ Solução de Problemas

- **Erro de DLL ausente (`MSVCR100.dll` / `libmysql.dll`)**:
  - Instale o *Microsoft Visual C++ 2010 Redistributable Package (x86)*.
- **Outros jogadores não conseguem conectar**:
  - Verifique se as portas `7171` e `7172` (TCP) estão abertas no seu roteador.
  - Libere o executável no Firewall do Windows.
  - Altere `ip = "127.0.0.1"` no `config.lua` para o seu IPv4 público ou domínio No-IP.

---

## 📜 Créditos
- **The Forgotten Server Team** (Engine base).
