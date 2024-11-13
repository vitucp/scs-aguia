## Sistema de gerenciamento de missões e de conscência situacional

## Tecnologias Utilizadas


  <p align="center">
    <a href="https://skillicons.dev">
      <img src="https://skillicons.dev/icons?i=git,docker,adonis,js,nodejs" />
    </a>
  </p>
  


## Indice

- [Sobre o Projeto](#sobre-o-projeto)
- [Funcionalidades](#funcionalidades)
- [Pré-requisitos](#pré-requisitos)
- [Instalação](#instalação)
- [Como Usar](#como-usar)
- [Estrutura de Pastas](#estrutura-de-pastas)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)


## Sobre o Projeto

Este projeto visa criar uma plataforma completa para o planejamento, monitoramento e registro de missões operacionais e logísticas. 
Com um fluxo organizado em etapas desde o cadastro da missão até o apoio logístico — o sistema permite que equipes acompanhem de forma integrada todos os detalhes essenciais, facilitando a tomada de decisões estratégicas.
A plataforma centraliza o cadastro de pessoal, meios e recursos, gerando relatórios e documentos padronizados, garantindo assim maior eficiência e consciência situacional em cada operação.


## Funcionalidades Principais

- **Quadro de Missões:** Exibe todas as missões ativas, com informações essenciais para uma visão rápida e situacional.

- **Cadastro de Nova Missão:** Permite o registro inicial de uma missão, dividindo-a em dois grandes grupos: **Missões Operacionais** e **Missões Logísticas**, sob a responsabilidade das divisões S3 e S4, respectivamente.

- **Histórico:** Mantém um registro de missões anteriores, facilitando o acesso a dados e o acompanhamento de histórico para análise.

- **Banco de Dados:** Armazena informações sobre pessoal, veículos e demais recursos, para fácil seleção e atribuição em cada missão.

- **Relatórios:** Gera relatórios detalhados sobre cada missão, incluindo resumos e anexos logísticos, otimizando o acompanhamento e documentação das operações.


## Pré-requisitos

Antes de começar, certifique-se de ter os seguintes itens instalados:

- **Docker**: para criar e gerenciar contêineres, facilitando o desenvolvimento e a implantação do projeto em um ambiente isolado e consistente. [Clique aqui para instalar o Docker](https://docs.docker.com/get-docker/).

## Instalação
  **Clone o repositório usando o comando abaixo:**

        git clone https://github.com/vitucp/hubcreato.git
        
  **Entre no diretório do projeto:**

        cd hubcreato
  **Instale as dependências:**
  
        cd hubcreato &&  npm install

  **Instale as dependências:**
  
        cd frontend/src && npm install
        
  **Na raiz do projeto (hubcreato), crie um arquivo chamado .env com o seguinte comando:**
  
        copy .env.example .env

        
  **Rodar os Containers com Docker Compose**
       
       docker-compose up --build
       

## Como Usar
> [!NOTE]
>  caso deseje usar em ambiente de teste (homologação).

  Acessar o Backend

    http://localhost:81

    
  Acessar o Frontend

     http://localhost:82

## Estrutura de Pastas

> [!WARNING]
> Ainda Sujeito a alteração.

        ├─── frontend
    │   ├─── assets             # Arquivos estáticos, como imagens, CSS, etc.
    │   ├─── src
    │   │   ├─── controller      # Lógica dos controladores
    │   │   ├─── middlewares     # Funções intermediárias
    │   │   ├─── node_modules    # Dependências do projeto
    │   │   ├─── routers         # Definição de rotas
    │   │   └─── utils           # Utilitários e funções auxiliares
    │   └─── views               # Páginas principais
    │       ├─── home
    │       ├─── iaMatch
    │       ├─── login
    │       ├─── pagePayments
    │       ├─── pageSignature
    │       ├─── perfilEnterprise
    │       ├─── perfilUser
    │       └─── register
    └─── hubcreato
        ├─── app                # Pasta principal do back-end
        │   ├─── Controllers     # Controladores de requisição
        │   │   └─── Http        # Lógica HTTP para os controladores
        │   ├─── Middleware      # Middlewares personalizados
        │   ├─── Models          # Modelos de dados
        │   ├─── Routes          # Arquivos de rotas
        └─── config              # Configurações de ambiente e variáveis





> [!TIP]
> utilizado nos commits.
> 
    feat: nova funcionalidade ou recurso (ex.: feat: adicionar autenticação JWT).
    
    fix: correção de bugs (ex.: fix: corrigir erro na autenticação).
    
    docs: alterações na documentação (ex.: docs: atualizar README com instruções de instalação).
    
    style: ajustes de formatação, espaços, ponto e vírgula, etc. (sem alterações de código) (ex.: style: ajustar espaçamento no arquivo main.js).
    
    refactor: mudanças de código que não corrigem bugs nem adicionam funcionalidades (ex.: refactor: simplificar função de cálculo de idade).
    
    test: adição ou modificação de testes (ex.: test: adicionar testes para validação de e-mail).
    
    chore: tarefas rotineiras de manutenção (ex.: chore: atualizar dependências).
    
    perf: melhorias de performance (ex.: perf: otimizar consulta de banco de dados).
    
    ci: alterações de configuração de CI/CD (ex.: ci: adicionar configuração de deploy automático).
    
    build: alterações que afetam o sistema de build ou dependências externas (ex.: build: configurar Webpack).
    
    <tipo>(escopo opcional): <descrição>
