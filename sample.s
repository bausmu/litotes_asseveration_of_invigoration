.data
arr1:  .word 0,0,0,0,0

.text
.globl main
main:
  la $t0,arr1
  li $t1,0
L1: li $v0,5
    syscall
    beq $v0,0,L2
    sw  $v0,0($t0)
    addi  $t1,$t1,1
    bne   $t1,5,L1
    
L2: li  $v0,5
    syscall
    addi $sp,$sp,-8
    sw   $v0,0($sp)
    
    la   $t0,arr1
    sw   $t0,4($sp)
    jal  EASY
    li   $v0,10
    syscall
    
EASY:
  lw $t4,4($sp)
  li $t5,0  #SUM
  li $t3,0  #i
  
  L3:
    lw  $t2,0($t4) #arr[i]
    add $t5,$t5,$t2
    addi $t3,$t3,1
    addi $t4,$t4,4
    bne  $t3,5,L3
    
    lw $t4,4($sp)
    lw $t3,0($sp) #x
    sll $t3,$t3,2
    add $t4,$t4,$t3
    lw  $a0,0($t4)
    
    li  $v0,1
    syscall
    jr  $ra
