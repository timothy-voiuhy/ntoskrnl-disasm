PsLookupProcessThreadByCid proc near    ; CODE XREF: sub_14062778C+355↑p
                                        ; sub_140656690+1BA↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014081D162 SIZE 00000012 BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                and     qword ptr [rax+8], 0
                mov     rsi, rdx
                mov     rbx, rcx
                lea     rdx, [rax+8]
                mov     rcx, [rcx+8]
                mov     r14, r8
                call    PsLookupThreadByThreadId
                test    eax, eax
                js      short loc_1406C83BA
                mov     rdi, [rsp+28h+arg_0]
                mov     rax, [rbx]
                cmp     [rdi+478h], rax
                jnz     loc_14081D162
                test    rsi, rsi
                jz      short loc_1406C83B5
                mov     rbx, [rdi+220h]
                mov     edx, 746C6644h
                mov     rcx, rbx
                call    ObfReferenceObjectWithTag
                mov     [rsi], rbx

loc_1406C83B5:                          ; CODE XREF: PsLookupProcessThreadByCid+4C↑j
                mov     [r14], rdi
                xor     eax, eax

loc_1406C83BA:                          ; CODE XREF: PsLookupProcessThreadByCid+32↑j
                                        ; PsLookupProcessThreadByCid+154E1F↓j
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsLookupProcessThreadByCid endp
