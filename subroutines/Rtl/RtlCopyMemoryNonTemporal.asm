RtlCopyMemoryNonTemporal proc near      ; CODE XREF: sub_140283C30:loc_140284117↑p
                                        ; RtlWriteNonVolatileMemory+51↓p ...
                sub     rdx, rcx
                cmp     r8, 4Fh ; 'O'
                jnb     short loc_14040769E
                cmp     r8, 8
                jnb     loc_14040775C
                cmp     r8, 0
                jnz     loc_140407780
                retn
; ---------------------------------------------------------------------------

loc_14040769E:                          ; CODE XREF: RtlCopyMemoryNonTemporal+7↑j
                test    cl, 0Fh
                jz      loc_14040771A
                mov     rax, [rdx+rcx]
                add     r8, rcx
                movnti  qword ptr [rcx], rax
                test    cl, 8
                jnz     short loc_1404076C1
                mov     rax, [rdx+rcx+8]
                movnti  qword ptr [rcx+8], rax

loc_1404076C1:                          ; CODE XREF: RtlCopyMemoryNonTemporal+35↑j
                add     rcx, 10h
                and     rcx, 0FFFFFFFFFFFFFFF0h
                sub     r8, rcx
                jmp     short loc_14040771A
; ---------------------------------------------------------------------------
                align 10h

loc_1404076D0:                          ; CODE XREF: RtlCopyMemoryNonTemporal+5B↓j
                                        ; RtlCopyMemoryNonTemporal+AB↓j ...
                prefetchnta byte ptr [rdx+rax]
                add     rax, 40h ; '@'
                dec     r9
                jnz     short loc_1404076D0
                sub     rax, rcx

loc_1404076E0:                          ; CODE XREF: RtlCopyMemoryNonTemporal+92↓j
                movdqu  xmm0, xmmword ptr [rdx+rcx]
                movdqu  xmm1, xmmword ptr [rdx+rcx+10h]
                movntdq xmmword ptr [rcx], xmm0
                movntdq xmmword ptr [rcx+10h], xmm1
                add     rcx, 40h ; '@'
                movdqu  xmm0, xmmword ptr [rdx+rcx-20h]
                movdqu  xmm1, xmmword ptr [rdx+rcx-10h]
                movntdq xmmword ptr [rcx-20h], xmm0
                movntdq xmmword ptr [rcx-10h], xmm1
                sub     rax, 40h ; '@'
                jnz     short loc_1404076E0
                cmp     r8, 40h ; '@'
                jb      short loc_14040775C

loc_14040771A:                          ; CODE XREF: RtlCopyMemoryNonTemporal+21↑j
                                        ; RtlCopyMemoryNonTemporal+4C↑j
                mov     rax, rcx
                mov     r9, 10h
                sub     r8, 400h
                jnb     short loc_1404076D0
                add     r8, 400h
                mov     r9, r8
                shr     r9, 6
                and     r8, 3Fh
                jmp     short loc_1404076D0
; ---------------------------------------------------------------------------
                align 10h

loc_140407750:                          ; CODE XREF: RtlCopyMemoryNonTemporal+E0↓j
                mov     rax, [rdx+rcx]
                movnti  qword ptr [rcx], rax
                add     rcx, 8

loc_14040775C:                          ; CODE XREF: RtlCopyMemoryNonTemporal+D↑j
                                        ; RtlCopyMemoryNonTemporal+98↑j
                sub     r8, 8
                ja      short loc_140407750
                add     rcx, r8
                mov     rax, [rdx+rcx]
                movnti  qword ptr [rcx], rax
                sfence
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140407780:                          ; CODE XREF: RtlCopyMemoryNonTemporal+17↑j
                                        ; RtlCopyMemoryNonTemporal+10B↓j
                mov     al, [rdx+rcx]
                mov     [rcx], al
                inc     rcx
                dec     r8
                jnz     short loc_140407780
                retn
RtlCopyMemoryNonTemporal endp
