IoDuplicateDependency proc near         ; DATA XREF: .pdata:000000014011CF04↑o

var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 30h
                xor     ebx, ebx
                mov     rbp, rdx
                mov     [rax-14h], ebx
                mov     rsi, rcx
                test    rcx, rcx
                jz      loc_14089EEF6
                test    rdx, rdx
                jz      loc_14089EEF6
                mov     cl, 1
                call    sub_140679234
                mov     rax, [rsi+138h]
                cmp     [rax+50h], rbx
                jnz     short loc_14089EE52

loc_14089EE3A:                          ; CODE XREF: IoDuplicateDependency+94↓j
                lea     rcx, unk_140C455C0
                call    ExReleaseResourceLite
                xor     ecx, ecx
                call    sub_140679140
                jmp     loc_14089EEF2
; ---------------------------------------------------------------------------

loc_14089EE52:                          ; CODE XREF: IoDuplicateDependency+48↑j
                lea     rcx, [rsp+38h+var_18]
                mov     [rsp+38h+var_18], ebx
                mov     [rsp+38h+var_10], rbp
                call    sub_1407B5C28
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_14089EE86
                lea     rcx, [rsp+38h+var_18]
                call    sub_1407B5CCC
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_14089EE89
                mov     ebx, 0C000009Ah
                jmp     short loc_14089EE3A
; ---------------------------------------------------------------------------

loc_14089EE86:                          ; CODE XREF: IoDuplicateDependency+7B↑j
                inc     dword ptr [rax+58h]

loc_14089EE89:                          ; CODE XREF: IoDuplicateDependency+8D↑j
                mov     rcx, rsi
                call    sub_14073D5BC
                mov     r14, rax
                mov     rsi, [rax]
                cmp     rsi, rax
                jz      short loc_14089EEC4

loc_14089EE9C:                          ; CODE XREF: IoDuplicateDependency+CE↓j
                mov     edx, 1
                mov     rcx, rsi
                call    sub_14050C658
                mov     rsi, [rsi]
                mov     rcx, rax
                mov     rdx, rdi
                call    sub_14089F3EC
                test    eax, eax
                js      short loc_14089EEC2
                cmp     rsi, r14
                jnz     short loc_14089EE9C
                jmp     short loc_14089EEC4
; ---------------------------------------------------------------------------

loc_14089EEC2:                          ; CODE XREF: IoDuplicateDependency+C9↑j
                mov     ebx, eax

loc_14089EEC4:                          ; CODE XREF: IoDuplicateDependency+AA↑j
                                        ; IoDuplicateDependency+D0↑j
                add     dword ptr [rdi+58h], 0FFFFFFFFh
                jnz     short loc_14089EED2
                mov     rcx, rdi
                call    sub_1407CBFB0

loc_14089EED2:                          ; CODE XREF: IoDuplicateDependency+D8↑j
                mov     rcx, rbp
                call    sub_1407B5B70
                lea     rcx, unk_140C455C0
                call    ExReleaseResourceLite
                xor     ecx, ecx
                call    sub_140679140
                call    sub_14073D7B4

loc_14089EEF2:                          ; CODE XREF: IoDuplicateDependency+5D↑j
                mov     eax, ebx
                jmp     short loc_14089EEFB
; ---------------------------------------------------------------------------

loc_14089EEF6:                          ; CODE XREF: IoDuplicateDependency+27↑j
                                        ; IoDuplicateDependency+30↑j
                mov     eax, 0C000000Dh

loc_14089EEFB:                          ; CODE XREF: IoDuplicateDependency+104↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoDuplicateDependency endp
