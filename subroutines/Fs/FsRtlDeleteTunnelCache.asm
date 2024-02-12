FsRtlDeleteTunnelCache proc near        ; DATA XREF: .rdata:00000001400947E8↑o
                                        ; .pdata:000000014010A6C4↑o

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140847DC8 SIZE 00000033 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                xor     eax, eax
                cmp     cs:dword_140D2D040, eax
                jz      short loc_14076D813
                lea     rbx, [rcx+40h]
                mov     [rcx+38h], rax
                mov     [rcx+50h], ax
                mov     rax, [rbx]
                cmp     rax, rbx
                jnz     loc_140847DC8

loc_14076D80C:                          ; CODE XREF: FsRtlDeleteTunnelCache+DA616↓j
                mov     [rbx+8], rbx
                mov     [rbx], rbx

loc_14076D813:                          ; CODE XREF: FsRtlDeleteTunnelCache+12↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlDeleteTunnelCache endp
