FsRtlLookupLastBaseMcbEntry proc near   ; CODE XREF: FsRtlLookupLastLargeMcbEntry+30↓p
                                        ; DATA XREF: .rdata:000000014007E840↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                push    rsi
                mov     r10d, [rcx+4]
                mov     r9, rcx
                test    r10d, r10d
                jz      short loc_14033A930

loc_14033A8CE:                          ; DATA XREF: .rdata:000000014007E840↑o
                                        ; .rdata:000000014007E854↑o ...
                mov     [rsp+8+arg_0], rbx
                lea     r11d, [r10-1]
                mov     [rsp+8+arg_8], rdi
                mov     rdi, [rcx+10h]
                mov     ecx, 0FFFFFFFFh
                mov     eax, [rdi+r11*8+4]
                lea     rbx, [rdi+r11*8]
                cmp     eax, ecx
                jz      short loc_14033A901
                test    r11d, r11d
                jnz     short loc_14033A927
                xor     ecx, ecx

loc_14033A8F9:                          ; CODE XREF: FsRtlLookupLastBaseMcbEntry+6E↓j
                sub     eax, ecx
                mov     ecx, [rbx]
                dec     ecx
                add     ecx, eax

loc_14033A901:                          ; CODE XREF: FsRtlLookupLastBaseMcbEntry+30↑j
                mov     rdi, [rsp+8+arg_8]
                mov     rbx, [rsp+8+arg_0]
                mov     eax, ecx
                mov     [r8], rax
                mov     ecx, [r9+4]
                mov     rax, [r9+10h]
                dec     ecx
                mov     eax, [rax+rcx*8]
                dec     eax
                mov     [rdx], rax
                mov     al, 1

loc_14033A924:                          ; CODE XREF: FsRtlLookupLastBaseMcbEntry+72↓j
                                        ; DATA XREF: .pdata:00000001400D6CA4↑o ...
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14033A927:                          ; CODE XREF: FsRtlLookupLastBaseMcbEntry+35↑j
                                        ; DATA XREF: .pdata:00000001400D6CB0↑o ...
                lea     ecx, [r10-2]
                mov     ecx, [rdi+rcx*8]
                jmp     short loc_14033A8F9
; ---------------------------------------------------------------------------

loc_14033A930:                          ; CODE XREF: FsRtlLookupLastBaseMcbEntry+C↑j
                                        ; DATA XREF: .pdata:00000001400D6CBC↑o ...
                xor     al, al
                jmp     short loc_14033A924
FsRtlLookupLastBaseMcbEntry endp
