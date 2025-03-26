# AdFly Backend

Backend da aplicação AdFly desenvolvido em Elixir com Phoenix Framework.

## Requisitos

- Docker
- Docker Compose

## Configuração do Ambiente

1. Clone o repositório
2. Entre na pasta do backend:
```bash
cd backend
```

## Executando com Docker

Para executar o backend com PostgreSQL usando Docker Compose:

```bash
docker-compose up
```

Este comando irá:
- Construir a imagem do backend
- Iniciar o container do PostgreSQL
- Iniciar o servidor Phoenix na porta 4000

Para parar os containers:
```bash
docker-compose down
```

Para remover os volumes (incluindo os dados do banco):
```bash
docker-compose down -v
```

## Executando Localmente (sem Docker)

Se preferir executar localmente:

1. Instale o Elixir e o PostgreSQL
2. Configure as variáveis de ambiente:
```bash
export DATABASE_URL=ecto://postgres:postgres@localhost:5432/adfly_dev
export SECRET_KEY_BASE=your_secret_key_base_here
```

3. Instale as dependências:
```bash
mix deps.get
```

4. Crie e migre o banco de dados:
```bash
mix ecto.create
mix ecto.migrate
```

5. Inicie o servidor:
```bash
mix phx.server
```

## Endpoints da API

- `POST /api/auth/login` - Autenticação de usuário
- `POST /api/auth/register` - Registro de novo usuário
- `GET /api/user/me` - Informações do usuário autenticado

## Estrutura do Projeto

```
backend/
├── lib/
│   ├── adfly/          # Código da aplicação
│   │   ├── accounts/   # Contexto de contas
│   │   ├── auth/       # Autenticação
│   │   └── web/        # Controllers e views
│   └── adfly.ex        # Módulo principal
├── test/               # Testes
├── config/             # Configurações
└── mix.exs            # Dependências e configuração do projeto
```

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
