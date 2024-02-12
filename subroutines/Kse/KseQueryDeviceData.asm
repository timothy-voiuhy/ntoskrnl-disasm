KseQueryDeviceData proc near            ; CODE XREF: KseQueryDeviceFlags+83↓p
                                        ; sub_14094B838+15A↓p
                                        ; DATA XREF: ...

var_38          = qword ptr -38h
var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001408409E0 SIZE 0000004B BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                and     qword ptr [r11-28h], 0
                mov     r15, r9
                mov     eax, cs:dword_140C50464
                mov     rdi, r8
                mov     rsi, rdx
                mov     rbp, rcx
                cmp     eax, 2
                jnz     loc_140840A21
                mov     eax, cs:dword_140C50460
                test    al, 2
                jnz     loc_140840A21
                test    rdx, rdx
                jz      loc_140840A17
                test    r8, r8
                jz      loc_140840A17
                test    r9, r9
                jz      loc_140840A17
                mov     eax, [r8]
                mov     r14d, 0C0000225h
                and     dword ptr [r8], 0
                mov     r12, [rsp+58h+arg_20]
                bt      eax, 1Dh
                jb      short loc_14075B6F5
                mov     [r11-38h], r12
                call    sub_14075BADC
                mov     ebx, eax
                cmp     eax, r14d
                jnz     loc_14075B784

loc_14075B6F5:                          ; CODE XREF: KseQueryDeviceData+7F↑j
                call    sub_1403723A0
                test    eax, eax
                jnz     loc_1408409E0
                mov     r9, r15
                mov     [rsp+58h+var_38], r12
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_14075B7E8
                mov     ebx, eax
                cmp     eax, r14d
                jnz     short loc_14075B784

loc_14075B71F:                          ; CODE XREF: KseQueryDeviceData+E5386↓j
                lea     rdx, [rsp+58h+var_28]
                mov     rcx, rbp
                call    sub_1407520B4
                mov     ebx, eax
                test    eax, eax
                jns     short loc_14075B754

loc_14075B732:                          ; CODE XREF: KseQueryDeviceData+126↓j
                                        ; KseQueryDeviceData+17B↓j ...
                mov     rbp, [rsp+58h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_10]
                mov     rdi, [rsp+58h+arg_18]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14075B754:                          ; CODE XREF: KseQueryDeviceData+D0↑j
                mov     r8, rdi
                mov     [rsp+58h+var_38], r12
                mov     rdi, [rsp+58h+var_28]
                mov     r9, r15
                mov     rcx, rdi
                mov     rdx, rsi
                call    sub_1407C66D4
                mov     rdx, rdi
                mov     rcx, rbp
                mov     ebx, eax
                call    sub_1407CB618
                test    eax, eax
                js      loc_1408409EB

loc_14075B784:                          ; CODE XREF: KseQueryDeviceData+8F↑j
                                        ; KseQueryDeviceData+BD↑j ...
                test    ebx, ebx
                js      short loc_14075B732
                cmp     dword ptr [r15], 0
                mov     eax, 1
                cmovz   ebx, r14d
                lock xadd cs:dword_140C2AB20, eax
                inc     eax
                lea     rdx, qword_140C2AB40
                and     eax, 3Fh
                and     dword ptr [rdx+rax*8+4], 0
                mov     dword ptr [rdx+rax*8], 908E5h
                mov     eax, cs:dword_140CF9EC4
                test    al, 1
                jnz     loc_1408409F9

loc_14075B7C3:                          ; CODE XREF: KseQueryDeviceData+E53B2↓j
                mov     r9, rbp
                mov     dword ptr [rsp+58h+var_38], ebx
                mov     r8, rsi
                lea     rdx, aKseQueryDevice ; "KSE: Query device [%ws, %ws]: found in "...
                xor     ecx, ecx
                call    sub_140371548
                jmp     loc_14075B732
KseQueryDeviceData endp
