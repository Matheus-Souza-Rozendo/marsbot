# Marsbot
![GitHub repo size](https://img.shields.io/github/repo-size/Matheus-Souza-Rozendo/marsbot)
![GitHub](https://img.shields.io/github/license/Matheus-Souza-Rozendo/marsbot)
![GitHub language count](https://img.shields.io/github/languages/count/Matheus-Souza-Rozendo/marsbot)
![GitHub top language](https://img.shields.io/github/languages/top/Matheus-Souza-Rozendo/marsbot)
> Realizando um desenho na tela utilizando o recurso do simulador da arquitetura MIPS do Mars

MIPS, acrônimo para Microprocessor without interlocked pipeline stages, é uma arquitetura de microprocessadores RISC desenvolvida pela MIPS Computer Systems.

Neste projeto foi utilizado um simulador desta arquitetura chamado Mars.

## Objetivo
O codigo consiste no controle de um robô que se movimenta por um papel (simulando uma cabeça de uma impressora) e escreve as informações no mesmo. Para isso, o robô utiliza como parametros de controle para seu movimento as informações contidas em um vetor.

## Funcionalidades 
O programa gera desenhos na tela a partir da informações contidas em um vetor.

O vetor deve ser escrito no seguinte formato:
`ângulo,tempo,pintar ou não pintar,.....`
* o ângulo deve ser um valor inteiro entre 0 e 359
* tempo é a duração que o robô ficará executando esse comando
* para pintar, deve-se colocar na 3º posição o valor 1, caso não queira pintar coloque o valor 0.

OBS:

A velocidade da simulação deve ser configurada para 30px/s

## Resultado
![](https://raw.githubusercontent.com/Matheus-Souza-Rozendo/marsbot/main/prints/Screenshot_2.png)
![](https://raw.githubusercontent.com/Matheus-Souza-Rozendo/marsbot/main/prints/Screenshot_1.png)

## Futuras melhorias
1) Ler os comandos a partir de um arquivo .txt
2) Gerar um arquivo .txt a partir de uma imagem real

## Contato

Matheus Souza Rozendo  – matheusrozendo234674@gmail.com
