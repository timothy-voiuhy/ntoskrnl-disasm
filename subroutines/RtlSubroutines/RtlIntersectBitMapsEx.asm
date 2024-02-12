RtlIntersectBitMapsEx proc near         ; DATA XREF: .rdata:0000000140080350↑o
                                        ; .pdata:00000001400D722C↑o

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014047CB78 SIZE 00000019 BYTES

                mov     [rsp+arg_0], rbx
                mov     r9, [rcx]
                mov     r11, rdx
                mov     rax, [rdx]
                mov     rbx, rcx
                cmp     r9, rax
                cmovnb  r9, rax
                test    r9, r9
                jz      short loc_140340313
                xor     r10d, r10d

loc_1403402E0:                          ; CODE XREF: RtlIntersectBitMapsEx+51↓j
                mov     rax, [r11+8]
                cmp     r9, 40h ; '@'
                jnb     loc_14047CB78
                mov     r8, [rbx+8]
                mov     rcx, r9
                mov     edx, 1
                shl     rdx, cl
                dec     rdx
                not     rdx
                or      rdx, [r10+rax]
                and     [r10+r8], rdx
                xor     r9d, r9d

loc_14034030E:                          ; CODE XREF: RtlIntersectBitMapsEx+13C8CC↓j
                test    r9, r9
                jnz     short loc_1403402E0

loc_140340313:                          ; CODE XREF: RtlIntersectBitMapsEx+1B↑j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlIntersectBitMapsEx endp
