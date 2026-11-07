Repositório criado para armazenar os trabalhos da disciplina de Arquitetura e Organização de Computadores da minha faculdade.

Trabalho AOC 01:

Enunciado: Fazer um algoritmo que receba um número (1 < numero <= 50000) e, caso não seja, deve ser novamente solicitado. Demonstre o primeiro
número primo após a ele.

Algoritmo feito e testado usando o aplicativo Mars, que simula um Processador MIPS.

A lógica é simples: o programa lê um valor e valida se ele está na faixa entre 1 e 50.000. Se estiver fora, pede o número novamente. Estando na faixa correta, ele busca o primeiro número primo logo após a entrada. Para isso, o algoritmo testa divisões sucessivas a partir de 2: se encontrar qualquer divisão com resto zero, o número é descartado e o programa passa para o próximo; caso o número resista a todos os testes até ser igual ao seu próprio divisor, ele é confirmado como primo e exibido na tela, cumprindo com o enunciado.
