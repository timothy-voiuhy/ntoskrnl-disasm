IoGetDeviceDirectory proc near          ; DATA XREF: .pdata:000000014011D030↑o

var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A0          = dword ptr -0A0h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = qword ptr -88h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
var_20          = byte ptr -20h
arg_20          = qword ptr  30h

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-57h]
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+4Fh+var_28], rax
                mov     r13, [rbp+4Fh+arg_20]
                xorps   xmm0, xmm0
                mov     rbx, rcx
                xorps   xmm1, xmm1
                xor     ecx, ecx
                mov     r15d, edx
                mov     [rbp+4Fh+var_8C], ecx
                mov     edi, ecx
                mov     [rbp+4Fh+var_88], rcx
                mov     r12d, ecx
                mov     [rbp+4Fh+var_90], ecx
                xor     edx, edx
                mov     [rbp+4Fh+var_60], rcx
                mov     r14, r9
                lea     rcx, [rbp+4Fh+var_70]
                mov     esi, r8d
                movups  [rbp+4Fh+var_70], xmm0
                movups  [rbp+4Fh+var_58], xmm1
                movups  [rbp+4Fh+var_38], xmm0
                movups  [rbp+4Fh+var_80], xmm1
                movups  [rbp+4Fh+var_48], xmm0
                call    RtlInitUnicodeString
                xor     edx, edx
                lea     rcx, [rbp+4Fh+var_58]
                call    RtlInitUnicodeString
                xor     edx, edx
                lea     rcx, [rbp+4Fh+var_80]
                call    RtlInitUnicodeString
                xor     edx, edx
                lea     rcx, [rbp+4Fh+var_48]
                call    RtlInitUnicodeString
                xor     ecx, ecx
                test    rbx, rbx
                jz      loc_1408A0315
                test    esi, esi
                jnz     loc_1408A0315
                test    r14, r14
                jnz     loc_1408A0315
                test    r13, r13
                jz      loc_1408A0315
                mov     rax, [rbx+138h]
                mov     rsi, [rax+28h]
                test    rsi, rsi
                jz      loc_1408A0315
                cmp     [rsi+28h], cx
                jz      loc_1408A0315
                cmp     [rsi+30h], rcx
                jz      loc_1408A0315
                test    r15d, r15d
                jnz     loc_1408A0315
                lea     r15d, [r12+1]
                mov     r8d, r15d
                lea     r9, [rbp+4Fh+var_70]
                lea     rdx, aSystemrootSyst_9 ; "\\SystemRoot\\System32\\DriverState"
                lea     rcx, aDriverstate ; "DriverState"
                call    sub_14077F8DC
                xor     ecx, ecx
                mov     ebx, eax
                test    eax, eax
                js      loc_1408A031A
                mov     r8, [rsi+30h]
                lea     rax, [rbp+4Fh+var_90]
                mov     [rsp+0F0h+var_A0], ecx
                lea     edx, [rcx+4Eh]
                mov     qword ptr [rsp+0F0h+var_A8], rax
                mov     r9d, r15d
                lea     rax, [rbp+4Fh+var_60]
                mov     [rsp+0F0h+var_B0], rax
                lea     rax, [rbp+4Fh+var_8C]
                mov     [rsp+0F0h+var_B8], rax
                lea     rax, qword_14002EC68
                mov     [rsp+0F0h+var_C0], rax
                mov     [rsp+0F0h+var_C8], rcx
                mov     [rsp+0F0h+var_D0], rcx
                mov     ecx, 6F697050h
                call    sub_1406CC57C
                mov     r12, [rbp+4Fh+var_60]
                lea     r11, qword_140010FB0
                xor     r9d, r9d
                or      r15, 0FFFFFFFFFFFFFFFFh
                mov     ebx, eax
                mov     r10d, 0C0000225h
                test    eax, eax
                js      loc_1408A01A6
                cmp     [rbp+4Fh+var_8C], 12h
                jnz     short loc_1408A0161
                cmp     [rbp+4Fh+var_90], 2
                jb      short loc_1408A0161
                mov     rdx, r15

loc_1408A0127:                          ; CODE XREF: IoGetDeviceDirectory+19F↓j
                inc     rdx
                cmp     [r12+rdx*2], r9w
                jnz     short loc_1408A0127
                mov     r8d, r9d
                test    rdx, rdx
                jz      short loc_1408A0164
                mov     rax, r9

