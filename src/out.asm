global main
extern putchar
extern getchar
section .bss
   tape resb 30000
section .text
main:
   sub rsp, 40
   lea rbx, [rel tape]
add byte [rbx], 13
loop_start_0:
    cmp byte [rbx], 0
    jz loop_end_0
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 2
add rbx, 3
add byte [rbx], 5
add rbx, 1
add byte [rbx], 2
add rbx, 1
add byte [rbx], 1
sub rbx, 6
    jmp loop_start_0
loop_end_0:
add rbx, 5
add byte [rbx], 6
add rbx, 1
sub byte [rbx], 3
add rbx, 10
add byte [rbx], 15
loop_start_1:
    cmp byte [rbx], 0
    jz loop_end_1
loop_start_2:
    cmp byte [rbx], 0
    jz loop_end_2
add rbx, 9
    jmp loop_start_2
loop_end_2:
add byte [rbx], 1
loop_start_3:
    cmp byte [rbx], 0
    jz loop_end_3
sub rbx, 9
    jmp loop_start_3
loop_end_3:
add rbx, 9
sub byte [rbx], 1
    jmp loop_start_1
loop_end_1:
add byte [rbx], 1
loop_start_4:
    cmp byte [rbx], 0
    jz loop_end_4
add rbx, 8
    mov byte [rbx], 0
add rbx, 1
    jmp loop_start_4
loop_end_4:
sub rbx, 9
loop_start_5:
    cmp byte [rbx], 0
    jz loop_end_5
sub rbx, 9
    jmp loop_start_5
loop_end_5:
add rbx, 8
    mov byte [rbx], 0
add byte [rbx], 1
sub rbx, 7
add byte [rbx], 5
loop_start_6:
    cmp byte [rbx], 0
    jz loop_end_6
sub byte [rbx], 1
loop_start_7:
    cmp byte [rbx], 0
    jz loop_end_7
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_7
loop_end_7:
add rbx, 9
    jmp loop_start_6
loop_end_6:
add rbx, 7
add byte [rbx], 1
add rbx, 26
add rbx, 1
add byte [rbx], 1
sub rbx, 17
loop_start_8:
    cmp byte [rbx], 0
    jz loop_end_8
sub rbx, 9
    jmp loop_start_8
loop_end_8:
add rbx, 3
    mov byte [rbx], 0
add byte [rbx], 1
loop_start_9:
    cmp byte [rbx], 0
    jz loop_end_9
add rbx, 6
loop_start_10:
    cmp byte [rbx], 0
    jz loop_end_10
add rbx, 7
    mov byte [rbx], 0
add rbx, 2
    jmp loop_start_10
loop_end_10:
sub rbx, 9
loop_start_11:
    cmp byte [rbx], 0
    jz loop_end_11
sub rbx, 9
    jmp loop_start_11
loop_end_11:
add rbx, 2
add rbx, 5
    mov byte [rbx], 0
add byte [rbx], 1
sub rbx, 6
add byte [rbx], 4
loop_start_12:
    cmp byte [rbx], 0
    jz loop_end_12
sub byte [rbx], 1
loop_start_13:
    cmp byte [rbx], 0
    jz loop_end_13
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_13
loop_end_13:
add rbx, 9
    jmp loop_start_12
loop_end_12:
add rbx, 6
add byte [rbx], 1
sub rbx, 6
add byte [rbx], 7
loop_start_14:
    cmp byte [rbx], 0
    jz loop_end_14
sub byte [rbx], 1
loop_start_15:
    cmp byte [rbx], 0
    jz loop_end_15
sub byte [rbx], 1
add rbx, 3
add rbx, 6
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_15
loop_end_15:
add rbx, 9
    jmp loop_start_14
loop_end_14:
add rbx, 6
add byte [rbx], 1
sub rbx, 16
loop_start_16:
    cmp byte [rbx], 0
    jz loop_end_16
sub rbx, 9
    jmp loop_start_16
loop_end_16:
add rbx, 3
loop_start_17:
    cmp byte [rbx], 0
    jz loop_end_17
    mov byte [rbx], 0
add rbx, 6
loop_start_18:
    cmp byte [rbx], 0
    jz loop_end_18
add rbx, 5
add rbx, 2
loop_start_19:
    cmp byte [rbx], 0
    jz loop_end_19
sub byte [rbx], 1
sub rbx, 6
add byte [rbx], 1
add rbx, 6
    jmp loop_start_19
loop_end_19:
sub rbx, 6
loop_start_20:
    cmp byte [rbx], 0
    jz loop_end_20
sub byte [rbx], 1
add rbx, 6
add byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_20
loop_end_20:
add rbx, 8
    jmp loop_start_18
loop_end_18:
sub rbx, 9
loop_start_21:
    cmp byte [rbx], 0
    jz loop_end_21
sub rbx, 9
    jmp loop_start_21
loop_end_21:
add rbx, 9
loop_start_22:
    cmp byte [rbx], 0
    jz loop_end_22
add rbx, 8
loop_start_23:
    cmp byte [rbx], 0
    jz loop_end_23
sub byte [rbx], 1
sub rbx, 7
add byte [rbx], 1
add rbx, 7
    jmp loop_start_23
loop_end_23:
sub rbx, 7
loop_start_24:
    cmp byte [rbx], 0
    jz loop_end_24
sub byte [rbx], 1
add rbx, 7
add byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_24
loop_end_24:
add rbx, 8
    jmp loop_start_22
loop_end_22:
sub rbx, 9
loop_start_25:
    cmp byte [rbx], 0
    jz loop_end_25
sub rbx, 7
sub rbx, 2
    jmp loop_start_25
loop_end_25:
add rbx, 7
loop_start_26:
    cmp byte [rbx], 0
    jz loop_end_26
sub byte [rbx], 1
sub rbx, 7
add byte [rbx], 1
add rbx, 7
    jmp loop_start_26
loop_end_26:
sub rbx, 7
loop_start_27:
    cmp byte [rbx], 0
    jz loop_end_27
sub byte [rbx], 1
add rbx, 7
add byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
sub rbx, 5
    jmp loop_start_27
loop_end_27:
add rbx, 9
add byte [rbx], 15
loop_start_28:
    cmp byte [rbx], 0
    jz loop_end_28
loop_start_29:
    cmp byte [rbx], 0
    jz loop_end_29
add rbx, 9
    jmp loop_start_29
loop_end_29:
add byte [rbx], 1
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
sub rbx, 9
loop_start_30:
    cmp byte [rbx], 0
    jz loop_end_30
sub rbx, 9
    jmp loop_start_30
loop_end_30:
add rbx, 9
sub byte [rbx], 1
    jmp loop_start_28
loop_end_28:
add byte [rbx], 1
loop_start_31:
    cmp byte [rbx], 0
    jz loop_end_31
add rbx, 1
add byte [rbx], 1
add rbx, 8
    jmp loop_start_31
loop_end_31:
sub rbx, 9
loop_start_32:
    cmp byte [rbx], 0
    jz loop_end_32
sub rbx, 9
    jmp loop_start_32
loop_end_32:
add rbx, 9
loop_start_33:
    cmp byte [rbx], 0
    jz loop_end_33
add rbx, 1
sub byte [rbx], 1
add rbx, 4
loop_start_34:
    cmp byte [rbx], 0
    jz loop_end_34
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 4
    jmp loop_start_34
loop_end_34:
sub rbx, 4
loop_start_35:
    cmp byte [rbx], 0
    jz loop_end_35
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 5
loop_start_36:
    cmp byte [rbx], 0
    jz loop_end_36
sub byte [rbx], 1
add rbx, 2
loop_start_37:
    cmp byte [rbx], 0
    jz loop_end_37
sub byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
add rbx, 2
    jmp loop_start_37
loop_end_37:
sub rbx, 2
loop_start_38:
    cmp byte [rbx], 0
    jz loop_end_38
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 4
    jmp loop_start_38
loop_end_38:
add byte [rbx], 1
add rbx, 9
    jmp loop_start_36
loop_end_36:
sub rbx, 8
loop_start_39:
    cmp byte [rbx], 0
    jz loop_end_39
sub rbx, 9
    jmp loop_start_39
loop_end_39:
    jmp loop_start_35
loop_end_35:
add rbx, 9
loop_start_40:
    cmp byte [rbx], 0
    jz loop_end_40
add rbx, 9
    jmp loop_start_40
loop_end_40:
sub rbx, 7
sub rbx, 2
loop_start_41:
    cmp byte [rbx], 0
    jz loop_end_41
add rbx, 1
loop_start_42:
    cmp byte [rbx], 0
    jz loop_end_42
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_42
loop_end_42:
sub rbx, 10
    jmp loop_start_41
loop_end_41:
add rbx, 1
loop_start_43:
    cmp byte [rbx], 0
    jz loop_end_43
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_43
loop_end_43:
sub rbx, 1
add byte [rbx], 1
add rbx, 8
    jmp loop_start_33
loop_end_33:
sub rbx, 9
loop_start_44:
    cmp byte [rbx], 0
    jz loop_end_44
add rbx, 1
    mov byte [rbx], 0
sub rbx, 1
sub byte [rbx], 1
add rbx, 4
loop_start_45:
    cmp byte [rbx], 0
    jz loop_end_45
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 1
loop_start_46:
    cmp byte [rbx], 0
    jz loop_end_46
sub rbx, 1
sub byte [rbx], 1
add rbx, 1
sub byte [rbx], 1
sub rbx, 6
add byte [rbx], 1
add rbx, 6
    jmp loop_start_46
loop_end_46:
sub rbx, 1
loop_start_47:
    cmp byte [rbx], 0
    jz loop_end_47
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_47
loop_end_47:
add rbx, 4
    jmp loop_start_45
loop_end_45:
sub rbx, 3
loop_start_48:
    cmp byte [rbx], 0
    jz loop_end_48
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 3
    jmp loop_start_48
loop_end_48:
sub rbx, 1
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_44
loop_end_44:
add rbx, 5
add rbx, 4
loop_start_49:
    cmp byte [rbx], 0
    jz loop_end_49
add rbx, 1
add byte [rbx], 1
add rbx, 8
    jmp loop_start_49
loop_end_49:
sub rbx, 9
loop_start_50:
    cmp byte [rbx], 0
    jz loop_end_50
sub rbx, 9
    jmp loop_start_50
loop_end_50:
add rbx, 9
loop_start_51:
    cmp byte [rbx], 0
    jz loop_end_51
add rbx, 1
sub byte [rbx], 1
add rbx, 5
loop_start_52:
    cmp byte [rbx], 0
    jz loop_end_52
sub byte [rbx], 1
sub rbx, 5
add byte [rbx], 1
add rbx, 5
    jmp loop_start_52
loop_end_52:
sub rbx, 5
loop_start_53:
    cmp byte [rbx], 0
    jz loop_end_53
sub byte [rbx], 1
add rbx, 5
add byte [rbx], 1
sub rbx, 6
loop_start_54:
    cmp byte [rbx], 0
    jz loop_end_54
sub byte [rbx], 1
add rbx, 3
loop_start_55:
    cmp byte [rbx], 0
    jz loop_end_55
sub byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
add rbx, 3
    jmp loop_start_55
loop_end_55:
sub rbx, 3
loop_start_56:
    cmp byte [rbx], 0
    jz loop_end_56
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 4
    jmp loop_start_56
loop_end_56:
add byte [rbx], 1
add rbx, 9
    jmp loop_start_54
loop_end_54:
sub rbx, 8
loop_start_57:
    cmp byte [rbx], 0
    jz loop_end_57
sub rbx, 9
    jmp loop_start_57
loop_end_57:
    jmp loop_start_53
loop_end_53:
add rbx, 9
loop_start_58:
    cmp byte [rbx], 0
    jz loop_end_58
add rbx, 2
add rbx, 7
    jmp loop_start_58
loop_end_58:
sub rbx, 9
loop_start_59:
    cmp byte [rbx], 0
    jz loop_end_59
add rbx, 2
loop_start_60:
    cmp byte [rbx], 0
    jz loop_end_60
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_60
loop_end_60:
sub rbx, 11
    jmp loop_start_59
loop_end_59:
add rbx, 2
loop_start_61:
    cmp byte [rbx], 0
    jz loop_end_61
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_61
loop_end_61:
sub rbx, 2
add byte [rbx], 1
add rbx, 8
    jmp loop_start_51
loop_end_51:
sub rbx, 9
loop_start_62:
    cmp byte [rbx], 0
    jz loop_end_62
add rbx, 1
    mov byte [rbx], 0
sub rbx, 1
sub byte [rbx], 1
add rbx, 4
loop_start_63:
    cmp byte [rbx], 0
    jz loop_end_63
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 1
loop_start_64:
    cmp byte [rbx], 0
    jz loop_end_64
sub rbx, 1
sub byte [rbx], 1
add rbx, 1
sub byte [rbx], 1
sub rbx, 6
add byte [rbx], 1
add rbx, 6
    jmp loop_start_64
loop_end_64:
sub rbx, 1
loop_start_65:
    cmp byte [rbx], 0
    jz loop_end_65
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_65
loop_end_65:
add rbx, 4
    jmp loop_start_63
loop_end_63:
sub rbx, 3
loop_start_66:
    cmp byte [rbx], 0
    jz loop_end_66
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 2
sub rbx, 1
    jmp loop_start_66
loop_end_66:
sub rbx, 1
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_62
loop_end_62:
add rbx, 9
loop_start_67:
    cmp byte [rbx], 0
    jz loop_end_67
add rbx, 4
loop_start_68:
    cmp byte [rbx], 0
    jz loop_end_68
sub byte [rbx], 1
sub rbx, 36
add byte [rbx], 1
add rbx, 13
add rbx, 23
    jmp loop_start_68
loop_end_68:
add rbx, 5
    jmp loop_start_67
loop_end_67:
sub rbx, 9
loop_start_69:
    cmp byte [rbx], 0
    jz loop_end_69
sub rbx, 9
    jmp loop_start_69
loop_end_69:
add rbx, 9
add byte [rbx], 15
loop_start_70:
    cmp byte [rbx], 0
    jz loop_end_70
loop_start_71:
    cmp byte [rbx], 0
    jz loop_end_71
add rbx, 4
add rbx, 5
    jmp loop_start_71
loop_end_71:
sub rbx, 9
sub byte [rbx], 1
sub rbx, 9
loop_start_72:
    cmp byte [rbx], 0
    jz loop_end_72
sub rbx, 9
    jmp loop_start_72
loop_end_72:
add rbx, 9
sub byte [rbx], 1
    jmp loop_start_70
loop_end_70:
add byte [rbx], 1
add rbx, 21
add byte [rbx], 1
sub rbx, 3
loop_start_73:
    cmp byte [rbx], 0
    jz loop_end_73
sub rbx, 6
sub rbx, 3
    jmp loop_start_73
loop_end_73:
add rbx, 9
loop_start_74:
    cmp byte [rbx], 0
    jz loop_end_74
add rbx, 3
loop_start_75:
    cmp byte [rbx], 0
    jz loop_end_75
sub byte [rbx], 1
sub rbx, 3
sub byte [rbx], 1
add rbx, 3
    jmp loop_start_75
loop_end_75:
add byte [rbx], 1
sub rbx, 3
loop_start_76:
    cmp byte [rbx], 0
    jz loop_end_76
sub byte [rbx], 1
add rbx, 3
sub byte [rbx], 1
add rbx, 1
loop_start_77:
    cmp byte [rbx], 0
    jz loop_end_77
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 4
    jmp loop_start_77
loop_end_77:
sub rbx, 4
loop_start_78:
    cmp byte [rbx], 0
    jz loop_end_78
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 13
loop_start_79:
    cmp byte [rbx], 0
    jz loop_end_79
sub rbx, 5
sub rbx, 4
    jmp loop_start_79
loop_end_79:
add rbx, 4
    mov byte [rbx], 0
add byte [rbx], 1
add rbx, 5
loop_start_80:
    cmp byte [rbx], 0
    jz loop_end_80
add rbx, 9
    jmp loop_start_80
loop_end_80:
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_78
loop_end_78:
    jmp loop_start_76
loop_end_76:
add byte [rbx], 1
add rbx, 4
loop_start_81:
    cmp byte [rbx], 0
    jz loop_end_81
sub byte [rbx], 1
sub rbx, 4
sub byte [rbx], 1
add rbx, 4
    jmp loop_start_81
loop_end_81:
add byte [rbx], 1
sub rbx, 4
loop_start_82:
    cmp byte [rbx], 0
    jz loop_end_82
sub byte [rbx], 1
add rbx, 4
sub byte [rbx], 1
sub rbx, 1
loop_start_83:
    cmp byte [rbx], 0
    jz loop_end_83
sub byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
add rbx, 3
    jmp loop_start_83
loop_end_83:
sub rbx, 3
loop_start_84:
    cmp byte [rbx], 0
    jz loop_end_84
sub byte [rbx], 1
add rbx, 1
add rbx, 2
add byte [rbx], 1
sub rbx, 12
loop_start_85:
    cmp byte [rbx], 0
    jz loop_end_85
sub rbx, 9
    jmp loop_start_85
loop_end_85:
add rbx, 3
    mov byte [rbx], 0
add byte [rbx], 1
add rbx, 6
loop_start_86:
    cmp byte [rbx], 0
    jz loop_end_86
add rbx, 9
    jmp loop_start_86
loop_end_86:
add rbx, 1
    mov byte [rbx], 0
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_84
loop_end_84:
    jmp loop_start_82
loop_end_82:
add byte [rbx], 1
add rbx, 1
loop_start_87:
    cmp byte [rbx], 0
    jz loop_end_87
sub byte [rbx], 1
sub rbx, 1
loop_start_88:
    cmp byte [rbx], 0
    jz loop_end_88
add rbx, 9
    jmp loop_start_88
loop_end_88:
sub rbx, 6
sub rbx, 2
    jmp loop_start_87
loop_end_87:
add rbx, 8
    jmp loop_start_74
loop_end_74:
sub rbx, 9
loop_start_89:
    cmp byte [rbx], 0
    jz loop_end_89
sub rbx, 9
    jmp loop_start_89
loop_end_89:
sub rbx, 7
loop_start_90:
    cmp byte [rbx], 0
    jz loop_end_90
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
add rbx, 3
sub byte [rbx], 1
sub rbx, 4
    jmp loop_start_90
loop_end_90:
add rbx, 9
add byte [rbx], 19
add byte [rbx], 7
add rbx, 2
loop_start_91:
    cmp byte [rbx], 0
    jz loop_end_91
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 4
    jmp loop_start_91
loop_end_91:
sub rbx, 4
loop_start_92:
    cmp byte [rbx], 0
    jz loop_end_92
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 2
    mov byte [rbx], 0
sub rbx, 2
    jmp loop_start_92
loop_end_92:
add rbx, 2
loop_start_93:
    cmp byte [rbx], 0
    jz loop_end_93
sub rbx, 7
add byte [rbx], 1
sub rbx, 1
loop_start_94:
    cmp byte [rbx], 0
    jz loop_end_94
sub byte [rbx], 1
sub rbx, 1
add byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 2
    mov byte [rbx], 0
    jmp loop_start_94
loop_end_94:
add rbx, 1
loop_start_95:
    cmp byte [rbx], 0
    jz loop_end_95
sub byte [rbx], 1
sub rbx, 2
loop_start_96:
    cmp byte [rbx], 0
    jz loop_end_96
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
add rbx, 3
sub byte [rbx], 1
sub rbx, 4
    jmp loop_start_96
loop_end_96:
add rbx, 3
    jmp loop_start_95
loop_end_95:
add rbx, 13
loop_start_97:
    cmp byte [rbx], 0
    jz loop_end_97
add rbx, 2
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 5
    jmp loop_start_97
loop_end_97:
sub rbx, 9
loop_start_98:
    cmp byte [rbx], 0
    jz loop_end_98
sub rbx, 9
    jmp loop_start_98
loop_end_98:
add rbx, 3
    mov byte [rbx], 0
add rbx, 6
loop_start_99:
    cmp byte [rbx], 0
    jz loop_end_99
add rbx, 5
loop_start_100:
    cmp byte [rbx], 0
    jz loop_end_100
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 4
    jmp loop_start_100
loop_end_100:
sub rbx, 4
loop_start_101:
    cmp byte [rbx], 0
    jz loop_end_101
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_101
loop_end_101:
add rbx, 8
    jmp loop_start_99
loop_end_99:
sub rbx, 9
loop_start_102:
    cmp byte [rbx], 0
    jz loop_end_102
sub rbx, 9
    jmp loop_start_102
loop_end_102:
add rbx, 9
loop_start_103:
    cmp byte [rbx], 0
    jz loop_end_103
add rbx, 2
loop_start_104:
    cmp byte [rbx], 0
    jz loop_end_104
sub byte [rbx], 1
sub rbx, 8
sub rbx, 1
add byte [rbx], 1
add rbx, 9
    jmp loop_start_104
loop_end_104:
add rbx, 7
    jmp loop_start_103
loop_end_103:
sub rbx, 9
loop_start_105:
    cmp byte [rbx], 0
    jz loop_end_105
sub rbx, 9
    jmp loop_start_105
loop_end_105:
add rbx, 9
add byte [rbx], 15
loop_start_106:
    cmp byte [rbx], 0
    jz loop_end_106
loop_start_107:
    cmp byte [rbx], 0
    jz loop_end_107
add rbx, 9
    jmp loop_start_107
loop_end_107:
add byte [rbx], 1
add rbx, 1
loop_start_108:
    cmp byte [rbx], 0
    jz loop_end_108
sub byte [rbx], 1
    jmp loop_start_108
loop_end_108:
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
sub rbx, 9
loop_start_109:
    cmp byte [rbx], 0
    jz loop_end_109
sub rbx, 9
    jmp loop_start_109
loop_end_109:
add rbx, 9
sub byte [rbx], 1
    jmp loop_start_106
loop_end_106:
add byte [rbx], 1
loop_start_110:
    cmp byte [rbx], 0
    jz loop_end_110
add rbx, 1
add byte [rbx], 1
add rbx, 8
    jmp loop_start_110
loop_end_110:
sub rbx, 3
sub rbx, 6
loop_start_111:
    cmp byte [rbx], 0
    jz loop_end_111
sub rbx, 9
    jmp loop_start_111
loop_end_111:
add rbx, 9
loop_start_112:
    cmp byte [rbx], 0
    jz loop_end_112
add rbx, 1
sub byte [rbx], 1
add rbx, 5
loop_start_113:
    cmp byte [rbx], 0
    jz loop_end_113
sub byte [rbx], 1
sub rbx, 5
add byte [rbx], 1
add rbx, 5
    jmp loop_start_113
loop_end_113:
sub rbx, 5
loop_start_114:
    cmp byte [rbx], 0
    jz loop_end_114
sub byte [rbx], 1
add rbx, 5
add byte [rbx], 1
sub rbx, 6
loop_start_115:
    cmp byte [rbx], 0
    jz loop_end_115
sub byte [rbx], 1
add rbx, 2
loop_start_116:
    cmp byte [rbx], 0
    jz loop_end_116
sub byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
add rbx, 2
    jmp loop_start_116
loop_end_116:
sub rbx, 1
sub rbx, 1
loop_start_117:
    cmp byte [rbx], 0
    jz loop_end_117
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 3
    jmp loop_start_117
loop_end_117:
add byte [rbx], 1
add rbx, 9
    jmp loop_start_115
loop_end_115:
sub rbx, 8
loop_start_118:
    cmp byte [rbx], 0
    jz loop_end_118
sub rbx, 9
    jmp loop_start_118
loop_end_118:
    jmp loop_start_114
loop_end_114:
add rbx, 9
loop_start_119:
    cmp byte [rbx], 0
    jz loop_end_119
add rbx, 9
    jmp loop_start_119
loop_end_119:
sub rbx, 9
loop_start_120:
    cmp byte [rbx], 0
    jz loop_end_120
add rbx, 1
loop_start_121:
    cmp byte [rbx], 0
    jz loop_end_121
sub byte [rbx], 1
add rbx, 4
add rbx, 5
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_121
loop_end_121:
sub rbx, 10
    jmp loop_start_120
loop_end_120:
add rbx, 1
loop_start_122:
    cmp byte [rbx], 0
    jz loop_end_122
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_122
loop_end_122:
sub rbx, 1
add byte [rbx], 1
add rbx, 8
    jmp loop_start_112
loop_end_112:
sub rbx, 9
loop_start_123:
    cmp byte [rbx], 0
    jz loop_end_123
add rbx, 1
    mov byte [rbx], 0
sub rbx, 1
sub byte [rbx], 1
add rbx, 3
loop_start_124:
    cmp byte [rbx], 0
    jz loop_end_124
sub byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
add rbx, 1
loop_start_125:
    cmp byte [rbx], 0
    jz loop_end_125
sub rbx, 1
sub byte [rbx], 1
add rbx, 1
sub byte [rbx], 1
sub rbx, 7
add byte [rbx], 1
add rbx, 7
    jmp loop_start_125
loop_end_125:
sub rbx, 1
loop_start_126:
    cmp byte [rbx], 0
    jz loop_end_126
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_126
loop_end_126:
add rbx, 3
    jmp loop_start_124
loop_end_124:
sub rbx, 2
loop_start_127:
    cmp byte [rbx], 0
    jz loop_end_127
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_127
loop_end_127:
sub rbx, 1
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_123
loop_end_123:
add rbx, 9
loop_start_128:
    cmp byte [rbx], 0
    jz loop_end_128
add rbx, 6
loop_start_129:
    cmp byte [rbx], 0
    jz loop_end_129
sub byte [rbx], 1
sub rbx, 1
sub rbx, 4
add byte [rbx], 1
add rbx, 5
    jmp loop_start_129
loop_end_129:
sub rbx, 5
loop_start_130:
    cmp byte [rbx], 0
    jz loop_end_130
sub byte [rbx], 1
add rbx, 5
add byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_130
loop_end_130:
add rbx, 8
    jmp loop_start_128
loop_end_128:
sub rbx, 9
loop_start_131:
    cmp byte [rbx], 0
    jz loop_end_131
sub rbx, 9
    jmp loop_start_131
loop_end_131:
add rbx, 9
loop_start_132:
    cmp byte [rbx], 0
    jz loop_end_132
add rbx, 1
add byte [rbx], 1
add rbx, 8
    jmp loop_start_132
loop_end_132:
sub rbx, 9
loop_start_133:
    cmp byte [rbx], 0
    jz loop_end_133
sub rbx, 9
    jmp loop_start_133
loop_end_133:
add rbx, 9
loop_start_134:
    cmp byte [rbx], 0
    jz loop_end_134
add rbx, 1
sub byte [rbx], 1
add rbx, 5
loop_start_135:
    cmp byte [rbx], 0
    jz loop_end_135
sub byte [rbx], 1
sub rbx, 5
add byte [rbx], 1
add rbx, 5
    jmp loop_start_135
loop_end_135:
sub rbx, 5
loop_start_136:
    cmp byte [rbx], 0
    jz loop_end_136
sub byte [rbx], 1
add rbx, 5
add byte [rbx], 1
sub rbx, 6
loop_start_137:
    cmp byte [rbx], 0
    jz loop_end_137
sub byte [rbx], 1
add rbx, 2
loop_start_138:
    cmp byte [rbx], 0
    jz loop_end_138
sub byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
add rbx, 2
    jmp loop_start_138
loop_end_138:
sub rbx, 2
loop_start_139:
    cmp byte [rbx], 0
    jz loop_end_139
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 4
    jmp loop_start_139
loop_end_139:
add byte [rbx], 1
add rbx, 9
    jmp loop_start_137
loop_end_137:
sub rbx, 8
loop_start_140:
    cmp byte [rbx], 0
    jz loop_end_140
sub rbx, 9
    jmp loop_start_140
loop_end_140:
    jmp loop_start_136
loop_end_136:
add rbx, 9
loop_start_141:
    cmp byte [rbx], 0
    jz loop_end_141
add rbx, 9
    jmp loop_start_141
loop_end_141:
sub rbx, 9
loop_start_142:
    cmp byte [rbx], 0
    jz loop_end_142
add rbx, 1
loop_start_143:
    cmp byte [rbx], 0
    jz loop_end_143
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_143
loop_end_143:
sub rbx, 10
    jmp loop_start_142
loop_end_142:
add rbx, 1
loop_start_144:
    cmp byte [rbx], 0
    jz loop_end_144
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_144
loop_end_144:
sub rbx, 1
add byte [rbx], 1
add rbx, 8
    jmp loop_start_134
loop_end_134:
sub rbx, 9
loop_start_145:
    cmp byte [rbx], 0
    jz loop_end_145
add rbx, 1
loop_start_146:
    cmp byte [rbx], 0
    jz loop_end_146
sub byte [rbx], 1
    jmp loop_start_146
loop_end_146:
sub rbx, 1
sub byte [rbx], 1
add rbx, 4
loop_start_147:
    cmp byte [rbx], 0
    jz loop_end_147
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 1
loop_start_148:
    cmp byte [rbx], 0
    jz loop_end_148
sub rbx, 1
sub byte [rbx], 1
add rbx, 1
sub byte [rbx], 1
sub rbx, 6
add byte [rbx], 1
add rbx, 6
    jmp loop_start_148
loop_end_148:
sub rbx, 1
loop_start_149:
    cmp byte [rbx], 0
    jz loop_end_149
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_149
loop_end_149:
add rbx, 4
    jmp loop_start_147
loop_end_147:
sub rbx, 3
loop_start_150:
    cmp byte [rbx], 0
    jz loop_end_150
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 3
    jmp loop_start_150
loop_end_150:
sub rbx, 1
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_145
loop_end_145:
add rbx, 9
loop_start_151:
    cmp byte [rbx], 0
    jz loop_end_151
add rbx, 4
loop_start_152:
    cmp byte [rbx], 0
    jz loop_end_152
sub byte [rbx], 1
sub rbx, 36
add byte [rbx], 1
add rbx, 36
    jmp loop_start_152
loop_end_152:
add rbx, 5
    jmp loop_start_151
loop_end_151:
sub rbx, 9
loop_start_153:
    cmp byte [rbx], 0
    jz loop_end_153
sub rbx, 9
    jmp loop_start_153
loop_end_153:
add rbx, 9
loop_start_154:
    cmp byte [rbx], 0
    jz loop_end_154
add rbx, 3
loop_start_155:
    cmp byte [rbx], 0
    jz loop_end_155
sub byte [rbx], 1
sub rbx, 36
add byte [rbx], 1
add rbx, 1
add rbx, 35
    jmp loop_start_155
loop_end_155:
add rbx, 6
    jmp loop_start_154
loop_end_154:
sub rbx, 9
loop_start_156:
    cmp byte [rbx], 0
    jz loop_end_156
sub rbx, 9
    jmp loop_start_156
loop_end_156:
add rbx, 9
add byte [rbx], 8
add byte [rbx], 7
loop_start_157:
    cmp byte [rbx], 0
    jz loop_end_157
loop_start_158:
    cmp byte [rbx], 0
    jz loop_end_158
add rbx, 9
    jmp loop_start_158
loop_end_158:
sub rbx, 9
sub byte [rbx], 1
sub rbx, 9
loop_start_159:
    cmp byte [rbx], 0
    jz loop_end_159
sub rbx, 9
    jmp loop_start_159
loop_end_159:
add rbx, 9
sub byte [rbx], 1
    jmp loop_start_157
loop_end_157:
add byte [rbx], 1
loop_start_160:
    cmp byte [rbx], 0
    jz loop_end_160
add rbx, 8
loop_start_161:
    cmp byte [rbx], 0
    jz loop_end_161
sub byte [rbx], 1
sub rbx, 7
add byte [rbx], 1
add rbx, 7
    jmp loop_start_161
loop_end_161:
sub rbx, 7
loop_start_162:
    cmp byte [rbx], 0
    jz loop_end_162
sub byte [rbx], 1
add rbx, 7
add byte [rbx], 1
sub rbx, 6
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_162
loop_end_162:
add rbx, 8
    jmp loop_start_160
loop_end_160:
sub rbx, 9
loop_start_163:
    cmp byte [rbx], 0
    jz loop_end_163
sub rbx, 9
    jmp loop_start_163
loop_end_163:
add rbx, 9
loop_start_164:
    cmp byte [rbx], 0
    jz loop_end_164
add rbx, 6
loop_start_165:
    cmp byte [rbx], 0
    jz loop_end_165
sub byte [rbx], 1
    jmp loop_start_165
loop_end_165:
add rbx, 3
    jmp loop_start_164
loop_end_164:
sub rbx, 9
loop_start_166:
    cmp byte [rbx], 0
    jz loop_end_166
sub rbx, 9
    jmp loop_start_166
loop_end_166:
add rbx, 4
add byte [rbx], 1
add rbx, 1
loop_start_167:
    cmp byte [rbx], 0
    jz loop_end_167
sub byte [rbx], 1
sub rbx, 1
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 5
    jmp loop_start_167
loop_end_167:
add rbx, 1
loop_start_168:
    cmp byte [rbx], 0
    jz loop_end_168
sub byte [rbx], 1
sub rbx, 6
loop_start_169:
    cmp byte [rbx], 0
    jz loop_end_169
sub byte [rbx], 1
add rbx, 5
add byte [rbx], 1
sub rbx, 1
add byte [rbx], 2
sub rbx, 4
    jmp loop_start_169
loop_end_169:
add rbx, 5
loop_start_170:
    cmp byte [rbx], 0
    jz loop_end_170
sub byte [rbx], 1
sub rbx, 1
sub rbx, 4
add byte [rbx], 1
add rbx, 5
    jmp loop_start_170
loop_end_170:
sub rbx, 1
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
add rbx, 1
    jmp loop_start_168
loop_end_168:
sub rbx, 1
loop_start_171:
    cmp byte [rbx], 0
    jz loop_end_171
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_171
loop_end_171:
sub rbx, 5
loop_start_172:
    cmp byte [rbx], 0
    jz loop_end_172
sub byte [rbx], 1
add rbx, 5
add byte [rbx], 1
sub rbx, 5
    jmp loop_start_172
loop_end_172:
add rbx, 6
    mov byte [rbx], 0
sub rbx, 6
add byte [rbx], 1
add rbx, 4
loop_start_173:
    cmp byte [rbx], 0
    jz loop_end_173
sub byte [rbx], 1
sub rbx, 4
sub byte [rbx], 1
add rbx, 4
    jmp loop_start_173
loop_end_173:
add byte [rbx], 1
sub rbx, 4
loop_start_174:
    cmp byte [rbx], 0
    jz loop_end_174
sub byte [rbx], 1
add rbx, 4
sub byte [rbx], 1
add rbx, 5
loop_start_175:
    cmp byte [rbx], 0
    jz loop_end_175
add rbx, 2
loop_start_176:
    cmp byte [rbx], 0
    jz loop_end_176
sub byte [rbx], 1
sub rbx, 2
sub byte [rbx], 1
add rbx, 2
    jmp loop_start_176
loop_end_176:
add byte [rbx], 1
sub rbx, 2
loop_start_177:
    cmp byte [rbx], 0
    jz loop_end_177
sub byte [rbx], 1
add rbx, 2
sub byte [rbx], 1
add rbx, 1
loop_start_178:
    cmp byte [rbx], 0
    jz loop_end_178
sub byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
add rbx, 3
    jmp loop_start_178
loop_end_178:
sub rbx, 3
loop_start_179:
    cmp byte [rbx], 0
    jz loop_end_179
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 12
loop_start_180:
    cmp byte [rbx], 0
    jz loop_end_180
sub rbx, 9
    jmp loop_start_180
loop_end_180:
add rbx, 3
    mov byte [rbx], 0
add byte [rbx], 1
add rbx, 6
loop_start_181:
    cmp byte [rbx], 0
    jz loop_end_181
add rbx, 9
    jmp loop_start_181
loop_end_181:
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_179
loop_end_179:
    jmp loop_start_177
loop_end_177:
add byte [rbx], 1
add rbx, 3
loop_start_182:
    cmp byte [rbx], 0
    jz loop_end_182
sub byte [rbx], 1
sub rbx, 3
sub byte [rbx], 1
add rbx, 3
    jmp loop_start_182
loop_end_182:
add byte [rbx], 1
sub rbx, 3
loop_start_183:
    cmp byte [rbx], 0
    jz loop_end_183
sub byte [rbx], 1
add rbx, 3
sub byte [rbx], 1
sub rbx, 1
loop_start_184:
    cmp byte [rbx], 0
    jz loop_end_184
sub byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
add rbx, 2
    jmp loop_start_184
loop_end_184:
sub rbx, 2
loop_start_185:
    cmp byte [rbx], 0
    jz loop_end_185
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 11
loop_start_186:
    cmp byte [rbx], 0
    jz loop_end_186
sub rbx, 5
sub rbx, 4
    jmp loop_start_186
loop_end_186:
add rbx, 4
    mov byte [rbx], 0
add byte [rbx], 1
add rbx, 5
loop_start_187:
    cmp byte [rbx], 0
    jz loop_end_187
add rbx, 9
    jmp loop_start_187
loop_end_187:
add rbx, 1
    mov byte [rbx], 0
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_185
loop_end_185:
    jmp loop_start_183
loop_end_183:
add byte [rbx], 1
add rbx, 1
loop_start_188:
    cmp byte [rbx], 0
    jz loop_end_188
sub byte [rbx], 1
sub rbx, 1
loop_start_189:
    cmp byte [rbx], 0
    jz loop_end_189
add rbx, 9
    jmp loop_start_189
loop_end_189:
sub rbx, 8
    jmp loop_start_188
loop_end_188:
add rbx, 8
    jmp loop_start_175
loop_end_175:
sub rbx, 9
loop_start_190:
    cmp byte [rbx], 0
    jz loop_end_190
sub rbx, 9
    jmp loop_start_190
loop_end_190:
add rbx, 4
loop_start_191:
    cmp byte [rbx], 0
    jz loop_end_191
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 4
    jmp loop_start_191
loop_end_191:
sub rbx, 4
loop_start_192:
    cmp byte [rbx], 0
    jz loop_end_192
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
add rbx, 5
loop_start_193:
    cmp byte [rbx], 0
    jz loop_end_193
add rbx, 1
add byte [rbx], 1
add rbx, 2
loop_start_194:
    cmp byte [rbx], 0
    jz loop_end_194
sub byte [rbx], 1
sub rbx, 2
sub byte [rbx], 1
add rbx, 2
    jmp loop_start_194
loop_end_194:
sub rbx, 2
loop_start_195:
    cmp byte [rbx], 0
    jz loop_end_195
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_195
loop_end_195:
add rbx, 8
    jmp loop_start_193
loop_end_193:
sub rbx, 5
sub rbx, 3
add byte [rbx], 1
sub rbx, 1
loop_start_196:
    cmp byte [rbx], 0
    jz loop_end_196
add rbx, 1
loop_start_197:
    cmp byte [rbx], 0
    jz loop_end_197
sub byte [rbx], 1
add rbx, 5
add byte [rbx], 1
sub rbx, 4
loop_start_198:
    cmp byte [rbx], 0
    jz loop_end_198
sub byte [rbx], 1
add rbx, 4
sub byte [rbx], 1
sub rbx, 14
add byte [rbx], 1
add rbx, 11
loop_start_199:
    cmp byte [rbx], 0
    jz loop_end_199
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 3
    jmp loop_start_199
loop_end_199:
sub rbx, 1
    jmp loop_start_198
loop_end_198:
add rbx, 1
loop_start_200:
    cmp byte [rbx], 0
    jz loop_end_200
sub byte [rbx], 1
add rbx, 3
sub byte [rbx], 1
sub rbx, 9
sub rbx, 5
add byte [rbx], 1
add rbx, 11
    jmp loop_start_200
loop_end_200:
sub rbx, 2
    jmp loop_start_197
loop_end_197:
add rbx, 1
loop_start_201:
    cmp byte [rbx], 0
    jz loop_end_201
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 3
loop_start_202:
    cmp byte [rbx], 0
    jz loop_end_202
sub byte [rbx], 1
add rbx, 3
sub byte [rbx], 1
sub rbx, 14
add byte [rbx], 1
add rbx, 11
    jmp loop_start_202
loop_end_202:
sub rbx, 1
    jmp loop_start_201
loop_end_201:
add rbx, 1
loop_start_203:
    cmp byte [rbx], 0
    jz loop_end_203
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 3
    jmp loop_start_203
loop_end_203:
sub rbx, 2
sub rbx, 10
    jmp loop_start_196
loop_end_196:
add rbx, 4
    mov byte [rbx], 0
sub rbx, 4
    jmp loop_start_192
loop_end_192:
add rbx, 3
loop_start_204:
    cmp byte [rbx], 0
    jz loop_end_204
sub byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
add rbx, 3
    jmp loop_start_204
loop_end_204:
sub rbx, 3
loop_start_205:
    cmp byte [rbx], 0
    jz loop_end_205
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
add rbx, 6
loop_start_206:
    cmp byte [rbx], 0
    jz loop_end_206
add rbx, 1
add byte [rbx], 1
add rbx, 1
loop_start_207:
    cmp byte [rbx], 0
    jz loop_end_207
sub byte [rbx], 1
sub rbx, 1
sub byte [rbx], 1
add rbx, 1
    jmp loop_start_207
loop_end_207:
sub rbx, 1
loop_start_208:
    cmp byte [rbx], 0
    jz loop_end_208
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_208
loop_end_208:
add rbx, 8
    jmp loop_start_206
loop_end_206:
sub rbx, 3
sub rbx, 5
add byte [rbx], 1
sub rbx, 1
loop_start_209:
    cmp byte [rbx], 0
    jz loop_end_209
add rbx, 1
loop_start_210:
    cmp byte [rbx], 0
    jz loop_end_210
sub byte [rbx], 1
add rbx, 5
add byte [rbx], 1
sub rbx, 3
loop_start_211:
    cmp byte [rbx], 0
    jz loop_end_211
sub byte [rbx], 1
add rbx, 3
sub byte [rbx], 1
sub rbx, 14
add byte [rbx], 1
add rbx, 10
loop_start_212:
    cmp byte [rbx], 0
    jz loop_end_212
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 4
    jmp loop_start_212
loop_end_212:
add rbx, 1
    jmp loop_start_211
loop_end_211:
sub rbx, 1
loop_start_213:
    cmp byte [rbx], 0
    jz loop_end_213
sub byte [rbx], 1
add rbx, 4
sub byte [rbx], 1
sub rbx, 7
sub rbx, 7
add byte [rbx], 1
add rbx, 10
    jmp loop_start_213
loop_end_213:
sub rbx, 1
    jmp loop_start_210
loop_end_210:
add rbx, 2
loop_start_214:
    cmp byte [rbx], 0
    jz loop_end_214
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 4
loop_start_215:
    cmp byte [rbx], 0
    jz loop_end_215
sub byte [rbx], 1
add rbx, 4
sub byte [rbx], 1
sub rbx, 14
add byte [rbx], 1
add rbx, 10
    jmp loop_start_215
loop_end_215:
add rbx, 1
    jmp loop_start_214
loop_end_214:
sub rbx, 1
loop_start_216:
    cmp byte [rbx], 0
    jz loop_end_216
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 4
    jmp loop_start_216
loop_end_216:
sub rbx, 11
    jmp loop_start_209
loop_end_209:
add rbx, 6
add byte [rbx], 1
sub rbx, 6
    jmp loop_start_205
loop_end_205:
    jmp loop_start_174
loop_end_174:
add rbx, 4
loop_start_217:
    cmp byte [rbx], 0
    jz loop_end_217
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 4
    jmp loop_start_217
