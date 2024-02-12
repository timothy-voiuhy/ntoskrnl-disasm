KseUnregisterShim proc near             ; DATA XREF: .pdata:000000014011E194↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r12
                push    r14
                sub     rsp, 20h
                and     qword ptr [rax+8], 0
                mov     rdi, rcx
                test    rcx, rcx
                jnz     short loc_1408C152F
                mov     eax, 0C000000Dh
                jmp     loc_1408C1763
; ---------------------------------------------------------------------------

loc_1408C152F:                          ; CODE XREF: KseUnregisterShim+23↑j
                mov     eax, cs:dword_140C50464
                mov     r12d, 2
                cmp     eax, r12d
                jz      short loc_1408C154A
                mov     eax, 0C0000001h
                jmp     loc_1408C1763
; ---------------------------------------------------------------------------

loc_1408C154A:                          ; CODE XREF: KseUnregisterShim+3E↑j
                mov     rax, gs:188h
                xor     r14d, r14d
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E4h], bx
                xor     edx, edx
                lea     rcx, qword_140C50490
                call    ExAcquirePushLockExclusiveEx
                mov     rdx, [rdi+8]
                lea     r9, [rsp+38h+arg_0]
                lea     rcx, dword_140C50460
                call    sub_1407BD140
                test    eax, eax
                jz      loc_1408C16AA
                mov     rax, [rsp+38h+arg_0]
                cmp     [rax+18h], r14d
                jz      loc_1408C161C
                lea     edx, [rbx+2]
                mov     ebp, 0C0000022h
                mov     eax, edx
                lock xadd cs:dword_140C2A900, eax
                mov     rsi, [rsp+38h+arg_0]
                lea     rcx, cs:140000000h
                add     eax, edx
                and     eax, 3Fh
                mov     rva dword_140C2A924[rcx+rax*8], 0C0000022h
                mov     rva dword_140C2A920[rcx+rax*8], 2017Dh
                mov     eax, cs:dword_140CF9EC4
                test    r12b, al
                jz      short loc_1408C15F8
                mov     rax, [rdi+8]
                lea     rdx, aKseEndingShim0 ; "KSE: Ending shim [0x%08X] unregistratio"...
                mov     r9, rsi
                lea     ecx, [rbx+4]
                mov     r8d, [rax]
                call    sub_1405270D8

loc_1408C15F8:                          ; CODE XREF: KseUnregisterShim+DD↑j
                mov     rax, [rdi+8]
                lea     rdx, aKseEndingShim0 ; "KSE: Ending shim [0x%08X] unregistratio"...
                mov     r9, rsi
                mov     ecx, 3
                mov     r8d, [rax]
                call    sub_140371D14
                or      dword ptr [rsi+1Ch], 4
                jmp     loc_1408C171B
; ---------------------------------------------------------------------------

loc_1408C161C:                          ; CODE XREF: KseUnregisterShim+95↑j
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     short loc_1408C16A3
                mov     rdx, [rax+8]
                cmp     [rdx], rax
                jnz     short loc_1408C16A3
                mov     [rdx], rcx
                mov     [rcx+8], rdx
                mov     edx, 1
                mov     r14d, edx
                mov     eax, edx
                lock xadd cs:dword_140C2AB20, eax
                add     eax, edx
                lea     rcx, cs:140000000h
                and     eax, 3Fh
                and     dword ptr (rva qword_140C2AB40+4)[rcx+rax*8], 0
                mov     dword ptr rva qword_140C2AB40[rcx+rax*8], 2018Eh
                mov     eax, cs:dword_140CF9EC4
                test    dl, al
                jz      short loc_1408C1687
                mov     rax, [rdi+8]
                lea     rdx, aKseSucceededSh_0 ; "KSE: Succeeded shim [0x%08X] unregistra"...
                lea     ecx, [r14+2]
                mov     r8d, [rax]
                call    sub_1405270D8

loc_1408C1687:                          ; CODE XREF: KseUnregisterShim+16E↑j
                mov     rax, [rdi+8]
                lea     rdx, aKseSucceededSh_0 ; "KSE: Succeeded shim [0x%08X] unregistra"...
                mov     ecx, 3
                mov     r8d, [rax]
                call    sub_140371548
                xor     ebp, ebp
                jmp     short loc_1408C171B
; ---------------------------------------------------------------------------

loc_1408C16A3:                          ; CODE XREF: KseUnregisterShim+123↑j
                                        ; KseUnregisterShim+12C↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1408C16AA:                          ; CODE XREF: KseUnregisterShim+86↑j
                mov     edx, 1
                mov     ebp, 0C0000034h
                mov     eax, edx
                lock xadd cs:dword_140C2A900, eax
                add     eax, edx
                lea     rcx, cs:140000000h
                and     eax, 3Fh
                mov     rva dword_140C2A924[rcx+rax*8], 0C0000034h
                mov     rva dword_140C2A920[rcx+rax*8], 2019Ah
                mov     eax, cs:dword_140CF9EC4
                test    r12b, al
                jz      short loc_1408C1703
                mov     rax, [rdi+8]
                lea     rdx, aKseFailedShim0 ; "KSE: Failed shim [0x%08X] unregistratio"...
                mov     ecx, 3
                mov     r8d, [rax]
                call    sub_1405270D8

loc_1408C1703:                          ; CODE XREF: KseUnregisterShim+1E9↑j
                mov     rax, [rdi+8]
                lea     rdx, aKseFailedShim0 ; "KSE: Failed shim [0x%08X] unregistratio"...
                mov     ecx, 3
                mov     r8d, [rax]
                call    sub_140371D14

loc_1408C171B:                          ; CODE XREF: KseUnregisterShim+117↑j
                                        ; KseUnregisterShim+1A1↑j
                lock xadd cs:qword_140C50490, rbx
                and     bl, 6
                cmp     bl, r12b
                jnz     short loc_1408C1738
                lea     rcx, qword_140C50490
                call    ExfTryToWakePushLock

loc_1408C1738:                          ; CODE XREF: KseUnregisterShim+22A↑j
                lea     rcx, qword_140C50490
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                test    r14d, r14d
                jz      short loc_1408C1761
                mov     rcx, [rsp+38h+arg_0]
                call    sub_1403714C4

loc_1408C1761:                          ; CODE XREF: KseUnregisterShim+255↑j
                mov     eax, ebp

loc_1408C1763:                          ; CODE XREF: KseUnregisterShim+2A↑j
                                        ; KseUnregisterShim+45↑j
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r14
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KseUnregisterShim endp
