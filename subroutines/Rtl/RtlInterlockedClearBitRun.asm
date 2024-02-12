RtlInterlockedClearBitRun proc near     ; CODE XREF: sub_1407B5DB0+E8↓p
                                        ; sub_14094329C+54↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404ADFE2 SIZE 00000061 BYTES

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
                ja      loc_1404ADFE2
                cmp     r9d, 20h ; ' '
                jz      short loc_1403BF822
                mov     ecx, r9d
                mov     eax, 1
                shl     eax, cl
                mov     ecx, r11d
                dec     eax
                shl     eax, cl
                not     eax

loc_1403BF817:                          ; CODE XREF: RtlInterlockedClearBitRun+EE86E↓j
                lock and [r10], eax

loc_1403BF81B:                          ; CODE XREF: RtlInterlockedClearBitRun+59↓j
                                        ; RtlInterlockedClearBitRun+EE860↓j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403BF822:                          ; CODE XREF: RtlInterlockedClearBitRun+32↑j
                mov     dword ptr [r10], 0
                jmp     short loc_1403BF81B
RtlInterlockedClearBitRun endp
