.data

.text

main:

# leitura e validação da faixa (1 < numero <= 50 000)
Leitura:
    li   $v0, 5
    syscall
    add  $t0, $v0, $zero

    li   $t4, 1
    li   $t5, 50000

    ble  $t0, $t4, Leitura
    bgt  $t0, $t5, Leitura

# busca do primeiro primo após n válido
    addi $t1, $t0, 1          # define o primeiro candidato (n + 1)

Candidato:
    li   $t2, 2               # reinicia o divisor em 2 para cada novo candidato

Teste:
    bge  $t2, $t1, Primo      # se divisor alcançou o candidato, é primo
    rem  $t3, $t1, $t2        # testa resto da divisão (candidato % divisor)
    beq  $t3, $zero, Proximo  # resto 0: encontrou divisor, descarta candidato
    addi $t2, $t2, 1          # incrementa o divisor
    j    Teste

Proximo:
    addi $t1, $t1, 1          # avança para o próximo número candidato
    j    Candidato

# saída, mostra o primo encontrado
Primo:
    li   $v0, 1
    add  $a0, $t1, $zero
    syscall

    li   $v0, 10
    syscall