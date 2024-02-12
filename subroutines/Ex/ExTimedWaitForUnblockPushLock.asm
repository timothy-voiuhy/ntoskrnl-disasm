ExTimedWaitForUnblockPushLock proc near ; CODE XREF: ExBlockOnAddressPushLock+5D↑p
                                        ; sub_140323C18+B6↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047285E SIZE 0000006B BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 30h
                and     word ptr [rdx], 0
                lea     rax, [rdx+8]
                and     dword ptr [rdx+4], 0
                lea     r9, [rdx+34h]
                mov     ebx, cs:dword_140C54618
                mov     r14d, 1
                mov     [rax+8], rax
                mov     r11, r8
                mov     [rax], rax
                mov     rdi, rdx
                mov     rax, 0FFFFF7800000036Ah
                mov     byte ptr [rdx+2], 6
                mov     rsi, rcx
                cmp     [rax], r14w
                jbe     short loc_140323BC5
                test    r9, r9
                jz      short loc_140323B9D
                mov     rax, 0FFFFF78000000297h
                cmp     byte ptr [rax], 0
                jnz     loc_14047285E

loc_140323B9D:                          ; CODE XREF: ExTimedWaitForUnblockPushLock+58↑j
                mov     rax, 0FFFFF780000002D6h
                xor     edx, edx
                movzx   ecx, word ptr [rax]
                mov     eax, ebx
                div     ecx
                xor     edx, edx

loc_140323BB2:                          ; CODE XREF: ExTimedWaitForUnblockPushLock+93↓j
                mov     ecx, [r9]
                test    cl, 2
                jz      short loc_140323C07
                cmp     edx, eax
                jz      short loc_140323BC5
                pause
                add     edx, r14d
                jmp     short loc_140323BB2
; ---------------------------------------------------------------------------

loc_140323BC5:                          ; CODE XREF: ExTimedWaitForUnblockPushLock+53↑j
                                        ; ExTimedWaitForUnblockPushLock+8C↑j ...
                lock btr dword ptr [r9], 1
                jnb     short loc_140323C0B
                xor     r9d, r9d
                mov     [rsp+38h+var_18], r11
                xor     r8d, r8d
                mov     rcx, rdi
                lea     edx, [r9+1Ch]
                call    KeWaitForSingleObject
                mov     ebx, eax
                test    eax, eax
                jnz     loc_1404728B5

loc_140323BEE:                          ; CODE XREF: ExTimedWaitForUnblockPushLock+DD↓j
                                        ; ExTimedWaitForUnblockPushLock+14ED94↓j
                mov     eax, ebx

loc_140323BF0:                          ; CODE XREF: ExTimedWaitForUnblockPushLock+D9↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                mov     rdi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140323C07:                          ; CODE XREF: ExTimedWaitForUnblockPushLock+88↑j
                                        ; ExTimedWaitForUnblockPushLock+14ED4D↓j
                xor     eax, eax
                jmp     short loc_140323BF0
; ---------------------------------------------------------------------------

loc_140323C0B:                          ; CODE XREF: ExTimedWaitForUnblockPushLock+9B↑j
                xor     ebx, ebx
                jmp     short loc_140323BEE
ExTimedWaitForUnblockPushLock endp
