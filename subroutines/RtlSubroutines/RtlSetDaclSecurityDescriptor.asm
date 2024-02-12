RtlSetDaclSecurityDescriptor proc near  ; CODE XREF: RtlCheckTokenMembershipEx+16B↑p
                                        ; sub_1403B45C8+F6669↑p ...

; FUNCTION CHUNK AT 00000001408003F8 SIZE 00000012 BYTES

                cmp     byte ptr [rcx], 1
                mov     r10, rcx
                jnz     short loc_140625924
                movzx   ecx, word ptr [rcx+2]
                xor     r11d, r11d
                test    cx, cx
                js      short loc_14062592B
                test    dl, dl
                jz      loc_1408003F8
                or      cx, 4
                mov     eax, r11d
                test    r8, r8
                cmovnz  rax, r8
                mov     [r10+20h], rax
                mov     eax, 0FFF7h
                and     cx, ax
                mov     [r10+2], cx
                test    r9b, r9b
                jnz     short loc_140625932

loc_140625920:                          ; CODE XREF: RtlSetDaclSecurityDescriptor+1DAB25↓j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140625924:                          ; CODE XREF: RtlSetDaclSecurityDescriptor+6↑j
                mov     eax, 0C0000058h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14062592B:                          ; CODE XREF: RtlSetDaclSecurityDescriptor+12↑j
                mov     eax, 0C0000079h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140625932:                          ; CODE XREF: RtlSetDaclSecurityDescriptor+3E↑j
                or      cx, 8
                jmp     loc_140800400
RtlSetDaclSecurityDescriptor endp
