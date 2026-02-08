# Setup Rápido (Novo Projeto)

## 1) Clonar e abrir

- Clone o repositório e abra no VS Code.

## 2) Sincronizar dotfiles

- Execute:
  - `scripts/sync_dotfiles.sh`

## 3) Verificar stack

- Docker: `docker --version`
- Compose: `docker compose version`
- Node: `node -v`
- Python: `python3 --version`

## 4) Subir serviços de exemplo

- `docker compose up`
- `docker compose --profile web up`

## 5) Ajustar variáveis

- Atualize `dotfiles/git/.gitconfig` se necessário.
- Ajuste o `.zshrc` conforme preferências pessoais.
