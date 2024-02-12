SeCreateClientSecurity proc near        ; CODE XREF: sub_140619710+118↑p
                                        ; sub_1406BDBDC+3E5↓p ...

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
var_20          = qword ptr -20h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 80h
                mov     rsi, gs:188h
                mov     rbx, rdx

loc_140619EA9:                          ; DATA XREF: .rdata:000000014004D72C↑o
                                        ; .rdata:000000014004D740↑o ...
                mov     [rax+10h], rbp
                mov     rbp, r9
                mov     [rax+18h], r12
                mov     [rax+20h], r13
                xor     r13d, r13d
                mov     [rax-20h], r14
                movzx   r14d, r8b
                mov     [rax-28h], r15
                mov     byte ptr [rax-38h], 0
                mov     [rax-34h], r13d
                mov     [rax+8], r13b
                mov     [rax-37h], r13b
                mov     [rax-30h], r13
                cmp     rcx, rsi
                jz      loc_140619FE7
                mov     r15, [rcx+220h]

loc_140619EEB:                          ; CODE XREF: SeCreateClientSecurity+15E↓j
                lea     rax, [rsp+98h+arg_0]
                xor     edx, edx
                mov     [rsp+98h+var_70], rax
                lea     r9, [rsp+98h+var_38]
                lea     rax, [rsp+98h+var_34]
                lea     r8, [rsp+98h+var_36]
                mov     [rsp+98h+var_78], rax
                call    sub_140652700
                mov     rdi, rax
                test    rax, rax
                jnz     loc_140619FF3
                lea     rcx, [r15+4B8h]
                call    sub_14024C570
                mov     rdi, rax
                test    rax, rax
                jz      loc_14061A00F

loc_140619F37:                          ; CODE XREF: SeCreateClientSecurity+1C9↓j
                movzx   eax, byte ptr [r15+87Ah]
                mov     esi, 1
                mov     [rsp+98h+arg_0], al
                xor     r12b, r12b

loc_140619F4E:                          ; CODE XREF: SeCreateClientSecurity+16E↓j
                mov     rcx, [rdi+450h]
                lea     r9, [rsp+98h+var_30]
                lea     r8, [rsp+98h+var_37]
                lea     rdx, [rsp+98h+arg_0]
                call    sub_140219EF0
                mov     rax, [rsp+98h+var_30]
                mov     r9d, esi
                mov     [rsp+98h+var_48], rbp
                movzx   r8d, r14b
                mov     [rsp+98h+var_50], rax
                mov     rdx, rbx
                movzx   eax, [rsp+98h+var_37]
                mov     rcx, rdi
                mov     [rsp+98h+var_58], al
                mov     eax, [rsp+98h+var_34]
                mov     [rsp+98h+var_60], r13
                mov     [rsp+98h+var_68], 0
                mov     dword ptr [rsp+98h+var_70], eax
                mov     byte ptr [rsp+98h+var_78], r12b
                call    sub_140619C30
                mov     r15, [rsp+98h+var_28]
                mov     esi, eax
                mov     r14, [rsp+98h+var_20]
                mov     r13, [rsp+98h+arg_18]
                mov     r12, [rsp+98h+arg_10]
                mov     rbp, [rsp+98h+arg_8]
                test    eax, eax
                js      short loc_14061A003

loc_140619FD5:                          ; DATA XREF: .pdata:00000001400FD6A4↑o
                                        ; .pdata:00000001400FD6B0↑o
                cmp     byte ptr [rbx+8], 0
                jz      short loc_14061A003

loc_140619FDB:                          ; CODE XREF: SeCreateClientSecurity+17D↓j
                add     rsp, 80h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140619FE7:                          ; CODE XREF: SeCreateClientSecurity+4E↑j
                                        ; DATA XREF: .pdata:00000001400FD6B0↑o ...
                mov     r15, [rsi+0B8h]
                jmp     loc_140619EEB
; ---------------------------------------------------------------------------

loc_140619FF3:                          ; CODE XREF: SeCreateClientSecurity+89↑j
                movzx   r12d, [rsp+98h+var_38]
                mov     esi, 2
                jmp     loc_140619F4E
; ---------------------------------------------------------------------------

loc_14061A003:                          ; CODE XREF: SeCreateClientSecurity+143↑j
                                        ; SeCreateClientSecurity+149↑j
                                        ; DATA XREF: ...
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, esi
                jmp     short loc_140619FDB
; ---------------------------------------------------------------------------

loc_14061A00F:                          ; CODE XREF: SeCreateClientSecurity+A1↑j
                                        ; DATA XREF: .pdata:00000001400FD6C8↑o ...
                dec     word ptr [rsi+1E4h]
                xor     edx, edx
                lea     rcx, [r15+438h]
                call    ExAcquirePushLockSharedEx
                lea     rcx, [r15+4B8h]
                call    sub_14021AEA8
                mov     rdi, rax
                xor     ecx, ecx
                mov     eax, 11h
                lock cmpxchg [r15+438h], rcx
                jnz     short loc_14061A05E

loc_14061A045:                          ; CODE XREF: SeCreateClientSecurity+1DA↓j
                lea     rcx, [r15+438h]
                call    sub_140243660
                mov     rcx, rsi
                call    sub_14021E1F0
                jmp     loc_140619F37
; ---------------------------------------------------------------------------

loc_14061A05E:                          ; CODE XREF: SeCreateClientSecurity+1B3↑j
                lea     rcx, [r15+438h]
                call    ExfReleasePushLockShared
                jmp     short loc_14061A045
SeCreateClientSecurity endp
