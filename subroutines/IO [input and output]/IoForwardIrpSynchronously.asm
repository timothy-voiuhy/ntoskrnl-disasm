IoForwardIrpSynchronously proc near     ; DATA XREF: .pdata:0000000140105C0C↑o
                sub     rsp, 28h        ; IoForwardAndCatchIrp
                cmp     byte ptr [rdx+43h], 1
                mov     rax, rcx
                jz      short loc_140707E79
                mov     rcx, [rdx+0B8h]
                movups  xmm0, xmmword ptr [rcx]
                movups  xmmword ptr [rcx-48h], xmm0
                movups  xmm1, xmmword ptr [rcx+10h]
                movups  xmmword ptr [rcx-38h], xmm1
                movups  xmm0, xmmword ptr [rcx+20h]
                movups  xmmword ptr [rcx-28h], xmm0
                movsd   xmm1, qword ptr [rcx+30h]
                movsd   qword ptr [rcx-18h], xmm1
                mov     byte ptr [rcx-45h], 0
                mov     rcx, rax
                call    IoSynchronousCallDriver
                mov     al, 1

loc_140707E73:                          ; CODE XREF: IoForwardIrpSynchronously+4B↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140707E79:                          ; CODE XREF: IoForwardIrpSynchronously+B↑j
                xor     al, al
                jmp     short loc_140707E73
IoForwardIrpSynchronously endp
