IoSetSystemPartition proc near          ; DATA XREF: .pdata:000000014011CA0C↑o

var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = xmmword ptr -0A0h
var_90          = xmmword ptr -90h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = xmmword ptr -60h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_20          = byte ptr -20h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rsi
                push    rbp
                push    rdi
                push    r12
                push    r13
                push    r14
                lea     rbp, [rsp-37h]
                sub     rsp, 0C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_30], rax
                mov     rsi, rcx
                lea     rdx, aRegistryMachin_102 ; "\\REGISTRY\\MACHINE\\SYSTEM"
                xorps   xmm0, xmm0
                lea     rcx, [rbp+57h+var_90]
                xorps   xmm1, xmm1
                xor     r14d, r14d
                mov     ebx, r14d
                mov     [rbp+57h+var_B0], rbx
                movups  [rbp+57h+var_A0], xmm0
                movups  [rbp+57h+var_90], xmm1
                call    RtlInitUnicodeString
                lea     rax, [rbp+57h+var_90]
                mov     [rbp+57h+var_80], 30h ; '0'
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_70], rax
                lea     r8, [rbp+57h+var_80]
                mov     [rbp+57h+var_68], 240h
                mov     edx, 0F003Fh
                mov     [rbp+57h+var_A8], r14
                lea     rcx, [rbp+57h+var_A8]
                mov     [rbp+57h+var_78], r14
                movdqu  [rbp+57h+var_60], xmm0
                call    ZwOpenKey
                mov     edi, eax
                test    eax, eax
                js      loc_140895541
                mov     rdx, [rbp+57h+var_A8]
                lea     rax, [rbp+57h+var_50]
                mov     [rsp+0E0h+var_B8], r14
                lea     r8, [rbp+57h+var_A0]
                mov     r9d, 0F003Fh
                mov     qword ptr [rbp+57h+var_A0+8], rax
                lea     rcx, [rbp+57h+var_B0]
                mov     [rbp+57h+var_50], 650053h
                mov     [rbp+57h+var_4C], 750074h
                mov     [rbp+57h+var_48], 70h ; 'p'
                mov     dword ptr [rbp+57h+var_A0], 0C000Ah
                mov     dword ptr [rsp+0E0h+var_C0], r14d
                call    sub_14073B9B0
                mov     rbx, [rbp+57h+var_B0]
                mov     edi, eax
                test    eax, eax
                js      short loc_140895541
                movzx   eax, word ptr [rsi]
                lea     r9d, [r14+1]
                add     eax, 2
                mov     [rbp+57h+var_50], 790053h
                mov     dword ptr [rsp+0E0h+var_B8], eax
                lea     rdx, [rbp+57h+var_A0]
                mov     rax, [rsi+8]
                xor     r8d, r8d
                mov     rcx, rbx
                mov     [rsp+0E0h+var_C0], rax
                mov     [rbp+57h+var_4C], 740073h
                mov     [rbp+57h+var_48], 6D0065h
                mov     [rbp+57h+var_44], 610050h
                mov     [rbp+57h+var_40], 740072h
                mov     [rbp+57h+var_3C], 740069h
                mov     [rbp+57h+var_38], 6F0069h
                mov     [rbp+57h+var_34], 6Eh ; 'n'
                mov     dword ptr [rbp+57h+var_A0], 20001Eh
                call    ZwSetValueKey
                mov     edi, eax

loc_140895541:                          ; CODE XREF: IoSetSystemPartition+95↑j
                                        ; IoSetSystemPartition+E8↑j
                mov     rcx, [rbp+57h+var_A8]
                test    rcx, rcx
                jz      short loc_14089554F
                call    ZwClose

loc_14089554F:                          ; CODE XREF: IoSetSystemPartition+158↑j
                test    rbx, rbx
                jz      short loc_14089555C
                mov     rcx, rbx
                call    ZwClose

loc_14089555C:                          ; CODE XREF: IoSetSystemPartition+162↑j
                mov     eax, edi
                mov     rcx, [rbp+57h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0E0h+var_20]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1408953F0
IoSetSystemPartition endp
