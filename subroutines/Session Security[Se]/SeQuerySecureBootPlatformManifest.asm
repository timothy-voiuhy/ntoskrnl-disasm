SeQuerySecureBootPlatformManifest proc near
                                        ; DATA XREF: .pdata:0000000140122B8C↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h

                sub     rsp, 38h
                mov     eax, edx
                mov     rdx, cs:qword_140C1D5A0
                test    rdx, rdx
                jnz     short loc_1409257C9
                mov     eax, 0C0EB0006h
                jmp     short loc_140925814
; ---------------------------------------------------------------------------

loc_1409257C9:                          ; CODE XREF: SeQuerySecureBootPlatformManifest+10↑j
                test    rcx, rcx
                jnz     short loc_1409257D5
                mov     eax, 0C0000225h
                jmp     short loc_140925814
; ---------------------------------------------------------------------------

loc_1409257D5:                          ; CODE XREF: SeQuerySecureBootPlatformManifest+1C↑j
                mov     r9d, 20h ; ' '
                cmp     eax, r9d
                jz      short loc_1409257E7
                mov     eax, 0C000000Dh
                jmp     short loc_140925814
; ---------------------------------------------------------------------------

loc_1409257E7:                          ; CODE XREF: SeQuerySecureBootPlatformManifest+2E↑j
                mov     r8d, [rdx+4]
                lea     rax, sub_140925CF0
                mov     rdx, [rdx+10h]
                and     [rsp+38h+var_10], 0
                mov     [rsp+38h+var_18], rax
                call    bsearch_s
                neg     rax
                mov     eax, 0C0000225h
                sbb     ecx, ecx
                not     ecx
                and     eax, ecx

loc_140925814:                          ; CODE XREF: SeQuerySecureBootPlatformManifest+17↑j
                                        ; SeQuerySecureBootPlatformManifest+23↑j ...
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeQuerySecureBootPlatformManifest endp
