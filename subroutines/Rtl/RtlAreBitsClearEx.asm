RtlAreBitsClearEx proc near             ; CODE XREF: sub_1403F3650+1C5↓p
                                        ; sub_14065C850+54D↓p ...

var_8           = qword ptr -8

; FUNCTION CHUNK AT 0000000140431A1E SIZE 0000005B BYTES

                sub     rsp, 8
                mov     rax, [rcx]
                cmp     rdx, rax
                jnb     short loc_1402439E8
                cmp     r8, 1
                jbe     loc_140431A1E
                sub     rax, rdx
                cmp     rax, r8
                jb      short loc_1402439E8
                mov     rcx, [rcx+8]
                lea     r11, [r8-1]
                add     r11, rdx

loc_140243999:                          ; DATA XREF: .rdata:0000000140056888↑o
                                        ; .rdata:000000014005689C↑o ...
                mov     [rsp+8+var_8], rbx
                mov     rax, rdx
                shr     rax, 6
                mov     rbx, [rcx+rax*8]
                lea     r9, [rcx+rax*8]
                mov     rax, r11
                shr     rax, 6
                lea     r10, [rcx+rax*8]
                cmp     r9, r10
                jnz     loc_140431A34
                mov     ecx, 40h ; '@'
                sub     cl, r8b
                mov     r8, 0FFFFFFFFFFFFFFFFh
                shr     r8, cl
                mov     rcx, rdx
                shl     r8, cl
                test    r8, rbx

loc_1402439DB:                          ; CODE XREF: RtlAreBitsClearEx+1EE0FD↓j
                setz    al

loc_1402439DE:                          ; CODE XREF: RtlAreBitsClearEx+1EE104↓j
                mov     rbx, [rsp+8+var_8]

loc_1402439E2:                          ; CODE XREF: RtlAreBitsClearEx+7A↓j
                                        ; RtlAreBitsClearEx+1EE0BF↓j
                                        ; DATA XREF: ...
                add     rsp, 8
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1402439E8:                          ; CODE XREF: RtlAreBitsClearEx+A↑j
                                        ; RtlAreBitsClearEx+1C↑j ...
                xor     al, al
                jmp     short loc_1402439E2
RtlAreBitsClearEx endp
