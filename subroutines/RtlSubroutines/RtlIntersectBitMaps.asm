RtlIntersectBitMaps proc near           ; DATA XREF: .pdata:00000001400F7C68↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdi
                mov     r9d, [rcx]
                mov     rbx, rdx
                mov     eax, [rdx]
                mov     rdi, rcx
                cmp     r9d, eax
                cmovnb  r9d, eax
                xor     r11d, r11d
                jmp     short loc_14058804C
; ---------------------------------------------------------------------------

loc_140588011:                          ; CODE XREF: RtlIntersectBitMaps+5F↓j
                mov     rax, [rbx+8]
                cmp     r9d, 20h ; ' '
                jb      short loc_140588030
                mov     ecx, [rax+r11*4]
                add     r9d, 0FFFFFFE0h
                mov     rdx, [rdi+8]
                and     [rdx+r11*4], ecx
                inc     r11d
                jmp     short loc_14058804C
; ---------------------------------------------------------------------------

loc_140588030:                          ; CODE XREF: RtlIntersectBitMaps+29↑j
                mov     r8, [rdi+8]
                mov     ecx, r9d
                mov     edx, 1
                shl     rdx, cl
                neg     edx
                or      edx, [rax+r11*4]
                and     [r8+r11*4], edx
                xor     r9d, r9d

loc_14058804C:                          ; CODE XREF: RtlIntersectBitMaps+1F↑j
                                        ; RtlIntersectBitMaps+3E↑j
                test    r9d, r9d
                jnz     short loc_140588011
                mov     rbx, [rsp+arg_0]
                mov     rdi, [rsp+arg_8]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlIntersectBitMaps endp
