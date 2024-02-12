CcSetLoggedDataThreshold proc near      ; DATA XREF: .rdata:0000000140089478↑o
                                        ; .pdata:00000001400D9674↑o

var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 000000014048C748 SIZE 00000066 BYTES

                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rsi
                mov     [rsp-8+arg_10], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                xor     eax, eax
                mov     esi, edx
                mov     rdi, rcx
                mov     [rbp+var_8], rax
                xorps   xmm0, xmm0
                mov     [rbp+var_20], rax
                xorps   xmm1, xmm1
                lea     rdx, [rbp+var_18]
                lea     rcx, qword_140CDB640
                movups  [rbp+var_18], xmm0
                movups  [rbp+var_30], xmm1
                call    KeAcquireInStackQueuedSpinLock
                mov     rbx, cs:qword_140C486F0
                lea     rax, qword_140C486F0
                jmp     short loc_1403630ED
; ---------------------------------------------------------------------------

loc_1403630E4:                          ; CODE XREF: CcSetLoggedDataThreshold+60↓j
                cmp     [rbx+18h], rdi
                jz      short loc_1403630F4
                mov     rbx, [rbx]

loc_1403630ED:                          ; CODE XREF: CcSetLoggedDataThreshold+52↑j
                cmp     rbx, rax
                jnz     short loc_1403630E4
                jmp     short loc_140363124
; ---------------------------------------------------------------------------

loc_1403630F4:                          ; CODE XREF: CcSetLoggedDataThreshold+58↑j
                mov     rax, cs:qword_140CFC760
                lea     rcx, [rbp+var_30]
                mov     rdx, [rax+8]
                and     qword ptr [rbp+var_30], 0
                sub     rdx, 0FFFFFFFFFFFFFF80h
                mov     qword ptr [rbp+var_30+8], rdx
                call    sub_14024B3F0
                lea     rcx, [rbp+var_30]
                mov     [rbx+84h], esi
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel

loc_140363124:                          ; CODE XREF: CcSetLoggedDataThreshold+62↑j
                lea     rcx, [rbp+var_18]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_8]
                test    eax, eax
                jnz     loc_14048C748

loc_14036313F:                          ; CODE XREF: CcSetLoggedDataThreshold+1296BA↓j
                                        ; CcSetLoggedDataThreshold+1296C6↓j ...
                mov     cr8, rbx
                mov     rbx, [rsp+50h+arg_0]
                mov     rsi, [rsp+50h+arg_8]
                mov     rdi, [rsp+50h+arg_10]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcSetLoggedDataThreshold endp
