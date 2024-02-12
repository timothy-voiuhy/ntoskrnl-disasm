DbgCommandString proc near              ; DATA XREF: .pdata:00000001400F7A70↑o

var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h

                sub     rsp, 48h
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                or      rax, 0FFFFFFFFFFFFFFFFh
                movups  [rsp+48h+var_18], xmm0
                mov     qword ptr [rsp+48h+var_18+8], rcx
                mov     r8, rax
                movups  [rsp+48h+var_28], xmm1

loc_140585860:                          ; CODE XREF: DbgCommandString+28↓j
                inc     r8
                cmp     byte ptr [rcx+r8], 0
                jnz     short loc_140585860
                mov     word ptr [rsp+48h+var_18], r8w
                mov     qword ptr [rsp+48h+var_28+8], rdx

loc_140585875:                          ; CODE XREF: DbgCommandString+3C↓j
                inc     rax
                cmp     byte ptr [rdx+rax], 0
                jnz     short loc_140585875
                mov     r8d, 5
                mov     word ptr [rsp+48h+var_28], ax
                lea     rdx, [rsp+48h+var_28]
                lea     rcx, [rsp+48h+var_18]
                call    sub_140406D20
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
DbgCommandString endp
