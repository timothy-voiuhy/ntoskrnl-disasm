RtlInterlockedSetBitRunEx proc near     ; DATA XREF: .pdata:00000001400F7C5C↑o
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
                ja      short loc_140587F78
                cmp     r9, 20h ; ' '
                jnz     short loc_140587F65
                mov     dword ptr [r10], 0FFFFFFFFh
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140587F65:                          ; CODE XREF: RtlInterlockedSetBitRunEx+2A↑j
                mov     rcx, r9
                mov     eax, 1
                shl     eax, cl
                mov     rcx, r8
                dec     eax
                shl     eax, cl
                jmp     short loc_140587FDC
; ---------------------------------------------------------------------------

loc_140587F78:                          ; CODE XREF: RtlInterlockedSetBitRunEx+24↑j
                test    r8, r8
                jz      short loc_140587FA6
                and     r11d, 1Fh
                mov     edx, 20h ; ' '
                sub     edx, r11d
                mov     eax, 1
                mov     ecx, edx
                shl     eax, cl
                mov     rcx, r8
                dec     eax
                shl     eax, cl
                lock or [r10], eax
                mov     eax, edx
                sub     r9, rax
                add     r10, 4

loc_140587FA6:                          ; CODE XREF: RtlInterlockedSetBitRunEx+4B↑j
                cmp     r9, 20h ; ' '
                jb      short loc_140587FCB
                mov     rcx, r9
                shr     rcx, 5
                imul    rax, rcx, -20h
                add     r9, rax

loc_140587FBA:                          ; CODE XREF: RtlInterlockedSetBitRunEx+99↓j
                mov     dword ptr [r10], 0FFFFFFFFh
                add     r10, 4
                sub     rcx, 1
                jnz     short loc_140587FBA

loc_140587FCB:                          ; CODE XREF: RtlInterlockedSetBitRunEx+7A↑j
                test    r9, r9
                jz      short locret_140587FE0
                mov     rcx, r9
                mov     eax, 1
                shl     eax, cl
                dec     eax

loc_140587FDC:                          ; CODE XREF: RtlInterlockedSetBitRunEx+46↑j
                lock or [r10], eax

locret_140587FE0:                       ; CODE XREF: RtlInterlockedSetBitRunEx+9E↑j
                retn
RtlInterlockedSetBitRunEx endp
