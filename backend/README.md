## Como rodar esse projeto

### Com docker compose
Docker compose é uma forma rápida de criar ambientes docker/ containers.

1. Instale docker compose

> *Dependendo da forma de instalação, o plugin **compose** já é automaticamente instalado. Para verificar, execute `$ docker compose`*

2. Crie um arquivo **.env** com o mesmo conteúdo de **.env.example** ou simplesmente rode `$ cp .env.example .env`.

3. Rode
```shell
  $ docker compose up --build
```
4. Acesse **localhost:8000/hello-world**.

OBS: Esse projeto usa imagens seguras, pode ser verificado em ./Dockerfile e ./docker-compose.yaml .
