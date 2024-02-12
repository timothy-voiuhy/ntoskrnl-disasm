RtlExpandHashTable proc near            ; DATA XREF: .rdata:00000001400452C8↑o
                                        ; .pdata:00000001400C9258↑o

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014041F0E8 SIZE 0000002B BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     edx, [rcx+8]
                mov     rbx, rcx
                cmp     edx, 7FFF80h
                jz      loc_140202462
                cmp     dword ptr [rcx+1Ch], 0
                ja      loc_140202462
                lea     eax, [rdx+80h]
                mov     esi, 1
                bsr     ecx, eax
                shl     esi, cl
                xor     esi, eax
                lea     r14d, [rcx-7]
                cmp     edx, 80h
                jz      loc_140202426

loc_140202300:                          ; CODE XREF: RtlExpandHashTable+1AD↓j
                mov     rdi, [rbx+20h]
                mov     r10, [rdi+r14*8]
                test    r10, r10
                jz      loc_1402023FA

loc_140202311:                          ; CODE XREF: RtlExpandHashTable+162↓j
                mov     edx, [rbx+0Ch]
                mov     rcx, rbx
                inc     dword ptr [rbx+8]
                call    sub_14020350C
                inc     dword ptr [rbx+0Ch]
                mov     r9, rax
                mov     edx, esi
                shl     rdx, 4
                add     rdx, r10
                mov     [rdx+8], rdx
                mov     [rdx], rdx
                mov     r8, [rax]
                cmp     r8, rax
                jz      loc_1402023CF
                mov     r10, rax

loc_140202344:                          ; CODE XREF: RtlExpandHashTable+110↓j
                mov     ecx, [rbx+4]
                mov     eax, [r8+10h]
                shr     eax, cl
                imul    ecx, eax, 41C64E6Dh
                imul    eax, 10DCDh
                add     ecx, 3039h
                inc     eax
                shr     ecx, 10h
                and     eax, 0FFFF0000h
                or      ecx, eax
                mov     eax, [rbx+10h]
                add     eax, eax
                or      eax, 1
                and     ecx, eax
                mov     eax, [rbx+8]
                dec     eax
                cmp     ecx, eax
                jnz     short loc_1402023F0
                mov     rax, [r8]
                cmp     [rax+8], r8
                jnz     loc_14041F10C
                mov     rcx, [r8+8]
                cmp     [rcx], r8
                jnz     loc_14041F10C
                mov     [rcx], rax
                mov     [rax+8], rcx
                mov     rax, [rdx+8]
                cmp     [rax], rdx
                jnz     loc_14041F10C
                mov     [r8], rdx
                mov     [r8+8], rax
                mov     [rax], r8
                mov     [rdx+8], r8

loc_1402023BA:                          ; CODE XREF: RtlExpandHashTable+143↓j
                mov     r8, [r10]
                cmp     r8, r9
                jnz     short loc_140202344
                cmp     [rdx], rdx
                jz      short loc_1402023CA
                inc     dword ptr [rbx+18h]

loc_1402023CA:                          ; CODE XREF: RtlExpandHashTable+115↑j
                cmp     [r9], r9
                jz      short loc_1402023F5

loc_1402023CF:                          ; CODE XREF: RtlExpandHashTable+8B↑j
                                        ; RtlExpandHashTable+148↓j
                mov     edx, [rbx+10h]
                lea     ecx, [rdx+1]
                cmp     [rbx+0Ch], ecx
                jz      short loc_140202417

loc_1402023DA:                          ; CODE XREF: RtlExpandHashTable+174↓j
                mov     al, 1

loc_1402023DC:                          ; CODE XREF: RtlExpandHashTable+1B4↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1402023F0:                          ; CODE XREF: RtlExpandHashTable+CC↑j
                mov     r10, r8
                jmp     short loc_1402023BA
; ---------------------------------------------------------------------------

loc_1402023F5:                          ; CODE XREF: RtlExpandHashTable+11D↑j
                dec     dword ptr [rbx+18h]
                jmp     short loc_1402023CF
; ---------------------------------------------------------------------------

loc_1402023FA:                          ; CODE XREF: RtlExpandHashTable+5B↑j
                mov     ecx, r14d
                call    sub_1403633BC
                mov     r10, rax
                test    rax, rax
                jz      loc_14041F0E8
                mov     [rdi+r14*8], rax
                jmp     loc_140202311
; ---------------------------------------------------------------------------

loc_140202417:                          ; CODE XREF: RtlExpandHashTable+128↑j
                lea     ecx, [rdx+rdx]
                or      ecx, 1
                and     dword ptr [rbx+0Ch], 0
                mov     [rbx+10h], ecx
                jmp     short loc_1402023DA
; ---------------------------------------------------------------------------

loc_140202426:                          ; CODE XREF: RtlExpandHashTable+4A↑j
                mov     rbp, [rbx+20h]
                mov     edx, 80h
                mov     ecx, 200h
                mov     r8d, 62615448h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      short loc_140202462
                xor     edx, edx
                lea     rcx, [rax+8]
                lea     r8d, [rdx+78h]
                call    memset
                mov     [rdi], rbp
                mov     [rbx+20h], rdi
                jmp     loc_140202300
; ---------------------------------------------------------------------------

loc_140202462:                          ; CODE XREF: RtlExpandHashTable+1E↑j
                                        ; RtlExpandHashTable+28↑j ...
                xor     al, al
                jmp     loc_1402023DC
RtlExpandHashTable endp
