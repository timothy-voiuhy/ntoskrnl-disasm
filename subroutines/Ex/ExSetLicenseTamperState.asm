ExSetLicenseTamperState proc near       ; DATA XREF: .pdata:00000001401243D4↑o

var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = byte ptr -18h
arg_0           = dword ptr  8

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 50h
                xor     r15d, r15d
                mov     edi, ecx
                mov     [rax+8], r15d
                mov     r14b, 1
                call    sub_1402B95B0
                mov     rbp, [rax+388h]
                test    edi, edi
                jz      loc_14094EA89
                cmp     edi, 3
                jz      loc_14094EA89
                mov     rax, gs:188h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                add     [rax+1E4h], bx
                lea     rsi, [rbp+0B6F8h]
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockExclusiveEx
                lea     rdx, [rsp+68h+arg_0]
                mov     rcx, rbp
                call    sub_1405B2F98
                cmp     [rsp+68h+arg_0], r15d
                mov     edx, edi
                mov     rcx, rbp
                cmovnz  r14d, r15d
                call    sub_1405B3334
                xorps   xmm0, xmm0
                lea     r8d, [r15+20h]
                xor     r9d, r9d
                lea     rdx, [rsp+68h+var_48]
                mov     rcx, rbp
                movups  [rsp+68h+var_48], xmm0
                movups  [rsp+68h+var_38], xmm0
                movups  [rsp+68h+var_28], xmm0
                call    ntoskrnl_20
                lock xadd [rsi], rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_14094EA51
                mov     rcx, rsi
                call    ExfTryToWakePushLock

loc_14094EA51:                          ; CODE XREF: ExSetLicenseTamperState+B7↑j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                test    r14b, r14b
                jz      short loc_14094EA89
                call    sub_1402B95B0
                mov     rcx, [rax+388h]
                mov     rax, cs:qword_140D2D4F8
                test    rax, rax
                jz      short loc_14094EA89
                call    sub_1404079D0

loc_14094EA89:                          ; CODE XREF: ExSetLicenseTamperState+32↑j
                                        ; ExSetLicenseTamperState+3B↑j ...
                lea     r11, [rsp+68h+var_18]
                mov     rbx, [r11+28h]
                mov     rbp, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExSetLicenseTamperState endp
