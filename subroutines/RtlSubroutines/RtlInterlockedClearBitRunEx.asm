RtlInterlockedClearBitRunEx proc near   ; DATA XREF: .pdata:00000001400F7C44↑o
                mov     rax, [rcx+8]
                mov     r9, r8
                mov     r8, rdx
                mov     r11, rdx
                shr     r8, 5
                lea     r10, [rax+r8*4]
                mov     r8, rdx
                and     r8d, 1Fh
                lea     rax, [r8+r9]
                cmp     rax, 20h ; ' '
                ja      short loc_140587DFA
                cmp     r9, 20h ; ' '
                jnz     short loc_140587DE5
                mov     dword ptr [r10], 0
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140587DE5:                          ; CODE XREF: RtlInterlockedClearBitRunEx+2A↑j
                mov     rcx, r9
                mov     eax, 1
                shl     eax, cl
                mov     rcx, r8
                dec     eax
                shl     eax, cl
                not     eax
                jmp     short loc_140587E5C
; ---------------------------------------------------------------------------

loc_140587DFA:                          ; CODE XREF: RtlInterlockedClearBitRunEx+24↑j
                test    r8, r8
                jz      short loc_140587E2A
                and     r11d, 1Fh
                mov     edx, 20h ; ' '
                sub     edx, r11d
                mov     eax, 1
                mov     ecx, edx
                shl     eax, cl
                mov     rcx, r8
                dec     eax
                shl     eax, cl
                not     eax
                lock and [r10], eax
                mov     eax, edx
                sub     r9, rax
                add     r10, 4

loc_140587E2A:                          ; CODE XREF: RtlInterlockedClearBitRunEx+4D↑j
                cmp     r9, 20h ; ' '
                jb      short loc_140587E4F
                mov     rcx, r9
                shr     rcx, 5
                imul    rax, rcx, -20h
                add     r9, rax

loc_140587E3E:                          ; CODE XREF: RtlInterlockedClearBitRunEx+9D↓j
                mov     dword ptr [r10], 0
                add     r10, 4
                sub     rcx, 1
                jnz     short loc_140587E3E

loc_140587E4F:                          ; CODE XREF: RtlInterlockedClearBitRunEx+7E↑j
                test    r9, r9
                jz      short locret_140587E60
                mov     rcx, r9
                or      eax, 0FFFFFFFFh
                shl     eax, cl

loc_140587E5C:                          ; CODE XREF: RtlInterlockedClearBitRunEx+48↑j
                lock and [r10], eax

locret_140587E60:                       ; CODE XREF: RtlInterlockedClearBitRunEx+A2↑j
                retn
RtlInterlockedClearBitRunEx endp
