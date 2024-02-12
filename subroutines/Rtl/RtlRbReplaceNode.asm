RtlRbReplaceNode proc near              ; CODE XREF: sub_14031EC80+298↑p
                                        ; DATA XREF: .pdata:00000001400D5444↑o

; FUNCTION CHUNK AT 00000001404719B4 SIZE 00000039 BYTES

                movups  xmm0, xmmword ptr [rdx]
                mov     r9, rdx
                movups  xmmword ptr [r8], xmm0
                movsd   xmm1, qword ptr [rdx+10h]
                movsd   qword ptr [r8+10h], xmm1
                mov     rdx, [r8]
                test    rdx, rdx
                jnz     short loc_14031F10B
                mov     rdx, [rcx+8]
                test    dl, 1
                jnz     loc_1404719B4
                mov     rax, rdx

loc_14031F0CD:                          ; CODE XREF: RtlRbReplaceNode+15291C↓j
                                        ; RtlRbReplaceNode+15292B↓j
                cmp     rax, r9
                jnz     short loc_14031F0DF
                test    dl, 1
                jnz     loc_1404719D0
                mov     [rcx+8], r8

loc_14031F0DF:                          ; CODE XREF: RtlRbReplaceNode+30↑j
                                        ; RtlRbReplaceNode+78↓j ...
                mov     rdx, [r8+8]
                test    rdx, rdx
                jnz     short loc_14031F11A

loc_14031F0E8:                          ; CODE XREF: RtlRbReplaceNode+87↓j
                mov     rax, [r8+10h]
                and     rax, 0FFFFFFFFFFFFFFFCh
                jnz     short loc_14031F101
                test    byte ptr [rcx+8], 1
                jnz     loc_1404719E3
                mov     [rcx], r8
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14031F101:                          ; CODE XREF: RtlRbReplaceNode+50↑j
                cmp     [rax], r9
                jnz     short loc_14031F129
                mov     [rax], r8
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14031F10B:                          ; CODE XREF: RtlRbReplaceNode+1B↑j
                mov     eax, [rdx+10h]
                and     eax, 3
                or      rax, r8
                mov     [rdx+10h], rax
                jmp     short loc_14031F0DF
; ---------------------------------------------------------------------------

loc_14031F11A:                          ; CODE XREF: RtlRbReplaceNode+46↑j
                mov     eax, [rdx+10h]
                and     eax, 3
                or      rax, r8
                mov     [rdx+10h], rax
                jmp     short loc_14031F0E8
; ---------------------------------------------------------------------------

loc_14031F129:                          ; CODE XREF: RtlRbReplaceNode+64↑j
                mov     [rax+8], r8
                retn
RtlRbReplaceNode endp
