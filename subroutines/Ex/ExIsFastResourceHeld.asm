ExIsFastResourceHeld proc near          ; DATA XREF: .rdata:0000000140099AF8↑o
                                        ; .pdata:00000001400DC2F0↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014049C91A SIZE 000000D3 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                xor     r10d, r10d
                mov     r11, rcx
                test    byte ptr [rcx+1Ah], 1
                jz      loc_14049C91A
                mov     rax, cr8
                lea     ebp, [r10+2]
                cmp     al, bpl
                ja      loc_14049C934
                cmp     [rcx+40h], r10d
                jz      short loc_14038EF6B
                mov     rbx, cr8
                mov     cr8, rbp
                mov     eax, cs:dword_140CFC660
                or      rdi, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_14049C94D

loc_14038EF35:                          ; CODE XREF: ExIsFastResourceHeld+10DA6F↓j
                                        ; ExIsFastResourceHeld+10DA78↓j ...
                mov     rcx, gs:188h
                xor     r9d, r9d
                xor     r8d, r8d
                mov     rdx, r11
                call    sub_14038F608
                test    rax, rax
                mov     eax, cs:dword_140CFC660
                setnz   sil
                test    eax, eax
                jnz     loc_14049C98C

loc_14038EF61:                          ; CODE XREF: ExIsFastResourceHeld+10DAAE↓j
                                        ; ExIsFastResourceHeld+10DABA↓j ...
                movzx   eax, bl
                mov     cr8, rax
                mov     r10b, sil

loc_14038EF6B:                          ; CODE XREF: ExIsFastResourceHeld+39↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     al, r10b
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExIsFastResourceHeld endp
