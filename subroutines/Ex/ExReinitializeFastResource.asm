ExReinitializeFastResource proc near    ; DATA XREF: .rdata:000000014009A870↑o
                                        ; .pdata:00000001400DC7F4↑o

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014049EEC8 SIZE 0000004D BYTES

                sub     rsp, 38h
                movzx   edx, word ptr [rcx+1Ah]
                mov     r9d, 1
                test    r9b, dl
                jz      loc_14049EEC8
                mov     rax, cr8
                cmp     al, r9b
                ja      loc_14049EEE3
                xor     eax, eax
                cmp     [rcx+40h], eax
                jnz     loc_14049EEFB
                mov     [rcx+18h], eax
                xorps   xmm0, xmm0
                movups  xmmword ptr [rcx+20h], xmm0
                mov     [rcx+40h], rax
                and     dx, 41h
                or      [rcx+1Ah], dx
                mov     [rcx+48h], rax
                lea     rax, [rcx+30h]
                mov     [rax+8], rax
                mov     [rax], rax
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExReinitializeFastResource endp
