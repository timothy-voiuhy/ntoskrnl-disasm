FsRtlGetIoAtEof proc near               ; DATA XREF: .rdata:0000000140079B18↑o
                                        ; .pdata:00000001400D57C8↑o

arg_8           = qword ptr  10h
arg_20          = byte ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001404724C2 SIZE 00000011 BYTES

                mov     [rsp+arg_8], rdx
                sub     rsp, 28h
                mov     rax, gs:188h
                mov     r10, [rcx]
                cmp     r10, rax
                jz      loc_1404724C2
                test    r8, r8
                lea     rdx, [r8+r9]
                cmovs   rdx, r8
                test    r10, r10
                jnz     short loc_1403224CC
                mov     [rcx], rax
                mov     eax, 1
                mov     [rcx+26h], ax
                movzx   ecx, al
                mov     rax, [rsp+28h+arg_28]
                mov     [rax], cl

loc_1403224C4:                          ; CODE XREF: FsRtlGetIoAtEof+15004E↓j
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1403224CC:                          ; CODE XREF: FsRtlGetIoAtEof+2C↑j
                cmp     [rsp+28h+arg_20], 0
                jz      short loc_1403224F2
                mov     r8, rdx
                mov     rdx, [rsp+28h+arg_8]
                call    sub_14032274C
                movzx   ecx, al
                mov     rax, [rsp+28h+arg_28]
                mov     [rax], cl
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403224F2:                          ; CODE XREF: FsRtlGetIoAtEof+51↑j
                mov     eax, 0C0000054h
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlGetIoAtEof endp
