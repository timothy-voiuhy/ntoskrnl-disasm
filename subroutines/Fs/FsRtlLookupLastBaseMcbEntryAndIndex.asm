FsRtlLookupLastBaseMcbEntryAndIndex proc near
                                        ; CODE XREF: FsRtlLookupLastLargeMcbEntryAndIndex+3B↓p
                                        ; DATA XREF: .pdata:00000001400D8774↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                xor     r10d, r10d
                mov     rbx, rcx
                mov     ecx, [rcx+4]
                or      ebp, 0FFFFFFFFh
                mov     rsi, r9
                mov     r11, rdx
                mov     al, r10b
                test    ecx, ecx
                jz      short loc_1403564D0
                mov     r9, [rbx+10h]
                lea     eax, [rcx-1]
                mov     edi, eax
                mov     edx, [r9+rax*8+4]
                cmp     edx, ebp
                jz      short loc_140356503
                test    eax, eax
                jz      short loc_140356507
                lea     eax, [rcx-2]
                mov     eax, [r9+rax*8]

loc_1403564A9:                          ; CODE XREF: FsRtlLookupLastBaseMcbEntryAndIndex+AA↓j
                sub     edx, eax
                mov     eax, [r9+rdi*8]
                dec     eax
                add     eax, edx

loc_1403564B3:                          ; CODE XREF: FsRtlLookupLastBaseMcbEntryAndIndex+A5↓j
                mov     [r8], eax
                mov     ecx, [rbx+4]
                mov     rax, [rbx+10h]
                dec     ecx
                mov     edx, [rax+rcx*8]
                dec     edx
                mov     [r11], edx
                mov     eax, [rbx+4]
                dec     eax
                mov     [rsi], eax
                mov     al, 1

loc_1403564D0:                          ; CODE XREF: FsRtlLookupLastBaseMcbEntryAndIndex+2A↑j
                cmp     [r11], ebp
                mov     ecx, r10d
                mov     rbx, [rsp+arg_0]
                mov     rsi, [rsp+arg_10]
                setnz   cl
                mov     rdi, [rsp+arg_18]
                dec     ecx
                mov     [r11+4], ecx
                cmp     [r8], ebp
                mov     rbp, [rsp+arg_8]
                setnz   r10b
                dec     r10d
                mov     [r8+4], r10d
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140356503:                          ; CODE XREF: FsRtlLookupLastBaseMcbEntryAndIndex+3C↑j
                mov     eax, ebp
                jmp     short loc_1403564B3
; ---------------------------------------------------------------------------

loc_140356507:                          ; CODE XREF: FsRtlLookupLastBaseMcbEntryAndIndex+40↑j
                mov     eax, r10d
                jmp     short loc_1403564A9
FsRtlLookupLastBaseMcbEntryAndIndex endp
