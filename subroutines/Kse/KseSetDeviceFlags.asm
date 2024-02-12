KseSetDeviceFlags proc near             ; DATA XREF: .pdata:000000014011E14C↑o

var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = qword ptr  20h
arg_8           = qword ptr  28h
arg_10          = qword ptr  30h
arg_18          = qword ptr  38h

                mov     [rsp-18h+arg_0], rbx
                mov     [rsp-18h+arg_8], rsi
                mov     [rsp-18h+arg_10], r8
                push    rbp
                push    rdi
                push    r14
                mov     rbp, rsp
                sub     rsp, 50h
                mov     eax, cs:dword_140C50464
                xor     r14d, r14d
                mov     [rbp+var_20], r14
                mov     rsi, rdx
                mov     [rbp+var_18], r14
                mov     [rbp+arg_18], r14
                mov     [rbp+var_10], r14
                mov     [rbp+var_8], r14
                cmp     eax, 2
                jnz     loc_1408C0DEA
                mov     eax, cs:dword_140C50460
                test    al, 2
                jnz     loc_1408C0DEA
                test    rcx, rcx
                jz      loc_1408C0DE3
                test    rdx, rdx
                jz      loc_1408C0DE3
                mov     rdx, rcx
                lea     rcx, [rbp+var_20]
                call    sub_14075BB78
                mov     ebx, eax
                test    eax, eax
                js      loc_1408C0DEF
                mov     rdi, [rbp+var_18]
                lea     r8, [rbp+arg_18]
                mov     rdx, rdi
                lea     rcx, aRegistryMachin_40 ; "\\Registry\\Machine\\System\\CurrentCon"...
                call    sub_1408C28A8
                mov     ebx, eax
                cmp     eax, 0C0000034h
                jnz     short loc_1408C0DA8
                lea     r8, [rbp+arg_18]
                lea     rdx, aDevice_1  ; "Device"
                lea     rcx, aRegistryMachin_110 ; "\\Registry\\Machine\\System\\CurrentCon"...
                call    sub_1408C28A8
                mov     ebx, eax
                test    eax, eax
                js      short loc_1408C0DEF
                mov     rcx, [rbp+arg_18]
                test    rcx, rcx
                jz      short loc_1408C0D8F
                call    ZwClose
                lock inc cs:dword_140C2A8BC
                mov     rdi, [rbp+var_18]

loc_1408C0D8F:                          ; CODE XREF: KseSetDeviceFlags+BD↑j
                lea     r8, [rbp+arg_18]
                mov     [rbp+arg_18], r14
                mov     rdx, rdi
                lea     rcx, aRegistryMachin_40 ; "\\Registry\\Machine\\System\\CurrentCon"...
                call    sub_1408C28A8
                mov     ebx, eax

loc_1408C0DA8:                          ; CODE XREF: KseSetDeviceFlags+97↑j
                test    ebx, ebx
                js      short loc_1408C0DEF
                mov     rdx, rsi
                lea     rcx, [rbp+var_10]
                call    RtlInitUnicodeString
                mov     rcx, [rbp+arg_18]
                lea     rax, [rbp+arg_10]
                mov     [rsp+50h+var_28], 8
                lea     rdx, [rbp+var_10]
                mov     r9d, 0Bh
                mov     [rsp+50h+var_30], rax
                xor     r8d, r8d
                call    ZwSetValueKey
                mov     ebx, eax
                jmp     short loc_1408C0DEF
; ---------------------------------------------------------------------------

loc_1408C0DE3:                          ; CODE XREF: KseSetDeviceFlags+54↑j
                                        ; KseSetDeviceFlags+5D↑j
                mov     ebx, 0C000000Dh
                jmp     short loc_1408C0DEF
; ---------------------------------------------------------------------------

loc_1408C0DEA:                          ; CODE XREF: KseSetDeviceFlags+3D↑j
                                        ; KseSetDeviceFlags+4B↑j
                mov     ebx, 0C0000001h

loc_1408C0DEF:                          ; CODE XREF: KseSetDeviceFlags+73↑j
                                        ; KseSetDeviceFlags+B4↑j ...
                lea     rcx, [rbp+var_20]
                call    sub_140757A4C
                mov     rcx, [rbp+arg_18]
                test    rcx, rcx
                jz      short loc_1408C0E0D
                call    ZwClose
                lock inc cs:dword_140C2A8BC

loc_1408C0E0D:                          ; CODE XREF: KseSetDeviceFlags+13F↑j
                mov     rsi, [rsp+50h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+50h+arg_0]
                add     rsp, 50h
                pop     r14
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KseSetDeviceFlags endp
