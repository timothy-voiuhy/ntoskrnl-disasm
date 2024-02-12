AlpcGetHeaderSize proc near             ; CODE XREF: AlpcGetMessageAttribute+1E↑p
                                        ; AlpcInitializeMessageAttribute+1F↑p ...
                mov     r8d, ecx
                mov     eax, ecx
                sar     eax, 1Fh
                and     eax, 18h
                add     eax, 8
                bt      ecx, 1Eh
                lea     edx, [rax+20h]
                cmovnb  edx, eax
                bt      ecx, 1Dh
                lea     eax, [rdx+20h]
                cmovnb  eax, edx
                bt      ecx, 1Ch
                lea     ecx, [rax+18h]
                cmovnb  ecx, eax
                bt      r8d, 1Bh
                lea     eax, [rcx+18h]
                cmovnb  eax, ecx
                bt      r8d, 1Ah
                lea     ecx, [rax+8]
                cmovnb  ecx, eax
                bt      r8d, 19h
                lea     eax, [rcx+8]
                cmovnb  eax, ecx
                retn
AlpcGetHeaderSize endp
