DbgkLkmdUnregisterCallback proc near    ; DATA XREF: .pdata:000000014011BFF8↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbp, rcx
                xor     edi, edi

loc_140889939:                          ; CODE XREF: DbgkLkmdUnregisterCallback+60↓j
                lea     rcx, unk_140C53DB0
                mov     esi, edi
                shl     rsi, 4
                add     rsi, rcx
                mov     rcx, rsi
                call    sub_1402A9540
                mov     rbx, rax
                test    rax, rax
                jz      short loc_14088997B
                cmp     rbp, [rax+8]
                jnz     short loc_140889970
                mov     r8, rax
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1403AF5DC
                test    al, al
                jnz     short loc_14088999D

loc_140889970:                          ; CODE XREF: DbgkLkmdUnregisterCallback+3D↑j
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1402A9600

loc_14088997B:                          ; CODE XREF: DbgkLkmdUnregisterCallback+37↑j
                inc     edi
                cmp     edi, 8
                jb      short loc_140889939
                mov     eax, 0C0000225h

loc_140889987:                          ; CODE XREF: DbgkLkmdUnregisterCallback+9C↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14088999D:                          ; CODE XREF: DbgkLkmdUnregisterCallback+4E↑j
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1402A9600
                mov     rcx, rbx
                call    ExWaitForRundownProtectionRelease
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                xor     eax, eax
                jmp     short loc_140889987
DbgkLkmdUnregisterCallback endp
