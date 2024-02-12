ExBlockOnAddressPushLock proc near      ; CODE XREF: sub_1403239EC+52↑p
                                        ; sub_140595AA8+29↓p ...

var_48          = byte ptr -48h
var_8           = byte ptr -8
arg_20          = qword ptr  28h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 60h
                mov     rsi, rdx
                mov     rdi, r8
                xor     edx, edx
                mov     rbp, rcx
                lea     rcx, [rax-48h]
                mov     rbx, r9
                lea     r8d, [rdx+40h]
                call    memset
                lea     rdx, [rsp+68h+var_48]
                mov     rcx, rbp
                call    ExBlockPushLock
                cmp     rbx, 8
                ja      short loc_140323AE0
                sub     ebx, 1
                jnz     short loc_140323AC9
                mov     al, [rsi]
                cmp     al, [rdi]

loc_140323A9B:                          ; CODE XREF: ExBlockOnAddressPushLock+8E↓j
                                        ; ExBlockOnAddressPushLock+A8↓j ...
                jnz     short loc_140323AE0
                mov     r8, [rsp+68h+arg_20]
                lea     rdx, [rsp+68h+var_48]
                mov     rcx, rbp
                call    ExTimedWaitForUnblockPushLock

loc_140323AB2:                          ; CODE XREF: ExBlockOnAddressPushLock+A2↓j
                lea     r11, [rsp+68h+var_8]
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140323AC9:                          ; CODE XREF: ExBlockOnAddressPushLock+45↑j
                sub     ebx, 1
                jz      short loc_140323AFA
                sub     ebx, 2
                jz      short loc_140323AF4
                cmp     ebx, 4
                jnz     short loc_140323AE0
                mov     rax, [rsi]
                cmp     rax, [rdi]
                jmp     short loc_140323A9B
; ---------------------------------------------------------------------------

loc_140323AE0:                          ; CODE XREF: ExBlockOnAddressPushLock+40↑j
                                        ; ExBlockOnAddressPushLock:loc_140323A9B↑j ...
                xor     r8d, r8d
                lea     rdx, [rsp+68h+var_48]
                mov     rcx, rbp
                call    sub_140323C18
                xor     eax, eax
                jmp     short loc_140323AB2
; ---------------------------------------------------------------------------

loc_140323AF4:                          ; CODE XREF: ExBlockOnAddressPushLock+81↑j
                mov     eax, [rsi]
                cmp     eax, [rdi]
                jmp     short loc_140323A9B
; ---------------------------------------------------------------------------

loc_140323AFA:                          ; CODE XREF: ExBlockOnAddressPushLock+7C↑j
                movzx   eax, word ptr [rsi]
                cmp     ax, [rdi]
                jmp     short loc_140323A9B
ExBlockOnAddressPushLock endp
