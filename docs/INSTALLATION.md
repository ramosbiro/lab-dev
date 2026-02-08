# Instalação

> Substitua os placeholders pelos seus caminhos reais.

## Pré-requisitos

- Windows 11 Pro 25H2
- WSL2 (Ubuntu 24.04.3 LTS)
- Git
- Docker Desktop (com integração WSL2 habilitada)

## Dotfiles

1. Faça backup das configs atuais.
2. Sincronize os arquivos de `dotfiles/` para o seu `$HOME`.
3. Reinicie o shell.

## NixOS

1. Ajuste os módulos em `nixos/` para o seu host.
2. Aplique o flake/módulos conforme sua rotina.

## Validação

- Verifique serviços ativos.
- Confirme permissões e políticas de segurança.
- Execute um boot de teste.

## Observações para WSL2

- Habilite a integração do Docker Desktop com a distro WSL.
- Caso use Nginx/Apache, instale por projeto via container.
