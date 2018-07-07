O programa é um design de circuito digitail de uma Ula aritimética. No programa o usuário poderá fazer as 16 operações seguintes com as entradas A e B:

Código    | Saída   | Código  | Saída   
:-------: | ------: | ------: | ------: 
0000      | 0000    |1000     | A + B
0001      | 1111    |1001     | A - B
0010      |  A      |1010     | A * B
0011      |  B      |1011     | A / B
0100      |  A or B |1100     | A mod B 
0101      |A and B  |1101     | A * A
0110      |A xor B  |1110     | - A
0111      | not A   |1111     | A + 1

As respostas dessas operações irão aparecer no display de 7 segimentos da Basy3 de acordo com a base numérica escolhida: 

Código    | Base 
:-------: | ------:
00        | Decimal
01        | Hexadecimal 
10        | Binário
11        | Octal


## PRÉ-REQUISITOS (Xilinx Vivado e Basy3)
Para poder usar o prgrama, deverá usar os seguintes passos: 
1. Dar git clone do repositório;
2. Abrir o código no programa Xilinx-Vivado;
3. Gerar o bitstream;
4. Adicionar o bitstream na placa Basy3.


## FUNCIONAMENTO
Segue como o programa funciona:
1. Coloque os valores das entradas;
2. Selecione a operação;
3. Selecione a base numérica da resposta;
4. A resposta irá aparecer no display de sete segmentos da Basy3. 
  

## IDEALIZADORES
Ésio Gustavo Pereira Freitas - 2018.1.
