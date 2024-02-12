KeInitializeSecondaryInterruptServices proc near
                                        ; CODE XREF: sub_1404D0B30+39↑p
                                        ; DATA XREF: .pdata:000000014011DEF4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     esi, 3000h
                mov     r8d, 6953654Bh
                mov     edx, esi
                mov     ecx, 200h
                call    ExAllocatePoolWithTag
                xor     ebx, ebx
                mov     cs:qword_140C2B308, rax
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_1408BD153
                mov     ebx, 0C000009Ah
                jmp     short loc_1408BD1C9
; ---------------------------------------------------------------------------

loc_1408BD153:                          ; CODE XREF: KeInitializeSecondaryInterruptServices+3A↑j
                mov     r8, rsi
                xor     edx, edx
                mov     rcx, rdi
                call    memset
                lea     rsi, [rdi+8]
                mov     ebp, 100h

loc_1408BD169:                          ; CODE XREF: KeInitializeSecondaryInterruptServices+78↓j
                mov     r8b, 1
                mov     [rdi], rbx
                mov     edx, 1
                mov     rcx, rsi
                call    KeInitializeEvent
                add     rsi, 30h ; '0'
                lea     rdi, [rdi+30h]
                sub     rbp, 1
                jnz     short loc_1408BD169
                lea     rax, qword_140C2B360
                xor     r8d, r8d
                lea     rdx, sub_140519810
                mov     cs:qword_140C2B368, rax
                lea     rcx, unk_140C2B320
                mov     cs:qword_140C2B360, rax
                call    KeInitializeDpc
                mov     cs:qword_140C2B370, rbx
                mov     cs:byte_140C2B378, bl
                mov     cs:byte_140C2B310, 1

loc_1408BD1C9:                          ; CODE XREF: KeInitializeSecondaryInterruptServices+41↑j
                mov     rbp, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeInitializeSecondaryInterruptServices endp
