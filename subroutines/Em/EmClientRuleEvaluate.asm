EmClientRuleEvaluate proc near          ; CODE XREF: sub_14057505C+133↑p
                                        ; PoRegisterPowerSettingCallback+2A9↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001409A4962 SIZE 0000000A BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                xor     ebx, ebx
                mov     rdi, r9
                mov     esi, r8d
                mov     rbp, rdx
                mov     r14, rcx
                test    rcx, rcx
                jz      loc_1409A4962
                test    rdx, rdx
                jz      loc_1409A4962
                test    r9, r9
                jz      loc_1409A4962
                test    r8d, r8d
                jz      loc_1409A4962
                mov     dword ptr [r9], 1
                call    sub_1409914D4
                test    al, al
                jz      loc_14099242C
                xor     edx, edx
                lea     rcx, qword_140C47818
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, r14
                call    sub_1402B4608
                mov     rcx, rax
                test    rax, rax
                jz      short loc_140992433
                call    sub_1402B4640
                test    rax, rax
                jz      short loc_140992433
                cmp     esi, [rcx+30h]
                jnz     short loc_14099243A
                mov     r8d, esi
                mov     rdx, rbp
                mov     rcx, rax
                call    sub_1403741D4
                mov     [rdi], eax

loc_1409923DC:                          ; CODE XREF: EmClientRuleEvaluate+F8↓j
                                        ; EmClientRuleEvaluate+FF↓j
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd cs:qword_140C47818, rax
                and     al, 6
                cmp     al, 2
                jz      short loc_14099241E

loc_1409923EF:                          ; CODE XREF: EmClientRuleEvaluate+EA↓j
                lea     rcx, qword_140C47818
                call    sub_140243660
                call    sub_140991458

loc_140992400:                          ; CODE XREF: EmClientRuleEvaluate+F1↓j
                                        ; EmClientRuleEvaluate+12627↓j
                mov     rbp, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14099241E:                          ; CODE XREF: EmClientRuleEvaluate+AD↑j
                lea     rcx, qword_140C47818
                call    ExfTryToWakePushLock
                jmp     short loc_1409923EF
; ---------------------------------------------------------------------------

loc_14099242C:                          ; CODE XREF: EmClientRuleEvaluate+59↑j
                mov     ebx, 0C0000006h
                jmp     short loc_140992400
; ---------------------------------------------------------------------------

loc_140992433:                          ; CODE XREF: EmClientRuleEvaluate+7B↑j
                                        ; EmClientRuleEvaluate+85↑j
                mov     ebx, 0C0000225h
                jmp     short loc_1409923DC
; ---------------------------------------------------------------------------

loc_14099243A:                          ; CODE XREF: EmClientRuleEvaluate+8A↑j
                mov     ebx, 0C000000Dh
                jmp     short loc_1409923DC
EmClientRuleEvaluate endp
