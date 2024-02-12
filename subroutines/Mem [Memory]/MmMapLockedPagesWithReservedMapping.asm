MmMapLockedPagesWithReservedMapping proc near
                                        ; CODE XREF: sub_1403E9FB0+CA↓p
                                        ; sub_1402ED4D8+174CFF↓p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404B1E36 SIZE 000000DA BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r10d, [r8+2Ch]
                mov     rdi, rcx
                add     r10, [r8+20h]
                lea     rcx, unk_140C4EA40
                mov     ebp, [r8+28h]
                and     r10d, 0FFFh
                add     rbp, 0FFFh
                mov     esi, edx
                add     rbp, r10
                mov     r12d, r9d
                shr     rbp, 0Ch
                mov     r15, r8
                call    ExAcquireSpinLockShared
                mov     rbx, cs:qword_140C4EA48
                mov     rdx, rdi
                and     rdx, 0FFFFFFFFFFFFF000h
                movzx   r14d, al
                jmp     short loc_1403C87AF
; ---------------------------------------------------------------------------

loc_1403C87AC:                          ; CODE XREF: MmMapLockedPagesWithReservedMapping+7F↓j
                mov     rbx, [rbx]

loc_1403C87AF:                          ; CODE XREF: MmMapLockedPagesWithReservedMapping+6A↑j
                                        ; MmMapLockedPagesWithReservedMapping+1C3↓j
                test    rbx, rbx
                jz      loc_1404B1EF3
                mov     rcx, [rbx+18h]
                cmp     rdx, rcx
                jb      short loc_1403C87AC
                mov     rax, [rbx+20h]
                shl     rax, 0Ch
                add     rax, rcx
                cmp     rdx, rax
                jnb     loc_1403C88FF
                test    rbx, rbx
                jz      loc_1404B1EF3
                lea     rcx, unk_140C4EA40
                call    ExReleaseSpinLockSharedFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404B1E36

loc_1403C87F8:                          ; CODE XREF: MmMapLockedPagesWithReservedMapping+E96F8↓j
                                        ; MmMapLockedPagesWithReservedMapping+E9704↓j ...
                mov     cr8, r14
                mov     eax, [rbx+28h]
                cmp     eax, esi
                jnz     loc_1404B1E9B
                mov     eax, [rbx+2Ch]
                test    al, 1
                jnz     loc_1404B1EB4
                mov     rcx, [rbx+20h]
                mov     rdi, [rbx+18h]
                mov     rdx, rcx

loc_1403C881D:                          ; CODE XREF: MmMapLockedPagesWithReservedMapping+E9795↓j
                cmp     rbp, rcx
                ja      loc_1403C8908
                mov     r14, rdi
                mov     rcx, 7FFFFFFFF8h
                shr     r14, 9
                and     r14, rcx
                mov     rcx, 0FFFFF68000000000h
                add     r14, rcx
                mov     rbx, r14
                lea     rsi, [r14+rdx*8]
                cmp     r14, rsi
                jnb     short loc_1403C886D

loc_1403C8853:                          ; CODE XREF: MmMapLockedPagesWithReservedMapping+12B↓j
                mov     rcx, rbx
                call    sub_1402805F0
                test    rax, rax
                jnz     loc_1404B1EDA
                add     rbx, 8
                cmp     rbx, rsi
                jb      short loc_1403C8853

loc_1403C886D:                          ; CODE XREF: MmMapLockedPagesWithReservedMapping+111↑j
                lea     rbx, [r15+30h]

loc_1403C8871:                          ; CODE XREF: MmMapLockedPagesWithReservedMapping+186↓j
                mov     rax, [rbx]
                mov     rcx, 0FFFFFFFFFh
                cmp     rax, rcx
                ja      short loc_1403C88BE
                lea     rcx, [rax+rax*2]
                shl     rcx, 4
                mov     rax, 0FFFFFA8000000028h
                mov     rax, [rcx+rax]
                mov     rdx, 4000000000000h
                test    rdx, rax
                jz      short loc_1403C88BE
                mov     rax, 0FFFFFA8000000000h
                add     rcx, rax
                call    sub_1402DB2A8
                test    eax, eax
                js      short loc_1403C8908

loc_1403C88BE:                          ; CODE XREF: MmMapLockedPagesWithReservedMapping+141↑j
                                        ; MmMapLockedPagesWithReservedMapping+166↑j
                add     rbx, 8
                sub     rbp, 1
                jnz     short loc_1403C8871
                lea     r9d, [rbp+4]
                mov     dword ptr [rsp+48h+var_28], r12d
                xor     r8d, r8d
                mov     rdx, r14
                mov     rcx, r15
                call    sub_1403C8914

loc_1403C88DF:                          ; CODE XREF: MmMapLockedPagesWithReservedMapping+1CA↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403C88FF:                          ; CODE XREF: MmMapLockedPagesWithReservedMapping+8F↑j
                mov     rbx, [rbx+8]
                jmp     loc_1403C87AF
; ---------------------------------------------------------------------------

loc_1403C8908:                          ; CODE XREF: MmMapLockedPagesWithReservedMapping+E0↑j
                                        ; MmMapLockedPagesWithReservedMapping+17C↑j ...
                xor     eax, eax
                jmp     short loc_1403C88DF
MmMapLockedPagesWithReservedMapping endp
