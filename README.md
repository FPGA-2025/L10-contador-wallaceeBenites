# Contador

Contadores binários são amplamente utilizados em sistemas digitais, com aplicações que vão desde contagem de tempo até redução da taxa de amostragem em sinais de áudio.

Nesta atividade, você irá implementar um módulo em **Verilog** que realiza a contagem binária síncrona de 8 bits. Esse contador deve ser capaz de incrementar ou decrementar seu valor com base em dois sinais de controle: `acrescer` e `decrescer`.

---

## Como funciona o contador?

O contador possui quatro sinais de entrada e um sinal de saída de 8 bits. As entradas são: `clk`, `rst_n` (reset ativo em nível lógico baixo), `acrescer` e `decrescer`.

Ao ser resetado, o contador deve iniciar com o valor **106** (ou `0x6A` em hexadecimal). A cada subida de clock:

- Se o sinal `acrescer` estiver ativo, o contador deve ser incrementado em 1 a cada ciclo de relógio.  
- Se `decrescer` estiver ativo, ele deve ser decrementado em 1 a cada ciclo de relógio.  
- Se ambos estiverem inativos ou ativos ao mesmo tempo, o valor do contador não deve mudar.

---

## Atividade

Implemente o módulo `Contador` em **Verilog**. Use o seguinte template como ponto de partida:

```verilog
module Contador (
    input  wire clk,
    input  wire rst_n,

    input  wire acrescer,
    input  wire decrescer,

    output reg [7:0] saida
);
    // Implementação aqui
endmodule
```

---
## Execução da atividade

Siga o modelo de módulo já fornecido e utilize o testbench e scripts de execução para sua verificação. Em seguida, implemente o circuito de acordo com as especificações e, se necessário, crie outros testes para verificá-lo.

Uma vez que estiver satisfeito com o seu código, execute o script de testes com `./run-all.sh`. Ele mostrará na tela `ERRO` em caso de falha ou `OK` em caso de sucesso.

## Entrega

Realize um *commit* no repositório do **GitHub Classroom**. O sistema de correção automática vai validar sua implementação e atribuir uma nota com base nos testes.

> **Dica:**  Não modifique os arquivos de correção! Para entender como os testes funcionam, consulte o script `run.sh` disponível no repositório.
