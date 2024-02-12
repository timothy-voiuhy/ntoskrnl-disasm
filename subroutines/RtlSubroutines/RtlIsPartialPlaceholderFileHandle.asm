RtlIsPartialPlaceholderFileHandle proc near
                                        ; DATA XREF: .pdata:0000000140122244↑o

arg_10          = dword ptr  18h

                mov     rax, rsp
                push    rbx
                sub     rsp, 40h
                and     qword ptr [rax+18h], 0
                lea     r8, [rax+18h]
                mov     rbx, rdx
                mov     dword ptr [rax-28h], 23h ; '#'
                xorps   xmm0, xmm0
                lea     rdx, [rax-18h]
                mov     r9d, 8
                movups  xmmword ptr [rax-18h], xmm0
                call    NtQueryInformationFile
                test    eax, eax
                jns     short loc_140918CD1
                cmp     eax, 0C000000Dh
                jnz     short loc_140918CE0
                mov     byte ptr [rbx], 0
                jmp     short loc_140918CDE
; ---------------------------------------------------------------------------

loc_140918CD1:                          ; CODE XREF: RtlIsPartialPlaceholderFileHandle+33↑j
                test    [rsp+48h+arg_10], 440000h
                setnz   al
                mov     [rbx], al

loc_140918CDE:                          ; CODE XREF: RtlIsPartialPlaceholderFileHandle+3F↑j
                xor     eax, eax

loc_140918CE0:                          ; CODE XREF: RtlIsPartialPlaceholderFileHandle+3A↑j
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlIsPartialPlaceholderFileHandle endp
