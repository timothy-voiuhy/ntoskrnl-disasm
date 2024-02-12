FsRtlAreNamesEqual proc near            ; DATA XREF: .rdata:00000001400787B8↑o
                                        ; .pdata:00000001400D50B4↑o

var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014047090A SIZE 00000082 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 40h
                movzx   eax, word ptr [rcx]
                xor     dil, dil
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                mov     rbx, rdx
                movups  [rsp+48h+var_28], xmm0
                movups  [rsp+48h+var_18], xmm1
                cmp     ax, [rdx]
                jnz     short loc_14031A08A
                mov     r10d, eax
                shr     r10d, 1
                test    r8b, r8b
                jz      loc_140470955
                test    r9, r9
                jz      loc_14047090A
                xor     eax, eax
                test    r10d, r10d
                jz      short loc_14031A07C
                mov     r11, [rcx+8]
                mov     rbx, [rdx+8]
                nop

loc_14031A060:                          ; CODE XREF: FsRtlAreNamesEqual+6A↓j
                movzx   ecx, word ptr [rbx+rax*2]
                movzx   r8d, word ptr [r11+rax*2]
                movzx   edx, word ptr [r9+rcx*2]
                cmp     [r9+r8*2], dx
                jnz     short loc_14031A08A
                inc     eax
                cmp     eax, r10d
                jb      short loc_14031A060

loc_14031A07C:                          ; CODE XREF: FsRtlAreNamesEqual+45↑j
                mov     al, 1

loc_14031A07E:                          ; CODE XREF: FsRtlAreNamesEqual+7C↓j
                                        ; FsRtlAreNamesEqual+156977↓j
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14031A08A:                          ; CODE XREF: FsRtlAreNamesEqual+26↑j
                                        ; FsRtlAreNamesEqual+63↑j
                xor     al, al
                jmp     short loc_14031A07E
FsRtlAreNamesEqual endp
