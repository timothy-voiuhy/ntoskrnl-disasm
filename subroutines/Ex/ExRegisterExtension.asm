ExRegisterExtension proc near           ; DATA XREF: .rdata:00000001400A0B5C↑o
                                        ; .pdata:000000014010CD40↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140854C58 SIZE 00000082 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                and     edx, 0FFFF0000h
                mov     r14, r8
                mov     r15, rcx
                cmp     edx, 10000h
                jnz     loc_14079D670
                xor     r12d, r12d
                cmp     [r8+8], r12
                jz      loc_14079D665

loc_14079D4DB:                          ; CODE XREF: ExRegisterExtension+1CA↓j
                mov     rax, gs:188h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E4h], bx
                lea     rsi, qword_140D2E920
                xor     r8d, r8d
                mov     rcx, rsi
                xor     edx, edx
                call    sub_140244C10
                mov     rdi, rax
                lea     ebp, [rbx+12h]
                xor     eax, eax
                lock cmpxchg cs:qword_140D2E920, rbp
                jnz     loc_14079D677

loc_14079D51A:                          ; CODE XREF: ExRegisterExtension+1E5↓j
                test    rdi, rdi
                jz      short loc_14079D523
                or      byte ptr [rdi+1Ah], 1

loc_14079D523:                          ; CODE XREF: ExRegisterExtension+7D↑j
                movzx   edx, word ptr [r14+2]
                movzx   ecx, word ptr [r14]
                call    sub_14079D818
                mov     rdi, rax
                mov     rax, rbp
                lock cmpxchg cs:qword_140D2E920, r12
                jnz     loc_14079D68A

loc_14079D546:                          ; CODE XREF: ExRegisterExtension+1F2↓j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                test    rdi, rdi
                jz      loc_140854C58
                movzx   eax, word ptr [r14+4]
                cmp     ax, [rdi+1Ch]
                jb      loc_140854C62
                mov     ecx, r12d
                mov     edx, eax
                test    eax, eax
                jz      short loc_14079D593
                mov     r8, [r14+8]

loc_14079D581:                          ; CODE XREF: ExRegisterExtension+F1↓j
                mov     eax, ecx
                cmp     [r8+rax*8], r12
                jz      loc_140854C69
                inc     ecx
                cmp     ecx, edx
                jb      short loc_14079D581

loc_14079D593:                          ; CODE XREF: ExRegisterExtension+DB↑j
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                lea     rsi, [rdi+48h]
                xor     r8d, r8d
                mov     rcx, rsi
                xor     edx, edx
                call    sub_140244C10
                lock bts qword ptr [rsi], 0
                mov     rbp, rax
                jb      loc_140854C70

loc_14079D5C3:                          ; CODE XREF: ExRegisterExtension+B77DF↓j
                test    rbp, rbp
                jz      short loc_14079D5CC
                or      byte ptr [rbp+1Ah], 1

loc_14079D5CC:                          ; CODE XREF: ExRegisterExtension+126↑j
                cmp     [rdi+50h], r12
                jnz     loc_140854C9B
                test    byte ptr [rdi+58h], 1
                jnz     loc_140854C9B
                mov     rax, [rdi+30h]
                test    rax, rax
                jnz     loc_14079D697

loc_14079D5ED:                          ; CODE XREF: ExRegisterExtension+202↓j
                mov     rdx, [r14+8]
                mov     rax, r12
                test    rdx, rdx
                cmovz   rdx, cs:MmBadPointer
                mov     [rdi+50h], rdx
                xchg    rax, [rdi+40h]
                mov     rax, [rdi+30h]
                test    rax, rax
                jnz     loc_14079D6A7

loc_14079D614:                          ; CODE XREF: ExRegisterExtension+215↓j
                lock xadd [rsi], rbx
                test    bl, 2
                jnz     loc_140854C84

loc_14079D622:                          ; CODE XREF: ExRegisterExtension+B77E7↓j
                                        ; ExRegisterExtension+B77F6↓j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rcx, [r14+10h]
                test    rcx, rcx
                jz      short loc_14079D648
                mov     rax, [rdi+28h]
                mov     [rcx], rax

loc_14079D648:                          ; CODE XREF: ExRegisterExtension+19F↑j
                mov     [r15], rdi
                xor     eax, eax

loc_14079D64D:                          ; CODE XREF: ExRegisterExtension+1D5↓j
                                        ; ExRegisterExtension+B77BD↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14079D665:                          ; CODE XREF: ExRegisterExtension+35↑j
                cmp     [r8+4], r12w
                jz      loc_14079D4DB

loc_14079D670:                          ; CODE XREF: ExRegisterExtension+28↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14079D64D
; ---------------------------------------------------------------------------

loc_14079D677:                          ; CODE XREF: ExRegisterExtension+74↑j
                mov     r8, rsi
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1402F6140
                jmp     loc_14079D51A
; ---------------------------------------------------------------------------

loc_14079D68A:                          ; CODE XREF: ExRegisterExtension+A0↑j
                mov     rcx, rsi
                call    ExfReleasePushLockShared
                jmp     loc_14079D546
; ---------------------------------------------------------------------------

loc_14079D697:                          ; CODE XREF: ExRegisterExtension+147↑j
                mov     rdx, [rdi+38h]
                xor     ecx, ecx
                call    sub_1404079D0
                jmp     loc_14079D5ED
; ---------------------------------------------------------------------------

loc_14079D6A7:                          ; CODE XREF: ExRegisterExtension+16E↑j
                mov     rdx, [rdi+38h]
                mov     ecx, 1
                call    sub_1404079D0
                jmp     loc_14079D614
ExRegisterExtension endp
