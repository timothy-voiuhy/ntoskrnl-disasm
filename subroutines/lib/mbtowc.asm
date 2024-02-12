mbtowc          proc near               ; CODE XREF: sub_1403D45E8+2E6↓p
                                        ; sub_1403D45E8+5ED↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     eax, eax
                mov     rbx, rdx
                mov     rdi, rcx
                test    rdx, rdx
                jz      short loc_1403D25D2
                test    r8, r8
                jz      short loc_1403D25D2
                cmp     [rdx], al
                jnz     short loc_1403D25BA
                test    rcx, rcx
                jz      short loc_1403D25D2
                mov     [rcx], ax
                jmp     short loc_1403D25D2
; ---------------------------------------------------------------------------

loc_1403D25BA:                          ; CODE XREF: mbtowc+1E↑j
                lea     rcx, [rsp+28h+arg_8]
                mov     [rsp+28h+arg_8], rbx
                call    RtlAnsiCharToUnicodeChar
                mov     [rdi], ax
                mov     eax, dword ptr [rsp+28h+arg_8]
                sub     eax, ebx

loc_1403D25D2:                          ; CODE XREF: mbtowc+15↑j
                                        ; mbtowc+1A↑j ...
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
mbtowc          endp

byte_1403D25DE  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0874↑o
; Exported entry 3023. memchr
; [0000001C BYTES: COLLAPSED FUNCTION memchr. PRESS CTRL-NUMPAD+ TO EXPAND]
                db 0CCh
algn_1403D260D:                         ; DATA XREF: .pdata:00000001400E0880↑o
                align 20h
; Exported entry 3024. memcmp

; =============== S U B R O U T I N E =======================================


