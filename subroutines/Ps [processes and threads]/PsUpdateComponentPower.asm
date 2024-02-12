PsUpdateComponentPower proc near        ; CODE XREF: sub_140685544+80↓p
                                        ; sub_1407210D0+C↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140451794 SIZE 00000028 BYTES

                sub     rsp, 28h
                test    rcx, rcx
                jz      short loc_1402B9BE2
                cmp     rcx, cs:qword_140CFC4B0
                jz      short loc_1402B9BE2

loc_1402B9B92:                          ; CODE XREF: PsUpdateComponentPower+69↓j
                mov     rax, [rcx+8E8h]
                test    rax, rax
                jz      short loc_1402B9BDC
                cmp     edx, 1
                jnz     short loc_1402B9BEB
                test    r8, r8
                jz      short loc_1402B9BDC
                mov     ecx, 118h
                mov     edx, 40h ; '@'

loc_1402B9BB2:                          ; CODE XREF: PsUpdateComponentPower+8F↓j
                                        ; PsUpdateComponentPower+197C37↓j
                lea     r9, [rcx+rax]
                lock xadd [rdx+rax], r8
                test    r9, r9
                jz      short loc_1402B9BDC
                mov     rax, [r9]
                mov     r10d, cs:dword_140C2AF04
                cmp     r10d, eax
                jnz     short loc_1402B9C28
                mov     rcx, rax
                shr     rcx, 20h
                test    cl, 1
                jz      short loc_1402B9C25

loc_1402B9BDC:                          ; CODE XREF: PsUpdateComponentPower+1C↑j
                                        ; PsUpdateComponentPower+26↑j ...
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402B9BE2:                          ; CODE XREF: PsUpdateComponentPower+7↑j
                                        ; PsUpdateComponentPower+10↑j
                mov     rcx, cs:PsInitialSystemProcess
                jmp     short loc_1402B9B92
; ---------------------------------------------------------------------------

loc_1402B9BEB:                          ; CODE XREF: PsUpdateComponentPower+21↑j
                cmp     edx, 2
                jnz     short loc_1402B9C11
                test    r8, r8
                jz      short loc_1402B9BDC
                mov     rcx, r8
                shr     rcx, 20h
                lock xadd [rax+48h], rcx
                mov     r8d, r8d
                mov     ecx, 120h
                mov     edx, 58h ; 'X'
                jmp     short loc_1402B9BB2
; ---------------------------------------------------------------------------

loc_1402B9C11:                          ; CODE XREF: PsUpdateComponentPower+6E↑j
                cmp     edx, 3
                jz      loc_140451794
                call    sub_140685664
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B9C25:                          ; CODE XREF: PsUpdateComponentPower+5A↑j
                                        ; PsUpdateComponentPower+DA↓j
                cmp     r10d, eax

loc_1402B9C28:                          ; CODE XREF: PsUpdateComponentPower+4E↑j
                jbe     short loc_1402B9C66
                mov     ecx, r10d
                sub     ecx, eax
                cmp     ecx, 20h ; ' '
                jnb     short loc_1402B9C5C
                mov     rdx, rax
                shr     rdx, 20h
                shl     edx, cl
                or      edx, 1
                mov     dword ptr [rsp+28h+arg_0+4], edx

loc_1402B9C44:                          ; CODE XREF: PsUpdateComponentPower+E4↓j
                mov     dword ptr [rsp+28h+arg_0], r10d

loc_1402B9C49:                          ; CODE XREF: PsUpdateComponentPower+116↓j
                mov     rcx, [rsp+28h+arg_0]
                lock cmpxchg [r9], rcx
                mov     [rsp+28h+arg_0], rax
                jz      short loc_1402B9BDC
                jmp     short loc_1402B9C25
; ---------------------------------------------------------------------------

loc_1402B9C5C:                          ; CODE XREF: PsUpdateComponentPower+B2↑j
                mov     dword ptr [rsp+28h+arg_0+4], 1
                jmp     short loc_1402B9C44
; ---------------------------------------------------------------------------

loc_1402B9C66:                          ; CODE XREF: PsUpdateComponentPower:loc_1402B9C28↑j
                mov     ecx, eax
                sub     ecx, r10d
                cmp     ecx, 20h ; ' '
                jnb     loc_1402B9BDC
                mov     r8, rax
                mov     edx, 1
                shr     r8, 20h
                shl     edx, cl
                or      edx, r8d
                mov     dword ptr [rsp+28h+arg_0+4], edx
                cmp     edx, r8d
                jz      loc_1402B9BDC
                mov     dword ptr [rsp+28h+arg_0], eax
                jmp     short loc_1402B9C49
PsUpdateComponentPower endp
