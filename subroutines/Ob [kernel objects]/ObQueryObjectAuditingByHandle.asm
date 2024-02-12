ObQueryObjectAuditingByHandle proc near ; DATA XREF: .rdata:000000014006225C↑o
                                        ; .pdata:00000001401002D8↑o

var_38          = dword ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014080B056 SIZE 00000041 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     r15, rdx
                mov     rbp, gs:188h
                mov     rbx, rcx
                xor     r14b, r14b
                mov     rsi, [rax+0B8h]
                mov     rax, gs:188h
                mov     dl, [rax+232h]
                call    sub_140243260
                test    al, al
                jnz     loc_1406641D6
                mov     rax, gs:188h
                cmp     byte ptr [rax+24Ah], 1
                jz      loc_14080B056
                mov     rdi, [rsi+570h]

loc_140664163:                          ; CODE XREF: ObQueryObjectAuditingByHandle+F4↓j
                                        ; ObQueryObjectAuditingByHandle+1A6F83↓j
                dec     word ptr [rbp+1E4h]
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_140663A60
                test    rax, rax
                jz      short loc_1406641E9
                mov     rbx, [rax]
                mov     ecx, 1
                sar     rbx, 11h
                lock xadd [rax], rcx
                lea     rcx, [rdi+30h]
                lock or [rsp+38h+var_38], 0
                cmp     qword ptr [rcx], 0
                jnz     loc_14080B078

loc_14066419E:                          ; CODE XREF: ObQueryObjectAuditingByHandle+1A6F90↓j
                shr     ebx, 2
                and     bl, 1
                mov     [r15], bl
                xor     ebx, ebx

loc_1406641A9:                          ; CODE XREF: ObQueryObjectAuditingByHandle+FE↓j
                mov     rcx, rbp
                call    sub_14021E1F0
                test    r14b, r14b
                jnz     loc_14080B085

loc_1406641BA:                          ; CODE XREF: ObQueryObjectAuditingByHandle+1A6FA2↓j
                mov     eax, ebx

loc_1406641BC:                          ; CODE XREF: ObQueryObjectAuditingByHandle+1A6F7B↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406641D6:                          ; CODE XREF: ObQueryObjectAuditingByHandle+50↑j
                mov     rdi, cs:qword_140C259A0
                xor     rbx, 0FFFFFFFF80000000h
                jmp     loc_140664163
; ---------------------------------------------------------------------------

loc_1406641E9:                          ; CODE XREF: ObQueryObjectAuditingByHandle+88↑j
                mov     ebx, 0C0000008h
                jmp     short loc_1406641A9
ObQueryObjectAuditingByHandle endp
