DbgPrompt       proc near               ; CODE XREF: RtlAssert+8C↓p
                                        ; sub_1405A2094+93↓p ...

var_28          = byte ptr -28h
var_18          = word ptr -18h
var_10          = qword ptr -10h

                mov     rax, rsp
                sub     rsp, 48h
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                movups  xmmword ptr [rax-28h], xmm0
                mov     [rax-26h], r8w
                mov     [rax-20h], rdx
                movups  xmmword ptr [rax-18h], xmm1
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_140585922:                          ; CODE XREF: DbgPrompt+29↓j
                inc     rax
                cmp     byte ptr [rcx+rax], 0
                jnz     short loc_140585922
                mov     [rsp+48h+var_10], rcx
                lea     rdx, [rsp+48h+var_28]
                lea     rcx, [rsp+48h+var_18]
                mov     [rsp+48h+var_18], ax
                call    sub_140406D00
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
DbgPrompt       endp

algn_14058594A:                         ; DATA XREF: .pdata:00000001400F7A88↑o
                align 10h
; Exported entry 121. DbgQueryDebugFilterState

; =============== S U B R O U T I N E =======================================


