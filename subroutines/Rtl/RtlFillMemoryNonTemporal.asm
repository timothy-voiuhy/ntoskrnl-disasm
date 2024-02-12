RtlFillMemoryNonTemporal proc near      ; CODE XREF: RtlFillNonVolatileMemory+4E↓p
                                        ; DATA XREF: .pdata:00000001400E37D8↑o
                cmp     rdx, 8
                jnb     short loc_1404077E0
                and     rdx, 7
                jz      short locret_1404077D6

loc_1404077CC:                          ; CODE XREF: RtlFillMemoryNonTemporal+14↓j
                mov     [rcx+rdx-1], r8b
                dec     rdx
                jnz     short loc_1404077CC

locret_1404077D6:                       ; CODE XREF: RtlFillMemoryNonTemporal+A↑j
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1404077E0:                          ; CODE XREF: RtlFillMemoryNonTemporal+4↑j
                movzx   r8, r8b
                mov     r9, 101010101010101h
                imul    r8, r9
                cmp     rdx, 4Fh ; 'O'
                jb      loc_140407898
                test    cl, 0Fh
                jz      short loc_14040781D
                movnti  qword ptr [rcx], r8
                test    cl, 8
                jnz     short loc_14040780F
                movnti  qword ptr [rcx+8], r8

loc_14040780F:                          ; CODE XREF: RtlFillMemoryNonTemporal+48↑j
                add     rdx, rcx
                add     rcx, 0Fh
                and     rcx, 0FFFFFFFFFFFFFFF0h
                sub     rdx, rcx

loc_14040781D:                          ; CODE XREF: RtlFillMemoryNonTemporal+3F↑j
                movq    xmm0, r8
                movlhps xmm0, xmm0
                mov     r9, rdx
                shr     r9, 7
                jz      short loc_140407867

loc_14040782E:                          ; CODE XREF: RtlFillMemoryNonTemporal+9F↓j
                movntdq xmmword ptr [rcx], xmm0
                movntdq xmmword ptr [rcx+10h], xmm0
                add     rcx, 80h
                movntdq xmmword ptr [rcx-60h], xmm0
                movntdq xmmword ptr [rcx-50h], xmm0
                dec     r9
                movntdq xmmword ptr [rcx-40h], xmm0
                movntdq xmmword ptr [rcx-30h], xmm0
                movntdq xmmword ptr [rcx-20h], xmm0
                movntdq xmmword ptr [rcx-10h], xmm0
                jnz     short loc_14040782E
                and     rdx, 7Fh
                jz      short loc_1404078A5

loc_140407867:                          ; CODE XREF: RtlFillMemoryNonTemporal+6C↑j
                mov     r9, rdx
                shr     r9, 4
                jz      short loc_14040787D

loc_140407870:                          ; CODE XREF: RtlFillMemoryNonTemporal+BB↓j
                movntdq xmmword ptr [rcx], xmm0
                add     rcx, 10h
                dec     r9
                jnz     short loc_140407870

loc_14040787D:                          ; CODE XREF: RtlFillMemoryNonTemporal+AE↑j
                and     rdx, 0Fh
                jz      short loc_1404078A5
                jmp     short loc_140407898
; ---------------------------------------------------------------------------
                align 10h

loc_140407890:                          ; CODE XREF: RtlFillMemoryNonTemporal+DC↓j
                movnti  qword ptr [rcx], r8
                add     rcx, 8

loc_140407898:                          ; CODE XREF: RtlFillMemoryNonTemporal+36↑j
                                        ; RtlFillMemoryNonTemporal+C3↑j
                sub     rdx, 8
                ja      short loc_140407890
                add     rcx, rdx
                movnti  qword ptr [rcx], r8

loc_1404078A5:                          ; CODE XREF: RtlFillMemoryNonTemporal+A5↑j
                                        ; RtlFillMemoryNonTemporal+C1↑j
                sfence
                retn
RtlFillMemoryNonTemporal endp
