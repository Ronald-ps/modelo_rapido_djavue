# O que é esse projeto
Esse projeto visa criar uma estrutura rápida de desenvolvimento usando vue.js + vite, e django.
Um dos objetivos desse projeto é o desacoplamento entre frontend e backend, no qual o frontend consuma a api do backend.
O foco é criar uma estrutura inicial de projeto para ser base para a criação de aplicações web.

## Tecnologias

### Vite + Vue.js
O frontend utiliza vue.js + vite. Vue.js permite a modularização de html/css/js.
O vite é um blunder que cria um ambiente de desenvolvimento suportado pelo node.js. Vite é rápido e amigável, facilita o gerenciamento de dependências.

### Django, com docker e poetry
Django é um framework MVC que facilita o desenvolvimento de aplicações web seguras e escaláveis.
Poetry é um gerenciador de dependências python. Permiti a padronização de ambientes de desenvolvimento e a gestão de versões.
Docker é uma tecnologia de criação de containers. Containers são ambientes linux que simulam um ambiente linux no seu computador. Docker é diferente de máquinas virtuais.
Com docker, é possível ter um mesmo ambiente independente de qual computador ou servidor você estiver usando.
Recomendo não instalar o poetry, apenas o docker e o docker compose.
