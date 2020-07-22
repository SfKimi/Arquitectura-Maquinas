.data
a: .word 0
b: .word 0
.text 

addiu $t5, $t5,84

lw $a1, a
lw $a2, b


par: 
  
 
addiu $a1,$a1,13
addiu $t1,$a1,20



blt $t1,$t5 ,par

abs  $a2,$a1
sw $a2,b
sw $a2,a
