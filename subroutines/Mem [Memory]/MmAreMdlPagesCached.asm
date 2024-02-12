MmAreMdlPagesCached proc near           ; CODE XREF: sub_1402EE384+69↑p
                                        ; DATA XREF: .pdata:00000001400D71CC↑o
                mov     edx, [rcx+2Ch]
                lea     r8, [rcx+30h]
                add     edx, [rcx+20h]
                mov     ecx, [rcx+28h]
                and     edx, 0FFFh
                add     rcx, 0FFFh
                add     rcx, rdx
                shr     rcx, 0Ch
                lea     r9, [r8+rcx*8]

loc_14033FBF5:                          ; CODE XREF: MmAreMdlPagesCached+78↓j
                mov     rdx, [r8]
                mov     rax, 0FFFFFFFFFh
                cmp     rdx, rax
                ja      short loc_14033FC51
                lea     rax, [rdx+rdx*2]
                add     rax, rax
                mov     rcx, 0FFFFFA8000000028h
                mov     rcx, [rcx+rax*8]
                shr     rcx, 32h
                and     ecx, 1
                jz      short loc_14033FC51
                lea     rcx, [rdx+rdx*2]
                add     rcx, rcx
                mov     rdx, 0FFFFFA8000000022h
                mov     cl, [rdx+rcx*8]
                and     cl, 0C0h
                cmp     cl, 40h ; '@'
                jnz     short loc_14033FC51
                add     r8, 8
                cmp     r8, r9
                jb      short loc_14033FBF5
                mov     eax, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033FC51:                          ; CODE XREF: MmAreMdlPagesCached+35↑j
                                        ; MmAreMdlPagesCached+53↑j ...
                xor     eax, eax
                retn
MmAreMdlPagesCached endp
