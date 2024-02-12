IoWithinStackLimits proc near           ; DATA XREF: .rdata:0000000140078E94↑o
                                        ; .pdata:00000001400D53CC↑o

var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h

; FUNCTION CHUNK AT 00000001404718F4 SIZE 00000040 BYTES

                sub     rsp, 28h
                mov     rax, gs:188h
                lea     r9, [rcx+rdx]
                mov     dl, gs:32ACh
                mov     r8, rcx
                test    dl, 1
                jnz     loc_1404718F4

loc_14031E7D5:                          ; CODE XREF: IoWithinStackLimits+153151↓j
                mov     rcx, [rax+38h]
                mov     qword ptr [rsp+28h+var_28], rcx
                mov     rcx, [rax+30h]
                mov     rdx, [rax+28h]

loc_14031E7E5:                          ; CODE XREF: IoWithinStackLimits+75↓j
                cmp     r8, rcx
                jnb     short loc_14031E7F9

loc_14031E7EA:                          ; CODE XREF: IoWithinStackLimits+4D↓j
                cmp     qword ptr [rdx+10h], 0
                jnz     short loc_14031E80A

loc_14031E7F1:                          ; CODE XREF: IoWithinStackLimits+153167↓j
                                        ; IoWithinStackLimits+153179↓j
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14031E7F9:                          ; CODE XREF: IoWithinStackLimits+38↑j
                cmp     r9, qword ptr [rsp+28h+var_28]
                ja      short loc_14031E7EA

loc_14031E7FF:                          ; CODE XREF: IoWithinStackLimits+15317F↓j
                mov     eax, 1
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14031E80A:                          ; CODE XREF: IoWithinStackLimits+3F↑j
                movups  xmm0, xmmword ptr [rdx+10h]
                movups  xmm1, xmmword ptr [rdx+20h]
                movups  [rsp+28h+var_28], xmm0
                mov     rcx, qword ptr [rsp+28h+var_28+8]
                movups  [rsp+28h+var_18], xmm1
                mov     rdx, qword ptr [rsp+28h+var_18+8]
                jmp     short loc_14031E7E5
IoWithinStackLimits endp
