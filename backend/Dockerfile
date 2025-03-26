FROM elixir:1.16-alpine

# Instalar dependências do sistema
RUN apk add --no-cache build-base git python3 curl

# Criar diretório da aplicação
WORKDIR /app

# Copiar arquivos de configuração
COPY mix.exs mix.lock ./

# Instalar dependências do Elixir
RUN mix local.hex --force && \
    mix local.rebar --force && \
    mix deps.get

# Copiar o resto do código
COPY . .

# Compilar o projeto
RUN mix do compile

# Expor a porta
EXPOSE 4000

# Comando para iniciar a aplicação
CMD ["mix", "phx.server"] 