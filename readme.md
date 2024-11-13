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

    git clone https://github.com/vitucp/scs-aguia.git
        
  **Entre no diretório do projeto:**

        cd scs-aguia
  **Vá ate o diretorio frontend:**
  
         cd .\frontend\ 
        
  **instale as dependencias do projeto**
       
       npm install 
       

## Como Usar
> [!NOTE]
>  Para acessar o sistema web e recomendo utilizar postman para testar backend.

  Acessar o Backend

    http://localhost:81

    
  Acessar o Frontend

     http://localhost:82

## Estrutura de Pastas

    
    ├───backend
    │   └───scs-aguia
    │       ├───app                      # Lógica principal da aplicação
    │       │   ├───Middleware           # Manipulação de requisições HTTP (autenticação, etc.)
    │       │   └───Models               # Modelos de dados, representando entidades no banco de dados
    │       │       └───Traits           # Funcionalidades reutilizáveis para os modelos
    │       ├───config                    # Arquivos de configuração da aplicação (ex.: banco de dados, autenticação)
    │       ├───database                  # Estrutura de banco de dados
    │       │   └───migrations            # Scripts para criar e alterar tabelas no banco de dados
    │       ├───prisma                    # ORM Prisma para interação com o banco de dados
    │       │   └───migrations            # Migrations do Prisma, que modificam o esquema do banco de dados     
    │       │       
    │       ├───public                     # Arquivos estáticos públicos (imagens, scripts, etc.)
    │       ├───resources                  # Recursos como templates de views
    │       │   └───views                  # Arquivos de view para renderização no servidor
    │       └───start                      # Arquivos que inicializam e configuram a aplicação
    └───frontend
        ├───assets                        # Arquivos estáticos do frontend
        │   ├───css                       # Estilos CSS
        │   ├───img                       # Imagens utilizadas na interface
        │   │   ├───avatars               # Imagens de avatar
        │   │   ├───backgrounds           # Fundos e imagens de fundo
        │   │   ├───banner                # Imagens para banners
        │   │   ├───elements              # Elementos gráficos para a interface
        │   │   ├───favicon               # Ícones de favicon
        │   │   ├───icons                 # Ícones utilizados na interface
        │   │   │   ├───ico               # Ícones no formato .ico
        │   │   │   └───unicons            # Ícones Unicons
        │   │   ├───illustrations         # Ilustrações usadas na interface
        │   │   ├───layouts               # Layouts de interface
        │   │   └───veiculos              # Imagens de veículos
        │   ├───js                         # Scripts JavaScript
        │   └───vendor                     # Bibliotecas externas e recursos de terceiros
        │       ├───css                    # CSS de bibliotecas externas
        │       │   └───pages              # Estilos específicos para páginas externas
        │       ├───fonts                  # Fontes externas
        │       ├───js                     # Scripts JavaScript de bibliotecas externas
        │       └───libs                   # Bibliotecas específicas (gráficos, animações, etc.)
        │           ├───apex-charts        # Biblioteca para gráficos
        │           ├───highlight          # Biblioteca para destaque de sintaxe
        │           ├───jquery             # Biblioteca jQuery
        │           ├───masonry            # Biblioteca para layout em grade
        │           ├───perfect-scrollbar  # Biblioteca para scroll perfeito
        │           └───popper             # Biblioteca de popups (ferramenta de posicionamento)
        ├───src                            # Código-fonte principal do frontend
        │   ├───controller                 # Controladores que gerenciam a lógica da interface
        │   ├───middlewares                # Funções que interceptam e processam requisições
        │   ├───routers                    # Definições de rotas da aplicação
        │   └───utils                      # Funções utilitárias reutilizáveis
        └───views                          # Templates de páginas da interface
            ├───missoes                    # Páginas ou componentes relacionados às missões
            └───partials                   # Partes reutilizáveis das páginas (cabeçalhos, rodapés)
    
## ainda em faze de desenvolvimento.
