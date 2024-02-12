KeInvalidateAllCaches proc near         ; CODE XREF: sub_1402D6454+B3↑p
                                        ; KeInvalidateRangeAllCachesNoIpi:loc_1402D6801↑p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404A6568 SIZE 00000061 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 40h
                mov     rbx, cr8
                mov     eax, 0Ch
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                or      rdi, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     short loc_1403A4E8F

loc_1403A4E1A:                          ; CODE XREF: KeInvalidateAllCaches+A1↓j
                                        ; KeInvalidateAllCaches+A6↓j ...
                mov     rsi, gs:20h
                lea     rcx, dword_140D23240
                call    sub_1402C8068
                test    al, al
                jz      short loc_1403A4E67
                and     [rsp+48h+var_18], 0
                lea     rax, KeSweepLocalCaches
                xor     r9d, r9d
                mov     [rsp+48h+var_20], rax
                xor     r8d, r8d
                mov     [rsp+48h+var_28], 6
                mov     rcx, rsi
                lea     edx, [r9+1]
                call    sub_14028ECD0
                lock inc cs:dword_140D23240

loc_1403A4E67:                          ; CODE XREF: KeInvalidateAllCaches+41↑j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404A6568

loc_1403A4E75:                          ; CODE XREF: KeInvalidateAllCaches+10177A↓j
                                        ; KeInvalidateAllCaches+101786↓j ...
                movzx   ecx, bl
                mov     cr8, rcx
                mov     rbx, [rsp+48h+arg_0]
                mov     al, 1
                mov     rsi, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403A4E8F:                          ; CODE XREF: KeInvalidateAllCaches+28↑j
                test    al, 1
                jz      short loc_1403A4E1A
                cmp     bl, 0Fh
                ja      short loc_1403A4E1A
                mov     rax, gs:20h
                mov     rdx, rdi
                movzx   ecx, bl
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 1FFCh
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d
                jmp     loc_1403A4E1A
KeInvalidateAllCaches endp