loc_1408A013C:                          ; CODE XREF: IoGetDeviceDirectory+1CD↓j
                movzx   ecx, word ptr [r12+rax*2]
                cmp     ecx, 7Fh
                ja      short loc_1408A01AF
                test    cl, cl
                js      short loc_1408A0154
                movzx   ecx, byte ptr [rcx+r11]
                and     ecx, 1
                jz      short loc_1408A01AF

loc_1408A0154:                          ; CODE XREF: IoGetDeviceDirectory+1B8↑j
                inc     r8d
                mov     eax, r8d
                cmp     rax, rdx
                jb      short loc_1408A013C
                jmp     short loc_1408A0164
; ---------------------------------------------------------------------------

loc_1408A0161:                          ; CODE XREF: IoGetDeviceDirectory+18C↑j
                                        ; IoGetDeviceDirectory+192↑j
                mov     ebx, r10d

loc_1408A0164:                          ; CODE XREF: IoGetDeviceDirectory+1A7↑j
                                        ; IoGetDeviceDirectory+1CF↑j
                test    ebx, ebx
                js      short loc_1408A01A6
                mov     rdx, r12
                lea     rcx, [rbp+4Fh+var_48]
                call    RtlInitUnicodeStringEx
                xor     r14d, r14d
                mov     ebx, eax
                test    eax, eax
                js      loc_1408A031A
                lea     rax, [rbp+4Fh+var_88]
                mov     r9b, 1
                lea     r8, aData       ; "Data"
                mov     [rsp+0F0h+var_D0], rax
                lea     rdx, [rbp+4Fh+var_48]
                lea     rcx, [rbp+4Fh+var_70]
                call    sub_1408A0440
                jmp     loc_1408A02FC
; ---------------------------------------------------------------------------

loc_1408A01A6:                          ; CODE XREF: IoGetDeviceDirectory+182↑j
                                        ; IoGetDeviceDirectory+1D6↑j
                cmp     ebx, r10d
                jnz     loc_1408A031A

loc_1408A01AF:                          ; CODE XREF: IoGetDeviceDirectory+1B4↑j
                                        ; IoGetDeviceDirectory+1C2↑j
                lea     rdx, [rsi+28h]
                lea     rcx, [rbp+4Fh+var_80]
                call    sub_140740B10
                xor     r14d, r14d
                mov     ebx, eax
                test    eax, eax
                js      loc_1408A031A
                movzx   r8d, word ptr [rbp+4Fh+var_80]
                mov     edx, r14d
                test    r8d, 0FFFFFFFEh
                jbe     short loc_1408A0220
                lea     r11, qword_140010FB0

loc_1408A01E1:                          ; CODE XREF: IoGetDeviceDirectory+287↓j
                mov     r10, qword ptr [rbp+4Fh+var_80+8]
                mov     r9d, edx
                movzx   eax, word ptr [r10+r9*2]
                cmp     eax, 7Fh
                ja      short loc_1408A021B
                test    al, al
                js      short loc_1408A020D
                movzx   ecx, byte ptr [rax+r11]
                and     ecx, 1
                jnz     short loc_1408A020D
                lea     eax, [rcx+23h]
                mov     [r10+r9*2], ax
                movzx   r8d, word ptr [rbp+4Fh+var_80]

loc_1408A020D:                          ; CODE XREF: IoGetDeviceDirectory+264↑j
                                        ; IoGetDeviceDirectory+26E↑j
                movzx   eax, r8w
                inc     edx
                shr     eax, 1
                cmp     edx, eax
                jb      short loc_1408A01E1
                jmp     short loc_1408A0220
; ---------------------------------------------------------------------------

loc_1408A021B:                          ; CODE XREF: IoGetDeviceDirectory+260↑j
                mov     ebx, 0C000000Dh

