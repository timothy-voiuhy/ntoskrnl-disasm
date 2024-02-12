RtlInsertEntryHashTable proc near       ; CODE XREF: sub_1405E534C+CA↓p
                                        ; sub_1406D7CD4+CA↓p ...

var_28          = xmmword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014041F5DE SIZE 00000015 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                push    rdi
                sub     rsp, 40h
                xor     eax, eax
                mov     [rdx+10h], r8
                inc     dword ptr [rcx+14h]
                xorps   xmm0, xmm0
                mov     rbx, r9
                mov     rsi, rdx
                mov     rdi, rcx
                movups  [rsp+48h+var_28], xmm0
                mov     [r11-18h], rax
                test    r9, r9
                jnz     short loc_14020345E
                lea     rdx, [r11-28h]
                call    sub_140203470
                lea     rbx, [rsp+48h+var_28]

loc_140203421:                          ; CODE XREF: RtlInsertEntryHashTable+81↓j
                                        ; RtlInsertEntryHashTable+21C207↓j
                mov     rax, [rbx]
                cmp     [rax], rax
                jnz     short loc_14020342C
                inc     dword ptr [rdi+18h]

loc_14020342C:                          ; CODE XREF: RtlInsertEntryHashTable+47↑j
                mov     rax, [rbx+8]
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     loc_14041F5EC
                mov     rbx, [rsp+48h+arg_0]
                mov     [rsi+8], rax
                mov     [rsi], rcx
                mov     [rcx+8], rsi
                mov     [rax], rsi
                mov     al, 1
                mov     rsi, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14020345E:                          ; CODE XREF: RtlInsertEntryHashTable+31↑j
                cmp     [r9], rax
                jnz     short loc_140203421
                jmp     loc_14041F5DE
RtlInsertEntryHashTable endp
