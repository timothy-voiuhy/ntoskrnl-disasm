EtwProviderEnabled proc near            ; CODE XREF: sub_1403073CC+4A↑p
                                        ; sub_1403073CC+272↑p ...

; FUNCTION CHUNK AT 000000014046AEBA SIZE 0000001D BYTES

                sub     rsp, 28h
                xor     r9d, r9d
                mov     r11b, dl
                mov     r10, rcx
                test    rcx, rcx
                jz      short loc_14030841A
                mov     rcx, [rcx+20h]
                add     rcx, 60h ; '`'
                call    sub_140252AD0
                test    al, al
                jz      short loc_14030840F

loc_140308403:                          ; CODE XREF: EtwProviderEnabled+162AF2↓j
                mov     r9b, 1

loc_140308406:                          ; CODE XREF: EtwProviderEnabled+33↓j
                                        ; EtwProviderEnabled+162AEC↓j
                mov     al, r9b

loc_140308409:                          ; CODE XREF: EtwProviderEnabled+3C↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14030840F:                          ; CODE XREF: EtwProviderEnabled+21↑j
                cmp     [r10+65h], r9b
                jz      short loc_140308406
                jmp     loc_14046AEBA
; ---------------------------------------------------------------------------

loc_14030841A:                          ; CODE XREF: EtwProviderEnabled+10↑j
                xor     al, al
                jmp     short loc_140308409
EtwProviderEnabled endp
