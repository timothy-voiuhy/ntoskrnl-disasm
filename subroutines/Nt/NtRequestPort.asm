NtRequestPort   proc near               ; DATA XREF: .pdata:0000000140106398↑o
                                        ; PAGE:000000014098A738↓o

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 70h
                mov     rdi, rdx
                mov     rbx, rcx
                xor     edx, edx
                lea     rcx, [rsp+78h+var_48]
                lea     r8d, [rdx+40h]
                call    memset
                mov     rax, gs:188h
                mov     edx, 1
                mov     r8, cs:qword_140CFC548
                mov     rcx, rbx
                and     [rsp+78h+var_50], 0
                and     [rsp+78h+arg_10], 0
                mov     r9b, [rax+232h]
                lea     rax, [rsp+78h+arg_10]
                mov     [rsp+78h+var_58], rax
                call    ObReferenceObjectByHandle
                mov     ebx, eax
                test    eax, eax
                js      short loc_140712448
                mov     rax, [rsp+78h+arg_10]
                mov     [rsp+78h+var_48], rax
                mov     [rsp+78h+var_18], 10000h
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rax, gs:188h
                lea     rcx, [rsp+78h+var_48]
                xor     r8d, r8d
                mov     rdx, rdi
                mov     r9b, [rax+232h]
                call    sub_1406142C0
                mov     rcx, gs:188h
                mov     ebx, eax
                call    sub_14021E1F0
                mov     rcx, [rsp+78h+arg_10]
                call    PsDereferenceSiloContext

loc_140712448:                          ; CODE XREF: NtRequestPort+64↑j
                mov     eax, ebx
                mov     rbx, [rsp+78h+arg_0]
                add     rsp, 70h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtRequestPort   endp

algn_140712459:                         ; DATA XREF: .pdata:0000000140106398↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140712460   proc near               ; CODE XREF: sub_14062D028+FE↑p
                                        ; DATA XREF: .rdata:0000000140086388↑o ...

var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 000000014082BB8E SIZE 000000A5 BYTES

                sub     rsp, 58h
                mov     r10, rdx
                bt      r8d, 9
                jb      loc_140712511
                or      rax, 0FFFFFFFFFFFFFFFFh
                xor     ecx, ecx

loc_140712478:                          ; CODE XREF: sub_140712460+1F↓j
                inc     rax
                cmp     [rdx+rax*2], cx
                jnz     short loc_140712478
                mov     edx, 0FFFFFFFFh
                bt      r8d, 8
                jb      loc_14071256C
                add     rax, 31h ; '1'
                cmp     rax, rdx
                ja      short loc_140712503
                mov     rdx, [rsp+58h+arg_38]
                test    rdx, rdx
                jz      short loc_1407124A9
                mov     [rdx], eax

loc_1407124A9:                          ; CODE XREF: sub_140712460+45↑j
                cmp     eax, [rsp+58h+arg_30]
                ja      short loc_14071250A
                lea     rax, aDeviceParamete ; "Device Parameters"
                mov     [rsp+58h+var_18], rax
                lea     rax, aSystemCurrentc_1 ; "System\\CurrentControlSet\\Enum"
                mov     [rsp+58h+var_20], r10

loc_1407124CA:                          ; CODE XREF: sub_140712460+107↓j
                mov     edx, [rsp+58h+arg_30]
                xor     r9d, r9d
                mov     rcx, [rsp+58h+arg_28]
                xor     r8d, r8d
                mov     [rsp+58h+var_28], rax
                lea     rax, aSSS_0     ; "%s\\%s\\%s"
                mov     [rsp+58h+var_30], rax
                mov     [rsp+58h+var_38], 800h
                call    sub_14021D28C

loc_1407124FD:                          ; CODE XREF: sub_140712460+A8↓j
                                        ; sub_140712460+AF↓j ...
                add     rsp, 58h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140712503:                          ; CODE XREF: sub_140712460+38↑j
                                        ; sub_140712460+D5↓j ...
                mov     eax, 0C0000095h
                jmp     short loc_1407124FD
; ---------------------------------------------------------------------------

loc_14071250A:                          ; CODE XREF: sub_140712460+50↑j
                                        ; sub_140712460+ED↓j ...
                mov     eax, 0C0000023h
                jmp     short loc_1407124FD
; ---------------------------------------------------------------------------

loc_140712511:                          ; CODE XREF: sub_140712460+C↑j
                xor     ecx, ecx
                test    r9d, r9d
                jnz     loc_14082BB8E
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_140712520:                          ; CODE XREF: sub_140712460+C7↓j
                inc     rax
                cmp     [rdx+rax*2], cx
                jnz     short loc_140712520
                add     rax, 52h ; 'R'
                mov     edx, 0FFFFFFFFh
                cmp     rax, rdx
                ja      short loc_140712503
                mov     rdx, [rsp+58h+arg_38]
                test    rdx, rdx
                jz      short loc_140712546
                mov     [rdx], eax

loc_140712546:                          ; CODE XREF: sub_140712460+E2↑j
                cmp     eax, [rsp+58h+arg_30]
                ja      short loc_14071250A
                lea     rax, aSystemCurrentc_1 ; "System\\CurrentControlSet\\Enum"
                mov     [rsp+58h+var_18], r10
                mov     [rsp+58h+var_20], rax
                lea     rax, aSystemCurrentc_0 ; "System\\CurrentControlSet\\Hardware Pro"...
                jmp     loc_1407124CA
; ---------------------------------------------------------------------------

loc_14071256C:                          ; CODE XREF: sub_140712460+2B↑j
                add     rax, 1Fh
                cmp     rax, rdx
                ja      short loc_140712503
                mov     rdx, [rsp+58h+arg_38]
                test    rdx, rdx
                jz      short loc_140712584
                mov     [rdx], eax

loc_140712584:                          ; CODE XREF: sub_140712460+120↑j
                cmp     eax, [rsp+58h+arg_30]
                ja      loc_14071250A
                mov     edx, [rsp+58h+arg_30]
                lea     rax, aSystemCurrentc_1 ; "System\\CurrentControlSet\\Enum"
                mov     rcx, [rsp+58h+arg_28]
                xor     r9d, r9d
                mov     [rsp+58h+var_20], r10
                xor     r8d, r8d
                mov     [rsp+58h+var_28], rax
                lea     rax, aSS_0      ; "%s\\%s"
                mov     [rsp+58h+var_30], rax
                mov     [rsp+58h+var_38], 800h
                call    sub_14021D28C
                jmp     loc_1407124FD
sub_140712460   endp

; ---------------------------------------------------------------------------
algn_1407125D5:                         ; DATA XREF: .rdata:0000000140086388↑o
                                        ; .pdata:00000001401063A4↑o
                align 20h
; Exported entry 2495. SeAuditingHardLinkEventsWithContext

; =============== S U B R O U T I N E =======================================


