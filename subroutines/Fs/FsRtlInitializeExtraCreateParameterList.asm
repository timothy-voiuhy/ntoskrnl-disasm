FsRtlInitializeExtraCreateParameterList proc near
                                        ; DATA XREF: .pdata:00000001401071B4↑o
                test    rcx, rcx
                jz      short loc_14071FA6E
                and     dword ptr [rcx+4], 0
                lea     rax, [rcx+8]
                mov     [rax+8], rax
                mov     [rax], rax
                xor     eax, eax
                mov     dword ptr [rcx], 4C706345h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14071FA6E:                          ; CODE XREF: FsRtlInitializeExtraCreateParameterList+3↑j
                mov     eax, 0C000000Dh
                retn
FsRtlInitializeExtraCreateParameterList endp
