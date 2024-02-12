IoGetRelatedDeviceObject proc near      ; CODE XREF: NtSetInformationFile+275↑p
                                        ; sub_1402A2250+69↓p ...
                mov     rax, [rcx+10h]
                test    rax, rax
                jz      short loc_140235C35
                mov     rax, [rax+8]
                test    rax, rax
                jz      short loc_140235C35

loc_140235C12:                          ; CODE XREF: IoGetRelatedDeviceObject+4F↓j
                                        ; IoGetRelatedDeviceObject+87↓j
                mov     rdx, [rax+18h]
                test    rdx, rdx
                jz      short locret_140235C33
                mov     r8, [rcx+0D0h]
                test    r8, r8
                jnz     short loc_140235C51

loc_140235C27:                          ; CODE XREF: IoGetRelatedDeviceObject+31↓j
                                        ; IoGetRelatedDeviceObject+58↓j ...
                mov     rax, rdx
                mov     rdx, [rdx+18h]
                test    rdx, rdx
                jnz     short loc_140235C27

locret_140235C33:                       ; CODE XREF: IoGetRelatedDeviceObject+19↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140235C35:                          ; CODE XREF: IoGetRelatedDeviceObject+7↑j
                                        ; IoGetRelatedDeviceObject+10↑j
                test    dword ptr [rcx+50h], 800h
                jnz     short loc_140235C4B
                mov     rax, [rcx+8]
                mov     rax, [rax+38h]
                test    rax, rax
                jnz     short loc_140235C80

loc_140235C4B:                          ; CODE XREF: IoGetRelatedDeviceObject+3C↑j
                                        ; IoGetRelatedDeviceObject+89↓j
                mov     rax, [rcx+8]
                jmp     short loc_140235C12
; ---------------------------------------------------------------------------

loc_140235C51:                          ; CODE XREF: IoGetRelatedDeviceObject+25↑j
                cmp     r8, cs:off_140C04810
                jz      short loc_140235C27
                mov     rcx, [r8+10h]
                test    rcx, rcx
                jz      short loc_140235C27
                mov     r8, [rcx]
                test    r8, r8
                jz      short loc_140235C27

loc_140235C6B:                          ; CODE XREF: IoGetRelatedDeviceObject+7C↓j
                cmp     rax, r8
                jnz     short loc_140235C75
                mov     rax, r8
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140235C75:                          ; CODE XREF: IoGetRelatedDeviceObject+6E↑j
                mov     rax, [rax+18h]
                test    rax, rax
                jnz     short loc_140235C6B
                jmp     short loc_140235C27
; ---------------------------------------------------------------------------

loc_140235C80:                          ; CODE XREF: IoGetRelatedDeviceObject+49↑j
                mov     rax, [rax+8]
                test    rax, rax
                jnz     short loc_140235C12
                jmp     short loc_140235C4B
IoGetRelatedDeviceObject endp
