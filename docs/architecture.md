# Arquitetura do Laboratório de Infraestrutura Imutável

Este documento detalha os componentes do ambiente e como eles se conectam.

## Diagrama

```mermaid
flowchart TB
  subgraph Configs
    Dotfiles[Dotfiles]
    NixOS[NixOS/Flakes]
  end

  subgraph Runtime
    Shell[Shell/Editor/CLI]
    System[SO Imutável]
  end

  Dotfiles --> Shell
  NixOS --> System
  System --> Security[Hardening]
  System --> Repro[Reprodutibilidade]
  Shell --> Productivity[Produtividade]
```

## Decisões

- Configuração declarativa para consistência
- Separação entre sistema e preferências do usuário
- Mudanças pequenas e auditáveis
