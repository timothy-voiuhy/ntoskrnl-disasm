RtlImageDirectoryEntryToData proc near  ; CODE XREF: sub_140372240+1B↓p
                                        ; sub_140397BC8+38↓p ...

var_28          = qword ptr -28h
var_18          = qword ptr -18h

                push    rbx
                sub     rsp, 40h
                lea     rax, [rsp+48h+var_18]
                xor     ebx, ebx
                mov     [rsp+48h+var_18], rbx
                mov     [rsp+48h+var_28], rax
                call    sub_140207088
                mov     rcx, [rsp+48h+var_18]
                test    eax, eax
                cmovs   rcx, rbx
                mov     rax, rcx
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlImageDirectoryEntryToData endp
