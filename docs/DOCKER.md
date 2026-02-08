# Docker e Docker Compose

## Objetivo

Padronizar o uso de containers no ambiente WSL2.

## Docker Desktop + WSL2

- Docker Desktop integrado à distro WSL2.
- Docker e Compose disponíveis no terminal WSL.

## Compose Base

Arquivo: `docker-compose.yml`

Inclui:
- `app`: container Node para executar comandos de verificação.
- `nginx`: perfil `web` (opcional).
- `apache`: perfil `web` (opcional).

## Uso rápido

- Perfil padrão: `docker compose up`
- Perfil web: `docker compose --profile web up`
