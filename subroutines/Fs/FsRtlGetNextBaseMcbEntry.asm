FsRtlGetNextBaseMcbEntry proc near      ; CODE XREF: FsRtlGetNextLargeMcbEntry+3E↓p
                                        ; DATA XREF: .pdata:00000001400D656C↑o

arg_20          = qword ptr  28h

                mov     r10, rcx
                cmp     edx, [rcx+4]
                jnb     short loc_140330427
                xor     r11d, r11d
                test    edx, edx
                jz      short loc_140330422
                mov     rax, [r10+10h]
                lea     ecx, [rdx-1]
                mov     eax, [rax+rcx*8]

loc_1403303C9:                          ; CODE XREF: FsRtlGetNextBaseMcbEntry+75↓j
                mov     [r8], eax
                cmp     eax, 0FFFFFFFFh
                jz      short loc_14033042B
                mov     eax, r11d

loc_1403303D4:                          ; CODE XREF: FsRtlGetNextBaseMcbEntry+80↓j
                mov     [r8+4], eax
                mov     eax, edx
                lea     r8, ds:0[rax*8]
                mov     rax, [r10+10h]
                mov     ecx, [rax+r8+4]
                cmp     ecx, 0FFFFFFFFh
                mov     eax, r11d
                mov     [r9], ecx
                setnz   al
                dec     eax
                mov     [r9+4], eax
                test    edx, edx
                jz      short loc_14033040B
                mov     rax, [r10+10h]
                dec     edx
                mov     r11d, [rax+rdx*8]

loc_14033040B:                          ; CODE XREF: FsRtlGetNextBaseMcbEntry+4F↑j
                mov     rax, [r10+10h]
                mov     edx, [rax+r8]
                mov     rax, [rsp+arg_20]
                sub     edx, r11d
                mov     [rax], rdx
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140330422:                          ; CODE XREF: FsRtlGetNextBaseMcbEntry+D↑j
                mov     eax, r11d
                jmp     short loc_1403303C9
; ---------------------------------------------------------------------------

loc_140330427:                          ; CODE XREF: FsRtlGetNextBaseMcbEntry+6↑j
                xor     al, al
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033042B:                          ; CODE XREF: FsRtlGetNextBaseMcbEntry+1F↑j
                mov     eax, 0FFFFFFFFh
                jmp     short loc_1403303D4
FsRtlGetNextBaseMcbEntry endp
