FsRtlGetSectorSizeInformation proc near ; CODE XREF: sub_140698BEC+17D546↓p
                                        ; DATA XREF: .rdata:0000000140086404↑o ...

var_160         = dword ptr -160h
var_158         = qword ptr -158h
var_150         = dword ptr -150h
var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_130         = byte ptr -130h
var_128         = qword ptr -128h
var_A0          = dword ptr -0A0h
var_98          = dword ptr -98h
var_90          = qword ptr -90h
var_88          = xmmword ptr -88h
var_78          = dword ptr -78h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
var_20          = byte ptr -20h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 000000014082BC46 SIZE 00000030 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                mov     [rsp-8+arg_18], rsi
                push    rbp
                push    rdi
                push    r12
                push    r14
                push    r15
                lea     rbp, [rsp-60h]
                sub     rsp, 160h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+80h+var_28], rax
                xor     r14d, r14d
                xorps   xmm0, xmm0
                mov     rbx, rdx
                mov     [rsp+180h+var_140], r14
                mov     rdi, rcx
                mov     [rbp+80h+var_98], r14d
                xor     eax, eax
                mov     [rbp+80h+var_78], r14d
                xor     edx, edx
                mov     [rbp+80h+var_40], rax
                lea     rcx, [rsp+180h+var_130]
                mov     r8d, 90h
                movups  [rbp+80h+var_50], xmm0
                movdqu  [rbp+80h+var_88], xmm0
                call    memset
                xor     eax, eax
                mov     [rsp+180h+var_148], r14
                xorps   xmm0, xmm0
                mov     [rsp+180h+var_150], 18h
                movups  xmmword ptr [rbx], xmm0
                mov     [rbx+10h], rax
                lea     r12d, [r14+2]
                mov     [rbx+18h], eax
                xor     r9d, r9d
                lea     rax, [rbp+80h+var_50]
                mov     r8b, r12b
                mov     [rsp+180h+var_158], rax
                mov     edx, 70000h
                mov     rcx, rdi
                mov     [rsp+180h+var_160], r14d
                call    FsRtlIssueDeviceIoControl
                test    eax, eax
                js      loc_140712927
                mov     ecx, dword ptr [rbp+80h+var_40+4]
                test    ecx, ecx
                jz      loc_14082BC6C
                lea     eax, [rcx-1]
                test    ecx, eax
                jnz     loc_14082BC6C
                lea     rax, [rsp+180h+var_140]
                mov     [rbp-1Ch], r14
                mov     [rsp+180h+var_148], rax
                lea     r15d, [r14+0Ch]
                lea     rax, [rbp+80h+var_90]
                mov     [rsp+180h+var_150], 1Ch
                xorps   xmm0, xmm0
                mov     [rsp+180h+var_158], rax
                lea     r9, [rbp+80h+var_A0]
                mov     [rsp+180h+var_160], r15d
                mov     r8b, r12b
                mov     [rbp+80h+var_A0], 6
                mov     edx, 2D1400h
                mov     [rbp+80h+var_78], r14d
                mov     rcx, rdi
                mov     dword ptr [rbp+80h+var_90], r12d
                movdqu  [rbp+80h+var_88], xmm0
                mov     dword ptr [rbp+80h+var_90+4], 1
                call    FsRtlIssueDeviceIoControl
                mov     r10d, dword ptr [rbp+80h+var_40+4]
                or      r11d, 0FFFFFFFFh
                test    eax, eax
                jns     loc_140712950

loc_1407127FF:                          ; CODE XREF: FsRtlGetSectorSizeInformation+286↓j
                                        ; FsRtlGetSectorSizeInformation+290↓j ...
                mov     ecx, r10d
                mov     [rbp+80h+var_90], r14
                mov     dword ptr [rbp+80h+var_88+0Ch], ecx
                mov     r8d, r11d
                mov     qword ptr [rbp+80h+var_88], r14
                mov     dword ptr [rbp+80h+var_88+8], r10d
                mov     [rbp+80h+var_78], r11d

