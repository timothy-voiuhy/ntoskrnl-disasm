SeCreateClientSecurityEx proc near      ; CODE XREF: sub_140618380+A6↑p
                                        ; sub_140619710:loc_140619943↑p ...

var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = byte ptr -68h
var_60          = qword ptr -60h
var_58          = byte ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_38          = byte ptr -38h
var_37          = byte ptr -37h
var_36          = byte ptr -36h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407FCF0A SIZE 00000030 BYTES

                mov     r11, rsp
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 78h
                mov     rbp, gs:188h
                xor     eax, eax

loc_140619A46:                          ; DATA XREF: .rdata:000000014004D5EC↑o
                                        ; .rdata:000000014004D600↑o ...
                mov     [r11+10h], r12
                mov     rdi, r9
                mov     [r11+18h], r13
                mov     r12, rdx
                mov     [r11+20h], r14
                mov     rbx, rcx
                mov     [r11-28h], r15
                movzx   r15d, r8b
                mov     [rsp+98h+var_38], 0
                mov     [rsp+98h+var_34], eax
                mov     [r11+8], al
                mov     [rsp+98h+var_37], al
                mov     [r11-30h], rax
                cmp     rcx, rbp
                jz      loc_1407FCF0A
                mov     r14, [rcx+220h]

loc_140619A88:                          ; CODE XREF: SeCreateClientSecurityEx+1E34E1↓j
                lea     rax, [rsp+98h+arg_0]
                xor     edx, edx
                mov     [rsp+98h+var_70], rax
                lea     r9, [rsp+98h+var_38]
                lea     rax, [rsp+98h+var_34]
                lea     r8, [rsp+98h+var_36]
                mov     [rsp+98h+var_78], rax
                call    sub_140652700
                mov     rsi, rax
                test    rax, rax
                jnz     loc_140619B8D
                lea     rcx, [r14+4B8h]
                call    sub_14024C570
                mov     rsi, rax
                test    rax, rax
                jz      loc_140619B9D

loc_140619AD4:                          ; CODE XREF: SeCreateClientSecurityEx+1B7↓j
                movzx   eax, byte ptr [r14+87Ah]
                mov     ebp, 1
                mov     [rsp+98h+arg_0], al
                xor     r13b, r13b

loc_140619AEB:                          ; CODE XREF: SeCreateClientSecurityEx+168↓j
                mov     rcx, [rsi+450h]
                lea     r9, [rsp+98h+var_30]
                lea     r8, [rsp+98h+var_37]
                lea     rdx, [rsp+98h+arg_0]
                call    sub_140219EF0
                mov     rax, [rsp+98h+var_30]
                mov     r9d, ebp
                mov     [rsp+98h+var_48], rdi
                movzx   r8d, r15b
                mov     [rsp+98h+var_50], rax
                mov     rdx, r12
                movzx   eax, [rsp+98h+var_37]
                mov     rcx, rsi
                mov     [rsp+98h+var_58], al
                mov     eax, [rsp+98h+var_34]
                mov     [rsp+98h+var_60], rbx
                mov     [rsp+98h+var_68], 1
                mov     dword ptr [rsp+98h+var_70], eax
                mov     byte ptr [rsp+98h+var_78], r13b
                call    sub_140619C30
                mov     r15, [rsp+98h+var_28]
                mov     ebp, eax
                mov     r14, [rsp+98h+arg_18]
                mov     r13, [rsp+98h+arg_10]
                mov     r12, [rsp+98h+arg_8]
                test    eax, eax
                js      short loc_140619BEC

loc_140619B6D:                          ; DATA XREF: .pdata:00000001400FD62C↑o
                                        ; .pdata:00000001400FD638↑o
                cmp     byte ptr [rdi+8], 0
                jz      short loc_140619BEC
                mov     rcx, cs:PsInitialSystemProcess
                cmp     [rbx+220h], rcx
                jz      short loc_140619BF8

loc_140619B83:                          ; CODE XREF: SeCreateClientSecurityEx+1C6↓j
                                        ; SeCreateClientSecurityEx+1E34F5↓j ...
                add     rsp, 78h
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140619B8D:                          ; CODE XREF: SeCreateClientSecurityEx+86↑j
                                        ; DATA XREF: .pdata:00000001400FD638↑o ...
                movzx   r13d, [rsp+98h+var_38]
                mov     ebp, 2
                jmp     loc_140619AEB
; ---------------------------------------------------------------------------

loc_140619B9D:                          ; CODE XREF: SeCreateClientSecurityEx+9E↑j
                dec     word ptr [rbp+1E4h]
                lea     rcx, [r14+438h]
                xor     edx, edx
                call    ExAcquirePushLockSharedEx
                lea     rcx, [r14+4B8h]
                call    sub_14021AEA8
                mov     rsi, rax
                xor     ecx, ecx
                mov     eax, 11h
                lock cmpxchg [r14+438h], rcx
                jnz     short loc_140619C11

loc_140619BD3:                          ; CODE XREF: SeCreateClientSecurityEx+1ED↓j
                lea     rcx, [r14+438h]
                call    sub_140243660
                mov     rcx, rbp
                call    sub_14021E1F0
                jmp     loc_140619AD4
; ---------------------------------------------------------------------------

loc_140619BEC:                          ; CODE XREF: SeCreateClientSecurityEx+13B↑j
                                        ; SeCreateClientSecurityEx+141↑j
                                        ; DATA XREF: ...
                mov     rcx, rsi
                call    PsDereferenceSiloContext

loc_140619BF4:                          ; CODE XREF: SeCreateClientSecurityEx+1DA↓j
                mov     eax, ebp
                jmp     short loc_140619B83
; ---------------------------------------------------------------------------

loc_140619BF8:                          ; CODE XREF: SeCreateClientSecurityEx+151↑j
                call    PsGetCurrentServerSilo
                mov     rcx, rax
                mov     rbx, rax
                call    PsIsHostSilo
                test    al, al
                jnz     short loc_140619BF4
                jmp     loc_1407FCF16
; ---------------------------------------------------------------------------

loc_140619C11:                          ; CODE XREF: SeCreateClientSecurityEx+1A1↑j
                                        ; DATA XREF: .pdata:00000001400FD650↑o ...
                lea     rcx, [r14+438h]
                call    ExfReleasePushLockShared
                jmp     short loc_140619BD3
SeCreateClientSecurityEx endp