loop_end_217:
sub rbx, 4
loop_start_218:
    cmp byte [rbx], 0
    jz loop_end_218
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
add rbx, 5
loop_start_219:
    cmp byte [rbx], 0
    jz loop_end_219
add rbx, 9
    jmp loop_start_219
loop_end_219:
sub rbx, 9
loop_start_220:
    cmp byte [rbx], 0
    jz loop_end_220
add rbx, 1
loop_start_221:
    cmp byte [rbx], 0
    jz loop_end_221
sub byte [rbx], 1
add rbx, 5
add byte [rbx], 1
sub rbx, 4
loop_start_222:
    cmp byte [rbx], 0
    jz loop_end_222
sub byte [rbx], 1
add rbx, 4
sub byte [rbx], 1
sub rbx, 14
add byte [rbx], 1
add rbx, 11
loop_start_223:
    cmp byte [rbx], 0
    jz loop_end_223
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 3
    jmp loop_start_223
loop_end_223:
sub rbx, 1
    jmp loop_start_222
loop_end_222:
add rbx, 1
loop_start_224:
    cmp byte [rbx], 0
    jz loop_end_224
sub byte [rbx], 1
add rbx, 3
sub byte [rbx], 1
sub rbx, 14
add byte [rbx], 1
add rbx, 11
    jmp loop_start_224
loop_end_224:
sub rbx, 2
    jmp loop_start_221
loop_end_221:
add rbx, 1
loop_start_225:
    cmp byte [rbx], 0
    jz loop_end_225
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 3
loop_start_226:
    cmp byte [rbx], 0
    jz loop_end_226
sub byte [rbx], 1
add rbx, 3
sub byte [rbx], 1
sub rbx, 14
add byte [rbx], 1
add rbx, 11
    jmp loop_start_226
loop_end_226:
sub rbx, 1
    jmp loop_start_225
loop_end_225:
add rbx, 1
loop_start_227:
    cmp byte [rbx], 0
    jz loop_end_227
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 3
    jmp loop_start_227
loop_end_227:
sub rbx, 7
sub rbx, 5
    jmp loop_start_220
loop_end_220:
    jmp loop_start_218
loop_end_218:
add rbx, 1
    mov byte [rbx], 0
add rbx, 2
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 5
loop_start_228:
    cmp byte [rbx], 0
    jz loop_end_228
add rbx, 2
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 6
    jmp loop_start_228
loop_end_228:
sub rbx, 9
loop_start_229:
    cmp byte [rbx], 0
    jz loop_end_229
sub rbx, 9
    jmp loop_start_229
loop_end_229:
add rbx, 9
loop_start_230:
    cmp byte [rbx], 0
    jz loop_end_230
add rbx, 5
loop_start_231:
    cmp byte [rbx], 0
    jz loop_end_231
sub byte [rbx], 1
sub rbx, 1
sub rbx, 3
add byte [rbx], 1
add rbx, 4
    jmp loop_start_231
loop_end_231:
sub rbx, 4
loop_start_232:
    cmp byte [rbx], 0
    jz loop_end_232
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_232
loop_end_232:
add rbx, 8
    jmp loop_start_230
loop_end_230:
sub rbx, 9
loop_start_233:
    cmp byte [rbx], 0
    jz loop_end_233
sub rbx, 9
    jmp loop_start_233
loop_end_233:
add rbx, 9
add byte [rbx], 15
loop_start_234:
    cmp byte [rbx], 0
    jz loop_end_234
loop_start_235:
    cmp byte [rbx], 0
    jz loop_end_235
add rbx, 9
    jmp loop_start_235
loop_end_235:
add byte [rbx], 1
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
sub rbx, 9
loop_start_236:
    cmp byte [rbx], 0
    jz loop_end_236
sub rbx, 9
    jmp loop_start_236
loop_end_236:
add rbx, 9
sub byte [rbx], 1
    jmp loop_start_234
loop_end_234:
add byte [rbx], 1
loop_start_237:
    cmp byte [rbx], 0
    jz loop_end_237
add rbx, 1
add byte [rbx], 1
add rbx, 8
    jmp loop_start_237
loop_end_237:
sub rbx, 9
loop_start_238:
    cmp byte [rbx], 0
    jz loop_end_238
sub rbx, 9
    jmp loop_start_238
loop_end_238:
add rbx, 9
loop_start_239:
    cmp byte [rbx], 0
    jz loop_end_239
add rbx, 1
sub byte [rbx], 1
add rbx, 4
loop_start_240:
    cmp byte [rbx], 0
    jz loop_end_240
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 4
    jmp loop_start_240
loop_end_240:
sub rbx, 4
loop_start_241:
    cmp byte [rbx], 0
    jz loop_end_241
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 5
loop_start_242:
    cmp byte [rbx], 0
    jz loop_end_242
sub byte [rbx], 1
add rbx, 2
loop_start_243:
    cmp byte [rbx], 0
    jz loop_end_243
sub byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
add rbx, 2
    jmp loop_start_243
loop_end_243:
sub rbx, 2
loop_start_244:
    cmp byte [rbx], 0
    jz loop_end_244
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 3
    jmp loop_start_244
loop_end_244:
add byte [rbx], 1
add rbx, 9
    jmp loop_start_242
loop_end_242:
sub rbx, 8
loop_start_245:
    cmp byte [rbx], 0
    jz loop_end_245
sub rbx, 9
    jmp loop_start_245
loop_end_245:
    jmp loop_start_241
loop_end_241:
add rbx, 9
loop_start_246:
    cmp byte [rbx], 0
    jz loop_end_246
add rbx, 9
    jmp loop_start_246
loop_end_246:
sub rbx, 8
sub rbx, 1
loop_start_247:
    cmp byte [rbx], 0
    jz loop_end_247
add rbx, 1
loop_start_248:
    cmp byte [rbx], 0
    jz loop_end_248
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_248
loop_end_248:
sub rbx, 10
    jmp loop_start_247
loop_end_247:
add rbx, 1
loop_start_249:
    cmp byte [rbx], 0
    jz loop_end_249
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_249
loop_end_249:
sub rbx, 1
add byte [rbx], 1
add rbx, 8
    jmp loop_start_239
loop_end_239:
sub rbx, 9
loop_start_250:
    cmp byte [rbx], 0
    jz loop_end_250
add rbx, 1
    mov byte [rbx], 0
sub rbx, 1
sub byte [rbx], 1
add rbx, 3
loop_start_251:
    cmp byte [rbx], 0
    jz loop_end_251
sub byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
add rbx, 1
loop_start_252:
    cmp byte [rbx], 0
    jz loop_end_252
sub rbx, 1
sub byte [rbx], 1
add rbx, 1
sub byte [rbx], 1
sub rbx, 7
add byte [rbx], 1
add rbx, 7
    jmp loop_start_252
loop_end_252:
sub rbx, 1
loop_start_253:
    cmp byte [rbx], 0
    jz loop_end_253
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_253
loop_end_253:
add rbx, 3
    jmp loop_start_251
loop_end_251:
sub rbx, 2
loop_start_254:
    cmp byte [rbx], 0
    jz loop_end_254
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_254
loop_end_254:
sub rbx, 1
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_250
loop_end_250:
add rbx, 9
loop_start_255:
    cmp byte [rbx], 0
    jz loop_end_255
add rbx, 3
loop_start_256:
    cmp byte [rbx], 0
    jz loop_end_256
sub byte [rbx], 1
sub rbx, 36
add byte [rbx], 1
add rbx, 36
    jmp loop_start_256
loop_end_256:
add rbx, 1
add rbx, 5
    jmp loop_start_255
loop_end_255:
sub rbx, 9
loop_start_257:
    cmp byte [rbx], 0
    jz loop_end_257
sub rbx, 9
    jmp loop_start_257
loop_end_257:
add rbx, 5
    mov byte [rbx], 0
add rbx, 4
add byte [rbx], 15
loop_start_258:
    cmp byte [rbx], 0
    jz loop_end_258
loop_start_259:
    cmp byte [rbx], 0
    jz loop_end_259
add rbx, 9
    jmp loop_start_259
loop_end_259:
sub rbx, 9
sub byte [rbx], 1
sub rbx, 5
sub rbx, 4
loop_start_260:
    cmp byte [rbx], 0
    jz loop_end_260
sub rbx, 9
    jmp loop_start_260
loop_end_260:
add rbx, 9
sub byte [rbx], 1
    jmp loop_start_258
loop_end_258:
add byte [rbx], 1
loop_start_261:
    cmp byte [rbx], 0
    jz loop_end_261
add rbx, 3
loop_start_262:
    cmp byte [rbx], 0
    jz loop_end_262
sub byte [rbx], 1
sub rbx, 3
sub byte [rbx], 1
add rbx, 3
    jmp loop_start_262
loop_end_262:
add byte [rbx], 1
sub rbx, 3
loop_start_263:
    cmp byte [rbx], 0
    jz loop_end_263
sub byte [rbx], 1
add rbx, 3
sub byte [rbx], 1
add rbx, 1
loop_start_264:
    cmp byte [rbx], 0
    jz loop_end_264
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 4
    jmp loop_start_264
loop_end_264:
sub rbx, 4
loop_start_265:
    cmp byte [rbx], 0
    jz loop_end_265
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 5
sub rbx, 8
loop_start_266:
    cmp byte [rbx], 0
    jz loop_end_266
sub rbx, 9
    jmp loop_start_266
loop_end_266:
add rbx, 4
    mov byte [rbx], 0
add byte [rbx], 1
add rbx, 5
loop_start_267:
    cmp byte [rbx], 0
    jz loop_end_267
add rbx, 9
    jmp loop_start_267
loop_end_267:
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_265
loop_end_265:
    jmp loop_start_263
loop_end_263:
add byte [rbx], 1
add rbx, 4
loop_start_268:
    cmp byte [rbx], 0
    jz loop_end_268
sub byte [rbx], 1
sub rbx, 4
sub byte [rbx], 1
add rbx, 4
    jmp loop_start_268
loop_end_268:
add byte [rbx], 1
sub rbx, 4
loop_start_269:
    cmp byte [rbx], 0
    jz loop_end_269
sub byte [rbx], 1
add rbx, 4
sub byte [rbx], 1
sub rbx, 1
loop_start_270:
    cmp byte [rbx], 0
    jz loop_end_270
sub byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
add rbx, 3
    jmp loop_start_270
loop_end_270:
sub rbx, 3
loop_start_271:
    cmp byte [rbx], 0
    jz loop_end_271
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 12
loop_start_272:
    cmp byte [rbx], 0
    jz loop_end_272
sub rbx, 9
    jmp loop_start_272
loop_end_272:
add rbx, 3
    mov byte [rbx], 0
add byte [rbx], 1
add rbx, 6
loop_start_273:
    cmp byte [rbx], 0
    jz loop_end_273
add rbx, 9
    jmp loop_start_273
loop_end_273:
add rbx, 1
    mov byte [rbx], 0
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_271
loop_end_271:
    jmp loop_start_269
loop_end_269:
add byte [rbx], 1
add rbx, 1
loop_start_274:
    cmp byte [rbx], 0
    jz loop_end_274
sub byte [rbx], 1
sub rbx, 1
loop_start_275:
    cmp byte [rbx], 0
    jz loop_end_275
add rbx, 2
add rbx, 7
    jmp loop_start_275
loop_end_275:
sub rbx, 8
    jmp loop_start_274
loop_end_274:
add rbx, 8
    jmp loop_start_261
loop_end_261:
sub rbx, 9
loop_start_276:
    cmp byte [rbx], 0
    jz loop_end_276
sub rbx, 9
    jmp loop_start_276
loop_end_276:
add rbx, 3
loop_start_277:
    cmp byte [rbx], 0
    jz loop_end_277
sub byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
add rbx, 3
    jmp loop_start_277
loop_end_277:
sub rbx, 3
loop_start_278:
    cmp byte [rbx], 0
    jz loop_end_278
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
add rbx, 6
loop_start_279:
    cmp byte [rbx], 0
    jz loop_end_279
add rbx, 1
add byte [rbx], 1
add rbx, 3
loop_start_280:
    cmp byte [rbx], 0
    jz loop_end_280
sub byte [rbx], 1
sub rbx, 3
sub byte [rbx], 1
add rbx, 3
    jmp loop_start_280
loop_end_280:
sub rbx, 3
loop_start_281:
    cmp byte [rbx], 0
    jz loop_end_281
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 3
    jmp loop_start_281
loop_end_281:
add rbx, 8
    jmp loop_start_279
loop_end_279:
sub rbx, 8
add byte [rbx], 1
sub rbx, 1
loop_start_282:
    cmp byte [rbx], 0
    jz loop_end_282
add rbx, 1
loop_start_283:
    cmp byte [rbx], 0
    jz loop_end_283
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
add rbx, 1
loop_start_284:
    cmp byte [rbx], 0
    jz loop_end_284
sub byte [rbx], 1
sub rbx, 1
sub byte [rbx], 1
sub rbx, 10
add byte [rbx], 1
add rbx, 12
loop_start_285:
    cmp byte [rbx], 0
    jz loop_end_285
sub byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
add rbx, 2
    jmp loop_start_285
loop_end_285:
sub rbx, 1
    jmp loop_start_284
loop_end_284:
add rbx, 1
loop_start_286:
    cmp byte [rbx], 0
    jz loop_end_286
sub byte [rbx], 1
sub rbx, 2
sub byte [rbx], 1
sub rbx, 10
add byte [rbx], 1
add rbx, 12
    jmp loop_start_286
loop_end_286:
sub rbx, 3
    jmp loop_start_283
loop_end_283:
add rbx, 2
loop_start_287:
    cmp byte [rbx], 0
    jz loop_end_287
sub byte [rbx], 1
sub rbx, 1
add byte [rbx], 1
add rbx, 2
loop_start_288:
    cmp byte [rbx], 0
    jz loop_end_288
sub byte [rbx], 1
sub rbx, 2
sub byte [rbx], 1
sub rbx, 10
add byte [rbx], 1
add rbx, 12
    jmp loop_start_288
loop_end_288:
sub rbx, 1
    jmp loop_start_287
loop_end_287:
add rbx, 1
loop_start_289:
    cmp byte [rbx], 0
    jz loop_end_289
sub byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
add rbx, 2
    jmp loop_start_289
loop_end_289:
sub rbx, 13
    jmp loop_start_282
loop_end_282:
    jmp loop_start_278
loop_end_278:
add rbx, 4
loop_start_290:
    cmp byte [rbx], 0
    jz loop_end_290
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 4
    jmp loop_start_290
loop_end_290:
sub rbx, 4
loop_start_291:
    cmp byte [rbx], 0
    jz loop_end_291
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
add rbx, 5
loop_start_292:
    cmp byte [rbx], 0
    jz loop_end_292
add rbx, 1
add byte [rbx], 1
add rbx, 2
loop_start_293:
    cmp byte [rbx], 0
    jz loop_end_293
sub byte [rbx], 1
sub rbx, 2
sub byte [rbx], 1
add rbx, 2
    jmp loop_start_293
loop_end_293:
sub rbx, 2
loop_start_294:
    cmp byte [rbx], 0
    jz loop_end_294
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_294
loop_end_294:
add rbx, 2
add rbx, 6
    jmp loop_start_292
loop_end_292:
sub rbx, 8
add byte [rbx], 1
sub rbx, 1
loop_start_295:
    cmp byte [rbx], 0
    jz loop_end_295
add rbx, 1
loop_start_296:
    cmp byte [rbx], 0
    jz loop_end_296
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
add rbx, 2
loop_start_297:
    cmp byte [rbx], 0
    jz loop_end_297
sub byte [rbx], 1
sub rbx, 2
sub byte [rbx], 1
sub rbx, 10
add byte [rbx], 1
add rbx, 11
loop_start_298:
    cmp byte [rbx], 0
    jz loop_end_298
sub byte [rbx], 1
sub rbx, 1
add byte [rbx], 1
add rbx, 1
    jmp loop_start_298
loop_end_298:
add rbx, 1
    jmp loop_start_297
loop_end_297:
sub rbx, 1
loop_start_299:
    cmp byte [rbx], 0
    jz loop_end_299
sub byte [rbx], 1
sub rbx, 1
sub byte [rbx], 1
sub rbx, 10
add byte [rbx], 1
add rbx, 4
add rbx, 7
    jmp loop_start_299
loop_end_299:
sub rbx, 2
    jmp loop_start_296
loop_end_296:
add rbx, 3
loop_start_300:
    cmp byte [rbx], 0
    jz loop_end_300
sub byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
add rbx, 1
loop_start_301:
    cmp byte [rbx], 0
    jz loop_end_301
sub byte [rbx], 1
sub rbx, 1
sub byte [rbx], 1
sub rbx, 10
add byte [rbx], 1
add rbx, 11
    jmp loop_start_301
loop_end_301:
add rbx, 1
    jmp loop_start_300
loop_end_300:
sub rbx, 1
loop_start_302:
    cmp byte [rbx], 0
    jz loop_end_302
sub byte [rbx], 1
sub rbx, 1
add byte [rbx], 1
add rbx, 1
    jmp loop_start_302
loop_end_302:
sub rbx, 12
    jmp loop_start_295
loop_end_295:
add rbx, 5
add byte [rbx], 1
sub rbx, 5
    jmp loop_start_291
loop_end_291:
add rbx, 9
loop_start_303:
    cmp byte [rbx], 0
    jz loop_end_303
add rbx, 3
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 4
    jmp loop_start_303
loop_end_303:
sub rbx, 9
loop_start_304:
    cmp byte [rbx], 0
    jz loop_end_304
sub rbx, 9
    jmp loop_start_304
loop_end_304:
add rbx, 3
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 5
loop_start_305:
    cmp byte [rbx], 0
    jz loop_end_305
add rbx, 7
loop_start_306:
    cmp byte [rbx], 0
    jz loop_end_306
sub byte [rbx], 1
sub rbx, 5
sub rbx, 1
add byte [rbx], 1
add rbx, 6
    jmp loop_start_306
loop_end_306:
sub rbx, 6
loop_start_307:
    cmp byte [rbx], 0
    jz loop_end_307
sub byte [rbx], 1
add rbx, 6
add byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_307
loop_end_307:
add rbx, 8
    jmp loop_start_305
loop_end_305:
sub rbx, 9
loop_start_308:
    cmp byte [rbx], 0
    jz loop_end_308
sub rbx, 9
    jmp loop_start_308
loop_end_308:
add rbx, 4
add byte [rbx], 1
add rbx, 1
loop_start_309:
    cmp byte [rbx], 0
    jz loop_end_309
sub byte [rbx], 1
sub rbx, 1
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 4
add rbx, 1
    jmp loop_start_309
loop_end_309:
add rbx, 2
loop_start_310:
    cmp byte [rbx], 0
    jz loop_end_310
sub byte [rbx], 1
sub rbx, 7
loop_start_311:
    cmp byte [rbx], 0
    jz loop_end_311
sub byte [rbx], 1
add rbx, 5
add byte [rbx], 1
sub rbx, 1
add byte [rbx], 2
sub rbx, 4
    jmp loop_start_311
loop_end_311:
add rbx, 5
loop_start_312:
    cmp byte [rbx], 0
    jz loop_end_312
sub byte [rbx], 1
sub rbx, 5
add byte [rbx], 1
add rbx, 5
    jmp loop_start_312
loop_end_312:
sub rbx, 1
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
add rbx, 2
    jmp loop_start_310
loop_end_310:
sub rbx, 2
loop_start_313:
    cmp byte [rbx], 0
    jz loop_end_313
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_313
loop_end_313:
sub rbx, 5
loop_start_314:
    cmp byte [rbx], 0
    jz loop_end_314
sub byte [rbx], 1
add rbx, 5
add byte [rbx], 1
sub rbx, 2
sub rbx, 3
    jmp loop_start_314
loop_end_314:
add byte [rbx], 1
add rbx, 4
loop_start_315:
    cmp byte [rbx], 0
    jz loop_end_315
sub byte [rbx], 1
sub rbx, 4
sub byte [rbx], 1
add rbx, 4
    jmp loop_start_315
loop_end_315:
add byte [rbx], 1
sub rbx, 4
loop_start_316:
    cmp byte [rbx], 0
    jz loop_end_316
sub byte [rbx], 1
add rbx, 4
sub byte [rbx], 1
add rbx, 5
loop_start_317:
    cmp byte [rbx], 0
    jz loop_end_317
add rbx, 3
loop_start_318:
    cmp byte [rbx], 0
    jz loop_end_318
sub byte [rbx], 1
sub rbx, 3
sub byte [rbx], 1
add rbx, 3
    jmp loop_start_318
loop_end_318:
add byte [rbx], 1
sub rbx, 3
loop_start_319:
    cmp byte [rbx], 0
    jz loop_end_319
sub byte [rbx], 1
add rbx, 3
sub byte [rbx], 1
sub rbx, 1
loop_start_320:
    cmp byte [rbx], 0
    jz loop_end_320
sub byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
add rbx, 2
    jmp loop_start_320
loop_end_320:
sub rbx, 2
loop_start_321:
    cmp byte [rbx], 0
    jz loop_end_321
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 2
sub rbx, 9
loop_start_322:
    cmp byte [rbx], 0
    jz loop_end_322
sub rbx, 9
    jmp loop_start_322
loop_end_322:
add rbx, 4
    mov byte [rbx], 0
add byte [rbx], 1
add rbx, 5
loop_start_323:
    cmp byte [rbx], 0
    jz loop_end_323
add rbx, 9
    jmp loop_start_323
loop_end_323:
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_321
loop_end_321:
    jmp loop_start_319
loop_end_319:
add byte [rbx], 1
add rbx, 2
loop_start_324:
    cmp byte [rbx], 0
    jz loop_end_324
sub byte [rbx], 1
sub rbx, 2
sub byte [rbx], 1
add rbx, 2
    jmp loop_start_324
loop_end_324:
add byte [rbx], 1
sub rbx, 2
loop_start_325:
    cmp byte [rbx], 0
    jz loop_end_325
sub byte [rbx], 1
add rbx, 2
sub byte [rbx], 1
add rbx, 1
loop_start_326:
    cmp byte [rbx], 0
    jz loop_end_326
sub byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
add rbx, 3
    jmp loop_start_326
loop_end_326:
sub rbx, 1
sub rbx, 2
loop_start_327:
    cmp byte [rbx], 0
    jz loop_end_327
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 12
loop_start_328:
    cmp byte [rbx], 0
    jz loop_end_328
sub rbx, 9
    jmp loop_start_328
loop_end_328:
add rbx, 3
    mov byte [rbx], 0
add byte [rbx], 1
add rbx, 6
loop_start_329:
    cmp byte [rbx], 0
    jz loop_end_329
add rbx, 9
    jmp loop_start_329
loop_end_329:
add rbx, 1
    mov byte [rbx], 0
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_327
loop_end_327:
    jmp loop_start_325
loop_end_325:
add byte [rbx], 1
add rbx, 1
loop_start_330:
    cmp byte [rbx], 0
    jz loop_end_330
sub byte [rbx], 1
sub rbx, 1
loop_start_331:
    cmp byte [rbx], 0
    jz loop_end_331
add rbx, 9
    jmp loop_start_331
loop_end_331:
sub rbx, 1
sub rbx, 7
    jmp loop_start_330
loop_end_330:
add rbx, 8
    jmp loop_start_317
loop_end_317:
sub rbx, 9
loop_start_332:
    cmp byte [rbx], 0
    jz loop_end_332
sub rbx, 9
    jmp loop_start_332
loop_end_332:
add rbx, 3
loop_start_333:
    cmp byte [rbx], 0
    jz loop_end_333
sub byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
add rbx, 3
    jmp loop_start_333
loop_end_333:
sub rbx, 3
loop_start_334:
    cmp byte [rbx], 0
    jz loop_end_334
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
add rbx, 6
loop_start_335:
    cmp byte [rbx], 0
    jz loop_end_335
add rbx, 1
add byte [rbx], 1
add rbx, 1
loop_start_336:
    cmp byte [rbx], 0
    jz loop_end_336
sub byte [rbx], 1
sub rbx, 1
sub byte [rbx], 1
add rbx, 1
    jmp loop_start_336
loop_end_336:
sub rbx, 1
loop_start_337:
    cmp byte [rbx], 0
    jz loop_end_337
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_337
loop_end_337:
add rbx, 8
    jmp loop_start_335
loop_end_335:
sub rbx, 8
add byte [rbx], 1
sub rbx, 1
loop_start_338:
    cmp byte [rbx], 0
    jz loop_end_338
add rbx, 1
loop_start_339:
    cmp byte [rbx], 0
    jz loop_end_339
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 2
loop_start_340:
    cmp byte [rbx], 0
    jz loop_end_340
sub byte [rbx], 1
add rbx, 2
sub byte [rbx], 1
sub rbx, 13
add byte [rbx], 1
add rbx, 10
loop_start_341:
    cmp byte [rbx], 0
    jz loop_end_341
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 3
    jmp loop_start_341
loop_end_341:
add rbx, 1
    jmp loop_start_340
loop_end_340:
sub rbx, 1
loop_start_342:
    cmp byte [rbx], 0
    jz loop_end_342
sub byte [rbx], 1
add rbx, 3
sub byte [rbx], 1
sub rbx, 13
add byte [rbx], 1
add rbx, 10
    jmp loop_start_342
loop_end_342:
sub rbx, 1
    jmp loop_start_339
loop_end_339:
add rbx, 2
loop_start_343:
    cmp byte [rbx], 0
    jz loop_end_343
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 3
loop_start_344:
    cmp byte [rbx], 0
    jz loop_end_344
sub byte [rbx], 1
add rbx, 3
sub byte [rbx], 1
sub rbx, 13
add byte [rbx], 1
add rbx, 10
    jmp loop_start_344
loop_end_344:
add rbx, 1
    jmp loop_start_343
loop_end_343:
sub rbx, 1
loop_start_345:
    cmp byte [rbx], 0
    jz loop_end_345
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 3
    jmp loop_start_345
loop_end_345:
sub rbx, 11
    jmp loop_start_338
loop_end_338:
add rbx, 5
    mov byte [rbx], 0
add rbx, 2
loop_start_346:
    cmp byte [rbx], 0
    jz loop_end_346
sub byte [rbx], 1
sub rbx, 7
add byte [rbx], 1
add rbx, 7
    jmp loop_start_346
loop_end_346:
sub rbx, 7
loop_start_347:
    cmp byte [rbx], 0
    jz loop_end_347
sub byte [rbx], 1
add rbx, 7
add byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
sub rbx, 5
    jmp loop_start_347
loop_end_347:
    jmp loop_start_334
loop_end_334:
add rbx, 4
loop_start_348:
    cmp byte [rbx], 0
    jz loop_end_348
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 1
add rbx, 3
    jmp loop_start_348
loop_end_348:
sub rbx, 4
loop_start_349:
    cmp byte [rbx], 0
    jz loop_end_349
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
add rbx, 5
loop_start_350:
    cmp byte [rbx], 0
    jz loop_end_350
add rbx, 1
add byte [rbx], 1
add rbx, 2
loop_start_351:
    cmp byte [rbx], 0
    jz loop_end_351
sub byte [rbx], 1
sub rbx, 2
sub byte [rbx], 1
add rbx, 2
    jmp loop_start_351
loop_end_351:
sub rbx, 2
loop_start_352:
    cmp byte [rbx], 0
    jz loop_end_352
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_352
loop_end_352:
add rbx, 8
    jmp loop_start_350
loop_end_350:
sub rbx, 8
add byte [rbx], 1
sub rbx, 1
loop_start_353:
    cmp byte [rbx], 0
    jz loop_end_353
add rbx, 1
loop_start_354:
    cmp byte [rbx], 0
    jz loop_end_354
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 3
loop_start_355:
    cmp byte [rbx], 0
    jz loop_end_355
sub byte [rbx], 1
add rbx, 3
sub byte [rbx], 1
sub rbx, 13
add byte [rbx], 1
add rbx, 11
loop_start_356:
    cmp byte [rbx], 0
    jz loop_end_356
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_356
loop_end_356:
sub rbx, 1
    jmp loop_start_355
loop_end_355:
add rbx, 1
loop_start_357:
    cmp byte [rbx], 0
    jz loop_end_357
sub byte [rbx], 1
add rbx, 2
sub byte [rbx], 1
sub rbx, 13
add byte [rbx], 1
add rbx, 11
    jmp loop_start_357
loop_end_357:
sub rbx, 2
    jmp loop_start_354
loop_end_354:
add rbx, 1
loop_start_358:
    cmp byte [rbx], 0
    jz loop_end_358
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 2
loop_start_359:
    cmp byte [rbx], 0
    jz loop_end_359
sub byte [rbx], 1
add rbx, 2
sub byte [rbx], 1
sub rbx, 13
add byte [rbx], 1
add rbx, 11
    jmp loop_start_359
loop_end_359:
sub rbx, 1
    jmp loop_start_358
loop_end_358:
add rbx, 1
loop_start_360:
    cmp byte [rbx], 0
    jz loop_end_360
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_360
loop_end_360:
sub rbx, 12
    jmp loop_start_353
loop_end_353:
    jmp loop_start_349
loop_end_349:
add rbx, 4
    mov byte [rbx], 0
sub rbx, 4
    jmp loop_start_316
loop_end_316:
add rbx, 4
loop_start_361:
    cmp byte [rbx], 0
    jz loop_end_361
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 2
add rbx, 2
    jmp loop_start_361
loop_end_361:
sub rbx, 4
loop_start_362:
    cmp byte [rbx], 0
    jz loop_end_362
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
add rbx, 1
    mov byte [rbx], 0
add rbx, 2
loop_start_363:
    cmp byte [rbx], 0
    jz loop_end_363
sub byte [rbx], 1
sub rbx, 7
add byte [rbx], 1
add rbx, 7
    jmp loop_start_363
loop_end_363:
sub rbx, 7
loop_start_364:
    cmp byte [rbx], 0
    jz loop_end_364
sub byte [rbx], 1
add rbx, 7
add byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
sub rbx, 5
    jmp loop_start_364
loop_end_364:
add rbx, 9
loop_start_365:
    cmp byte [rbx], 0
    jz loop_end_365
add rbx, 6
add rbx, 3
    jmp loop_start_365
loop_end_365:
sub rbx, 9
loop_start_366:
    cmp byte [rbx], 0
    jz loop_end_366
add rbx, 1
loop_start_367:
    cmp byte [rbx], 0
    jz loop_end_367
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 3
loop_start_368:
    cmp byte [rbx], 0
    jz loop_end_368
sub byte [rbx], 1
add rbx, 3
sub byte [rbx], 1
sub rbx, 13
add byte [rbx], 1
add rbx, 11
loop_start_369:
    cmp byte [rbx], 0
    jz loop_end_369
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_369
loop_end_369:
sub rbx, 1
    jmp loop_start_368
loop_end_368:
add rbx, 1
loop_start_370:
    cmp byte [rbx], 0
    jz loop_end_370
sub byte [rbx], 1
add rbx, 2
sub byte [rbx], 1
sub rbx, 8
sub rbx, 5
add byte [rbx], 1
add rbx, 11
    jmp loop_start_370
loop_end_370:
sub rbx, 2
    jmp loop_start_367
loop_end_367:
add rbx, 1
loop_start_371:
    cmp byte [rbx], 0
    jz loop_end_371
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 2
loop_start_372:
    cmp byte [rbx], 0
    jz loop_end_372
sub byte [rbx], 1
add rbx, 2
sub byte [rbx], 1
sub rbx, 13
add byte [rbx], 1
add rbx, 11
    jmp loop_start_372
loop_end_372:
sub rbx, 1
    jmp loop_start_371
loop_end_371:
add rbx, 1
loop_start_373:
    cmp byte [rbx], 0
    jz loop_end_373
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_373
loop_end_373:
sub rbx, 8
sub rbx, 4
    jmp loop_start_366
loop_end_366:
    jmp loop_start_362
loop_end_362:
add rbx, 9
loop_start_374:
    cmp byte [rbx], 0
    jz loop_end_374
add rbx, 2
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 6
    jmp loop_start_374
loop_end_374:
sub rbx, 9
loop_start_375:
    cmp byte [rbx], 0
    jz loop_end_375
sub rbx, 9
    jmp loop_start_375
loop_end_375:
add rbx, 3
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 5
loop_start_376:
    cmp byte [rbx], 0
    jz loop_end_376
add rbx, 5
loop_start_377:
    cmp byte [rbx], 0
    jz loop_end_377
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 4
    jmp loop_start_377
loop_end_377:
sub rbx, 4
loop_start_378:
    cmp byte [rbx], 0
    jz loop_end_378
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_378
loop_end_378:
add rbx, 8
    jmp loop_start_376
loop_end_376:
sub rbx, 9
loop_start_379:
    cmp byte [rbx], 0
    jz loop_end_379
sub rbx, 9
    jmp loop_start_379
loop_end_379:
add rbx, 9
loop_start_380:
    cmp byte [rbx], 0
    jz loop_end_380
add rbx, 6
loop_start_381:
    cmp byte [rbx], 0
    jz loop_end_381
sub byte [rbx], 1
sub rbx, 5
add byte [rbx], 1
add rbx, 5
    jmp loop_start_381
loop_end_381:
sub rbx, 5
loop_start_382:
    cmp byte [rbx], 0
    jz loop_end_382
sub byte [rbx], 1
add rbx, 5
add byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_382
loop_end_382:
add rbx, 8
    jmp loop_start_380
loop_end_380:
sub rbx, 9
loop_start_383:
    cmp byte [rbx], 0
    jz loop_end_383
sub rbx, 9
    jmp loop_start_383
loop_end_383:
add rbx, 9
add byte [rbx], 15
loop_start_384:
    cmp byte [rbx], 0
    jz loop_end_384
loop_start_385:
    cmp byte [rbx], 0
    jz loop_end_385
add rbx, 4
add rbx, 5
    jmp loop_start_385
loop_end_385:
add byte [rbx], 1
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
sub rbx, 9
loop_start_386:
    cmp byte [rbx], 0
    jz loop_end_386
sub rbx, 9
    jmp loop_start_386
loop_end_386:
add rbx, 9
sub byte [rbx], 1
    jmp loop_start_384
loop_end_384:
add byte [rbx], 1
loop_start_387:
    cmp byte [rbx], 0
    jz loop_end_387
add rbx, 1
add byte [rbx], 1
add rbx, 2
add rbx, 6
    jmp loop_start_387
loop_end_387:
sub rbx, 9
loop_start_388:
    cmp byte [rbx], 0
    jz loop_end_388
sub rbx, 9
    jmp loop_start_388
loop_end_388:
add rbx, 9
loop_start_389:
    cmp byte [rbx], 0
    jz loop_end_389
add rbx, 1
sub byte [rbx], 1
add rbx, 4
loop_start_390:
    cmp byte [rbx], 0
    jz loop_end_390
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 4
    jmp loop_start_390
loop_end_390:
sub rbx, 4
loop_start_391:
    cmp byte [rbx], 0
    jz loop_end_391
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 5
loop_start_392:
    cmp byte [rbx], 0
    jz loop_end_392
sub byte [rbx], 1
add rbx, 2
loop_start_393:
    cmp byte [rbx], 0
    jz loop_end_393
sub byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
add rbx, 2
    jmp loop_start_393
loop_end_393:
sub rbx, 2
loop_start_394:
    cmp byte [rbx], 0
    jz loop_end_394
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 4
    jmp loop_start_394
loop_end_394:
add byte [rbx], 1
add rbx, 9
    jmp loop_start_392
loop_end_392:
sub rbx, 8
loop_start_395:
    cmp byte [rbx], 0
    jz loop_end_395
sub rbx, 9
    jmp loop_start_395
loop_end_395:
    jmp loop_start_391
loop_end_391:
add rbx, 9
loop_start_396:
    cmp byte [rbx], 0
    jz loop_end_396
add rbx, 9
    jmp loop_start_396
loop_end_396:
sub rbx, 9
loop_start_397:
    cmp byte [rbx], 0
    jz loop_end_397
add rbx, 1
loop_start_398:
    cmp byte [rbx], 0
    jz loop_end_398
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_398
loop_end_398:
sub rbx, 10
    jmp loop_start_397
loop_end_397:
add rbx, 1
loop_start_399:
    cmp byte [rbx], 0
    jz loop_end_399
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_399
loop_end_399:
sub rbx, 1
add byte [rbx], 1
add rbx, 8
    jmp loop_start_389
loop_end_389:
sub rbx, 9
loop_start_400:
    cmp byte [rbx], 0
    jz loop_end_400
add rbx, 1
loop_start_401:
    cmp byte [rbx], 0
    jz loop_end_401
sub byte [rbx], 1
    jmp loop_start_401
loop_end_401:
sub rbx, 1
sub byte [rbx], 1
add rbx, 4
loop_start_402:
    cmp byte [rbx], 0
    jz loop_end_402
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 1
loop_start_403:
    cmp byte [rbx], 0
    jz loop_end_403
sub rbx, 1
sub byte [rbx], 1
add rbx, 1
sub byte [rbx], 1
sub rbx, 6
add byte [rbx], 1
add rbx, 6
    jmp loop_start_403
loop_end_403:
sub rbx, 1
loop_start_404:
    cmp byte [rbx], 0
    jz loop_end_404
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_404
loop_end_404:
add rbx, 4
    jmp loop_start_402
loop_end_402:
sub rbx, 3
loop_start_405:
    cmp byte [rbx], 0
    jz loop_end_405
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 3
    jmp loop_start_405
loop_end_405:
sub rbx, 1
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_400
loop_end_400:
add rbx, 9
loop_start_406:
    cmp byte [rbx], 0
    jz loop_end_406
add rbx, 1
add byte [rbx], 1
add rbx, 8
    jmp loop_start_406
loop_end_406:
sub rbx, 9
loop_start_407:
    cmp byte [rbx], 0
    jz loop_end_407
sub rbx, 9
    jmp loop_start_407
loop_end_407:
add rbx, 9
loop_start_408:
    cmp byte [rbx], 0
    jz loop_end_408
add rbx, 1
sub byte [rbx], 1
add rbx, 5
loop_start_409:
    cmp byte [rbx], 0
    jz loop_end_409
sub byte [rbx], 1
sub rbx, 5
add byte [rbx], 1
add rbx, 5
    jmp loop_start_409
loop_end_409:
sub rbx, 5
loop_start_410:
    cmp byte [rbx], 0
    jz loop_end_410
sub byte [rbx], 1
add rbx, 5
add byte [rbx], 1
sub rbx, 4
sub rbx, 2
loop_start_411:
    cmp byte [rbx], 0
    jz loop_end_411
sub byte [rbx], 1
add rbx, 3
loop_start_412:
    cmp byte [rbx], 0
    jz loop_end_412
sub byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
add rbx, 3
    jmp loop_start_412
loop_end_412:
sub rbx, 3
loop_start_413:
    cmp byte [rbx], 0
    jz loop_end_413
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 4
    jmp loop_start_413
loop_end_413:
add byte [rbx], 1
add rbx, 9
    jmp loop_start_411
loop_end_411:
sub rbx, 8
loop_start_414:
    cmp byte [rbx], 0
    jz loop_end_414
sub rbx, 9
    jmp loop_start_414
loop_end_414:
    jmp loop_start_410
loop_end_410:
add rbx, 9
loop_start_415:
    cmp byte [rbx], 0
    jz loop_end_415
add rbx, 6
add rbx, 3
    jmp loop_start_415
loop_end_415:
sub rbx, 9
loop_start_416:
    cmp byte [rbx], 0
    jz loop_end_416
add rbx, 2
loop_start_417:
    cmp byte [rbx], 0
    jz loop_end_417
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_417
loop_end_417:
sub rbx, 11
    jmp loop_start_416
loop_end_416:
add rbx, 2
loop_start_418:
    cmp byte [rbx], 0
    jz loop_end_418
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_418
loop_end_418:
sub rbx, 2
add byte [rbx], 1
add rbx, 3
add rbx, 5
    jmp loop_start_408
loop_end_408:
sub rbx, 9
loop_start_419:
    cmp byte [rbx], 0
    jz loop_end_419
add rbx, 1
    mov byte [rbx], 0
sub rbx, 1
sub byte [rbx], 1
add rbx, 4
loop_start_420:
    cmp byte [rbx], 0
    jz loop_end_420
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 1
loop_start_421:
    cmp byte [rbx], 0
    jz loop_end_421
sub rbx, 1
sub byte [rbx], 1
add rbx, 1
sub byte [rbx], 1
sub rbx, 6
add byte [rbx], 1
add rbx, 6
    jmp loop_start_421
loop_end_421:
sub rbx, 1
loop_start_422:
    cmp byte [rbx], 0
    jz loop_end_422
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_422
loop_end_422:
add rbx, 4
    jmp loop_start_420
loop_end_420:
sub rbx, 3
loop_start_423:
    cmp byte [rbx], 0
    jz loop_end_423
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 3
    jmp loop_start_423
loop_end_423:
sub rbx, 1
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_419
loop_end_419:
add rbx, 9
loop_start_424:
    cmp byte [rbx], 0
    jz loop_end_424
add rbx, 4
loop_start_425:
    cmp byte [rbx], 0
    jz loop_end_425
sub byte [rbx], 1
sub rbx, 36
add byte [rbx], 1
add rbx, 17
add rbx, 19
    jmp loop_start_425
loop_end_425:
add rbx, 5
    jmp loop_start_424
loop_end_424:
sub rbx, 9
loop_start_426:
    cmp byte [rbx], 0
    jz loop_end_426
sub rbx, 9
    jmp loop_start_426
loop_end_426:
add rbx, 9
add byte [rbx], 15
loop_start_427:
    cmp byte [rbx], 0
    jz loop_end_427
loop_start_428:
    cmp byte [rbx], 0
    jz loop_end_428
add rbx, 8
add rbx, 1
    jmp loop_start_428
loop_end_428:
sub rbx, 9
sub byte [rbx], 1
sub rbx, 9
loop_start_429:
    cmp byte [rbx], 0
    jz loop_end_429
sub rbx, 9
    jmp loop_start_429
loop_end_429:
add rbx, 9
sub byte [rbx], 1
    jmp loop_start_427
loop_end_427:
add byte [rbx], 1
add rbx, 21
add byte [rbx], 1
sub rbx, 3
loop_start_430:
    cmp byte [rbx], 0
    jz loop_end_430
sub rbx, 9
    jmp loop_start_430
loop_end_430:
add rbx, 9
loop_start_431:
    cmp byte [rbx], 0
    jz loop_end_431
add rbx, 3
loop_start_432:
    cmp byte [rbx], 0
    jz loop_end_432
sub byte [rbx], 1
sub rbx, 3
sub byte [rbx], 1
add rbx, 3
    jmp loop_start_432
loop_end_432:
add byte [rbx], 1
sub rbx, 3
loop_start_433:
    cmp byte [rbx], 0
    jz loop_end_433
sub byte [rbx], 1
add rbx, 3
sub byte [rbx], 1
add rbx, 1
loop_start_434:
    cmp byte [rbx], 0
    jz loop_end_434
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 4
    jmp loop_start_434
loop_end_434:
sub rbx, 4
loop_start_435:
    cmp byte [rbx], 0
    jz loop_end_435
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 13
loop_start_436:
    cmp byte [rbx], 0
    jz loop_end_436
sub rbx, 9
    jmp loop_start_436
loop_end_436:
add rbx, 4
    mov byte [rbx], 0
add byte [rbx], 1
add rbx, 5
loop_start_437:
    cmp byte [rbx], 0
    jz loop_end_437
add rbx, 9
    jmp loop_start_437
loop_end_437:
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_435
loop_end_435:
    jmp loop_start_433
loop_end_433:
add byte [rbx], 1
add rbx, 4
loop_start_438:
    cmp byte [rbx], 0
    jz loop_end_438
