SeShouldCheckForAccessRightsFromParent proc near
                                        ; DATA XREF: .rdata:000000014004FE80↑o
                                        ; .rdata:000000014004FE94↑o ...

var_28          = qword ptr -28h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

                push    rdi
                sub     rsp, 40h

loc_1406297D6:                          ; DATA XREF: .rdata:000000014004FE80↑o
                                        ; .rdata:000000014004FE94↑o ...
                mov     [rsp+48h+arg_0], rbx
                mov     rcx, rdx
                mov     [rsp+48h+arg_8], rbp
                mov     rbx, r8
                mov     [rsp+48h+var_10], rsi
                mov     rbp, rdx
                mov     sil, 1
                mov     [rsp+48h+arg_18], 0
                xor     dil, dil
                call    sub_14021CA20
                test    rax, rax
                jnz     short loc_14062985D

loc_140629807:                          ; CODE XREF: SeShouldCheckForAccessRightsFromParent+C3↓j
                mov     r8, [rbx+20h]
                test    r8, r8
                jnz     short loc_140629814
                mov     r8, [rbx+30h]

loc_140629814:                          ; CODE XREF: SeShouldCheckForAccessRightsFromParent+3E↑j
                lea     rax, [rsp+48h+arg_18]
                mov     r9b, 1
                xor     edx, edx
                mov     [rsp+48h+var_28], rax
                mov     rcx, rbp
                call    sub_140249750
                mov     ecx, [rbx+10h]
                mov     eax, dword ptr [rsp+48h+arg_18]
                mov     rbp, [rsp+48h+arg_8]
                and     eax, ecx
                mov     rbx, [rsp+48h+arg_0]
                cmp     eax, ecx
                jnz     short loc_140629845

loc_140629842:                          ; DATA XREF: .pdata:00000001400FE178↑o
                                        ; .pdata:00000001400FE184↑o
                mov     dil, 1

loc_140629845:                          ; CODE XREF: SeShouldCheckForAccessRightsFromParent+70↑j
                test    sil, sil
                mov     rsi, [rsp+48h+var_10]
                jz      short loc_140629898

loc_14062984F:                          ; DATA XREF: .pdata:00000001400FE184↑o
                                        ; .pdata:00000001400FE190↑o
                test    dil, dil
                jz      short loc_140629898
                mov     al, 1

loc_140629856:                          ; CODE XREF: SeShouldCheckForAccessRightsFromParent+CA↓j
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14062985D:                          ; CODE XREF: SeShouldCheckForAccessRightsFromParent+35↑j
                                        ; DATA XREF: .pdata:00000001400FE190↑o ...
                mov     [rsp+48h+var_18], r14
                lea     r14, [rax+8]
                test    r14, r14
                jz      short loc_14062988E
                lea     rcx, [rbx+20h]
                mov     [rsp+48h+arg_10], dil
                call    sub_14021BD38
                lea     r8, [rsp+48h+arg_10]
                mov     rdx, r14
                mov     rcx, rax
                call    sub_140219E70
                movzx   esi, [rsp+48h+arg_10]

loc_14062988E:                          ; CODE XREF: SeShouldCheckForAccessRightsFromParent+99↑j
                mov     r14, [rsp+48h+var_18]
                jmp     loc_140629807
; ---------------------------------------------------------------------------

loc_140629898:                          ; CODE XREF: SeShouldCheckForAccessRightsFromParent+7D↑j
                                        ; SeShouldCheckForAccessRightsFromParent+82↑j
                                        ; DATA XREF: ...
                xor     al, al
                jmp     short loc_140629856
SeShouldCheckForAccessRightsFromParent endp
