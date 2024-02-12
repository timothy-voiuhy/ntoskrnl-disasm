RtlFreeUTF8String proc near             ; DATA XREF: .pdata:0000000140121D28↑o
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, [rcx+8]
                test    rcx, rcx
                jz      short loc_14091120D
                call    ExFreePoolWithTag
                xorps   xmm0, xmm0
                movups  xmmword ptr [rbx], xmm0

loc_14091120D:                          ; CODE XREF: RtlFreeUTF8String+10↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlFreeUTF8String endp
