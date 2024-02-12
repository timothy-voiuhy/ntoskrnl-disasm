ExSetFirmwareEnvironmentVariable proc near
                                        ; CODE XREF: sub_140776130+D50C6↑p
                                        ; sub_140956D20+5E↓p ...

var_18          = dword ptr -18h
var_10          = byte ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                cmp     cs:dword_140C19590, 2
                mov     esi, r9d
                mov     rbx, r8
                mov     rbp, rdx
                jz      short loc_140950B8D
                mov     eax, 0C0000002h
                jmp     short loc_140950BD6
; ---------------------------------------------------------------------------

loc_140950B8D:                          ; CODE XREF: ExSetFirmwareEnvironmentVariable+24↑j
                call    sub_140954418
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_140950BA1
                mov     eax, 0C000009Ah
                jmp     short loc_140950BD6
; ---------------------------------------------------------------------------

loc_140950BA1:                          ; CODE XREF: ExSetFirmwareEnvironmentVariable+38↑j
                mov     rax, rbx
                mov     [rsp+38h+var_10], 0
                neg     rax
                mov     r8, rbx
                mov     eax, [rsp+38h+arg_20]
                mov     rdx, rbp
                sbb     r9d, r9d
                mov     [rsp+38h+var_18], eax
                and     r9d, esi
                mov     rcx, rdi
                call    sub_14095358C
                xor     edx, edx
                mov     rcx, rdi
                mov     ebx, eax
                call    ExFreePoolWithTag
                mov     eax, ebx

loc_140950BD6:                          ; CODE XREF: ExSetFirmwareEnvironmentVariable+2B↑j
                                        ; ExSetFirmwareEnvironmentVariable+3F↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExSetFirmwareEnvironmentVariable endp
