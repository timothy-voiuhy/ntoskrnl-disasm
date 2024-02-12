FsRtlQueryCachedVdl proc near           ; DATA XREF: .rdata:0000000140088938↑o
                                        ; .pdata:0000000140106E6C↑o

var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B0          = byte ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_90          = xmmword ptr -90h
var_80          = qword ptr -80h
var_78          = xmmword ptr -78h
var_60          = xmmword ptr -60h
var_50          = dword ptr -50h
var_20          = qword ptr -20h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 000000014082E17A SIZE 00000029 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                lea     rbp, [rsp-47h]
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_20], rax
                xorps   xmm0, xmm0
                mov     rbx, rdx
                mov     rdi, rcx
                xor     eax, eax
                xor     edx, edx
                mov     [rbp+57h+var_80], rax
                lea     rcx, [rbp+57h+var_90]
                xor     r8d, r8d
                movups  [rbp+57h+var_90], xmm0
                movups  [rbp+57h+var_78], xmm0
                call    KeInitializeEvent
                mov     rcx, rdi
                call    IoGetRelatedDeviceObject
                mov     rsi, rax
                xor     r9d, r9d
                lea     rax, [rbp+57h+var_78]
                xor     r8d, r8d
                mov     [rsp+0E0h+var_A0], rax
                mov     rdx, rsi
                lea     rax, [rbp+57h+var_90]
                mov     ecx, 90284h
                mov     [rsp+0E0h+var_A8], rax
                mov     [rsp+0E0h+var_B0], 0
                and     [rsp+0E0h+var_B8], 0
                and     [rsp+0E0h+var_C0], 0
                call    IoBuildDeviceIoControlRequest
                mov     rdx, rax
                test    rax, rax
                jz      loc_14082E17A
                movdqa  xmm0, cs:xmmword_140011E00
                lea     rax, [rbp+57h+var_60]
                movdqa  [rbp+57h+var_60], xmm0
                mov     rcx, rsi
                mov     [rbp+57h+var_50], 1
                mov     [rdx+18h], rax
                mov     rax, [rdx+0B8h]
                mov     [rax-18h], rdi
                mov     byte ptr [rax-48h], 0Dh
                mov     dword ptr [rax-38h], 18h
                mov     dword ptr [rax-40h], 40h ; '@'
                call    IofCallDriver
                mov     edx, eax
                cmp     eax, 103h
                jz      loc_14082E184

loc_14071D551:                          ; CODE XREF: FsRtlQueryCachedVdl+110D2E↓j
                mov     ecx, 0C0000000h
                mov     eax, edx
                and     eax, ecx
                cmp     eax, ecx
                jz      short loc_14071D581
                and     qword ptr [rbx], 0
                mov     eax, dword ptr [rbp+57h+var_60+8]
                test    eax, eax
                jz      short loc_14071D581
                lea     rcx, [rbp+57h+var_50]
                mov     r8d, eax

loc_14071D570:                          ; CODE XREF: FsRtlQueryCachedVdl+10F↓j
                mov     eax, [rcx+10h]
                test    al, 1
                jnz     short loc_14071D5A3

loc_14071D577:                          ; CODE XREF: FsRtlQueryCachedVdl+13D↓j
                add     rcx, 18h
                sub     r8, 1
                jnz     short loc_14071D570

loc_14071D581:                          ; CODE XREF: FsRtlQueryCachedVdl+EC↑j
                                        ; FsRtlQueryCachedVdl+F7↑j
                mov     eax, edx

loc_14071D583:                          ; CODE XREF: FsRtlQueryCachedVdl+110D0F↓j
                mov     rcx, [rbp+57h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0E0h+arg_10]
                add     rsp, 0D0h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14071D5A3:                          ; CODE XREF: FsRtlQueryCachedVdl+105↑j
                mov     rax, [rcx+8]
                add     rax, [rcx]
                mov     [rbx], rax
                jmp     short loc_14071D577
; } // starts at 14071D470
FsRtlQueryCachedVdl endp
