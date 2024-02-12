ExEnumHandleTable proc near             ; CODE XREF: sub_1405072E0+11F↑p
                                        ; NtQueryInformationProcess+2C28↑p ...

var_38          = qword ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140823B76 SIZE 00000011 BYTES

                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r13, gs:188h
                xor     sil, sil
                mov     r12, r9
                mov     [rsp+68h+var_38], 0
                mov     r14, r8
                mov     r15, rdx
                mov     rbp, rcx
                dec     word ptr [r13+1E4h]
                lea     r8, [rsp+68h+var_38]
                xor     edx, edx
                call    sub_1406E85F0
                mov     rdi, rax
                test    rax, rax
                jz      loc_1406E85A8

loc_1406E8528:                          ; DATA XREF: .rdata:000000014007C078↑o
                                        ; .rdata:000000014007C08C↑o ...
                mov     [rsp+68h+arg_0], rbx
                nop     dword ptr [rax]

loc_1406E8530:                          ; CODE XREF: ExEnumHandleTable+98↓j
                                        ; ExEnumHandleTable+A8↓j ...
                prefetchw byte ptr [rdi]
                mov     r8, [rdi]
                test    r8b, 1
                jnz     short loc_1406E856C
                test    r8, r8
                jnz     loc_140823B76
                mov     rbx, [rsp+68h+var_38]

loc_1406E854A:                          ; CODE XREF: ExEnumHandleTable+C8↓j
                lea     r9, [rbx+4]
                mov     rax, r9
                xor     rax, rbx
                cmp     rax, 400h
                jnb     short loc_1406E85D0
                add     rdi, 10h

loc_1406E8560:                          ; CODE XREF: ExEnumHandleTable+112↓j
                mov     [rsp+68h+var_38], r9
                test    rdi, rdi
                jnz     short loc_1406E8530
                jmp     short loc_1406E85A3
; ---------------------------------------------------------------------------

loc_1406E856C:                          ; CODE XREF: ExEnumHandleTable+6A↑j
                lea     rcx, [r8-1]
                mov     rax, r8
                lock cmpxchg [rdi], rcx
                jnz     short loc_1406E8530
                mov     rbx, [rsp+68h+var_38]
                mov     r9, r14
                mov     r8, rbx
                mov     rdx, rdi
                mov     rcx, rbp
                mov     rax, r15
                call    sub_1404079D0
                movzx   esi, al
                test    al, al
                jz      short loc_1406E854A
                test    r12, r12
                jz      short loc_1406E85A3
                mov     [r12], rbx

loc_1406E85A3:                          ; CODE XREF: ExEnumHandleTable+9A↑j
                                        ; ExEnumHandleTable+CD↑j
                mov     rbx, [rsp+68h+arg_0]

loc_1406E85A8:                          ; CODE XREF: ExEnumHandleTable+52↑j
                                        ; DATA XREF: .pdata:0000000140104664↑o ...
                mov     rcx, r13
                call    sub_14021E1F0
                mov     rbp, [rsp+68h+arg_8]
                movzx   eax, sil
                mov     rsi, [rsp+68h+arg_10]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1406E85D0:                          ; CODE XREF: ExEnumHandleTable+8A↑j
                                        ; DATA XREF: .pdata:0000000140104670↑o ...
                add     r9, 4
                mov     rcx, rbp
                mov     rdx, r9
                call    sub_140645680
                mov     rdi, rax
                jmp     loc_1406E8560
ExEnumHandleTable endp
