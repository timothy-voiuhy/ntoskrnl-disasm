HeadlessDispatch proc near              ; CODE XREF: sub_1404FF894+52↓p
                                        ; sub_1404FFD40+50↓p ...

var_18          = qword ptr -18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404902D6 SIZE 00000020 BYTES

                sub     rsp, 38h
                mov     rax, cs:qword_140CF4D30
                test    rax, rax
                jnz     loc_1404902D6

loc_1403AAB74:                          ; CODE XREF: HeadlessDispatch+E577B↓j
                cmp     ecx, 15h
                jnz     short loc_1403AAB84

loc_1403AAB79:                          ; CODE XREF: HeadlessDispatch+27↓j
                mov     eax, 0C0000001h

loc_1403AAB7E:                          ; CODE XREF: HeadlessDispatch+56↓j
                                        ; HeadlessDispatch+5D↓j ...
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403AAB84:                          ; CODE XREF: HeadlessDispatch+17↑j
                cmp     ecx, 1
                jz      short loc_1403AAB79
                cmp     ecx, 10h
                ja      short loc_1403AABB4
                mov     eax, 13804h
                bt      eax, ecx
                jnb     short loc_1403AABB4
                test    r9, r9
                jz      short loc_1403AABB8
                mov     r8, [rsp+38h+arg_20]
                test    r8, r8
                jz      short loc_1403AABB8
                mov     r8, [r8]
                xor     edx, edx
                mov     rcx, r9
                call    memset

loc_1403AABB4:                          ; CODE XREF: HeadlessDispatch+2C↑j
                                        ; HeadlessDispatch+36↑j
                xor     eax, eax
                jmp     short loc_1403AAB7E
; ---------------------------------------------------------------------------

loc_1403AABB8:                          ; CODE XREF: HeadlessDispatch+3B↑j
                                        ; HeadlessDispatch+45↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1403AAB7E
HeadlessDispatch endp
