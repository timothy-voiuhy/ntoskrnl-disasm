KeRevertToUserAffinityThreadEx proc near
                                        ; DATA XREF: .pdata:00000001400F3354↑o

var_28          = xmmword ptr -28h
var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                sub     rsp, 48h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+48h+var_18], rax
                xorps   xmm0, xmm0
                xor     eax, eax
                cmp     cs:byte_140CFC47E, al
                movups  [rsp+48h+var_28], xmm0
                mov     qword ptr [rsp+48h+var_28], rcx
                jz      short loc_140513414
                movzx   eax, cs:word_140CFB014
                dec     ax

loc_140513414:                          ; CODE XREF: KeRevertToUserAffinityThreadEx+28↑j
                lea     rcx, [rsp+48h+var_28]
                mov     word ptr [rsp+48h+var_28+8], ax
                call    KeRevertToUserGroupAffinityThread
                mov     rcx, [rsp+48h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405133E0
KeRevertToUserAffinityThreadEx endp
