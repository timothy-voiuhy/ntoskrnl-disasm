KeSetKernelStackSwapEnable proc near    ; CODE XREF: NtSetInformationFile+556↑p
                                        ; NtSetInformationFile+CF4↑p ...
                mov     rax, gs:188h
                mov     edx, [rax+78h]
                shr     edx, 6
                and     dl, 1
                cmp     cl, dl
                jz      short loc_14033DB30
                test    cl, cl
                jnz     short loc_14033DB34
                lock btr dword ptr [rax+78h], 6

loc_14033DB30:                          ; CODE XREF: KeSetKernelStackSwapEnable+14↑j
                                        ; KeSetKernelStackSwapEnable+2A↓j
                mov     al, dl
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14033DB34:                          ; CODE XREF: KeSetKernelStackSwapEnable+18↑j
                lock bts dword ptr [rax+78h], 6
                jmp     short loc_14033DB30
KeSetKernelStackSwapEnable endp
