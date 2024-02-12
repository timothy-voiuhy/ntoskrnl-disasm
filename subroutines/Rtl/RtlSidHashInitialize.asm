RtlSidHashInitialize proc near          ; CODE XREF: sub_14021CE64+C9↓p
                                        ; sub_14021CE64+FA↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140427ED4 SIZE 0000000A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, r8
                mov     esi, edx
                mov     rbx, rcx
                test    r8, r8
                jz      loc_140427ED4
                xor     edx, edx
                mov     r8d, 110h
                mov     rcx, rdi
                call    memset
                test    rbx, rbx
                jz      short loc_14021BC24
                test    esi, esi
                jz      short loc_14021BC24
                mov     [rdi+8], rbx
                mov     [rdi], esi
                cmp     esi, 40h ; '@'
                ja      short loc_14021BC37
                test    esi, esi
                jz      short loc_14021BC24

loc_14021BBE8:                          ; CODE XREF: RtlSidHashInitialize+9C↓j
                mov     eax, 1
                mov     r9d, esi

loc_14021BBF0:                          ; CODE XREF: RtlSidHashInitialize+82↓j
                mov     rdx, [rbx]
                lea     rbx, [rbx+10h]
                movzx   ecx, byte ptr [rdx+1]
                movzx   r8d, byte ptr [rdx+rcx*4+4]
                mov     ecx, r8d
                and     ecx, 0Fh
                or      [rdi+rcx*8+10h], rax
                mov     ecx, r8d
                shr     rcx, 4
                or      [rdi+rcx*8+90h], rax
                rol     rax, 1
                sub     r9, 1
                jnz     short loc_14021BBF0

loc_14021BC24:                          ; CODE XREF: RtlSidHashInitialize+33↑j
                                        ; RtlSidHashInitialize+37↑j ...
                xor     eax, eax

loc_14021BC26:                          ; CODE XREF: RtlSidHashInitialize+20C339↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14021BC37:                          ; CODE XREF: RtlSidHashInitialize+42↑j
                mov     esi, 40h ; '@'
                jmp     short loc_14021BBE8
RtlSidHashInitialize endp
