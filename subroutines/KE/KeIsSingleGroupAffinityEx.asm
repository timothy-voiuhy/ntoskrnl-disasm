KeIsSingleGroupAffinityEx proc near     ; CODE XREF: sub_140603630+675↓p
                                        ; DATA XREF: .pdata:00000001400D8978↑o

arg_0           = word ptr  8

; FUNCTION CHUNK AT 000000014048773E SIZE 00000013 BYTES

                xor     r11d, r11d
                lea     r8, [rsp+arg_0]
                test    rdx, rdx
                mov     [rsp+arg_0], r11w
                cmovnz  r8, rdx
                movzx   edx, r11w
                lea     r10d, [r11+14h]
                mov     [r8], r10w
                cmp     r11w, [rcx]
                jnb     short loc_140358278
                lea     r9d, [r11+1]

loc_14035825B:                          ; CODE XREF: KeIsSingleGroupAffinityEx+40↓j
                movzx   eax, dx
                cmp     [rcx+rax*8+8], r11
                jnz     loc_14048773E

loc_140358269:                          ; CODE XREF: KeIsSingleGroupAffinityEx+12F51C↓j
                add     dx, r9w
                cmp     dx, [rcx]
                jb      short loc_14035825B
                cmp     [r8], r10w
                jnz     short loc_14035827C

loc_140358278:                          ; CODE XREF: KeIsSingleGroupAffinityEx+25↑j
                                        ; KeIsSingleGroupAffinityEx+12F512↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14035827C:                          ; CODE XREF: KeIsSingleGroupAffinityEx+46↑j
                mov     eax, r9d
                retn
KeIsSingleGroupAffinityEx endp
