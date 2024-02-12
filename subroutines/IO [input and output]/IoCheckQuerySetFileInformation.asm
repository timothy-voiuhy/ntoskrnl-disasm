IoCheckQuerySetFileInformation proc near
                                        ; DATA XREF: .pdata:000000014010A22C↑o
                cmp     ecx, 4Ch ; 'L'
                jnb     short loc_140765E51
                test    r8b, r8b
                lea     rax, qword_140986310
                lea     r9, qword_140986360
                cmovz   r9, rax
                movsxd  rax, ecx
                movsx   ecx, byte ptr [r9+rax]
                test    cl, cl
                jz      short loc_140765E51
                cmp     edx, ecx
                sbb     eax, eax
                and     eax, 0C0000004h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140765E51:                          ; CODE XREF: IoCheckQuerySetFileInformation+3↑j
                                        ; IoCheckQuerySetFileInformation+24↑j
                mov     eax, 0C0000003h
                retn
IoCheckQuerySetFileInformation endp
