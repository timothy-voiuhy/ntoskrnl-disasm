HalHandleNMI    proc near               ; CODE XREF: sub_140512BD0+12F↓p
                                        ; DATA XREF: .pdata:00000001400EEA94↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     ebp, 1
                mov     cs:dword_140C507D8, ebp
                mov     eax, gs:1A4h
                cmp     cs:dword_140CF512C, 0
                mov     cs:dword_140C1237C, eax
                jz      short loc_1404BD9DC
                mov     rdi, cs:qword_140C49C20
                lea     rsi, qword_140C49C20
                xor     bl, bl
                cmp     rdi, rsi
                jz      short loc_1404BD9DC

loc_1404BD9BB:                          ; CODE XREF: HalHandleNMI+61↓j
                mov     rcx, rdi
                call    sub_1404CFB68
                mov     rdi, [rdi]
                test    al, al
                movzx   ebx, bl
                cmovnz  ebx, ebp
                cmp     rdi, rsi
                jnz     short loc_1404BD9BB
                cmp     bl, bpl
                jz      loc_1404BDAB2

loc_1404BD9DC:                          ; CODE XREF: HalHandleNMI+34↑j
                                        ; HalHandleNMI+49↑j
                mov     edx, 61h ; 'a'
                in      al, dx          ; PC/XT PPI port B bits:
                                        ; 0: Tmr 2 gate ═╦═► OR 03H=spkr ON
                                        ; 1: Tmr 2 data ═╝  AND 0fcH=spkr OFF
                                        ; 3: 1=read high switches
                                        ; 4: 0=enable RAM parity checking
                                        ; 5: 0=enable I/O channel check
                                        ; 6: 0=hold keyboard clock low
                                        ; 7: 0=enable kbrd
                mov     bl, al
                cmp     cs:dword_140C507D4, ebp
                jnz     loc_1404BDAB2
                lea     edi, [rdx-5]
                xor     edx, edx
                lea     rsi, dword_140C507E0
                mov     r8d, edi
                mov     rcx, rsi
                call    memset
                movups  xmm0, cs:xmmword_140030910
                mov     edx, cs:dword_140C507D0
                lea     eax, [rdi-59h]
                mov     cs:dword_140C507E4, eax
                lea     rcx, unk_140CDAF98
                mov     cs:dword_140C507F0, eax
                mov     cs:dword_140C507FC, eax
                mov     eax, cs:dword_140C507EC
                shr     eax, 2
                and     eax, ebp
                mov     cs:dword_140C507E0, 41454857h
                mov     cs:dword_140C50838, eax
                mov     cs:dword_140C507E8, edi
                mov     cs:dword_140C507F4, ebp
                mov     cs:dword_140C507F8, edx
                movdqu  cs:xmmword_140C50800, xmm0
                mov     cs:dword_140C50818, 4
                mov     cs:dword_140C50820, 50h ; 'P'
                mov     cs:dword_140C50824, 0Ch
                mov     cs:byte_140C50830, bl
                call    sub_1405BBD54
                mov     rcx, rsi
                lea     r8, [rax+60h]
                neg     rax
                sbb     rdx, rdx
                and     rdx, r8
                call    cs:PshedRetrieveErrorInfo
                nop     dword ptr [rax+rax+00h]
                mov     rcx, rsi
                call    WheaReportHwError

loc_1404BDAB2:                          ; CODE XREF: HalHandleNMI+66↑j
                                        ; HalHandleNMI+7A↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     cs:dword_140C1237C, 500h
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalHandleNMI    endp

algn_1404BDAD2:                         ; DATA XREF: .pdata:00000001400EEA94↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1404BDAD8   proc near               ; CODE XREF: sub_1404B9CE0+15↑p
                                        ; DATA XREF: .pdata:00000001400EEAA0↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rsi, r8
                mov     r15d, r9d
                mov     rbp, rdx
                mov     r8d, r9d
                mov     rbx, rcx
                xor     edx, edx
                mov     rcx, rsi
                xor     edi, edi
                call    memset
                mov     eax, [rbx+18h]
                lea     ecx, [rax+rax*8]
                lea     ebx, ds:80h[rcx*8]
                cmp     ebx, r15d
                jbe     short loc_1404BDB2C

loc_1404BDB22:                          ; CODE XREF: sub_1404BDAD8+8E↓j
                                        ; sub_1404BDAD8+DD↓j ...
                mov     edi, 0C0000023h
                jmp     loc_1404BDC1C
; ---------------------------------------------------------------------------

loc_1404BDB2C:                          ; CODE XREF: sub_1404BDAD8+48↑j
                mov     rcx, rsi
                call    WheaInitializeRecordHeader
                movups  xmm0, cs:xmmword_140030910
                mov     eax, 3
                mov     r12d, ebx
                add     ebx, 0C0h
                mov     [rsi+0Ah], ax
                mov     eax, [rbp+14h]
                lea     r14, [rsi+80h]
                mov     [rsi+0Ch], eax
                mov     [rsi+14h], r15d
                movdqu  xmmword ptr [rsi+50h], xmm0
                cmp     ebx, r15d
                ja      short loc_1404BDB22
                mov     rax, cs:off_140C006B8
                lea     rdx, [rsi+r12]
                mov     rcx, r14
                call    sub_1404079D0
                or      dword ptr [r14+54h], 1
                mov     edx, 300h
                mov     [r14], r12d
                mov     [r14+48h], ebx
                mov     [r14+50h], dx
                mov     dword ptr [r14+4Ch], 0Ch
                movups  xmm0, cs:xmmword_1400308E0
                mov     ecx, ebx
                add     ebx, 0Ch
                movdqu  xmmword ptr [r14+58h], xmm0
                mov     eax, [rbp+14h]
                mov     [r14+78h], eax
                cmp     ebx, r15d
                ja      loc_1404BDB22
                movsd   xmm0, qword ptr [rbp+50h]
                movsd   qword ptr [rcx+rsi], xmm0
                mov     eax, [rbp+58h]
                mov     [rcx+rsi+8], eax
                mov     [r14+90h], ebx
                mov     ecx, [rbp+8]
                mov     [r14+94h], ecx
                mov     [r14+98h], dx
                movups  xmm0, cs:xmmword_1400308A0
                movdqu  xmmword ptr [r14+0A0h], xmm0
                mov     eax, [rbp+14h]
                mov     [r14+0C0h], eax
                lea     eax, [rcx+rbx]
                cmp     eax, r15d
                ja      loc_1404BDB22
                mov     r8d, [rbp+8]
                mov     rdx, rbp
                mov     ecx, ebx
                add     rcx, rsi
                call    memmove

loc_1404BDC1C:                          ; CODE XREF: sub_1404BDAD8+4F↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, edi
                mov     rdi, [rsp+38h+arg_18]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1404BDAD8   endp

byte_1404BDC3E  db 12h dup(0CCh)        ; DATA XREF: .pdata:00000001400EEAA0↑o
; Exported entry 636. HalMakeBeep

; =============== S U B R O U T I N E =======================================


