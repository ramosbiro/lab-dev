# Setup WSL2 (Windows 11 Pro 25H2)

## Objetivo

Documentar o ambiente WSL2 e como ele é configurado para desenvolvimento com foco em containers.

Ambiente atual: Windows 11 Pro 25H2 + WSL2 (Ubuntu 24.04.3 LTS) com shell bash.

## Passo a Passo (Resumo)

1. Instalar e atualizar o WSL2.
2. Instalar a distro Ubuntu/Debian.
3. Configurar shell, editor e Git.
4. Instalar Docker e Docker Compose no WSL2.
5. Configurar rede e integração com Windows.

## Checklist de Configuração

- [x] WSL2 instalado e atualizado
- [x] Distro instalada
- [x] Usuário configurado
- [x] Shell customizado (zsh + Oh My Zsh)
- [x] Git configurado (user.name/user.email definidos)
- [x] Docker e Compose instalados no WSL2
- [ ] Nginx/Apache disponíveis quando necessário

## Evidências do Setup

Inclua prints ou saída de comandos em `docs/evidence/` (opcional).

## Observações

- Docker Desktop integrado com WSL2.
- Shell padrão alterado para /usr/bin/zsh.
- Linguagens instaladas: Node.js, Go, Java, Rust, Python (pip/venv).
