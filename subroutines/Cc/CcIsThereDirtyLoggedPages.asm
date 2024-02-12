CcIsThereDirtyLoggedPages proc near     ; DATA XREF: .rdata:00000001400812E8↑o
                                        ; .pdata:00000001400D7604↑o

var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 000000014047E852 SIZE 00000066 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                xor     eax, eax
                mov     rdi, rdx
                mov     r14, rcx
                mov     [rbp+var_8], rax
                xorps   xmm0, xmm0
                mov     [rbp+var_20], rax
                xorps   xmm1, xmm1
                lea     rdx, [rbp+var_18]
                lea     rcx, qword_140CDB640
                xor     sil, sil
                movups  [rbp+var_18], xmm0
                movups  [rbp+var_30], xmm1
                call    KeAcquireInStackQueuedSpinLock
                mov     rax, cs:qword_140CFC760
                mov     rcx, cs:qword_140C486F0
                mov     rdx, [rax+8]
                lea     rax, qword_140C486F0
                cmp     rcx, rax
                jz      short loc_140344C82

loc_140344C3A:                          ; CODE XREF: CcIsThereDirtyLoggedPages+7C↓j
                lea     rbx, [rcx-10h]
                cmp     [rbx+8], r14
                jz      short loc_140344C4E
                mov     rcx, [rcx]
                xor     ebx, ebx
                cmp     rcx, rax
                jnz     short loc_140344C3A

loc_140344C4E:                          ; CODE XREF: CcIsThereDirtyLoggedPages+72↑j
                test    rbx, rbx
                jz      short loc_140344C82
                and     qword ptr [rbp+var_30], 0
                lea     rcx, [rbp+var_30]
                sub     rdx, 0FFFFFFFFFFFFFF80h
                mov     qword ptr [rbp+var_30+8], rdx
                call    sub_14024B3F0
                cmp     qword ptr [rbx+40h], 0
                jnz     short loc_140344CBF
                cmp     dword ptr [rbx+0C8h], 0
                jnz     short loc_140344CBF

loc_140344C79:                          ; CODE XREF: CcIsThereDirtyLoggedPages+102↓j
                lea     rcx, [rbp+var_30]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel

loc_140344C82:                          ; CODE XREF: CcIsThereDirtyLoggedPages+68↑j
                                        ; CcIsThereDirtyLoggedPages+81↑j
                lea     rcx, [rbp+var_18]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_8]
                test    eax, eax
                jnz     loc_14047E852

loc_140344C9D:                          ; CODE XREF: CcIsThereDirtyLoggedPages+139C84↓j
                                        ; CcIsThereDirtyLoggedPages+139C90↓j ...
                mov     cr8, rbx
                mov     rbx, [rsp+50h+arg_0]
                mov     al, sil
                mov     rsi, [rsp+50h+arg_8]
                mov     rdi, [rsp+50h+arg_10]
                mov     r14, [rsp+50h+arg_18]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140344CBF:                          ; CODE XREF: CcIsThereDirtyLoggedPages+9E↑j
                                        ; CcIsThereDirtyLoggedPages+A7↑j
                test    rdi, rdi
                jz      short loc_140344CCF
                mov     eax, [rbx+0C8h]
                add     eax, [rbx+40h]
                mov     [rdi], eax

loc_140344CCF:                          ; CODE XREF: CcIsThereDirtyLoggedPages+F2↑j
                mov     sil, 1
                jmp     short loc_140344C79
CcIsThereDirtyLoggedPages endp
