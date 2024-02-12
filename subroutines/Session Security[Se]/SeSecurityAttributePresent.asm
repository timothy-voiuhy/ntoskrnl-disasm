SeSecurityAttributePresent proc near    ; CODE XREF: sub_140201574+7A↑p
                                        ; PsQueryProcessAttributesByToken+24↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140420B94 SIZE 00000088 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     rsi, rdx
                mov     rbx, rcx
                xor     dil, dil
                mov     rax, cr8
                cmp     al, 2
                jnb     short loc_140205DD0
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rdi, [rcx+30h]
                movzx   eax, word ptr [rdi+1Ah]
                movzx   r9d, al
                and     r9b, 41h
                cmp     r9b, 1
                jz      loc_140205E62
                and     ax, 1
                jnz     short loc_140205E14

loc_140205DB0:                          ; CODE XREF: SeSecurityAttributePresent+DB↓j
                                        ; SeSecurityAttributePresent+E9↓j ...
                mov     [rsp+38h+arg_0], rbp
                test    ax, ax
                jnz     loc_140420BEE
                mov     dl, 1
                mov     rcx, rdi
                call    sub_140246A60

loc_140205DC8:                          ; CODE XREF: SeSecurityAttributePresent+21AEA6↓j
                                        ; SeSecurityAttributePresent+21AEB7↓j
                mov     rbp, [rsp+38h+arg_0]
                mov     dil, 1

loc_140205DD0:                          ; CODE XREF: SeSecurityAttributePresent+1E↑j
                                        ; DATA XREF: .pdata:00000001400C9564↑o ...
                mov     rcx, [rbx+308h]
                mov     rdx, rsi
                call    sub_140205E90
                test    rax, rax
                jnz     short loc_140205E0F
                xor     sil, sil

loc_140205DE7:                          ; CODE XREF: SeSecurityAttributePresent+B2↓j
                test    dil, dil
                jz      short loc_140205DFA
                mov     rcx, [rbx+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion

loc_140205DFA:                          ; CODE XREF: SeSecurityAttributePresent+8A↑j
                mov     rbx, [rsp+38h+arg_8]
                movzx   eax, sil
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140205E0F:                          ; CODE XREF: SeSecurityAttributePresent+82↑j
                mov     sil, 1
                jmp     short loc_140205DE7
; ---------------------------------------------------------------------------

loc_140205E14:                          ; CODE XREF: SeSecurityAttributePresent+4E↑j
                mov     rdx, cr8
                mov     r8, gs:188h
                cmp     dl, 1
                ja      loc_140420B94
                test    byte ptr [r8+0C0h], 2
                jnz     loc_140420BB2
                cmp     dl, 1
                jnb     loc_140205DB0
                test    dword ptr [r8+74h], 400h
                jnz     loc_140205DB0
                cmp     dword ptr [r8+1E4h], 0
                jnz     loc_140205DB0
                jmp     loc_140420BD0
; ---------------------------------------------------------------------------

loc_140205E62:                          ; CODE XREF: SeSecurityAttributePresent+44↑j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], 0
                mov     r8, rdi
                mov     ecx, 1C6h
                lea     edx, [r9+0Fh]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
SeSecurityAttributePresent endp