loc_140712818:                          ; CODE XREF: FsRtlGetSectorSizeInformation+2F6↓j
                mov     [rbx], r10d
                mov     [rbx+4], ecx
                mov     [rbx+8], ecx
                mov     dword ptr [rbx+10h], 3
                mov     [rbx+14h], r8d
                mov     [rbx+18h], r11d
                mov     [rbx+0Ch], r10d
                cmp     r8d, r11d
                jnz     loc_1407129D1

loc_14071283D:                          ; CODE XREF: FsRtlGetSectorSizeInformation+34B↓j
                                        ; FsRtlGetSectorSizeInformation+36E↓j ...
                xor     eax, eax
                mov     [rbp-1Ch], r14
                mov     [rbp+80h+var_70], rax
                lea     r9, [rbp+80h+var_A0]
                mov     [rbp+80h+var_68], eax
                mov     r8b, r12b
                lea     rax, [rsp+180h+var_140]
                mov     [rbp+80h+var_A0], 7
                mov     [rsp+180h+var_148], rax
                mov     edx, 2D1400h
                lea     rax, [rbp+80h+var_70]
                mov     [rsp+180h+var_150], r15d
                mov     [rsp+180h+var_158], rax
                mov     rcx, rdi
                mov     [rsp+180h+var_160], r15d
                call    FsRtlIssueDeviceIoControl
                test    eax, eax
                jns     loc_140712A49

loc_14071288A:                          ; CODE XREF: FsRtlGetSectorSizeInformation+37E↓j
                                        ; FsRtlGetSectorSizeInformation+388↓j ...
                xor     eax, eax
                mov     [rbp-1Ch], r14
                mov     [rbp+80h+var_60], rax
                lea     r9, [rbp+80h+var_A0]
                mov     [rbp+80h+var_58], eax
                mov     r8b, r12b
                lea     rax, [rsp+180h+var_140]
                mov     [rbp+80h+var_A0], 8
                mov     [rsp+180h+var_148], rax
                mov     edx, 2D1400h
                lea     rax, [rbp+80h+var_60]
                mov     [rsp+180h+var_150], r15d
                mov     [rsp+180h+var_158], rax
                mov     rcx, rdi
                mov     [rsp+180h+var_160], r15d
                call    FsRtlIssueDeviceIoControl
                test    eax, eax
                jns     loc_140712A70

loc_1407128D7:                          ; CODE XREF: FsRtlGetSectorSizeInformation+3A5↓j
                                        ; FsRtlGetSectorSizeInformation+3AF↓j ...
                lea     rax, [rsp+180h+var_140]
                mov     [rbp-1Ch], r14
                mov     [rsp+180h+var_148], rax
                lea     r9, [rbp+80h+var_A0]
                lea     rax, [rbp+80h+var_38]
                mov     [rsp+180h+var_150], 10h
                xorps   xmm0, xmm0
                mov     [rsp+180h+var_158], rax
                mov     r8b, r12b
                mov     [rsp+180h+var_160], r15d
                mov     edx, 2D1400h
                mov     [rbp+80h+var_A0], 37h ; '7'
                mov     rcx, rdi
                movups  [rbp+80h+var_38], xmm0
                call    FsRtlIssueDeviceIoControl
                test    eax, eax
                jns     loc_140712AA6

loc_140712925:                          ; CODE XREF: FsRtlGetSectorSizeInformation+3DC↓j
                                        ; FsRtlGetSectorSizeInformation+3E6↓j ...
                xor     eax, eax

loc_140712927:                          ; CODE XREF: FsRtlGetSectorSizeInformation+A9↑j
                                        ; FsRtlGetSectorSizeInformation+1195A1↓j
                mov     rcx, [rbp+80h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+180h+var_20]
                mov     rbx, [r11+40h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140712950:                          ; CODE XREF: FsRtlGetSectorSizeInformation+129↑j
                cmp     [rsp+180h+var_140], 1Ch
                jb      loc_1407127FF
                cmp     dword ptr [rbp+80h+var_90], 1Ch
                jb      loc_1407127FF
                mov     eax, dword ptr [rbp+80h+var_90+4]
                cmp     rax, [rsp+180h+var_140]
                jb      loc_1407127FF
                mov     r9d, dword ptr [rbp+80h+var_88+8]
                test    r9d, r9d
                jz      loc_1407127FF
                cmp     r9d, r10d
                jnz     loc_1407127FF
                mov     ecx, dword ptr [rbp+80h+var_88+0Ch]
                cmp     ecx, r9d
                jb      loc_1407127FF
                test    ecx, ecx
                jz      loc_1407127FF
                lea     eax, [rcx-1]
                test    ecx, eax
                jnz     loc_1407127FF
                xor     edx, edx
                mov     eax, ecx
                div     r9d
                test    edx, edx
                jnz     loc_1407127FF
                mov     r8d, [rbp+80h+var_78]
                xor     edx, edx
                mov     eax, r8d
                div     r9d
                test    edx, edx
                jz      loc_140712818
                jmp     loc_1407127FF
; ---------------------------------------------------------------------------

loc_1407129D1:                          ; CODE XREF: FsRtlGetSectorSizeInformation+167↑j
                xor     edx, edx
                mov     [rsp+180h+var_148], r14
                mov     eax, r8d
                mov     [rbx+14h], r8d
                div     ecx
                mov     eax, [rbx+10h]
                mov     r8b, r12b
                test    edx, edx
                mov     [rsp+180h+var_150], 90h
                mov     esi, edx
                mov     rcx, rdi
                cmovnz  eax, r12d
                mov     edx, 70048h
                mov     [rbx+10h], eax
                xor     r9d, r9d
                lea     rax, [rsp+180h+var_130]
                mov     [rsp+180h+var_158], rax
                mov     [rsp+180h+var_160], r14d
                call    FsRtlIssueDeviceIoControl
                test    eax, eax
                js      loc_14071283D
                mov     r8d, dword ptr [rbp+80h+var_88+0Ch]
                mov     rax, [rsp+180h+var_128]
                cqo
                idiv    r8
                mov     eax, r8d
                sub     eax, edx
                mov     [rbx+18h], edx
                xor     edx, edx
                div     r8d
                cmp     edx, esi
                jz      loc_14071283D
                jmp     loc_14082BC46
; ---------------------------------------------------------------------------

loc_140712A49:                          ; CODE XREF: FsRtlGetSectorSizeInformation+1B4↑j
                cmp     [rsp+180h+var_140], r15
                jb      loc_14071288A
                cmp     dword ptr [rbp+80h+var_70], r15d
                jb      loc_14071288A
                mov     eax, dword ptr [rbp+80h+var_70+4]
                cmp     byte ptr [rbp+80h+var_68], r14b
                jnz     loc_14071288A
                jmp     loc_14082BC4F
; ---------------------------------------------------------------------------

loc_140712A70:                          ; CODE XREF: FsRtlGetSectorSizeInformation+201↑j
                cmp     [rsp+180h+var_140], r15
                jb      loc_1407128D7
                cmp     dword ptr [rbp+80h+var_60], r15d
                jb      loc_1407128D7
                mov     eax, dword ptr [rbp+80h+var_60+4]
                cmp     byte ptr [rbp+80h+var_58], r14b
                jz      loc_1407128D7
                cmp     rax, [rsp+180h+var_140]
                jb      loc_1407128D7
                or      dword ptr [rbx+10h], 8
                jmp     loc_1407128D7
; ---------------------------------------------------------------------------

loc_140712AA6:                          ; CODE XREF: FsRtlGetSectorSizeInformation+24F↑j
                cmp     [rsp+180h+var_140], 10h
                jnz     loc_140712925
                test    byte ptr [rbp+80h+var_38+8], 1
                jz      loc_140712925
                jmp     loc_14082BC63
; } // starts at 1407126D0
FsRtlGetSectorSizeInformation endp
