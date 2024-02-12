EmClientQueryRuleState proc near        ; CODE XREF: sub_1403C97D8+70↑p
                                        ; sub_1406786D4+95↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001409A38D0 SIZE 00000014 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                xor     edi, edi
                mov     rsi, rdx
                mov     rbx, rcx
                test    rcx, rcx
                jz      loc_1409A38DA
                test    rdx, rdx
                jz      loc_1409A38DA
                mov     dword ptr [rdx], 1
                call    sub_1409914D4
                test    al, al
                jz      loc_1409A38D0
                xor     edx, edx
                lea     rcx, qword_140C47818
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, rbx
                call    sub_1402B4608
                or      rbx, 0FFFFFFFFFFFFFFFFh
                mov     r14, rax
                test    rax, rax
                jz      short loc_14099143C
                mov     rcx, rax
                call    sub_1402B4640
                mov     rbp, rax
                test    rax, rax
                jz      short loc_14099143C
                lock inc dword ptr [rax]
                xor     edx, edx
                call    sub_1402B4668
                lock add [rbp+0], ebx
                mov     eax, [r14+10h]
                mov     [rsi], eax

loc_1409913FC:                          ; CODE XREF: EmClientQueryRuleState+D1↓j
                lock xadd cs:qword_140C47818, rbx
                and     bl, 6
                cmp     bl, 2
                jz      short loc_140991443

loc_14099140D:                          ; CODE XREF: EmClientQueryRuleState+DF↓j
                lea     rcx, qword_140C47818
                call    sub_140243660
                call    sub_140991458

loc_14099141E:                          ; CODE XREF: EmClientQueryRuleState+12565↓j
                                        ; EmClientQueryRuleState+1256F↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, edi
                mov     rdi, [rsp+28h+arg_18]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14099143C:                          ; CODE XREF: EmClientQueryRuleState+66↑j
                                        ; EmClientQueryRuleState+76↑j
                mov     edi, 0C0000225h
                jmp     short loc_1409913FC
; ---------------------------------------------------------------------------

loc_140991443:                          ; CODE XREF: EmClientQueryRuleState+9B↑j
                lea     rcx, qword_140C47818
                call    ExfTryToWakePushLock
                jmp     short loc_14099140D
EmClientQueryRuleState endp
