SeSetSessionIdTokenWithLinked proc near ; DATA XREF: .pdata:0000000140122784↑o

var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = byte ptr -8
arg_0           = qword ptr  30h
arg_10          = byte ptr  40h
arg_18          = qword ptr  48h

                mov     [rsp-28h+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 50h
                mov     rax, gs:188h
                lea     r9, [rbp+arg_18]
                and     [rbp+arg_18], 0
                mov     r15d, edx
                and     [rbp+var_20], 0
                xor     esi, esi
                and     [rbp+var_18], 0
                mov     r8b, [rax+232h]
                lea     rax, [rbp+var_8]
                mov     [rsp+50h+var_28], rax
                lea     rax, [rbp+arg_10]
                lea     edx, [rsi+8]
                mov     [rsp+50h+var_30], rax
                call    sub_1402164D0
                mov     ebx, eax
                test    eax, eax
                js      loc_14091E130
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rdi, [rbp+arg_18]
                mov     dl, 1
                mov     rcx, [rdi+30h]
                call    ExAcquireResourceSharedLite
                cmp     [rdi+0CCh], sil
                jz      short loc_14091E0A1
                mov     ebx, 0C000012Bh
                jmp     loc_14091E134
; ---------------------------------------------------------------------------

loc_14091E0A1:                          ; CODE XREF: SeSetSessionIdTokenWithLinked+85↑j
                mov     rdx, [rdi+0D8h]
                lea     r8, [rbp+var_20]
                lea     rcx, [rdx+8]
                mov     rdx, [rdx+0A0h]
                call    sub_1406B772C
                mov     ebx, eax
                test    eax, eax
                js      short loc_14091E134
                mov     rax, [rbp+var_20]
                mov     rdx, [rdi+0D8h]
                mov     r14, [rax+30h]
                mov     rax, [rdx+10h]
                mov     rcx, rax
                mov     [rbp+var_10], rax
                shr     rcx, 20h
                or      ecx, eax
                jz      short loc_14091E106
                mov     rdx, [rdx+0A0h]
                lea     r8, [rbp+var_18]
                lea     rcx, [rbp+var_10]
                call    sub_1406B772C
                mov     ebx, eax
                test    eax, eax
                js      short loc_14091E134
                mov     rax, [rbp+var_18]
                mov     rsi, [rax+30h]

loc_14091E106:                          ; CODE XREF: SeSetSessionIdTokenWithLinked+D2↑j
                test    r14, r14
                jz      short loc_14091E11C
                mov     edx, r15d
                mov     rcx, r14
                call    sub_1405E283C
                mov     ebx, eax
                test    eax, eax
                js      short loc_14091E134

loc_14091E11C:                          ; CODE XREF: SeSetSessionIdTokenWithLinked+F9↑j
                test    rsi, rsi
                jz      short loc_14091E134
                mov     edx, r15d
                mov     rcx, rsi
                call    sub_1405E283C
                mov     ebx, eax
                jmp     short loc_14091E134
; ---------------------------------------------------------------------------

loc_14091E130:                          ; CODE XREF: SeSetSessionIdTokenWithLinked+59↑j
                mov     rdi, [rbp+arg_18]

loc_14091E134:                          ; CODE XREF: SeSetSessionIdTokenWithLinked+8C↑j
                                        ; SeSetSessionIdTokenWithLinked+B0↑j ...
                test    rdi, rdi
                jz      short loc_14091E159
                mov     rcx, [rdi+30h]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rcx, [rbp+arg_18]
                call    PsDereferenceSiloContext

loc_14091E159:                          ; CODE XREF: SeSetSessionIdTokenWithLinked+127↑j
                mov     rcx, [rbp+var_20]
                test    rcx, rcx
                jz      short loc_14091E167
                call    sub_14020203C

loc_14091E167:                          ; CODE XREF: SeSetSessionIdTokenWithLinked+150↑j
                mov     rcx, [rbp+var_18]
                test    rcx, rcx
                jz      short loc_14091E175
                call    sub_14020203C

loc_14091E175:                          ; CODE XREF: SeSetSessionIdTokenWithLinked+15E↑j
                mov     eax, ebx
                mov     rbx, [rsp+50h+arg_0]
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
SeSetSessionIdTokenWithLinked endp
