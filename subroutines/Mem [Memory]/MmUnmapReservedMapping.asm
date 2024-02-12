MmUnmapReservedMapping proc near        ; CODE XREF: sub_1403E9F40+28↑p
                                        ; sub_140210604+213D5E↑p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rsi, rcx
                mov     r14d, edx
                mov     ecx, 200h
                mov     rdi, r8
                test    [r8+0Ah], cx
                jz      short loc_140531E9B
                mov     rcx, r8
                call    sub_140530EC0
                mov     r9d, eax
                sub     rsi, r9

loc_140531E9B:                          ; CODE XREF: MmUnmapReservedMapping+2B↑j
                mov     ecx, [rdi+2Ch]
                add     rcx, [rdi+20h]
                mov     ebp, [rdi+28h]
                and     ecx, 0FFFh
                add     rbp, 0FFFh
                add     rbp, rcx
                lea     rcx, unk_140C4EA40
                shr     rbp, 0Ch
                call    ExAcquireSpinLockShared
                mov     rbx, cs:qword_140C4EA48
                mov     rdx, rsi
                and     rdx, 0FFFFFFFFFFFFF000h
                movzx   r15d, al
                jmp     short loc_140531EFE
; ---------------------------------------------------------------------------

loc_140531EDC:                          ; CODE XREF: MmUnmapReservedMapping+A1↓j
                mov     rcx, [rbx+18h]
                cmp     rdx, rcx
                jb      short loc_140531EFB
                mov     rax, [rbx+20h]
                shl     rax, 0Ch
                add     rax, rcx
                cmp     rdx, rax
                jb      short loc_140531F20
                mov     rbx, [rbx+8]
                jmp     short loc_140531EFE
; ---------------------------------------------------------------------------

loc_140531EFB:                          ; CODE XREF: MmUnmapReservedMapping+83↑j
                mov     rbx, [rbx]

loc_140531EFE:                          ; CODE XREF: MmUnmapReservedMapping+7A↑j
                                        ; MmUnmapReservedMapping+99↑j
                test    rbx, rbx
                jnz     short loc_140531EDC

loc_140531F03:                          ; CODE XREF: MmUnmapReservedMapping+C3↓j
                mov     edx, 106h
                mov     [rsp+48h+var_28], 2
                mov     r9, r14
                mov     r8, rsi
                lea     ecx, [rdx-2Ch]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140531F20:                          ; CODE XREF: MmUnmapReservedMapping+93↑j
                test    rbx, rbx
                jz      short loc_140531F03
                lea     rcx, unk_140C4EA40
                call    ExReleaseSpinLockSharedFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140531F86
                test    al, 1
                jz      short loc_140531F86
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_140531F86
                cmp     r15b, 0Fh
                ja      short loc_140531F86
                cmp     al, 2
                jb      short loc_140531F86
                mov     r10, gs:20h
                lea     ecx, [r15+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_140531F86
                mov     rcx, r10
                call    sub_1403F2EC4

loc_140531F86:                          ; CODE XREF: MmUnmapReservedMapping+D9↑j
                                        ; MmUnmapReservedMapping+DD↑j ...
                mov     cr8, r15
                cmp     [rbx+28h], r14d
                jz      short loc_140531FA9
                mov     edx, 102h
                mov     [rsp+48h+var_28], rbp
                mov     r9, r14
                mov     r8, rsi
                lea     ecx, [rdx-28h]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140531FA9:                          ; CODE XREF: MmUnmapReservedMapping+12E↑j
                mov     eax, [rbx+2Ch]
                mov     r9, [rbx+20h]
                mov     rcx, r9
                test    al, 1
                jz      short loc_140531FC7
                mov     rax, rsi
                sub     rax, [rbx+18h]
                shr     rax, 0Ch
                sub     rcx, rax
                jmp     short loc_140531FCB
; ---------------------------------------------------------------------------

loc_140531FC7:                          ; CODE XREF: MmUnmapReservedMapping+155↑j
                mov     rsi, [rbx+18h]

loc_140531FCB:                          ; CODE XREF: MmUnmapReservedMapping+165↑j
                mov     [rsp+48h+var_28], rbp
                cmp     rbp, rcx
                jbe     short loc_140531FE6
                mov     edx, 10Ah
                mov     r8, rsi
                lea     ecx, [rdx-30h]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140531FE6:                          ; CODE XREF: MmUnmapReservedMapping+173↑j
                mov     r9, rdi
                mov     r8d, r14d
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1405318F4
                mov     eax, [rbx+2Ch]
                test    al, 1
                jnz     short loc_140532042
                mov     rcx, rsi
                mov     rax, 7FFFFFFFF8h
                shr     rcx, 9
                and     rcx, rax
                mov     rax, 0FFFFF68000000000h
                add     rcx, rax
                mov     rax, [rbx+20h]
                lea     r15, [rcx+rax*8]
                lea     rbx, [rcx+rbp*8]
                jmp     short loc_14053203D
; ---------------------------------------------------------------------------

loc_14053202C:                          ; CODE XREF: MmUnmapReservedMapping+1E0↓j
                mov     rcx, rbx
                call    sub_1402805F0
                test    rax, rax
                jnz     short loc_140532074
                add     rbx, 8

loc_14053203D:                          ; CODE XREF: MmUnmapReservedMapping+1CA↑j
                cmp     rbx, r15
                jb      short loc_14053202C

loc_140532042:                          ; CODE XREF: MmUnmapReservedMapping+19B↑j
                and     word ptr [rdi+0Ah], 0FFDEh
                movzx   eax, word ptr [rdi+0Ah]
                test    al, 4
                jz      short loc_14053205A
                mov     eax, [rdi+2Ch]
                add     rax, [rdi+20h]
                mov     [rdi+18h], rax

loc_14053205A:                          ; CODE XREF: MmUnmapReservedMapping+1ED↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140532074:                          ; CODE XREF: MmUnmapReservedMapping+1D7↑j
                mov     edx, 10Ch
                mov     [rsp+48h+var_28], rbp
                mov     r9, r14
                mov     r8, rsi
                lea     ecx, [rdx-32h]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
MmUnmapReservedMapping endp
