# Back-end Challenge 2021 🏅 - Space Flight News

> Este desafio consiste em desenvolver uma REST API utilizando os dados do projeto Space Flight News, uma API pública com informações relacionadas a voos espaciais.

This is a challenge by [Coodesh](https://coodesh.com/)

## Lista de tecnologias usadas 👨🏻‍💻

### Linguagem:
* <b>Ruby 3.1.2</b>

### Framework:
* <b>Rails 7.0.4</b>

### Banco de Dados:
* <b>PostgreSQL 14.5</b>

------------------------

### Gems Adicionadas:
- <b>Open-uri</b> -> Consumir outras APIs
- <b>Rest-client</b> -> Consumir outras APIs
- <b>Kaminari</b> -> Paginação
- <b>Whenever</b> -> Agendar tasks com CRON

## Instalando Space-Flight-News-API-Coodesh

Favor seguir os seguintes passos para a instalação após ter feito a clonagem na máquina:

No terminal da máquina, navegar até o diretório do projeto e executar:

## Instalar as gems utilizadas
```bash
~ bundle install
```

## Criar banco de dados PostgreSQL
```bash
~ rails db:create
```

## Realizar as migrações no banco de dados
```bash
~ rails db:migrate
```

## Popular o banco de dados
```bash
~ rails db:seed
```

## Executar tarefa diária CRON
```bash
~ bundle exec whenever --update-crontab --set environment='development'
```
## Abrir servidor da API
```bash
~ rails s
```


## Uso da API

Acessar:
http://localhost:3000/
