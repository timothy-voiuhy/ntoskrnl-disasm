RtlInterlockedSetBitRun proc near       ; DATA XREF: .pdata:00000001400F7C50↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                mov     rax, [rcx+8]
                mov     r9d, r8d
                mov     r11d, edx
                and     r11d, 1Fh
                mov     r8d, edx
                shr     r8, 5
                mov     ebx, edx
                lea     r10, [rax+r8*4]
                lea     rax, [r11+r9]
                cmp     rax, 20h ; ' '
                ja      short loc_140587EBC
                cmp     r9d, 20h ; ' '
                jnz     short loc_140587EA9
                mov     dword ptr [r10], 0FFFFFFFFh
                jmp     short loc_140587F1A
; ---------------------------------------------------------------------------

loc_140587EA9:                          ; CODE XREF: RtlInterlockedSetBitRun+2E↑j
                mov     ecx, r9d
                mov     eax, 1
                shl     eax, cl
                mov     rcx, r11
                dec     eax
                shl     eax, cl
                jmp     short loc_140587F16
; ---------------------------------------------------------------------------

loc_140587EBC:                          ; CODE XREF: RtlInterlockedSetBitRun+28↑j
                and     ebx, 1Fh
                jz      short loc_140587EE3
                mov     edx, 20h ; ' '
                mov     eax, 1
                sub     edx, ebx
                mov     ecx, edx
                shl     eax, cl
                mov     rcx, r11
                dec     eax
                shl     eax, cl
                lock or [r10], eax
                sub     r9d, edx
                add     r10, 4

loc_140587EE3:                          ; CODE XREF: RtlInterlockedSetBitRun+4F↑j
                cmp     r9d, 20h ; ' '
                jb      short loc_140587F05
                mov     eax, r9d
                shr     rax, 5

loc_140587EF0:                          ; CODE XREF: RtlInterlockedSetBitRun+93↓j
                mov     dword ptr [r10], 0FFFFFFFFh
                add     r9d, 0FFFFFFE0h
                add     r10, 4
                sub     rax, 1
                jnz     short loc_140587EF0

loc_140587F05:                          ; CODE XREF: RtlInterlockedSetBitRun+77↑j
                test    r9d, r9d
                jz      short loc_140587F1A
                mov     ecx, r9d
                mov     eax, 1
                shl     eax, cl
                dec     eax

loc_140587F16:                          ; CODE XREF: RtlInterlockedSetBitRun+4A↑j
                lock or [r10], eax

loc_140587F1A:                          ; CODE XREF: RtlInterlockedSetBitRun+37↑j
                                        ; RtlInterlockedSetBitRun+98↑j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlInterlockedSetBitRun endp