sub byte [rbx], 1
sub rbx, 4
sub byte [rbx], 1
add rbx, 4
    jmp loop_start_438
loop_end_438:
add byte [rbx], 1
sub rbx, 4
loop_start_439:
    cmp byte [rbx], 0
    jz loop_end_439
sub byte [rbx], 1
add rbx, 4
sub byte [rbx], 1
sub rbx, 1
loop_start_440:
    cmp byte [rbx], 0
    jz loop_end_440
sub byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
add rbx, 3
    jmp loop_start_440
loop_end_440:
sub rbx, 3
loop_start_441:
    cmp byte [rbx], 0
    jz loop_end_441
sub byte [rbx], 1
add rbx, 3
add byte [rbx], 1
sub rbx, 1
sub rbx, 11
loop_start_442:
    cmp byte [rbx], 0
    jz loop_end_442
sub rbx, 9
    jmp loop_start_442
loop_end_442:
add rbx, 3
    mov byte [rbx], 0
add byte [rbx], 1
add rbx, 6
loop_start_443:
    cmp byte [rbx], 0
    jz loop_end_443
add rbx, 9
    jmp loop_start_443
loop_end_443:
add rbx, 1
    mov byte [rbx], 0
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_441
loop_end_441:
    jmp loop_start_439
loop_end_439:
add byte [rbx], 1
add rbx, 1
loop_start_444:
    cmp byte [rbx], 0
    jz loop_end_444
sub byte [rbx], 1
sub rbx, 1
loop_start_445:
    cmp byte [rbx], 0
    jz loop_end_445
add rbx, 9
    jmp loop_start_445
loop_end_445:
sub rbx, 8
    jmp loop_start_444
loop_end_444:
add rbx, 1
add rbx, 7
    jmp loop_start_431
loop_end_431:
sub rbx, 9
loop_start_446:
    cmp byte [rbx], 0
    jz loop_end_446
sub rbx, 9
    jmp loop_start_446
loop_end_446:
add rbx, 2
sub byte [rbx], 1
add rbx, 2
loop_start_447:
    cmp byte [rbx], 0
    jz loop_end_447
sub byte [rbx], 1
sub rbx, 4
add byte [rbx], 1
add rbx, 4
    jmp loop_start_447
loop_end_447:
sub rbx, 4
loop_start_448:
    cmp byte [rbx], 0
    jz loop_end_448
sub byte [rbx], 1
add rbx, 4
add byte [rbx], 1
sub rbx, 2
    mov byte [rbx], 0
sub rbx, 2
    jmp loop_start_448
loop_end_448:
add rbx, 2
    jmp loop_start_93
loop_end_93:
sub rbx, 2
add byte [rbx], 1
add rbx, 4
loop_start_449:
    cmp byte [rbx], 0
    jz loop_end_449
sub byte [rbx], 1
sub rbx, 4
sub byte [rbx], 1
add rbx, 4
    jmp loop_start_449
loop_end_449:
add byte [rbx], 1
sub rbx, 4
loop_start_450:
    cmp byte [rbx], 0
    jz loop_end_450
sub byte [rbx], 1
add rbx, 4
sub byte [rbx], 1
sub rbx, 6
movzx rcx, byte [rbx]
call putchar
add rbx, 2
    jmp loop_start_450
loop_end_450:
add rbx, 4
loop_start_451:
    cmp byte [rbx], 0
    jz loop_end_451
sub byte [rbx], 1
sub rbx, 7
movzx rcx, byte [rbx]
call putchar
add rbx, 7
    jmp loop_start_451
loop_end_451:
sub rbx, 3
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 3
loop_start_452:
    cmp byte [rbx], 0
    jz loop_end_452
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 1
    mov byte [rbx], 0
add rbx, 3
    jmp loop_start_452
loop_end_452:
sub rbx, 9
loop_start_453:
    cmp byte [rbx], 0
    jz loop_end_453
sub rbx, 9
    jmp loop_start_453
loop_end_453:
add rbx, 9
loop_start_454:
    cmp byte [rbx], 0
    jz loop_end_454
add rbx, 5
    mov byte [rbx], 0
add rbx, 4
    jmp loop_start_454
loop_end_454:
sub rbx, 9
loop_start_455:
    cmp byte [rbx], 0
    jz loop_end_455
sub rbx, 9
    jmp loop_start_455
loop_end_455:
add rbx, 1
add byte [rbx], 11
loop_start_456:
    cmp byte [rbx], 0
    jz loop_end_456
sub byte [rbx], 1
loop_start_457:
    cmp byte [rbx], 0
    jz loop_end_457
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_457
loop_end_457:
add rbx, 9
    jmp loop_start_456
loop_end_456:
add rbx, 4
add byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 8
sub rbx, 6
loop_start_458:
    cmp byte [rbx], 0
    jz loop_end_458
sub rbx, 9
    jmp loop_start_458
loop_end_458:
add rbx, 7
loop_start_459:
    cmp byte [rbx], 0
    jz loop_end_459
sub byte [rbx], 1
sub rbx, 7
add byte [rbx], 1
add rbx, 7
    jmp loop_start_459
loop_end_459:
sub rbx, 7
loop_start_460:
    cmp byte [rbx], 0
    jz loop_end_460
sub byte [rbx], 1
add rbx, 7
add byte [rbx], 1
    mov byte [rbx], 0
add rbx, 2
loop_start_461:
    cmp byte [rbx], 0
    jz loop_end_461
add rbx, 9
    jmp loop_start_461
loop_end_461:
sub rbx, 5
sub rbx, 4
loop_start_462:
    cmp byte [rbx], 0
    jz loop_end_462
add rbx, 7
loop_start_463:
    cmp byte [rbx], 0
    jz loop_end_463
sub byte [rbx], 1
sub rbx, 6
add byte [rbx], 1
add rbx, 6
    jmp loop_start_463
loop_end_463:
sub rbx, 6
loop_start_464:
    cmp byte [rbx], 0
    jz loop_end_464
sub byte [rbx], 1
add rbx, 6
add byte [rbx], 1
sub rbx, 7
loop_start_465:
    cmp byte [rbx], 0
    jz loop_end_465
sub rbx, 9
    jmp loop_start_465
loop_end_465:
add rbx, 7
    mov byte [rbx], 0
add byte [rbx], 1
add rbx, 3
    jmp loop_start_464
loop_end_464:
sub rbx, 4
sub rbx, 6
    jmp loop_start_462
loop_end_462:
    jmp loop_start_460
loop_end_460:
add rbx, 7
loop_start_466:
    cmp byte [rbx], 0
    jz loop_end_466
sub byte [rbx], 1
sub rbx, 7
add byte [rbx], 1
add rbx, 7
    jmp loop_start_466
loop_end_466:
sub rbx, 7
loop_start_467:
    cmp byte [rbx], 0
    jz loop_end_467
sub byte [rbx], 1
add rbx, 7
add byte [rbx], 1
add rbx, 2
loop_start_468:
    cmp byte [rbx], 0
    jz loop_end_468
add rbx, 1
add byte [rbx], 1
add rbx, 4
loop_start_469:
    cmp byte [rbx], 0
    jz loop_end_469
sub byte [rbx], 1
sub rbx, 4
sub byte [rbx], 1
add rbx, 4
    jmp loop_start_469
loop_end_469:
sub rbx, 4
loop_start_470:
    cmp byte [rbx], 0
    jz loop_end_470
sub byte [rbx], 1
add rbx, 3
add rbx, 1
add byte [rbx], 1
sub rbx, 4
    jmp loop_start_470
loop_end_470:
add rbx, 8
    jmp loop_start_468
loop_end_468:
sub rbx, 2
add byte [rbx], 1
sub rbx, 7
loop_start_471:
    cmp byte [rbx], 0
    jz loop_end_471
add rbx, 5
loop_start_472:
    cmp byte [rbx], 0
    jz loop_end_472
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_472
loop_end_472:
sub rbx, 14
    jmp loop_start_471
loop_end_471:
add rbx, 9
loop_start_473:
    cmp byte [rbx], 0
    jz loop_end_473
add rbx, 9
    jmp loop_start_473
loop_end_473:
sub rbx, 5
sub rbx, 4
loop_start_474:
    cmp byte [rbx], 0
    jz loop_end_474
add rbx, 1
    mov byte [rbx], 0
sub rbx, 1
sub byte [rbx], 1
add rbx, 7
loop_start_475:
    cmp byte [rbx], 0
    jz loop_end_475
sub byte [rbx], 1
sub rbx, 7
add byte [rbx], 1
add rbx, 1
loop_start_476:
    cmp byte [rbx], 0
    jz loop_end_476
sub rbx, 1
sub byte [rbx], 1
add rbx, 1
sub byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
add rbx, 3
    jmp loop_start_476
loop_end_476:
sub rbx, 1
loop_start_477:
    cmp byte [rbx], 0
    jz loop_end_477
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_477
loop_end_477:
add rbx, 7
    jmp loop_start_475
loop_end_475:
sub rbx, 6
loop_start_478:
    cmp byte [rbx], 0
    jz loop_end_478
sub byte [rbx], 1
add rbx, 6
add byte [rbx], 1
sub rbx, 6
    jmp loop_start_478
loop_end_478:
sub rbx, 1
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_474
loop_end_474:
add rbx, 7
sub byte [rbx], 1
sub rbx, 4
    mov byte [rbx], 0
add byte [rbx], 1
sub rbx, 3
    jmp loop_start_467
loop_end_467:
add byte [rbx], 1
add rbx, 7
loop_start_479:
    cmp byte [rbx], 0
    jz loop_end_479
sub byte [rbx], 1
sub rbx, 7
sub byte [rbx], 1
add rbx, 7
    jmp loop_start_479
loop_end_479:
add byte [rbx], 1
sub rbx, 7
loop_start_480:
    cmp byte [rbx], 0
    jz loop_end_480
sub byte [rbx], 1
add rbx, 7
sub byte [rbx], 1
add rbx, 2
loop_start_481:
    cmp byte [rbx], 0
    jz loop_end_481
add rbx, 2
add rbx, 3
loop_start_482:
    cmp byte [rbx], 0
    jz loop_end_482
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_482
loop_end_482:
add rbx, 4
    jmp loop_start_481
loop_end_481:
sub rbx, 9
loop_start_483:
    cmp byte [rbx], 0
    jz loop_end_483
add rbx, 1
    mov byte [rbx], 0
sub rbx, 1
sub byte [rbx], 1
add rbx, 7
loop_start_484:
    cmp byte [rbx], 0
    jz loop_end_484
sub byte [rbx], 1
sub rbx, 7
add byte [rbx], 1
add rbx, 1
loop_start_485:
    cmp byte [rbx], 0
    jz loop_end_485
sub rbx, 1
sub byte [rbx], 1
add rbx, 1
sub byte [rbx], 1
sub rbx, 3
add byte [rbx], 1
add rbx, 3
    jmp loop_start_485
loop_end_485:
sub rbx, 1
loop_start_486:
    cmp byte [rbx], 0
    jz loop_end_486
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_486
loop_end_486:
add rbx, 7
    jmp loop_start_484
loop_end_484:
sub rbx, 2
sub rbx, 4
loop_start_487:
    cmp byte [rbx], 0
    jz loop_end_487
sub byte [rbx], 1
add rbx, 6
add byte [rbx], 1
sub rbx, 6
    jmp loop_start_487
loop_end_487:
sub rbx, 1
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_483
loop_end_483:
add rbx, 1
add byte [rbx], 5
loop_start_488:
    cmp byte [rbx], 0
    jz loop_end_488
sub byte [rbx], 1
loop_start_489:
    cmp byte [rbx], 0
    jz loop_end_489
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_489
loop_end_489:
add rbx, 9
    jmp loop_start_488
loop_end_488:
add rbx, 4
add byte [rbx], 1
sub rbx, 3
sub rbx, 2
loop_start_490:
    cmp byte [rbx], 0
    jz loop_end_490
sub rbx, 9
    jmp loop_start_490
loop_end_490:
add rbx, 9
loop_start_491:
    cmp byte [rbx], 0
    jz loop_end_491
add rbx, 5
loop_start_492:
    cmp byte [rbx], 0
    jz loop_end_492
sub byte [rbx], 1
sub rbx, 5
sub byte [rbx], 1
add rbx, 5
    jmp loop_start_492
loop_end_492:
add byte [rbx], 1
sub rbx, 5
loop_start_493:
    cmp byte [rbx], 0
    jz loop_end_493
sub byte [rbx], 1
add rbx, 5
sub byte [rbx], 1
add rbx, 2
loop_start_494:
    cmp byte [rbx], 0
    jz loop_end_494
sub byte [rbx], 1
sub rbx, 7
add byte [rbx], 1
add rbx, 7
    jmp loop_start_494
loop_end_494:
sub rbx, 4
sub rbx, 3
loop_start_495:
    cmp byte [rbx], 0
    jz loop_end_495
sub byte [rbx], 1
add rbx, 7
add byte [rbx], 1
sub rbx, 16
loop_start_496:
    cmp byte [rbx], 0
    jz loop_end_496
sub rbx, 9
    jmp loop_start_496
loop_end_496:
add rbx, 4
    mov byte [rbx], 0
add byte [rbx], 1
add rbx, 5
loop_start_497:
    cmp byte [rbx], 0
    jz loop_end_497
add rbx, 9
    jmp loop_start_497
loop_end_497:
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_495
loop_end_495:
    jmp loop_start_493
loop_end_493:
add byte [rbx], 1
add rbx, 7
loop_start_498:
    cmp byte [rbx], 0
    jz loop_end_498
sub byte [rbx], 1
sub rbx, 1
sub rbx, 6
sub byte [rbx], 1
add rbx, 7
    jmp loop_start_498
loop_end_498:
add byte [rbx], 1
sub rbx, 7
loop_start_499:
    cmp byte [rbx], 0
    jz loop_end_499
sub byte [rbx], 1
add rbx, 7
sub byte [rbx], 1
sub rbx, 2
loop_start_500:
    cmp byte [rbx], 0
    jz loop_end_500
sub byte [rbx], 1
sub rbx, 5
add byte [rbx], 1
add rbx, 5
    jmp loop_start_500
loop_end_500:
sub rbx, 5
loop_start_501:
    cmp byte [rbx], 0
    jz loop_end_501
sub byte [rbx], 1
add rbx, 5
add byte [rbx], 1
sub rbx, 14
loop_start_502:
    cmp byte [rbx], 0
    jz loop_end_502
sub rbx, 3
sub rbx, 6
    jmp loop_start_502
loop_end_502:
add rbx, 3
    mov byte [rbx], 0
add byte [rbx], 1
add rbx, 6
loop_start_503:
    cmp byte [rbx], 0
    jz loop_end_503
