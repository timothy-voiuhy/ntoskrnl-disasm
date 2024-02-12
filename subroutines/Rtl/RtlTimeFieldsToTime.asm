RtlTimeFieldsToTime proc near           ; CODE XREF: sub_1407A8B4C+58↓p
                                        ; sub_1407A9004+5FB↓p ...

var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014047F2B2 SIZE 0000006B BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, cs:qword_140C19358
                xor     ebx, ebx
                mov     [rax+18h], rbx
                mov     rsi, rdx
                test    rdi, rdi
                jz      short loc_140346803
                cmp     [rdi], bl
                jz      short loc_140346803
                mov     ebp, [rdi+4]
                lock or [rsp+28h+var_28], ebx
                lea     rdx, [rax+18h]
                call    sub_140346894
                test    al, al
                jz      short loc_1403467E2
                mov     rax, [rsp+28h+arg_10]
                mov     r8d, ebx
                test    ebp, ebp
                jnz     short loc_1403467FA

loc_1403467DD:                          ; CODE XREF: RtlTimeFieldsToTime+138B41↓j
                                        ; RtlTimeFieldsToTime+138B7A↓j ...
                mov     [rsi], rax
                mov     bl, 1

loc_1403467E2:                          ; CODE XREF: RtlTimeFieldsToTime+3F↑j
                                        ; RtlTimeFieldsToTime+7A↓j ...
                mov     rbp, [rsp+28h+arg_8]
                mov     al, bl
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403467FA:                          ; CODE XREF: RtlTimeFieldsToTime+4B↑j
                add     rdi, 8
                jmp     loc_14047F2B2
; ---------------------------------------------------------------------------

loc_140346803:                          ; CODE XREF: RtlTimeFieldsToTime+27↑j
                                        ; RtlTimeFieldsToTime+2B↑j
                call    sub_140346894
                mov     bl, al
                jmp     short loc_1403467E2
RtlTimeFieldsToTime endp
