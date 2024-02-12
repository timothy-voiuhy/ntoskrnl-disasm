NtWaitForSingleObject proc near         ; CODE XREF: sub_140354F20+223↑p
                                        ; sub_1405DDF6C+20DBC8↓p ...

var_18          = qword ptr -18h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_10], r8
                sub     rsp, 38h
                movzx   r9d, dl
                mov     [rsp+38h+arg_18], 0
                mov     rax, gs:188h
                movzx   edx, byte ptr [rax+232h]
                mov     rax, [rsp+38h+arg_10]
                test    rax, rax
                jz      short loc_140644D1C
                test    dl, dl
                jz      short loc_140644D1C

loc_140644CF4:                          ; DATA XREF: .rdata:000000014005599C↑o
;   __try { // __except at loc_140644D1A
                mov     r8, 7FFFFFFF0000h
                cmp     rax, r8
                jb      short loc_140644D06
                mov     rax, r8

loc_140644D06:                          ; CODE XREF: NtWaitForSingleObject+41↑j
                mov     rax, [rax]
                mov     [rsp+38h+arg_18], rax
                lea     rax, [rsp+38h+arg_18]
                mov     [rsp+38h+arg_10], rax
                jmp     short loc_140644D1C
;   } // starts at 140644CF4
; ---------------------------------------------------------------------------

loc_140644D1A:                          ; DATA XREF: .rdata:000000014005599C↑o
;   __except(1) // owned by 140644CF4
                jmp     short loc_140644D2A
; ---------------------------------------------------------------------------

loc_140644D1C:                          ; CODE XREF: NtWaitForSingleObject+2E↑j
                                        ; NtWaitForSingleObject+32↑j ...
                mov     [rsp+38h+var_18], rax
                movzx   r8d, dl
                call    ObWaitForSingleObject

loc_140644D2A:                          ; CODE XREF: NtWaitForSingleObject:loc_140644D1A↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140644CC0
NtWaitForSingleObject endp
