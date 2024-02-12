FsRtlFindExtraCreateParameter proc near ; CODE XREF: FsRtlCheckOplockEx2+1A4↑p
                                        ; sub_1403426F8+8E↑p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                xor     ebx, ebx
                mov     r11, r8
                mov     r10, rdx
                test    r8, r8
                jz      short loc_1406563B5
                mov     [r8], rbx

loc_1406563B5:                          ; CODE XREF: FsRtlFindExtraCreateParameter+10↑j
                test    r9, r9
                jnz     short loc_1406563F1

loc_1406563BA:                          ; CODE XREF: FsRtlFindExtraCreateParameter+54↓j
                mov     rax, [rcx+8]
                lea     r8, [rcx+8]
                cmp     rax, r8
                jz      short loc_1406563E5

loc_1406563C7:                          ; CODE XREF: FsRtlFindExtraCreateParameter+43↓j
                mov     rdx, [rax+10h]
                sub     rdx, [r10]
                jnz     short loc_1406563D8
                mov     rdx, [rax+18h]
                sub     rdx, [r10+8]

loc_1406563D8:                          ; CODE XREF: FsRtlFindExtraCreateParameter+2E↑j
                test    rdx, rdx
                jz      short loc_1406563F6
                mov     rax, [rax]
                cmp     rax, r8
                jnz     short loc_1406563C7

loc_1406563E5:                          ; CODE XREF: FsRtlFindExtraCreateParameter+25↑j
                mov     eax, 0C0000225h
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406563F1:                          ; CODE XREF: FsRtlFindExtraCreateParameter+18↑j
                mov     [r9], ebx
                jmp     short loc_1406563BA
; ---------------------------------------------------------------------------

loc_1406563F6:                          ; CODE XREF: FsRtlFindExtraCreateParameter+3B↑j
                or      dword ptr [rax+28h], 4
                test    r11, r11
                jz      short loc_140656406
                lea     rcx, [rax+40h]
                mov     [r11], rcx

loc_140656406:                          ; CODE XREF: FsRtlFindExtraCreateParameter+5D↑j
                test    r9, r9
                jz      short loc_140656414
                mov     ecx, [rax+2Ch]
                sub     ecx, 48h ; 'H'
                mov     [r9], ecx

loc_140656414:                          ; CODE XREF: FsRtlFindExtraCreateParameter+69↑j
                mov     eax, ebx
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlFindExtraCreateParameter endp
