ExNotifyBootDeviceRemoval proc near     ; DATA XREF: .pdata:00000001400F9DF8↑o
                sub     rsp, 28h
                cmp     dword ptr [rcx], 504E4442h
                jz      short loc_1405B33C0
                xor     al, al
                jmp     short loc_1405B33F4
; ---------------------------------------------------------------------------

loc_1405B33C0:                          ; CODE XREF: ExNotifyBootDeviceRemoval+A↑j
                mov     eax, 1
                lock xadd [rcx+4], eax
                inc     eax
                cmp     eax, 1
                jnz     short loc_1405B33F2
                mov     ecx, eax
                lock xadd cs:dword_140C19218, ecx
                inc     ecx
                cmp     ecx, eax
                jnz     short loc_1405B33F2
                xor     r8d, r8d
                lea     rcx, word_140C191E0
                xor     edx, edx
                call    KeSetEvent

loc_1405B33F2:                          ; CODE XREF: ExNotifyBootDeviceRemoval+1F↑j
                                        ; ExNotifyBootDeviceRemoval+2F↑j
                mov     al, 1

loc_1405B33F4:                          ; CODE XREF: ExNotifyBootDeviceRemoval+E↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExNotifyBootDeviceRemoval endp
