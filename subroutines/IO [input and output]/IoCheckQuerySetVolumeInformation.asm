IoCheckQuerySetVolumeInformation proc near
                                        ; DATA XREF: .pdata:000000014010B468↑o
                cmp     ecx, 0Fh
                jnb     short loc_140779ED1
                test    r8b, r8b
                lea     rax, qword_140985070
                lea     r9, qword_140985080
                cmovz   r9, rax
                movsxd  rax, ecx
                movsx   ecx, byte ptr [r9+rax]
                test    cl, cl
                jz      short loc_140779ED1
                cmp     edx, ecx
                sbb     eax, eax
                and     eax, 0C0000004h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140779ED1:                          ; CODE XREF: IoCheckQuerySetVolumeInformation+3↑j
                                        ; IoCheckQuerySetVolumeInformation+24↑j
                mov     eax, 0C0000003h
                retn
IoCheckQuerySetVolumeInformation endp