loc_1408A0220:                          ; CODE XREF: IoGetDeviceDirectory+248↑j
                                        ; IoGetDeviceDirectory+289↑j
                test    ebx, ebx
                js      loc_1408A031A
                mov     rdi, qword ptr [rbp+4Fh+var_80+8]
                lea     rax, [rbp+4Fh+var_88]
                xor     r9d, r9d
                mov     [rsp+0F0h+var_D0], rax
                lea     r8, aData       ; "Data"
                lea     rdx, [rbp+4Fh+var_80]
                lea     rcx, [rbp+4Fh+var_70]
                call    sub_1408A0440
                mov     ebx, eax
                cmp     eax, 0C000003Ah
                jnz     short loc_1408A02A8
                lea     rcx, [rbp+4Fh+var_38]
                call    ExUuidCreate
                mov     ebx, eax
                test    eax, eax
                js      loc_1408A030F
                mov     r8b, 1
                lea     rdx, [rbp+4Fh+var_58]
                lea     rcx, [rbp+4Fh+var_38]
                call    sub_140677A28
                mov     ebx, eax
                test    eax, eax
                js      loc_1408A030F
                mov     rdi, qword ptr [rbp+4Fh+var_58+8]
                lea     rax, [rbp+4Fh+var_88]
                mov     r9b, 1
                mov     [rsp+0F0h+var_D0], rax
                lea     r8, aData       ; "Data"
                lea     rdx, [rbp+4Fh+var_58]
                lea     rcx, [rbp+4Fh+var_70]
                call    sub_1408A0440
                mov     ebx, eax

loc_1408A02A8:                          ; CODE XREF: IoGetDeviceDirectory+2C3↑j
                test    eax, eax
                js      short loc_1408A030F

loc_1408A02AC:                          ; CODE XREF: IoGetDeviceDirectory+324↓j
                inc     r15
                cmp     [rdi+r15*2], r14w
                jnz     short loc_1408A02AC
                mov     rdx, [rsi+30h]
                lea     eax, ds:2[r15*2]
                mov     rcx, cs:qword_140CF4378
                xor     r9d, r9d
                mov     [rsp+0F0h+var_A8], r14d
                mov     dword ptr [rsp+0F0h+var_B0], eax
                lea     rax, qword_14002EC68
                mov     [rsp+0F0h+var_B8], rdi
                mov     dword ptr [rsp+0F0h+var_C0], 12h
                lea     r8d, [r9+1]
                mov     [rsp+0F0h+var_C8], rax
                mov     [rsp+0F0h+var_D0], r14
                call    sub_1407374DC

loc_1408A02FC:                          ; CODE XREF: IoGetDeviceDirectory+211↑j
                mov     ebx, eax
                test    eax, eax
                js      short loc_1408A030F
                mov     rax, [rbp+4Fh+var_88]
                mov     rdi, r14
                mov     [r13+0], rax
                jmp     short loc_1408A031A
; ---------------------------------------------------------------------------

loc_1408A030F:                          ; CODE XREF: IoGetDeviceDirectory+2D2↑j
                                        ; IoGetDeviceDirectory+2EC↑j ...
                mov     rdi, [rbp+4Fh+var_88]
                jmp     short loc_1408A031A
; ---------------------------------------------------------------------------

loc_1408A0315:                          ; CODE XREF: IoGetDeviceDirectory+A1↑j
                                        ; IoGetDeviceDirectory+A9↑j ...
                mov     ebx, 0C000000Dh

loc_1408A031A:                          ; CODE XREF: IoGetDeviceDirectory+117↑j
                                        ; IoGetDeviceDirectory+1EB↑j ...
                lea     rcx, [rbp+4Fh+var_70]
                call    RtlFreeUnicodeString
                lea     rcx, [rbp+4Fh+var_58]
                call    RtlFreeUnicodeString
                lea     rcx, [rbp+4Fh+var_80]
                call    RtlFreeUnicodeString
                test    r12, r12
                jz      short loc_1408A0347
                mov     edx, 6F697050h
                mov     rcx, r12
                call    ExFreePoolWithTag

loc_1408A0347:                          ; CODE XREF: IoGetDeviceDirectory+3A8↑j
                test    rdi, rdi
                jz      short loc_1408A0354
                mov     rcx, rdi
                call    ZwClose

loc_1408A0354:                          ; CODE XREF: IoGetDeviceDirectory+3BA↑j
                mov     eax, ebx
                mov     rcx, [rbp+4Fh+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0F0h+var_20]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14089FF90
IoGetDeviceDirectory endp
