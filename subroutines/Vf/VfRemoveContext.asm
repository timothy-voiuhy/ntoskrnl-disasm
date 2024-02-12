VfRemoveContext proc near               ; DATA XREF: .pdata:00000001400F8F7C↑o

arg_0           = qword ptr  8
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                xor     edi, edi
                mov     rbx, rcx
                cmp     cs:dword_140C1D15C, edi
                mov     r14d, 0C0000225h
                jnz     short loc_1405A0CEF
                mov     eax, 0C0000001h
                jmp     loc_1405A0DA5
; ---------------------------------------------------------------------------

loc_1405A0CEF:                          ; CODE XREF: VfRemoveContext+23↑j
                movzx   r8d, word ptr [rcx]
                movzx   edx, word ptr [rcx+2]
                mov     ecx, r8d
                call    sub_1409CA544
                test    al, al
                jnz     short loc_1405A0D0D
                mov     eax, 0C000000Dh
                jmp     loc_1405A0DA5
; ---------------------------------------------------------------------------

loc_1405A0D0D:                          ; CODE XREF: VfRemoveContext+41↑j
                mov     rcx, [rbx+8]
                mov     edx, r8d
                call    sub_1409CA4E4
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_1405A0D28
                mov     eax, 0C00000BBh
                jmp     short loc_1405A0DA5
; ---------------------------------------------------------------------------

loc_1405A0D28:                          ; CODE XREF: VfRemoveContext+5F↑j
                mov     rcx, rsi
                call    sub_1409CA56C
                test    al, al
                jz      short loc_1405A0DA2
                mov     rbp, [rsi]
                or      edx, 0FFFFFFFFh
                movzx   eax, word ptr [rbx+2]
                cmp     [rbp+rax*8+8], rbx
                jnz     short loc_1405A0D7E
                mov     [rbp+rax*8+8], rdi
                mov     r14d, edi
                mov     eax, edx
                lock xadd [rbp+4], eax
                add     eax, edx
                jnz     short loc_1405A0D7E
                xchg    rdi, [rsi]
                mov     eax, edx
                lock xadd [rbx+4], eax
                add     eax, edx
                jnz     short loc_1405A0D72
                mov     rax, [rbx+10h]
                mov     rcx, rbx
                call    sub_1404079D0

loc_1405A0D72:                          ; CODE XREF: VfRemoveContext+A4↑j
                mov     rcx, rbp
                call    sub_1409CA4C4
                xor     eax, eax
                jmp     short loc_1405A0DA5
; ---------------------------------------------------------------------------

loc_1405A0D7E:                          ; CODE XREF: VfRemoveContext+83↑j
                                        ; VfRemoveContext+96↑j
                mov     rcx, rsi
                call    sub_1409CA61C
                test    r14d, r14d
                js      short loc_1405A0DA2
                mov     ecx, edx
                lock xadd [rbx+4], ecx
                add     ecx, edx
                jnz     short loc_1405A0DA2
                mov     rax, [rbx+10h]
                mov     rcx, rbx
                call    sub_1404079D0

loc_1405A0DA2:                          ; CODE XREF: VfRemoveContext+72↑j
                                        ; VfRemoveContext+C9↑j ...
                mov     eax, r14d

loc_1405A0DA5:                          ; CODE XREF: VfRemoveContext+2A↑j
                                        ; VfRemoveContext+48↑j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
VfRemoveContext endp
