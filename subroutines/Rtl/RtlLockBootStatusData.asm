RtlLockBootStatusData proc near         ; CODE XREF: sub_14077D848+94↑p
                                        ; sub_140799B60+F9↓p ...

var_60          = dword ptr -60h
var_58          = dword ptr -58h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
arg_0           = qword ptr  20h
arg_8           = byte ptr  28h
arg_10          = qword ptr  30h
arg_18          = qword ptr  38h

                mov     [rsp-18h+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                mov     rbp, rsp
                sub     rsp, 80h
                and     [rbp+arg_10], 0
                xorps   xmm0, xmm0
                xor     edi, edi
                mov     rbx, rcx
                movups  [rbp+var_30], xmm0
                mov     [rbp+arg_18], rdi
                xor     esi, esi
                movups  [rbp+var_20], xmm0
                mov     [rbp+arg_8], dil
                movups  [rbp+var_10], xmm0
                movups  [rbp+var_50], xmm0
                movups  [rbp+var_40], xmm0
                call    sub_1403F7DD4
                inc     cs:dword_140C1DC70
                cmp     cs:byte_140C1DC89, sil
                jz      short loc_14077DBC1
                test    rbx, rbx
                jz      short loc_14077DBB5
                mov     rax, cs:qword_140C1DC80
                mov     [rbx], rax
                jmp     loc_14077DC74
; ---------------------------------------------------------------------------

loc_14077DBB5:                          ; CODE XREF: RtlLockBootStatusData+54↑j
                                        ; RtlLockBootStatusData+F6↓j
                mov     cs:byte_140C1DC88, 1
                jmp     loc_14077DC74
; ---------------------------------------------------------------------------

loc_14077DBC1:                          ; CODE XREF: RtlLockBootStatusData+4F↑j
                lea     rdx, [rbp+arg_8]
                lea     rcx, [rbp+arg_18]
                call    sub_1403997F4
                mov     rdi, [rbp+arg_18]
                lea     rcx, [rbp+var_50]
                mov     rdx, rdi
                call    RtlInitUnicodeString
                and     qword ptr [rbp+var_30+8], rsi
                lea     rax, [rbp+var_50]
                xorps   xmm0, xmm0
                mov     [rsp+80h+var_58], 20h ; ' '
                lea     r9, [rbp+var_40]
                mov     qword ptr [rbp+var_20], rax
                lea     r8, [rbp+var_30]
                mov     dword ptr [rbp+var_30], 30h ; '0'
                mov     edx, 12019Fh
                mov     dword ptr [rbp+var_20+8], 2C0h
                lea     rcx, [rbp+arg_10]
                mov     [rsp+80h+var_60], 1
                movdqu  [rbp+var_10], xmm0
                call    ZwOpenFile
                mov     esi, eax
                test    eax, eax
                js      short loc_14077DC55
                mov     rcx, [rbp+arg_10]
                mov     cs:qword_140C1DC80, rcx
                mov     cs:byte_140C1DC89, 1
                call    sub_1403C8094
                test    rbx, rbx
                jz      loc_14077DBB5
                mov     rcx, [rbp+arg_10]
                mov     [rbx], rcx
                jmp     short loc_14077DC74
; ---------------------------------------------------------------------------

loc_14077DC55:                          ; CODE XREF: RtlLockBootStatusData+DA↑j
                and     cs:qword_140C1DC80, 0
                and     cs:dword_140C1DC70, 0
                mov     cs:byte_140C1DC89, 0
                test    rbx, rbx
                jz      short loc_14077DC74
                and     qword ptr [rbx], 0

loc_14077DC74:                          ; CODE XREF: RtlLockBootStatusData+60↑j
                                        ; RtlLockBootStatusData+6C↑j ...
                call    sub_1403F7E04
                cmp     [rbp+arg_8], 0
                jz      short loc_14077DC89
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_14077DC89:                          ; CODE XREF: RtlLockBootStatusData+12D↑j
                mov     rbx, [rsp+80h+arg_0]
                mov     eax, esi
                add     rsp, 80h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlLockBootStatusData endp
