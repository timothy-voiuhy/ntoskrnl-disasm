FsRtlProcessFileLock proc near          ; DATA XREF: .pdata:00000001400F138C↑o

var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = byte ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h

                mov     [rsp-28h+arg_0], rbx
                mov     [rsp-28h+arg_10], rsi
                push    rbp
                push    rdi
                push    r12
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                mov     r14, [rdx+0B8h]
                mov     r12, rcx
                and     [rbp+var_10], 0
                mov     r15, r8
                and     [rbp+var_8], 0
                mov     rsi, rdx
                mov     rcx, rdx
                movzx   r9d, byte ptr [r14+1]
                sub     r9d, 1
                jz      loc_1404F0184
                sub     r9d, 1
                jz      short loc_1404F0126
                sub     r9d, 1
                jz      short loc_1404F0103
                cmp     r9d, 1
                jz      short loc_1404F00EE
                mov     ebx, 0C0000010h
                mov     [rdx+30h], ebx
                mov     dl, 1
                call    IofCompleteRequest
                mov     dword ptr [rbp+var_10], ebx
                jmp     loc_1404F01E3
; ---------------------------------------------------------------------------

loc_1404F00EE:                          ; CODE XREF: FsRtlProcessFileLock+55↑j
                call    IoGetRequestorProcess
                mov     r9d, [r14+10h]
                mov     [rsp+70h+var_48], r15
                mov     byte ptr [rsp+70h+var_50], 1
                jmp     short loc_1404F0115
; ---------------------------------------------------------------------------

loc_1404F0103:                          ; CODE XREF: FsRtlProcessFileLock+4F↑j
                call    IoGetRequestorProcess
                mov     [rsp+70h+var_48], r15
                xor     r9d, r9d
                mov     byte ptr [rsp+70h+var_50], 0

loc_1404F0115:                          ; CODE XREF: FsRtlProcessFileLock+81↑j
                mov     rdx, [r14+30h]
                mov     r8, rax
                mov     rcx, r12
                call    sub_140326284
                jmp     short loc_1404F015E
; ---------------------------------------------------------------------------

loc_1404F0126:                          ; CODE XREF: FsRtlProcessFileLock+49↑j
                mov     rax, [r14+18h]
                mov     [rbp+arg_8], rax
                call    IoGetRequestorProcess
                mov     ecx, [r14+10h]
                lea     r8, [rbp+arg_8]
                mov     r9, [r14+8]
                mov     rdx, [r14+30h]
                mov     [rsp+70h+var_38], 0
                mov     [rsp+70h+var_40], r15
                mov     dword ptr [rsp+70h+var_48], ecx
                mov     rcx, r12
                mov     [rsp+70h+var_50], rax
                call    FsRtlFastUnlockSingle

loc_1404F015E:                          ; CODE XREF: FsRtlProcessFileLock+A4↑j
                and     [rsp+70h+var_48], 0
                lea     rcx, [rbp+var_10]
                mov     [rsp+70h+var_50], rcx
                mov     r9d, eax
                mov     rcx, [r12]
                mov     r8, rsi
                mov     rdx, r15
                mov     dword ptr [rbp+var_10], eax
                call    sub_1404EFA20
                jmp     short loc_1404F01E3
; ---------------------------------------------------------------------------

loc_1404F0184:                          ; CODE XREF: FsRtlProcessFileLock+3F↑j
                mov     dil, [r14+2]
                mov     rax, [r14+18h]
                mov     bl, dil
                shr     bl, 1
                and     dil, 1
                and     bl, 1
                mov     [rbp+arg_8], rax
                call    IoGetRequestorProcess
                mov     r9, [r14+8]
                lea     rcx, [rbp+var_10]
                mov     rdx, [r14+30h]
                lea     r8, [rbp+arg_8]
                mov     [rsp+70h+var_18], 0
                mov     [rsp+70h+var_20], r15
                mov     [rsp+70h+var_28], rsi
                mov     [rsp+70h+var_30], rcx
                mov     ecx, [r14+10h]
                mov     [rsp+70h+var_38], bl
                mov     byte ptr [rsp+70h+var_40], dil
                mov     dword ptr [rsp+70h+var_48], ecx
                mov     rcx, r12
                mov     [rsp+70h+var_50], rax
                call    FsRtlPrivateLock

loc_1404F01E3:                          ; CODE XREF: FsRtlProcessFileLock+69↑j
                                        ; FsRtlProcessFileLock+102↑j
                mov     eax, dword ptr [rbp+var_10]
                lea     r11, [rsp+70h+var_s0]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlProcessFileLock endp
