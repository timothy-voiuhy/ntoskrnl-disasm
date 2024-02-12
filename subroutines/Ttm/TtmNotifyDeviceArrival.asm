TtmNotifyDeviceArrival proc near        ; DATA XREF: .pdata:0000000140120B88↑o

var_58          = dword ptr -58h
var_48          = byte ptr -48h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+20h], r9d
                mov     [rax+8], ecx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                xor     r11d, r11d
                or      r15d, 0FFFFFFFFh
                mov     [rax+18h], r11
                mov     r14, r8
                mov     r12, rdx
                mov     ebx, ecx
                mov     ebp, r11d
                mov     esi, r11d
                test    r8, r8
                jz      loc_1408FD56D
                cmp     [r8], r11
                jnz     short loc_1408FD35E
                mov     edx, 176h

loc_1408FD339:                          ; CODE XREF: TtmNotifyDeviceArrival+7F↓j
                mov     edi, 0C000000Dh
                or      r8d, 0FFFFFFFFh
                mov     r9d, edi

loc_1408FD345:                          ; CODE XREF: TtmNotifyDeviceArrival+B2↓j
                lea     rcx, aTtmnotifydevic_0 ; "TtmNotifyDeviceArrival"
                call    sub_1409041B4
                mov     r14d, [rsp+78h+arg_18]
                jmp     loc_1408FD5BA
; ---------------------------------------------------------------------------

loc_1408FD35E:                          ; CODE XREF: TtmNotifyDeviceArrival+42↑j
                cmp     [r8+18h], r11
                jz      short loc_1408FD371
                cmp     [r8+10h], r11
                jz      short loc_1408FD371
                mov     edx, 17Dh
                jmp     short loc_1408FD339
; ---------------------------------------------------------------------------

loc_1408FD371:                          ; CODE XREF: TtmNotifyDeviceArrival+72↑j
                                        ; TtmNotifyDeviceArrival+78↑j
                mov     r13, [rsp+78h+arg_20]
                test    r13, r13
                jz      short loc_1408FD3A4
                mov     rcx, [r13+8]
                lea     r8, [rsp+78h+var_48]
                mov     edx, 104h
                call    sub_1402F1E60
                mov     edi, eax
                test    eax, eax
                jns     short loc_1408FD3A4
                mov     r9d, eax
                mov     r8d, eax
                mov     edx, 191h
                jmp     short loc_1408FD345
; ---------------------------------------------------------------------------

loc_1408FD3A4:                          ; CODE XREF: TtmNotifyDeviceArrival+8C↑j
                                        ; TtmNotifyDeviceArrival+A5↑j
                lea     rcx, [rsp+78h+arg_10]
                call    sub_1409006B4
                mov     edi, eax
                test    eax, eax
                jns     short loc_1408FD3DB
                mov     r9d, eax
                lea     rcx, aTtmnotifydevic_0 ; "TtmNotifyDeviceArrival"
                mov     r8d, eax
                mov     edx, 19Ch
                call    sub_1409041B4
                mov     rbp, [rsp+78h+arg_10]
                jmp     loc_1408FD58A
; ---------------------------------------------------------------------------

loc_1408FD3DB:                          ; CODE XREF: TtmNotifyDeviceArrival+C5↑j
                mov     rbp, [rsp+78h+arg_10]
                xor     r9d, r9d
                mov     rcx, rbp
                mov     r8, r12
                mov     edx, ebx
                call    sub_1408FE438
                test    al, al
                jz      short loc_1408FD406
                mov     edi, 0C0000038h
                mov     edx, 1AEh
                jmp     loc_1408FD577
; ---------------------------------------------------------------------------

loc_1408FD406:                          ; CODE XREF: TtmNotifyDeviceArrival+105↑j
                mov     ebx, 1
                mov     r15d, ebx
                lock xadd [rbp+70h], r15d
                mov     edi, 268h
                mov     r8d, 446D7454h
                mov     edx, edi
                mov     ecx, ebx
                add     r15d, ebx
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_1408FD464
                mov     edi, 0C000009Ah
                lea     rcx, aTtmnotifydevic_0 ; "TtmNotifyDeviceArrival"
                mov     r9d, edi
                or      r8d, 0FFFFFFFFh
                mov     edx, 1C4h
                call    sub_1409041B4
                mov     rbp, [rsp+78h+arg_10]
                mov     ebx, [rsp+78h+arg_0]
                jmp     loc_1408FD58A
; ---------------------------------------------------------------------------

