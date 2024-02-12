FsRtlRemoveExtraCreateParameter proc near
                                        ; CODE XREF: FsRtlCheckOplockEx2+1D6↑p
                                        ; sub_14024DBCC+11↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdi
                xor     edi, edi
                lea     r11, [rcx+8]
                mov     [r8], rdi
                mov     r10, rdx
                mov     rax, [r11]
                mov     ebx, 0C0000225h
                cmp     rax, r11
                jz      short loc_140656471

loc_140656453:                          ; CODE XREF: FsRtlRemoveExtraCreateParameter+3F↓j
                mov     rdx, [rax+10h]
                sub     rdx, [r10]
                jnz     short loc_140656464
                mov     rdx, [rax+18h]
                sub     rdx, [r10+8]

loc_140656464:                          ; CODE XREF: FsRtlRemoveExtraCreateParameter+2A↑j
                test    rdx, rdx
                jz      short loc_14065647F
                mov     rax, [rax]
                cmp     rax, r11
                jnz     short loc_140656453

loc_140656471:                          ; CODE XREF: FsRtlRemoveExtraCreateParameter+21↑j
                                        ; FsRtlRemoveExtraCreateParameter+7F↓j
                mov     eax, ebx
                mov     rbx, [rsp+arg_0]
                mov     rdi, [rsp+arg_8]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14065647F:                          ; CODE XREF: FsRtlRemoveExtraCreateParameter+37↑j
                or      dword ptr [rax+28h], 4
                mov     ebx, edi
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     short loc_1406564C8
                mov     rdx, [rax+8]
                cmp     [rdx], rax
                jnz     short loc_1406564C8
                mov     [rdx], rcx
                mov     [rcx+8], rdx
                lea     rcx, [rax+40h]
                mov     [rax+8], rdi
                mov     [rax], rdi
                mov     [r8], rcx
                test    r9, r9
                jz      short loc_140656471
                mov     ecx, [rax+2Ch]
                mov     eax, ebx
                mov     rbx, [rsp+arg_0]
                sub     ecx, 48h ; 'H'
                mov     rdi, [rsp+arg_8]
                mov     [r9], ecx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1406564C8:                          ; CODE XREF: FsRtlRemoveExtraCreateParameter+5C↑j
                                        ; FsRtlRemoveExtraCreateParameter+65↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
FsRtlRemoveExtraCreateParameter endp
