RtlDeleteRegistryValue proc near        ; CODE XREF: sub_140931288+46↓p
                                        ; sub_140931288+157↓p
                                        ; DATA XREF: ...

var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                push    rdi
                sub     rsp, 30h
                and     qword ptr [rax+20h], 0
                lea     r9, [rax+20h]
                mov     rbx, r8
                xorps   xmm0, xmm0
                mov     r8b, 1
                mov     edi, ecx
                movups  xmmword ptr [rax-18h], xmm0
                call    sub_14062CC80
                test    eax, eax
                js      short loc_140780603
                mov     rdx, rbx
                lea     rcx, [rsp+38h+var_18]
                call    RtlInitUnicodeString
                mov     rcx, [rsp+38h+arg_18]
                lea     rdx, [rsp+38h+var_18]
                call    ZwDeleteValueKey
                mov     ebx, eax
                bt      edi, 1Eh
                jnb     short loc_14078060F

loc_140780601:                          ; CODE XREF: RtlDeleteRegistryValue+69↓j
                mov     eax, ebx

loc_140780603:                          ; CODE XREF: RtlDeleteRegistryValue+2B↑j
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14078060F:                          ; CODE XREF: RtlDeleteRegistryValue+4F↑j
                mov     rcx, [rsp+38h+arg_18]
                call    ZwClose
                jmp     short loc_140780601
RtlDeleteRegistryValue endp