loc_1408FD464:                          ; CODE XREF: TtmNotifyDeviceArrival+141↑j
                mov     r8, rdi
                xor     edx, edx
                mov     rcx, rsi
                call    memset
                mov     eax, [rsp+78h+arg_0]
                lea     rcx, [rsi+4Ch]
                mov     [rsi+10h], eax
                mov     edx, 104h
                mov     [rsi+18h], r12
                mov     [rsi+20h], r15d
                mov     rax, [r14]
                mov     [rsi+28h], rax
                mov     rax, [r14+8]
                mov     [rsi+30h], rax
                mov     rax, [r14+10h]
                mov     [rsi+38h], rax
                mov     rax, [r14+18h]
                mov     r14d, [rsp+78h+arg_18]
                mov     [rsi+40h], rax
                mov     [rsi+48h], r14d
                mov     r8, [r13+8]
                call    sub_140371440
                mov     edi, eax
                test    eax, eax
                jns     short loc_1408FD4F1
                mov     r9d, eax
                lea     rcx, aTtmnotifydevic_0 ; "TtmNotifyDeviceArrival"
                mov     r8d, eax
                mov     edx, 1DBh
                call    sub_1409041B4
                mov     rbp, [rsp+78h+arg_10]

loc_1408FD4E5:                          ; CODE XREF: TtmNotifyDeviceArrival+278↓j
                mov     ebx, [rsp+78h+arg_0]
                jmp     loc_1408FD592
; ---------------------------------------------------------------------------

loc_1408FD4F1:                          ; CODE XREF: TtmNotifyDeviceArrival+1D4↑j
                cmp     dword ptr [rsi+10h], 2
                jnz     short loc_1408FD510
                mov     eax, [rsi+48h]
                cmp     eax, 10h
                ja      short loc_1408FD510
                mov     ecx, 10116h
                bt      ecx, eax
                jnb     short loc_1408FD510
                mov     ecx, 80h
                jmp     short loc_1408FD512
; ---------------------------------------------------------------------------

loc_1408FD510:                          ; CODE XREF: TtmNotifyDeviceArrival+205↑j
                                        ; TtmNotifyDeviceArrival+20D↑j ...
                xor     ecx, ecx

loc_1408FD512:                          ; CODE XREF: TtmNotifyDeviceArrival+21E↑j
                mov     eax, [rsi+258h]
                or      dword ptr [rsi+254h], 0FFFFFFFFh
                btr     eax, 7
                mov     rbp, [rsp+78h+arg_10]
                or      eax, ecx
                or      eax, ebx
                mov     [rsi+258h], eax
                lea     rax, [rbp+60h]
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jz      short loc_1408FD549
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1408FD549:                          ; CODE XREF: TtmNotifyDeviceArrival+250↑j
                mov     [rsi+8], rcx
                mov     edx, ebx
                mov     [rsi], rax
                mov     [rcx], rsi
                mov     rcx, rbp
                mov     [rax+8], rsi
                add     [rbp+74h], ebx
                call    sub_140900830
                xor     esi, esi
                xor     edi, edi
                jmp     loc_1408FD4E5
; ---------------------------------------------------------------------------

loc_1408FD56D:                          ; CODE XREF: TtmNotifyDeviceArrival+39↑j
                mov     edi, 0C000000Dh
                mov     edx, 182h

loc_1408FD577:                          ; CODE XREF: TtmNotifyDeviceArrival+111↑j
                mov     r9d, edi
                lea     rcx, aTtmnotifydevic_0 ; "TtmNotifyDeviceArrival"
                or      r8d, 0FFFFFFFFh
                call    sub_1409041B4

loc_1408FD58A:                          ; CODE XREF: TtmNotifyDeviceArrival+E6↑j
                                        ; TtmNotifyDeviceArrival+16F↑j
                mov     r14d, [rsp+78h+arg_18]

loc_1408FD592:                          ; CODE XREF: TtmNotifyDeviceArrival+1FC↑j
                test    rbp, rbp
                jz      short loc_1408FD5A8
                lea     rcx, unk_140C1E080
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion

loc_1408FD5A8:                          ; CODE XREF: TtmNotifyDeviceArrival+2A5↑j
                test    rsi, rsi
                jz      short loc_1408FD5BA
                mov     edx, 446D7454h
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_1408FD5BA:                          ; CODE XREF: TtmNotifyDeviceArrival+69↑j
                                        ; TtmNotifyDeviceArrival+2BB↑j
                mov     r9d, r14d
                mov     [rsp+78h+var_58], edi
                mov     r8d, r15d
                mov     rdx, r12
                mov     ecx, ebx
                call    sub_140903158
                mov     rbx, [rsp+78h+arg_8]
                mov     eax, edi
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
TtmNotifyDeviceArrival endp
