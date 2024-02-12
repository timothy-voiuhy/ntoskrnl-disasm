swscanf_s       proc near               ; CODE XREF: sub_1406A71D0+122↓p
                                        ; sub_1408A669C+243↓p ...

arg_10          = byte ptr  18h

                mov     r11, rsp
                mov     [r11+10h], rdx
                mov     [r11+18h], r8
                mov     [r11+20h], r9
                sub     rsp, 48h
                xor     eax, eax
                mov     r8, rdx
                test    rdx, rdx
                jnz     short loc_1403D7DE1
                xor     r9d, r9d
                mov     [r11-28h], rax
                xor     ecx, ecx
                call    __misaligned_access
                or      rax, 0FFFFFFFFFFFFFFFFh
                jmp     short loc_1403D7DF8
; ---------------------------------------------------------------------------

loc_1403D7DE1:                          ; CODE XREF: swscanf_s+1B↑j
                lea     r9, [rsp+48h+arg_10]
                or      rdx, 0FFFFFFFFFFFFFFFFh

loc_1403D7DEA:                          ; CODE XREF: swscanf_s+41↓j
                inc     rdx
                cmp     [rcx+rdx*2], ax
                jnz     short loc_1403D7DEA
                call    sub_1403DA974

loc_1403D7DF8:                          ; CODE XREF: swscanf_s+2F↑j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
swscanf_s       endp

byte_1403D7DFE  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0E74↑o
; Exported entry 3070. wcscat_s

; =============== S U B R O U T I N E =======================================