add rbx, 9
    jmp loop_start_503
loop_end_503:
add rbx, 1
    mov byte [rbx], 0
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_501
loop_end_501:
    jmp loop_start_499
loop_end_499:
add byte [rbx], 1
add rbx, 1
loop_start_504:
    cmp byte [rbx], 0
    jz loop_end_504
sub byte [rbx], 1
sub rbx, 1
loop_start_505:
    cmp byte [rbx], 0
    jz loop_end_505
add rbx, 9
    jmp loop_start_505
loop_end_505:
sub rbx, 8
    jmp loop_start_504
loop_end_504:
add rbx, 8
    jmp loop_start_491
loop_end_491:
sub rbx, 7
sub rbx, 2
loop_start_506:
    cmp byte [rbx], 0
    jz loop_end_506
sub rbx, 9
    jmp loop_start_506
loop_end_506:
add rbx, 4
    mov byte [rbx], 0
sub rbx, 3
add byte [rbx], 5
loop_start_507:
    cmp byte [rbx], 0
    jz loop_end_507
sub byte [rbx], 1
loop_start_508:
    cmp byte [rbx], 0
    jz loop_end_508
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_508
loop_end_508:
add rbx, 9
    jmp loop_start_507
loop_end_507:
add rbx, 4
sub byte [rbx], 1
sub rbx, 5
loop_start_509:
    cmp byte [rbx], 0
    jz loop_end_509
sub rbx, 7
sub rbx, 2
    jmp loop_start_509
loop_end_509:
    jmp loop_start_480
loop_end_480:
add rbx, 3
    jmp loop_start_17
loop_end_17:
sub rbx, 4
movzx rcx, byte [rbx]
call putchar
add rbx, 10
loop_start_510:
    cmp byte [rbx], 0
    jz loop_end_510
add rbx, 6
    mov byte [rbx], 0
add rbx, 3
    jmp loop_start_510
loop_end_510:
sub rbx, 9
loop_start_511:
    cmp byte [rbx], 0
    jz loop_end_511
sub rbx, 9
    jmp loop_start_511
loop_end_511:
add rbx, 1
add byte [rbx], 10
loop_start_512:
    cmp byte [rbx], 0
    jz loop_end_512
sub byte [rbx], 1
loop_start_513:
    cmp byte [rbx], 0
    jz loop_end_513
sub byte [rbx], 1
add rbx, 8
add rbx, 1
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_513
loop_end_513:
add rbx, 9
    jmp loop_start_512
loop_end_512:
add rbx, 5
add byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 15
loop_start_514:
    cmp byte [rbx], 0
    jz loop_end_514
sub rbx, 9
    jmp loop_start_514
loop_end_514:
add rbx, 8
loop_start_515:
    cmp byte [rbx], 0
    jz loop_end_515
sub byte [rbx], 1
sub rbx, 6
sub rbx, 2
add byte [rbx], 1
add rbx, 8
    jmp loop_start_515
loop_end_515:
sub rbx, 8
loop_start_516:
    cmp byte [rbx], 0
    jz loop_end_516
sub byte [rbx], 1
add rbx, 8
add byte [rbx], 1
    mov byte [rbx], 0
add rbx, 1
loop_start_517:
    cmp byte [rbx], 0
    jz loop_end_517
add rbx, 9
    jmp loop_start_517
loop_end_517:
sub rbx, 9
loop_start_518:
    cmp byte [rbx], 0
    jz loop_end_518
add rbx, 8
loop_start_519:
    cmp byte [rbx], 0
    jz loop_end_519
sub byte [rbx], 1
sub rbx, 7
add byte [rbx], 1
add rbx, 6
add rbx, 1
    jmp loop_start_519
loop_end_519:
sub rbx, 7
loop_start_520:
    cmp byte [rbx], 0
    jz loop_end_520
sub byte [rbx], 1
add rbx, 7
add byte [rbx], 1
sub rbx, 8
loop_start_521:
    cmp byte [rbx], 0
    jz loop_end_521
sub rbx, 9
    jmp loop_start_521
loop_end_521:
add rbx, 8
    mov byte [rbx], 0
add byte [rbx], 1
add rbx, 2
    jmp loop_start_520
loop_end_520:
sub rbx, 10
    jmp loop_start_518
loop_end_518:
    jmp loop_start_516
loop_end_516:
add rbx, 8
loop_start_522:
    cmp byte [rbx], 0
    jz loop_end_522
sub byte [rbx], 1
sub rbx, 5
sub rbx, 3
add byte [rbx], 1
add rbx, 8
    jmp loop_start_522
loop_end_522:
sub rbx, 8
loop_start_523:
    cmp byte [rbx], 0
    jz loop_end_523
sub byte [rbx], 1
add rbx, 8
add byte [rbx], 1
add rbx, 1
loop_start_524:
    cmp byte [rbx], 0
    jz loop_end_524
add rbx, 1
add byte [rbx], 1
add rbx, 5
loop_start_525:
    cmp byte [rbx], 0
    jz loop_end_525
sub byte [rbx], 1
sub rbx, 5
sub byte [rbx], 1
add rbx, 5
    jmp loop_start_525
loop_end_525:
sub rbx, 5
loop_start_526:
    cmp byte [rbx], 0
    jz loop_end_526
sub byte [rbx], 1
add rbx, 5
add byte [rbx], 1
sub rbx, 5
    jmp loop_start_526
loop_end_526:
add rbx, 6
add rbx, 2
    jmp loop_start_524
loop_end_524:
sub rbx, 1
add byte [rbx], 1
sub rbx, 8
loop_start_527:
    cmp byte [rbx], 0
    jz loop_end_527
add rbx, 6
loop_start_528:
    cmp byte [rbx], 0
    jz loop_end_528
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_528
loop_end_528:
sub rbx, 15
    jmp loop_start_527
loop_end_527:
add rbx, 9
loop_start_529:
    cmp byte [rbx], 0
    jz loop_end_529
add rbx, 9
    jmp loop_start_529
loop_end_529:
sub rbx, 9
loop_start_530:
    cmp byte [rbx], 0
    jz loop_end_530
add rbx, 1
    mov byte [rbx], 0
sub rbx, 1
sub byte [rbx], 1
add rbx, 8
loop_start_531:
    cmp byte [rbx], 0
    jz loop_end_531
sub byte [rbx], 1
sub rbx, 8
add byte [rbx], 1
add rbx, 1
loop_start_532:
    cmp byte [rbx], 0
    jz loop_end_532
sub rbx, 1
sub byte [rbx], 1
add rbx, 1
sub byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
add rbx, 2
    jmp loop_start_532
loop_end_532:
sub rbx, 1
loop_start_533:
    cmp byte [rbx], 0
    jz loop_end_533
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_533
loop_end_533:
add rbx, 8
    jmp loop_start_531
loop_end_531:
sub rbx, 7
loop_start_534:
    cmp byte [rbx], 0
    jz loop_end_534
sub byte [rbx], 1
add rbx, 7
add byte [rbx], 1
sub rbx, 7
    jmp loop_start_534
loop_end_534:
sub rbx, 1
add byte [rbx], 1
sub rbx, 6
sub rbx, 3
    jmp loop_start_530
loop_end_530:
add rbx, 8
sub byte [rbx], 1
sub rbx, 5
    mov byte [rbx], 0
add byte [rbx], 1
sub rbx, 3
    jmp loop_start_523
loop_end_523:
add byte [rbx], 1
add rbx, 8
loop_start_535:
    cmp byte [rbx], 0
    jz loop_end_535
sub byte [rbx], 1
sub rbx, 8
sub byte [rbx], 1
add rbx, 8
    jmp loop_start_535
loop_end_535:
add byte [rbx], 1
sub rbx, 8
loop_start_536:
    cmp byte [rbx], 0
    jz loop_end_536
sub byte [rbx], 1
add rbx, 8
sub byte [rbx], 1
add rbx, 1
loop_start_537:
    cmp byte [rbx], 0
    jz loop_end_537
add rbx, 3
add rbx, 3
loop_start_538:
    cmp byte [rbx], 0
    jz loop_end_538
sub byte [rbx], 1
add rbx, 2
add byte [rbx], 1
sub rbx, 2
    jmp loop_start_538
loop_end_538:
add rbx, 3
    jmp loop_start_537
loop_end_537:
sub rbx, 9
loop_start_539:
    cmp byte [rbx], 0
    jz loop_end_539
add rbx, 1
    mov byte [rbx], 0
sub rbx, 1
sub byte [rbx], 1
add rbx, 8
loop_start_540:
    cmp byte [rbx], 0
    jz loop_end_540
sub byte [rbx], 1
sub rbx, 8
add byte [rbx], 1
add rbx, 1
loop_start_541:
    cmp byte [rbx], 0
    jz loop_end_541
sub rbx, 1
sub byte [rbx], 1
add rbx, 1
sub byte [rbx], 1
sub rbx, 2
add byte [rbx], 1
add rbx, 2
    jmp loop_start_541
loop_end_541:
sub rbx, 1
loop_start_542:
    cmp byte [rbx], 0
    jz loop_end_542
sub byte [rbx], 1
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_542
loop_end_542:
add rbx, 8
    jmp loop_start_540
loop_end_540:
sub rbx, 2
sub rbx, 5
loop_start_543:
    cmp byte [rbx], 0
    jz loop_end_543
sub byte [rbx], 1
add rbx, 7
add byte [rbx], 1
sub rbx, 7
    jmp loop_start_543
loop_end_543:
sub rbx, 1
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_539
loop_end_539:
add rbx, 1
add byte [rbx], 5
loop_start_544:
    cmp byte [rbx], 0
    jz loop_end_544
sub byte [rbx], 1
loop_start_545:
    cmp byte [rbx], 0
    jz loop_end_545
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_545
loop_end_545:
add rbx, 9
    jmp loop_start_544
loop_end_544:
add rbx, 5
add byte [rbx], 1
add rbx, 27
add byte [rbx], 1
sub rbx, 6
loop_start_546:
    cmp byte [rbx], 0
    jz loop_end_546
sub rbx, 9
    jmp loop_start_546
loop_end_546:
add rbx, 9
loop_start_547:
    cmp byte [rbx], 0
    jz loop_end_547
add rbx, 6
loop_start_548:
    cmp byte [rbx], 0
    jz loop_end_548
sub byte [rbx], 1
sub rbx, 6
sub byte [rbx], 1
add rbx, 6
    jmp loop_start_548
loop_end_548:
add byte [rbx], 1
sub rbx, 1
sub rbx, 5
loop_start_549:
    cmp byte [rbx], 0
    jz loop_end_549
sub byte [rbx], 1
add rbx, 6
sub byte [rbx], 1
add rbx, 2
loop_start_550:
    cmp byte [rbx], 0
    jz loop_end_550
sub byte [rbx], 1
sub rbx, 8
add byte [rbx], 1
add rbx, 8
    jmp loop_start_550
loop_end_550:
sub rbx, 8
loop_start_551:
    cmp byte [rbx], 0
    jz loop_end_551
sub byte [rbx], 1
add rbx, 8
add byte [rbx], 1
sub rbx, 17
loop_start_552:
    cmp byte [rbx], 0
    jz loop_end_552
sub rbx, 7
sub rbx, 2
    jmp loop_start_552
loop_end_552:
add rbx, 4
    mov byte [rbx], 0
add byte [rbx], 1
add rbx, 5
loop_start_553:
    cmp byte [rbx], 0
    jz loop_end_553
add rbx, 9
    jmp loop_start_553
loop_end_553:
add rbx, 1
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_551
loop_end_551:
    jmp loop_start_549
loop_end_549:
add byte [rbx], 1
add rbx, 8
loop_start_554:
    cmp byte [rbx], 0
    jz loop_end_554
sub byte [rbx], 1
sub rbx, 8
sub byte [rbx], 1
add rbx, 8
    jmp loop_start_554
loop_end_554:
add byte [rbx], 1
sub rbx, 8
loop_start_555:
    cmp byte [rbx], 0
    jz loop_end_555
sub byte [rbx], 1
add rbx, 8
sub byte [rbx], 1
sub rbx, 2
loop_start_556:
    cmp byte [rbx], 0
    jz loop_end_556
sub byte [rbx], 1
sub rbx, 6
add byte [rbx], 1
add rbx, 6
    jmp loop_start_556
loop_end_556:
sub rbx, 6
loop_start_557:
    cmp byte [rbx], 0
    jz loop_end_557
sub byte [rbx], 1
add rbx, 6
add byte [rbx], 1
sub rbx, 15
loop_start_558:
    cmp byte [rbx], 0
    jz loop_end_558
sub rbx, 9
    jmp loop_start_558
loop_end_558:
add rbx, 3
    mov byte [rbx], 0
add byte [rbx], 1
add rbx, 6
loop_start_559:
    cmp byte [rbx], 0
    jz loop_end_559
add rbx, 6
add rbx, 3
    jmp loop_start_559
loop_end_559:
add rbx, 1
    mov byte [rbx], 0
add byte [rbx], 1
sub rbx, 1
    jmp loop_start_557
loop_end_557:
    jmp loop_start_555
loop_end_555:
add byte [rbx], 1
add rbx, 1
loop_start_560:
    cmp byte [rbx], 0
    jz loop_end_560
sub byte [rbx], 1
sub rbx, 1
loop_start_561:
    cmp byte [rbx], 0
    jz loop_end_561
add rbx, 9
    jmp loop_start_561
loop_end_561:
sub rbx, 8
    jmp loop_start_560
loop_end_560:
add rbx, 8
    jmp loop_start_547
loop_end_547:
sub rbx, 9
loop_start_562:
    cmp byte [rbx], 0
    jz loop_end_562
sub rbx, 9
    jmp loop_start_562
loop_end_562:
add rbx, 4
    mov byte [rbx], 0
sub rbx, 3
add byte [rbx], 4
add byte [rbx], 1
loop_start_563:
    cmp byte [rbx], 0
    jz loop_end_563
sub byte [rbx], 1
loop_start_564:
    cmp byte [rbx], 0
    jz loop_end_564
sub byte [rbx], 1
add rbx, 9
add byte [rbx], 1
sub rbx, 9
    jmp loop_start_564
loop_end_564:
add rbx, 9
    jmp loop_start_563
loop_end_563:
add rbx, 5
sub byte [rbx], 1
add rbx, 27
sub byte [rbx], 1
sub rbx, 6
loop_start_565:
    cmp byte [rbx], 0
    jz loop_end_565
sub rbx, 4
sub rbx, 5
    jmp loop_start_565
loop_end_565:
    jmp loop_start_536
loop_end_536:
add rbx, 3
    jmp loop_start_9
loop_end_9:
    xor rax, rax
    add rsp, 40
    ret
