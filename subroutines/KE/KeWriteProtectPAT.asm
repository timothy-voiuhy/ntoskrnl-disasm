KeWriteProtectPAT proc near             ; CODE XREF: sub_1403855A0+336↑p
                                        ; sub_1403855A0+5A0↑p ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h

; __unwind { // __GSHandlerCheck
                sub     rsp, 38h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+38h+var_10], rax
                xor     r9d, r9d
                mov     r8b, cl
                cmp     cs:byte_140CFC408, r9b
                jnz     loc_1409B1DF1
                mov     r10d, 277h
                mov     ecx, r10d
                rdmsr
                shl     rdx, 20h
                lea     ecx, [r9+8]
                or      rax, rdx
                mov     [rsp+38h+var_18], rax
                lea     rax, [rsp+38h+var_18]
                test    r8b, r8b
                jz      short loc_1409B1D7E

loc_1409B1D6B:                          ; CODE XREF: KeWriteProtectPAT+5A↓j
                cmp     byte ptr [rax], 6
                jnz     short loc_1409B1D73
                mov     byte ptr [rax], 5

loc_1409B1D73:                          ; CODE XREF: KeWriteProtectPAT+4E↑j
                inc     rax
                sub     rcx, 1
                jnz     short loc_1409B1D6B
                jmp     short loc_1409B1D8F
; ---------------------------------------------------------------------------

loc_1409B1D7E:                          ; CODE XREF: KeWriteProtectPAT+49↑j
                                        ; KeWriteProtectPAT+6D↓j
                cmp     byte ptr [rax], 5
                jnz     short loc_1409B1D86
                mov     byte ptr [rax], 6

loc_1409B1D86:                          ; CODE XREF: KeWriteProtectPAT+61↑j
                inc     rax
                sub     rcx, 1
                jnz     short loc_1409B1D7E

loc_1409B1D8F:                          ; CODE XREF: KeWriteProtectPAT+5C↑j
                mov     rdx, [rsp+38h+var_18]
                mov     ecx, r10d
                mov     rax, rdx
                shr     rdx, 20h
                wrmsr
                cmp     cs:byte_140CFC409, r9b
                jz      short loc_1409B1DCF
                mov     rax, cr3
                mov     cr3, rax
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     [rcx+390h], r9b
                jnz     short loc_1409B1DF1
                call    sub_1403FECC0
                jmp     short loc_1409B1DF1
; ---------------------------------------------------------------------------

loc_1409B1DCF:                          ; CODE XREF: KeWriteProtectPAT+87↑j
                mov     rcx, cr4
                test    rcx, 20080h
                jz      short loc_1409B1DEB
                mov     rax, rcx
                btc     rax, 7
                mov     cr4, rax
                mov     cr4, rcx
                jmp     short loc_1409B1DF1
; ---------------------------------------------------------------------------

loc_1409B1DEB:                          ; CODE XREF: KeWriteProtectPAT+B9↑j
                mov     rax, cr3
                mov     cr3, rax

loc_1409B1DF1:                          ; CODE XREF: KeWriteProtectPAT+20↑j
                                        ; KeWriteProtectPAT+A6↑j ...
                mov     rcx, [rsp+38h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1409B1D20
KeWriteProtectPAT endp
