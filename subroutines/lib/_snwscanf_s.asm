_snwscanf_s     proc near               ; CODE XREF: sub_140705944+9D↓p
                                        ; sub_140779DE4+D4138↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_10], r8
                mov     [rsp+arg_18], r9
                sub     rsp, 48h
                test    r8, r8
                jnz     short loc_1403D6F49
                and     [rsp+48h+var_28], r8
                xor     r9d, r9d
                xor     edx, edx
                xor     ecx, ecx
                call    __misaligned_access
                or      eax, 0FFFFFFFFh
                jmp     short loc_1403D6F53
; ---------------------------------------------------------------------------

loc_1403D6F49:                          ; CODE XREF: _snwscanf_s+11↑j
                lea     r9, [rsp+48h+arg_18]
                call    sub_1403DA974

loc_1403D6F53:                          ; CODE XREF: _snwscanf_s+27↑j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
_snwscanf_s     endp

algn_1403D6F59:                         ; DATA XREF: .pdata:00000001400E0DB4↑o
                align 20h
; Exported entry 2973. _splitpath_s

; =============== S U B R O U T I N E =======================================


