PsWow64IsMachineSupported proc near     ; CODE XREF: sub_14067EC44+8F3↑p
                                        ; sub_14067EC44+9E6↑p ...
                sub     rsp, 28h
                xor     r9d, r9d
                movzx   r8d, cx
                test    cx, cx
                jz      short loc_1406F7A57
                call    sub_1403411DC
                cmp     ax, cx
                jnz     short loc_1406F7A57
                mov     edx, r9d

loc_1406F7A3D:                          ; CODE XREF: PsWow64IsMachineSupported+35↓j
                mov     ecx, edx
                call    sub_1406F7A6C
                test    rax, rax
                jz      short loc_1406F7A50
                cmp     [rax+2], r8w
                jz      short loc_1406F7A5F

loc_1406F7A50:                          ; CODE XREF: PsWow64IsMachineSupported+27↑j
                inc     edx
                cmp     edx, 6
                jl      short loc_1406F7A3D

loc_1406F7A57:                          ; CODE XREF: PsWow64IsMachineSupported+E↑j
                                        ; PsWow64IsMachineSupported+18↑j
                xor     eax, eax

loc_1406F7A59:                          ; CODE XREF: PsWow64IsMachineSupported+44↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F7A5F:                          ; CODE XREF: PsWow64IsMachineSupported+2E↑j
                mov     eax, 1
                jmp     short loc_1406F7A59
PsWow64IsMachineSupported endp
