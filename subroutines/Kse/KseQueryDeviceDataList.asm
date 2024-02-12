KseQueryDeviceDataList proc near        ; CODE XREF: sub_14094B838+169↓p
                                        ; DATA XREF: .pdata:000000014011E134↑o

var_78          = qword ptr -78h
var_68          = byte ptr -68h
var_40          = byte ptr -40h
var_18          = byte ptr -18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 80h
                mov     r15, rdx
                mov     r14d, r8d
                xor     edx, edx
                mov     rdi, rcx
                lea     rcx, [rax-68h]
                mov     rbp, r9
                lea     r8d, [rdx+48h]
                call    memset
                and     [rsp+98h+var_78], 0
                mov     eax, cs:dword_140C50464
                cmp     eax, 2
                jnz     loc_1408C0BFF
                mov     eax, cs:dword_140C50460
                test    al, 2
                jnz     loc_1408C0BFF
                test    rdi, rdi
                jz      loc_1408C0BF8
                test    rbp, rbp
                jz      loc_1408C0BF8
                mov     r9, rbp
                mov     r8d, r14d
                mov     rdx, r15
                mov     rcx, rdi
                call    sub_1408C11A0
                mov     ebx, eax
                cmp     eax, 0C0000225h
                jnz     loc_1408C0C04
                call    sub_1403723A0
                test    eax, eax
                jz      short loc_1408C0B59
                call    sub_1408C0C2C
                jmp     short loc_1408C0BB4
; ---------------------------------------------------------------------------

loc_1408C0B59:                          ; CODE XREF: KseQueryDeviceDataList+90↑j
                mov     rdx, rdi
                lea     rcx, [rsp+98h+var_40]
                call    RtlInitUnicodeString
                mov     rcx, cs:qword_140C504A8
                call    sub_140741300
                mov     rcx, cs:qword_140C504A8
                lea     rdx, [rsp+98h+var_68]
                call    sub_14075B9F0
                mov     [rsp+98h+var_78], rax
                mov     rsi, rax
                test    rax, rax
                jz      short loc_1408C0BA3
                mov     r9, rbp
                mov     r8d, r14d
                mov     rdx, r15
                mov     rcx, rax
                call    sub_1408C0E2C
                mov     ebx, eax

loc_1408C0BA3:                          ; CODE XREF: KseQueryDeviceDataList+CE↑j
                mov     rcx, cs:qword_140C504A8
                call    sub_1408C2868
                test    rsi, rsi
                jnz     short loc_1408C0C04

loc_1408C0BB4:                          ; CODE XREF: KseQueryDeviceDataList+97↑j
                lea     rdx, [rsp+98h+var_78]
                mov     rcx, rdi
                call    sub_1407520B4
                mov     ebx, eax
                test    eax, eax
                js      short loc_1408C0C04
                mov     rsi, [rsp+98h+var_78]
                mov     r9, rbp
                mov     rcx, rsi
                mov     r8d, r14d
                mov     rdx, r15
                call    sub_1408C0E2C
                mov     rdx, rsi
                mov     rcx, rdi
                mov     ebx, eax
                call    sub_1407CB618
                test    eax, eax
                jns     short loc_1408C0C04
                mov     rcx, rsi
                call    sub_1408C2720
                jmp     short loc_1408C0C04
; ---------------------------------------------------------------------------

loc_1408C0BF8:                          ; CODE XREF: KseQueryDeviceDataList+5C↑j
                                        ; KseQueryDeviceDataList+65↑j
                mov     ebx, 0C000000Dh
                jmp     short loc_1408C0C04
; ---------------------------------------------------------------------------

loc_1408C0BFF:                          ; CODE XREF: KseQueryDeviceDataList+45↑j
                                        ; KseQueryDeviceDataList+53↑j
                mov     ebx, 0C0000225h

loc_1408C0C04:                          ; CODE XREF: KseQueryDeviceDataList+83↑j
                                        ; KseQueryDeviceDataList+F2↑j ...
                lea     r11, [rsp+98h+var_18]
                mov     eax, ebx
                mov     rbx, [r11+20h]
                mov     rbp, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KseQueryDeviceDataList endp
