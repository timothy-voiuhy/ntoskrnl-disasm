_snscanf_s      proc near               ; DATA XREF: .pdata:00000001400E0D90↑o

var_28          = qword ptr -28h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_10], r8
                mov     [rsp+arg_18], r9
                sub     rsp, 48h
                test    r8, r8
                jnz     short loc_1403D6E29
                and     [rsp+48h+var_28], r8
                xor     r9d, r9d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                or      eax, 0FFFFFFFFh
                jmp     short loc_1403D6E33
; ---------------------------------------------------------------------------

loc_1403D6E29:                          ; CODE XREF: _snscanf_s+11↑j
                lea     r9, [rsp+48h+arg_18]
                call    sub_1403DA500

loc_1403D6E33:                          ; CODE XREF: _snscanf_s+27↑j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_snscanf_s      endp

algn_1403D6E39:                         ; DATA XREF: .pdata:00000001400E0D90↑o
                align 20h
; Exported entry 2971. _snwprintf_s

; =============== S U B R O U T I N E =======================================


