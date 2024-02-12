ExAllocatePool2 proc near               ; CODE XREF: sub_1403F2740+70↑p
                                        ; sub_1403F81A0+1BC↑p ...

var_28          = qword ptr -28h
var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_10          = byte ptr  18h
arg_18          = byte ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                push    rdi
                sub     rsp, 40h
                and     dword ptr [rax-18h], 0
                mov     ebx, r8d
                mov     byte ptr [rax+20h], 0
                mov     rdi, rdx
                mov     byte ptr [rax+18h], 0
                test    r8d, r8d
                jnz     short loc_1409B62AA
                mov     eax, 0C000000Dh
                jmp     short loc_1409B62C9
; ---------------------------------------------------------------------------

loc_1409B62AA:                          ; CODE XREF: ExAllocatePool2+21↑j
                lea     rax, [rsp+48h+arg_10]
                xor     edx, edx
                lea     r9, [rsp+48h+arg_18]
                mov     [rsp+48h+var_28], rax
                lea     r8, [rsp+48h+var_18]
                call    sub_1409B60D0
                test    eax, eax
                jns     short loc_1409B62D2

loc_1409B62C9:                          ; CODE XREF: ExAllocatePool2+28↑j
                test    cl, 20h
                jnz     short loc_1409B632F
                xor     eax, eax
                jmp     short loc_1409B6323
; ---------------------------------------------------------------------------

loc_1409B62D2:                          ; CODE XREF: ExAllocatePool2+47↑j
                xor     edx, edx
                mov     r8d, ebx
                cmp     [rsp+48h+arg_10], dl
                lea     eax, [rdx+1]
                cmovnz  edx, eax
                cmp     [rsp+48h+arg_18], 0
                jz      short loc_1409B62F6
                mov     ecx, [rsp+48h+var_18]
                mov     rdx, rdi
                call    ExAllocatePoolWithQuotaTag
                jmp     short loc_1409B6323
; ---------------------------------------------------------------------------

loc_1409B62F6:                          ; CODE XREF: ExAllocatePool2+66↑j
                mov     rax, gs:20h
                mov     dword ptr [rsp+48h+var_28], edx
                mov     rdx, rdi
                mov     rcx, [rax+0C0h]
                movzx   r9d, word ptr [rcx+92h]
                mov     ecx, [rsp+48h+var_18]
                bts     r9d, 1Fh
                call    sub_140236960

loc_1409B6323:                          ; CODE XREF: ExAllocatePool2+50↑j
                                        ; ExAllocatePool2+74↑j
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409B632F:                          ; CODE XREF: ExAllocatePool2+4C↑j
                mov     ecx, eax
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
ExAllocatePool2 endp
