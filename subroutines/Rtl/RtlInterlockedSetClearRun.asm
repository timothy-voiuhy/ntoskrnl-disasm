RtlInterlockedSetClearRun proc near     ; CODE XREF: sub_14037A2D4+5A↓p
                                        ; sub_14037A2D4+16B↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404220C2 SIZE 0000012E BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                push    r15
                mov     edi, edx
                mov     r15d, 20h ; ' '
                and     edi, 1Fh
                mov     eax, r8d
                mov     r10d, edx
                add     rax, rdi
                shr     r10, 3
                mov     r9d, r8d
                add     r10, [rcx+8]
                mov     r14, rcx
                and     r10, 0FFFFFFFFFFFFFFFCh
                mov     r11d, r8d
                mov     esi, edx
                lea     r8d, [r15-1Fh]
                mov     ebp, edx
                cmp     rax, r15
                ja      short loc_14020A568
                mov     eax, [r10]
                cmp     r11d, r15d
                jz      loc_1404220C2
                mov     ecx, r11d
                mov     edx, r8d
                shl     edx, cl
                mov     ecx, edi
                sub     edx, r8d
                shl     edx, cl

loc_14020A538:                          ; CODE XREF: RtlInterlockedSetClearRun+79↓j
                                        ; RtlInterlockedSetClearRun+217BF5↓j
                test    edx, eax
                jnz     loc_14020A5D2
                mov     ecx, eax
                or      ecx, edx
                lock cmpxchg [r10], ecx
                jnz     short loc_14020A538

loc_14020A54B:                          ; CODE XREF: RtlInterlockedSetClearRun+D9↓j
                                        ; RtlInterlockedSetClearRun+FA↓j
                mov     eax, r8d

loc_14020A54E:                          ; CODE XREF: RtlInterlockedSetClearRun+104↓j
                mov     rbx, [rsp+10h+arg_0]
                mov     rbp, [rsp+10h+arg_8]
                mov     rsi, [rsp+10h+arg_10]
                mov     rdi, [rsp+10h+arg_18]
                pop     r15
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14020A568:                          ; CODE XREF: RtlInterlockedSetClearRun+4B↑j
                and     esi, 1Fh
                jz      short loc_14020A59A
                mov     eax, [r10]
                mov     ebx, r15d
                sub     ebx, esi
                mov     edx, r8d
                mov     ecx, ebx
                shl     edx, cl
                mov     rcx, rdi
                sub     edx, r8d
                shl     edx, cl

loc_14020A584:                          ; CODE XREF: RtlInterlockedSetClearRun+C1↓j
                test    edx, eax
                jnz     short loc_14020A5D2
                mov     ecx, eax
                or      ecx, edx
                lock cmpxchg [r10], ecx
                jnz     short loc_14020A584
                sub     r11d, ebx
                add     r10, 4

loc_14020A59A:                          ; CODE XREF: RtlInterlockedSetClearRun+9B↑j
                or      ebx, 0FFFFFFFFh

loc_14020A59D:                          ; CODE XREF: RtlInterlockedSetClearRun+217C0B↓j
                cmp     r11d, r15d
                jnb     loc_1404220CA
                test    r11d, r11d
                jz      short loc_14020A54B
                mov     eax, [r10]
                mov     ecx, r11d
                mov     edx, r8d
                shl     edx, cl
                sub     edx, r8d

loc_14020A5B9:                          ; CODE XREF: RtlInterlockedSetClearRun+100↓j
                test    edx, eax
                jnz     loc_14042214E
                mov     ecx, eax
                or      ecx, edx
                lock cmpxchg [r10], ecx
                jz      loc_14020A54B
                jmp     short loc_14020A5B9
; ---------------------------------------------------------------------------

loc_14020A5D2:                          ; CODE XREF: RtlInterlockedSetClearRun+6A↑j
                                        ; RtlInterlockedSetClearRun+B6↑j ...
                xor     eax, eax
                jmp     loc_14020A54E
RtlInterlockedSetClearRun endp
