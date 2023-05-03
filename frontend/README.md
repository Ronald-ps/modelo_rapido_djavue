# Vue 3 + Vite

This template should help get you started developing with Vue 3 in Vite. The template uses Vue 3 `<script setup>` SFCs, check out the [script setup docs](https://v3.vuejs.org/api/sfc-script-setup.html#sfc-script-setup) to learn more.

## Recommended IDE Setup

-   [VS Code](https://code.visualstudio.com/) + [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar) (and disable Vetur) + [TypeScript Vue Plugin (Volar)](https://marketplace.visualstudio.com/items?itemName=Vue.vscode-typescript-vue-plugin).

## Comandos do projeto
```shell
# Instalar dependências
$ npm i
# Rodar projeto localmente
$ npm run dev
# Formatar código
$ npm run format
# Verificar erros e lint
$ npm run lint
```

## Tecnologias
### Vite + Vue.js
Esse projeto usa vue.js + vite. O vue permite modularizar conteúdo web (html/css/js),
modificar o dom com praticidade, além de renderização de conteúdo do lado do cliente de uma maneira fácil. O vite é rápido e amigável.

### Formatação de código
É usado prettier como formatador e EsLint como lint. As configurações podem ser modificadas no arquivo
.prettierrc.json. O eslint aponta erros baseados na configuração do prettier. Na prática, isso evita conflito entre os dois.

### Axios como ferramenta de requisição
Para requisições http, a biblioteca axios é usada. O axios é uma ferramenta de requisição amigável
e útil para o desenvolvimento rápido.
