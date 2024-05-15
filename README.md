# Instalador de Ambiente de Desenvolvimento

Este repositório contém um script de shell para configurar rapidamente um ambiente de desenvolvimento em máquinas baseadas em Ubuntu / Debian.

## Sobre o Script

O script `setup.sh` automatiza o processo de instalação das seguintes ferramentas:

- Git
- Zsh
- Docker
- Node.js via NVM
- Python e pip
- Android Studio
- Visual Studio Code
- IntelliJ IDEA Community
- Google Chrome

## Pré-requisitos

Antes de executar o script, certifique-se de que você está rodando uma distribuição baseada em Ubuntu / Debian e que possui privilégios de administrador (sudo).

## Como Usar

Para usar o script, clone o repositório e execute o seguinte comando no terminal:

```bash
./setup.sh
```

# Zsh

Se você estiver usando o Zsh, pode ser necessário tornar o script executável antes de rodá-lo. Use o seguinte comando:

```bash
chmod +x setup.sh && ./setup.sh
```

Isso garantirá que o script tenha as permissões necessárias para ser executado em um terminal que utiliza o Zsh.

# Contribuições

Contribuições são sempre bem-vindas! Se você tem uma sugestão para melhorar este script, por favor, faça um fork do repositório e crie um pull request, ou abra uma issue com a tag “melhoria”.
