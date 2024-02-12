MmPrefetchVirtualAddresses proc near    ; CODE XREF: sub_14093100C+AE↓p
                                        ; DATA XREF: .rdata:0000000140071334↑o ...

; FUNCTION CHUNK AT 0000000140818AAA SIZE 0000003E BYTES

                sub     rsp, 28h
                cmp     dword ptr [rcx], 1
                mov     r10, rcx
                jnz     short loc_1406A9769
                mov     edx, [rcx+4]
                cmp     edx, 8
                jnb     short loc_1406A9769
                mov     eax, edx
                mov     r8b, 6
                and     al, r8b
                cmp     al, 4
                ja      short loc_1406A9769
                test    r8b, dl
                jnz     loc_140818AAA
                mov     eax, 5

loc_1406A970E:                          ; CODE XREF: MmPrefetchVirtualAddresses+16F3D6↓j
                                        ; MmPrefetchVirtualAddresses+16F3ED↓j
                mov     ecx, eax
                or      ecx, 40h
                cmp     eax, 5
                cmovnb  ecx, eax
                mov     r8d, ecx
                and     r8d, 7
                shl     r8d, 3
                or      r8d, ecx
                mov     eax, r8d
                and     eax, 7
                cmp     al, 5
                jb      loc_140818AD2

loc_1406A9735:                          ; CODE XREF: MmPrefetchVirtualAddresses+16F3F5↓j
                                        ; MmPrefetchVirtualAddresses+16F403↓j
                mov     rcx, gs:188h
                call    sub_1402C4F40
                mov     rdx, [r10+10h]
                mov     r9d, r8d
                mov     rcx, [r10+8]
                bts     r9d, 0Ah
                cmp     eax, 1
                cmovg   r9d, r8d
                mov     r8, [r10+18h]
                call    sub_1406A9778

loc_1406A9763:                          ; CODE XREF: MmPrefetchVirtualAddresses+8E↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406A9769:                          ; CODE XREF: MmPrefetchVirtualAddresses+A↑j
                                        ; MmPrefetchVirtualAddresses+12↑j ...
                mov     eax, 0C00000EFh
                jmp     short loc_1406A9763
MmPrefetchVirtualAddresses endp
