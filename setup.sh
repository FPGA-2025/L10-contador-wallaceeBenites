#!/bin/bash

# Instala as dependências necessárias
sudo apt-get update
sudo apt-get install -y iverilog vvp

# Compila e executa os testes
iverilog -o simv Contador.v tb.v
vvp simv

# Verifica se a simulação foi bem sucedida
if [ $? -eq 0 ]; then
    echo "Todos os testes passaram!"
    exit 0
else
    echo "Alguns testes falharam."
    exit 1
fi
