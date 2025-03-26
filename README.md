# AdFly

Sistema de encurtamento de URLs com monetização através de anúncios.

## Tecnologias Utilizadas

- **Backend**: Elixir com Phoenix Framework
- **Frontend**: React com Vite e shadcn/ui
- **Banco de Dados**: PostgreSQL
- **Docker**: Para containerização e orquestração

## Requisitos

- Docker
- Docker Compose

## Estrutura do Projeto

```
adfly/
├── backend/           # API em Elixir/Phoenix
├── frontend/         # Interface em React
└── docker-compose.yml # Orquestração dos containers
```

## Executando o Projeto

### Usando Docker Compose (Recomendado)

Para executar todo o projeto (backend, frontend e banco de dados):

```bash
docker-compose up
```

Este comando irá:
- Construir as imagens do backend e frontend
- Iniciar o container do PostgreSQL
- Iniciar o servidor Phoenix na porta 4000
- Iniciar o servidor de desenvolvimento do React na porta 5173

Para parar todos os containers:
```bash
docker-compose down
```

Para remover os volumes (incluindo os dados do banco):
```bash
docker-compose down -v
```

### Executando Componentes Individualmente

#### Backend

```bash
cd backend
docker-compose up
```

#### Frontend

```bash
cd frontend
npm install
npm run dev
```

## Acessando a Aplicação

- Frontend: http://localhost:5173
- Backend API: http://localhost:4000
- Banco de Dados: localhost:5432

## Credenciais do Banco de Dados

- Usuário: postgres
- Senha: postgres
- Banco de Dados: adfly_dev

## Desenvolvimento

### Hot Reload

O projeto está configurado com hot reload tanto para o backend quanto para o frontend:

- Backend: As alterações nos arquivos Elixir serão refletidas automaticamente
- Frontend: As alterações nos arquivos React serão refletidas automaticamente

### Variáveis de Ambiente

#### Backend

- `DATABASE_URL`: URL de conexão com o banco de dados
- `SECRET_KEY_BASE`: Chave secreta para o Phoenix

#### Frontend

- `VITE_API_URL`: URL da API do backend

## Contribuindo

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
