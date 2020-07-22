main:
        addiu   $sp,$sp,-24
        sw      $fp,20($sp)
        move    $fp,$sp
        sw      $0,8($fp)
        b       $L2
        nop

$L3:
        sw      $0,12($fp)
        lw      $2,8($fp)
        nop
        addiu   $2,$2,13
        sw      $2,8($fp)
$L2:
        lw      $2,8($fp)
        nop
        addiu   $2,$2,20
        slti     $2,$2,84
        bne     $2,$0,$L3
        nop

        lw      $2,8($fp)
        nop
        sw      $2,12($fp)
        move    $2,$0
        move    $sp,$fp
        lw      $fp,20($sp)
        addiu   $sp,$sp,24
        jr       $31
        nop

