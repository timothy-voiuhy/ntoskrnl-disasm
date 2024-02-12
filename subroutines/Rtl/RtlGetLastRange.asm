RtlGetLastRange proc near               ; CODE XREF: RtlFindRange+AE↑p
                                        ; DATA XREF: .pdata:0000000140109D7C↑o
                mov     [rdx], rcx
                xor     r9d, r9d
                mov     eax, [rcx+18h]
                mov     r10d, r9d
                mov     [rdx+18h], eax
                cmp     [rcx], rcx
                jz      short loc_14075F220
                mov     rcx, [rcx+8]
                test    byte ptr [rcx-6], 1
                jnz     short loc_14075F212
                mov     [rdx+8], r9

loc_14075F202:                          ; CODE XREF: RtlGetLastRange+3E↓j
                lea     r9, [rcx-28h]

loc_14075F206:                          ; CODE XREF: RtlGetLastRange+4A↓j
                mov     [rdx+10h], r9
                mov     eax, r10d
                mov     [r8], r9
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14075F212:                          ; CODE XREF: RtlGetLastRange+1C↑j
                lea     rax, [rcx-18h]
                mov     [rdx+8], rax
                mov     rcx, [rcx-10h]
                jmp     short loc_14075F202
; ---------------------------------------------------------------------------

loc_14075F220:                          ; CODE XREF: RtlGetLastRange+12↑j
                mov     [rdx+8], r9
                mov     r10d, 8000001Ah
                jmp     short loc_14075F206
RtlGetLastRange endp
