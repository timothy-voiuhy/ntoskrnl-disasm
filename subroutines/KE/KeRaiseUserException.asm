KeRaiseUserException proc near          ; CODE XREF: sub_1402011C8+21D619↑p
                                        ; sub_140649AF0+1E8↓p ...

arg_0           = dword ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_0], ecx
                push    rdi
                sub     rsp, 20h
                mov     edi, ecx
                mov     rdx, gs:188h
                mov     rbx, cr8
                mov     [rsp+28h+arg_8], bl
                mov     r10d, 1
                cmp     bl, r10b
                jnb     short loc_1405160B8
                mov     rbx, cr8
                mov     cr8, r10
                mov     [rsp+28h+arg_8], bl

loc_1405160B8:                          ; CODE XREF: KeRaiseUserException+2A↑j
                mov     rcx, [rdx+90h]
                test    rcx, rcx
                jz      short loc_14051610F
                test    [rcx+170h], r10b
                jz      short loc_14051610F
                mov     rax, [rdx+0F0h]

loc_1405160D4:                          ; DATA XREF: .rdata:00000001400B98B0↑o
;   __try { // __except at loc_140516101
                mov     [rax+2C0h], edi
;   } // starts at 1405160D4

loc_1405160DA:                          ; DATA XREF: .rdata:00000001400B98B0↑o
                mov     eax, 33h ; '3'
                mov     [rcx+170h], ax
                mov     rax, cs:qword_140CFCAC8
                mov     [rcx+168h], rax
                cmp     byte ptr [rcx+2Bh], 2
                jz      short loc_14051610F
                call    sub_14036CCC8
                jmp     short loc_14051610F
; ---------------------------------------------------------------------------

loc_140516101:                          ; DATA XREF: .rdata:00000001400B98B0↑o
;   __except(1) // owned by 1405160D4
                mov     r10d, 1
                mov     edi, [rsp+28h+arg_0]
                mov     bl, [rsp+28h+arg_8]

loc_14051610F:                          ; CODE XREF: KeRaiseUserException+42↑j
                                        ; KeRaiseUserException+4B↑j ...
                cmp     bl, r10b
                jnb     short loc_14051616B
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140516164
                test    r10b, al
                jz      short loc_140516164
                mov     rax, cr8
                sub     al, 2
                cmp     al, 0Dh
                ja      short loc_140516164
                mov     r11, gs:20h
                mov     r9, [r11+84B8h]
                mov     r8d, [r9+14h]
                movzx   ecx, bl
                add     ecx, r10d
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                not     eax
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_140516164
                mov     rcx, r11
                call    sub_1403F2EC4

loc_140516164:                          ; CODE XREF: KeRaiseUserException+9C↑j
                                        ; KeRaiseUserException+A1↑j ...
                movzx   eax, bl
                mov     cr8, rax

loc_14051616B:                          ; CODE XREF: KeRaiseUserException+92↑j
                mov     eax, edi
                mov     rbx, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140516080
KeRaiseUserException endp
