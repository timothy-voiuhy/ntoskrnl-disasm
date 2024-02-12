sscanf_s        proc near               ; CODE XREF: RtlIncrementCorrelationVector+66↓p
                                        ; DATA XREF: .pdata:00000001400E0E2C↑o

arg_10          = byte ptr  18h

                mov     r11, rsp
                mov     [r11+10h], rdx
                mov     [r11+18h], r8
                mov     [r11+20h], r9
                sub     rsp, 48h
                xor     eax, eax
                mov     r8, rdx
                test    rdx, rdx
                jnz     short loc_1403D78E1
                xor     r9d, r9d
                mov     [r11-28h], rax
                xor     ecx, ecx
                call    __misaligned_access
                or      rax, 0FFFFFFFFFFFFFFFFh
                jmp     short loc_1403D78F7
; ---------------------------------------------------------------------------

loc_1403D78E1:                          ; CODE XREF: sscanf_s+1B↑j
                lea     r9, [rsp+48h+arg_10]
                or      rdx, 0FFFFFFFFFFFFFFFFh

loc_1403D78EA:                          ; CODE XREF: sscanf_s+40↓j
                inc     rdx
                cmp     [rcx+rdx], al
                jnz     short loc_1403D78EA
                call    sub_1403DA500

loc_1403D78F7:                          ; CODE XREF: sscanf_s+2F↑j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sscanf_s        endp

byte_1403D78FD  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400E0E2C↑o
; Exported entry 3041. strcat_s

; =============== S U B R O U T I N E =======================================


