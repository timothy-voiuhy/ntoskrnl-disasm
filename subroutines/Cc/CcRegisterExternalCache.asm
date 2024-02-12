CcRegisterExternalCache proc near       ; DATA XREF: .rdata:000000014009AB3C↑o
                                        ; .pdata:00000001400DC89C↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014049EF98 SIZE 0000001E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                xor     ebx, ebx
                mov     rsi, rdx
                cmp     cs:dword_140C5093C, ebx
                mov     rbp, rcx
                jz      loc_14049EF98
                lea     edx, [rbx+30h]
                mov     ecx, 200h
                mov     r8d, 43456343h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      short loc_140395187
                xorps   xmm0, xmm0
                mov     rcx, rax
                movups  xmmword ptr [rax], xmm0
                movups  xmmword ptr [rax+10h], xmm0
                movups  xmmword ptr [rax+20h], xmm0
                mov     [rax], rbp
                call    sub_140395194
                mov     [rsi], rdi

loc_14039516F:                          ; CODE XREF: CcRegisterExternalCache+7C↓j
                mov     rbp, [rsp+38h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140395187:                          ; CODE XREF: CcRegisterExternalCache+41↑j
                mov     ebx, 0C000009Ah
                jmp     short loc_14039516F
CcRegisterExternalCache endp
