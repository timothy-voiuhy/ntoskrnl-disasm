RtlWriteRegistryValue proc near         ; CODE XREF: sub_1403F3050+33↑p
                                        ; RtlSetPortableOperatingSystem+30↑p ...

var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = byte ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                push    rdi
                sub     rsp, 50h
                and     qword ptr [rax-28h], 0
                mov     ebx, r9d
                mov     rsi, r8
                lea     r9, [rax-28h]
                xorps   xmm0, xmm0
                mov     r8b, 1
                movups  xmmword ptr [rax-20h], xmm0
                mov     edi, ecx
                call    sub_14062CC80
                test    eax, eax
                js      short loc_14071559E
                mov     rdx, rsi
                lea     rcx, [rsp+58h+var_20]
                call    RtlInitUnicodeString
                mov     eax, [rsp+58h+arg_28]
                lea     rdx, [rsp+58h+var_20]
                mov     rcx, [rsp+58h+var_28]
                and     ebx, 0FFFFFFh
                mov     [rsp+58h+var_30], eax
                mov     r9d, ebx
                mov     rax, [rsp+58h+arg_20]
                xor     r8d, r8d
                mov     [rsp+58h+var_38], rax
                call    ZwSetValueKey
                mov     ebx, eax
                bt      edi, 1Eh
                jnb     short loc_1407155AF

loc_14071559C:                          ; CODE XREF: RtlWriteRegistryValue+99↓j
                mov     eax, ebx

loc_14071559E:                          ; CODE XREF: RtlWriteRegistryValue+32↑j
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_8]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407155AF:                          ; CODE XREF: RtlWriteRegistryValue+7A↑j
                mov     rcx, [rsp+58h+var_28]
                call    ZwClose
                jmp     short loc_14071559C
RtlWriteRegistryValue endp
