MmUnmapLockedPages proc near            ; CODE XREF: sub_140210604+4E↑p
                                        ; IoFreeMdl+A8↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014043A062 SIZE 00000045 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                xor     r8d, r8d
                mov     ecx, 200h
                mov     rbx, rdx
                test    [rdx+0Ah], cx
                jnz     loc_14043A062

loc_14025FF17:                          ; CODE XREF: MmUnmapLockedPages+1DA17D↓j
                mov     edx, [rbx+20h]
                mov     rax, 7FFFFFFEFFFFh
                mov     r9d, [rbx+2Ch]
                mov     ebp, [rbx+28h]
                add     edx, r9d
                add     rbp, 0FFFh
                and     edx, 0FFFh
                add     rbp, rdx
                shr     rbp, 0Ch
                cmp     rdi, rax
                jbe     loc_14025FFD8

loc_14025FF4B:                          ; DATA XREF: .rdata:000000014005AC9C↑o
                                        ; .rdata:000000014005ACB0↑o ...
                mov     [rsp+28h+arg_0], rsi
                mov     eax, r8d
                sub     rdi, rax
                mov     rax, 7FFFFFFFF8h
                mov     rsi, rdi
                shr     rsi, 9
                and     rsi, rax
                mov     rax, 0FFFFF68000000000h
                and     word ptr [rbx+0Ah], 0FFDEh
                add     rsi, rax
                movzx   eax, word ptr [rbx+0Ah]
                test    al, 4
                jnz     loc_14043A072

loc_14025FF88:                          ; CODE XREF: MmUnmapLockedPages+1DA18D↓j
                mov     rcx, rdi
                call    sub_140260000
                cmp     eax, 1
                jz      loc_14043A082

loc_14025FF99:                          ; CODE XREF: MmUnmapLockedPages+1DA19E↓j
                cmp     cs:dword_140CFC538, 1
                jz      short loc_14025FFF4

loc_14025FFA2:                          ; CODE XREF: MmUnmapLockedPages+107↓j
                mov     eax, cs:dword_140CFB17C
                test    al, 1
                jnz     loc_14043A093

loc_14025FFB0:                          ; CODE XREF: MmUnmapLockedPages+1DA1B2↓j
                mov     r8d, ebp
                lea     rcx, qword_140C4EDC0
                mov     rdx, rsi
                call    sub_14025EFB0
                mov     rsi, [rsp+28h+arg_0]
                mov     rbx, [rsp+28h+arg_8]
                mov     rbp, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
algn_14025FFD7:                         ; DATA XREF: .pdata:00000001400CD6A4↑o
                                        ; .pdata:00000001400CD6B0↑o
                align 8

loc_14025FFD8:                          ; CODE XREF: MmUnmapLockedPages+55↑j
                mov     rdx, rbp
                mov     rcx, rdi
                call    sub_14076C8BC
                mov     rbx, [rsp+28h+arg_8]
                mov     rbp, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14025FFF4:                          ; CODE XREF: MmUnmapLockedPages+B0↑j
                                        ; DATA XREF: .pdata:00000001400CD6B0↑o ...
                inc     rbp
                jmp     short loc_14025FFA2
MmUnmapLockedPages endp
