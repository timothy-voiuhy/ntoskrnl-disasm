VfInsertContext proc near               ; DATA XREF: .pdata:00000001400F8F40↑o

arg_0           = qword ptr  8
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     ebx, ebx
                mov     rdi, rcx
                cmp     cs:dword_140C1D15C, ebx
                jnz     short loc_1405A0B16
                mov     eax, 0C0000001h
                jmp     loc_1405A0BA9
; ---------------------------------------------------------------------------

loc_1405A0B16:                          ; CODE XREF: VfInsertContext+1A↑j
                movzx   r8d, word ptr [rcx]
                movzx   edx, word ptr [rcx+2]
                mov     ecx, r8d
                call    sub_1409CA544
                test    al, al
                jnz     short loc_1405A0B31
                mov     eax, 0C000000Dh
                jmp     short loc_1405A0BA9
; ---------------------------------------------------------------------------

loc_1405A0B31:                          ; CODE XREF: VfInsertContext+38↑j
                mov     rcx, [rdi+8]
                mov     edx, r8d
                call    sub_1409CA4E4
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_1405A0B6A
                mov     eax, 0C00000BBh
                jmp     short loc_1405A0BA9
; ---------------------------------------------------------------------------

loc_1405A0B4C:                          ; CODE XREF: VfInsertContext+84↓j
                movzx   ecx, word ptr [rdi]
                call    sub_1409CA484
                mov     rcx, rax
                test    rax, rax
                jz      short loc_1405A0B93
                xor     eax, eax
                lock cmpxchg [rsi], rcx
                jz      short loc_1405A0B76
                call    sub_1409CA4C4

loc_1405A0B6A:                          ; CODE XREF: VfInsertContext+53↑j
                mov     rcx, rsi
                call    sub_1409CA56C
                test    al, al
                jz      short loc_1405A0B4C

loc_1405A0B76:                          ; CODE XREF: VfInsertContext+73↑j
                mov     rax, [rsi]
                movzx   ecx, word ptr [rdi+2]
                cmp     [rax+rcx*8+8], rbx
                jnz     short loc_1405A0B9A
                mov     [rax+rcx*8+8], rdi
                lock inc dword ptr [rax+4]
                lock inc dword ptr [rdi+4]
                jmp     short loc_1405A0B9F
; ---------------------------------------------------------------------------

loc_1405A0B93:                          ; CODE XREF: VfInsertContext+6A↑j
                mov     eax, 0C000009Ah
                jmp     short loc_1405A0BA9
; ---------------------------------------------------------------------------

loc_1405A0B9A:                          ; CODE XREF: VfInsertContext+92↑j
                mov     ebx, 0C000022Ah

loc_1405A0B9F:                          ; CODE XREF: VfInsertContext+A1↑j
                mov     rcx, rsi
                call    sub_1409CA61C
                mov     eax, ebx

loc_1405A0BA9:                          ; CODE XREF: VfInsertContext+21↑j
                                        ; VfInsertContext+3F↑j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
VfInsertContext endp
