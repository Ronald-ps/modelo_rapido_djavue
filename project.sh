#!/bin/bash
function print_colored_text {
  local text="$1"
  local color="$2"

  case "$color" in
    "red")
      echo -e "\033[31m$text\033[0m"
      ;;
    "green")
      echo -e "\033[32m$text\033[0m"
      ;;
    "yellow")
      echo -e "\033[33m$text\033[0m"
      ;;
    "blue")
      echo -e "\033[34m$text\033[0m"
      ;;
    *)
      echo "Invalid color"
      ;;
  esac
}

dir_name_frontend="frontend"
dir_name_backend="backend"
# Obtém caminho em que está o script
SCRIPT_DIR=`dirname "$(readlink -f '$0')"`

print_colored_text "Verifique se esse é o caminho correto do projeto:" red
sleep 3

print_colored_text "\t$SCRIPT_DIR" blue
sleep 3

print_colored_text "Caso não seja, dê ctrl + C." yellow
sleep 7

up_project(){
    if ! command -v npm &> /dev/null
    then
        echo -e "\n\tNPM não está instalado. É necessário ter o NPM instalado para rodar o projeto\n"
        exit 1
    fi

    if ! command -v docker compose &> /dev/null
    then
        echo -e "\n\tDocker e docker compose deve estar instalado para rodar o projeto\n"
        exit 1
    fi

    echo -e "\n\t Dependencias estão instaladas corretamente. Iniciando build do projeto."

    if [ -d "$SCRIPT_DIR/$dir_backend" ]; then
        print_colored_text "\nSubindo projeto do backend" green
        sleep 2
        cd $SCRIPT_DIR/$dir_backend
        docker compose up -d
        cd ..
    else
        print_colored_text "\nPasta de projeto $SCRIPT_DIR/$dir_backend não encontrada" red
        sleep 2
        exit 1
    fi

    if [ -d "$SCRIPT_DIR/$dir_frontend" ]; then
        print_colored_text "\nSubindo projeto do frontend" green
        sleep 2
        cd $SCRIPT_DIR/$dir_frontend
        npm i
        nohup npm run dev > /dev/null 2>&1 &
        cd ..
    else
        print_colored_text "\nPasta de projeto $SCRIPT_DIR/$dir_frontend não encontrada" red
        sleep 2
        exit 1
    fi

    print_colored_text "\nProjeto rodando. Acesse a aplicação pelo navegador\n" green
    sleep 4
    exit 0
}

if [[ "$1" == "up" ]]; then
    cd $SCRIPT_DIR/$dir_backend
    up_project
fi

# TODO: Nomear o processo do vite para que eu possa pará-lo
if [[ "$1" == "stop" ]]; then
    cd $SCRIPT_DIR/$dir_backend
    docker compose stop
    cd ..
    echo -e "Ainda não estou parando o projeto do frontend. Tenho que nomear o processo."
    sleep 9
fi
