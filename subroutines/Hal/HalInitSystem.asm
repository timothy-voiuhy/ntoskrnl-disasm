HalInitSystem   proc near               ; CODE XREF: sub_140A3C054+312↓p
                                        ; sub_140A3CC14+260↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001409A3C46 SIZE 00000020 BYTES

                push    rbx
                sub     rsp, 30h
                mov     rbx, rdx
                test    ecx, ecx
                jz      short loc_14099D755
                cmp     ecx, 1
                jnz     loc_1409A3C46
                mov     rcx, rdx
                call    sub_14099D76C

loc_14099D74E:                          ; CODE XREF: HalInitSystem+32↓j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14099D755:                          ; CODE XREF: HalInitSystem+B↑j
                call    sub_140A1D2E8
                mov     rcx, rbx
                call    sub_140A763D8
                jmp     short loc_14099D74E
HalInitSystem   endp

; ---------------------------------------------------------------------------
byte_14099D764  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014008E240↑o
                                        ; .pdata:0000000140126AA4↑o

; =============== S U B R O U T I N E =======================================


sub_14099D76C   proc near               ; CODE XREF: HalInitSystem+19↑p
                                        ; sub_14099EB00+5C9↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                mov     eax, gs:1A4h
                mov     r8, rcx
                test    eax, eax
                jz      short loc_14099D797
                mov     ecx, 13h
                lea     edx, [rcx+1]

loc_14099D787:                          ; CODE XREF: sub_14099D76C+33↓j
                call    sub_14099D7A8
                test    eax, eax
                setns   al
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14099D797:                          ; CODE XREF: sub_14099D76C+11↑j
                mov     ecx, 11h
                lea     edx, [rcx+1]
                jmp     short loc_14099D787
sub_14099D76C   endp

; ---------------------------------------------------------------------------
algn_14099D7A1:                         ; DATA XREF: .pdata:0000000140126AB0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14099D7A8   proc near               ; CODE XREF: sub_1403A8A8C+E↑p
                                        ; HalInitializeProcessor+1A↑p ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001409A3C66 SIZE 00000025 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r15d, gs:1A4h
                mov     ebx, ecx
                xor     ecx, ecx
                mov     r14, r8
                mov     ebp, edx
                cmp     ebx, edx
                jg      short loc_14099D813
                lea     r12, off_140008160

loc_14099D7E2:                          ; CODE XREF: sub_14099D7A8+69↓j
                xor     edi, edi
                mov     rsi, r12

loc_14099D7E7:                          ; CODE XREF: sub_14099D7A8+63↓j
                mov     rax, [rsi]
                mov     r8, r14
                mov     edx, r15d
                mov     ecx, ebx
                call    sub_1404079D0
                movsxd  rcx, eax
                test    eax, eax
                js      loc_1409A3C66
                inc     edi
                add     rsi, 10h
                cmp     edi, 15h
                jb      short loc_14099D7E7
                inc     ebx
                cmp     ebx, ebp
                jle     short loc_14099D7E2

loc_14099D813:                          ; CODE XREF: sub_14099D7A8+31↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     eax, ecx
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14099D7A8   endp

algn_14099D835:                         ; DATA XREF: .rdata:000000014008E270↑o
                                        ; .pdata:0000000140126ABC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14099D840   proc near               ; CODE XREF: start+14B↑p
                                        ; DATA XREF: .pdata:0000000140126AC8↑o

arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h

                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14, gs:18h
                mov     rsi, rcx
                mov     rdi, gs:20h
                mov     r13d, 1
                and     [rsp+58h+arg_8], 0
                and     [rsp+58h+arg_0], 0
                and     [rsp+58h+arg_10], 0
                mov     dword ptr [r14+60h], 10001h
                mov     dword ptr [rdi+88h], 10001h
                mov     byte ptr [rdi+8Ch], 0
                mov     ebp, [r14+1A4h]
                test    ebp, ebp
                jnz     loc_14099D928
                mov     rcx, [rcx+0F0h]
                call    sub_140A3AEBC
                mov     r10, [rsi+0F0h]
                lea     rcx, loc_1403FE810
                mov     eax, [r10+0D84h]
                mov     cs:dword_140C2B200, eax
                mov     eax, [r10+84h]
                shr     eax, 15h
                and     eax, 3Fh
                mov     cs:dword_140C2B204, eax
                lea     rax, unk_140D24A00
                mov     [rsi+90h], rax
                lea     rax, unk_140D27A00
                mov     [rsi+98h], rax
                mov     eax, [rsi+0A0h]
                mov     cs:dword_140CFB038, eax
                mov     rax, [rsi+80h]
                add     rax, 7000h
                mov     [rdi+85D8h], rax
                add     rax, 6FB0h
                mov     [rax+28h], rcx
                mov     [rdi+7F28h], rax

loc_14099D928:                          ; CODE XREF: sub_14099D840+5B↑j
                lea     rax, [rdi+8880h]
                mov     [rdi+8448h], rax
                mov     rbx, [rsi+98h]
                and     qword ptr [rdi+10h], 0
                mov     [rdi+8], rbx
                mov     [rdi+18h], rbx
                test    ebp, ebp
                jz      short loc_14099D957
                call    PoEnergyEstimationEnabled
                test    al, al
                jz      short loc_14099D95C

loc_14099D957:                          ; CODE XREF: sub_14099D840+10C↑j
                lock bts dword ptr [rbx], 15h

loc_14099D95C:                          ; CODE XREF: sub_14099D840+115↑j
                mov     rax, [rsi+90h]
                mov     [rbx+0B8h], rax
                lea     rax, [rbx+98h]
                mov     [rax+8], rax
                mov     [rax], rax
                test    ebp, ebp
                jnz     short loc_14099D984
                mov     rcx, rsi
                call    sub_140A3A340

loc_14099D984:                          ; CODE XREF: sub_14099D840+13A↑j
                lea     rcx, qword_140CFDCC0
                mov     [rcx+rbp*8], rdi
                lea     rcx, loc_140405A10
                mov     rax, [rsi+80h]
                sub     rax, 50h ; 'P'
                mov     [rax+28h], rcx
                cmp     qword ptr [rdi+85C0h], 0
                mov     [rdi+3110h], rax
                jnz     short loc_14099D9CE
                lea     rax, [rdi+1F0h]
                mov     dword ptr [rdi+85C8h], 10000Bh
                mov     [rdi+85C0h], rax

loc_14099D9CE:                          ; CODE XREF: sub_14099D840+174↑j
                mov     r15, [r14+38h]
                lea     rbx, [rdi+8Dh]
                mov     rcx, rbx
                lea     r9, [rsp+58h+arg_10]
                lea     r8, [rsp+58h+arg_0]
                lea     rdx, [rsp+58h+arg_8]
                call    sub_14099D588
                mov     ecx, [rsp+58h+arg_8]
                mov     r8d, eax
                movzx   eax, word ptr [rsp+58h+arg_0]
                shl     ax, 8
                or      ax, word ptr [rsp+58h+arg_10]
                cmp     byte ptr [rbx], 2
                mov     [rdi+41h], r13b
                mov     [rdi+40h], cl
                mov     [rdi+42h], ax
                jnz     short loc_14099DA42
                cmp     ecx, 0Fh
                jnb     short loc_14099DA26
                cmp     ecx, 6
                jnz     short loc_14099DA42
                cmp     [rsp+58h+arg_0], 0Dh
                jbe     short loc_14099DA42

loc_14099DA26:                          ; CODE XREF: sub_14099D840+1D8↑j
                mov     ecx, 1A0h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                btr     rax, 16h
                mov     rdx, rax
                shr     rdx, 20h
                wrmsr

loc_14099DA42:                          ; CODE XREF: sub_14099D840+1D3↑j
                                        ; sub_14099D840+1DD↑j ...
                test    ebp, ebp
                jnz     loc_14099DB27
                mov     edx, r8d
                mov     rcx, rdi
                call    sub_14099FD74
                mov     rcx, rsi
                mov     [r15+1070h], r14
                call    sub_140A76400
                call    sub_140A70840
                mov     rcx, rsi
                call    sub_1403CCE00
                mov     rdx, rsi
                or      ecx, 0FFFFFFFFh
                call    sub_140A55F60
                mov     rdx, [rsi+0F0h]
                mov     eax, [rdx+84h]
                test    al, 8
                jz      short loc_14099DA9A
                mov     cs:dword_140D586D8, r13d
                mov     eax, [rdx+84h]

loc_14099DA9A:                          ; CODE XREF: sub_14099D840+24B↑j
                bt      eax, 8
                jnb     short loc_14099DAA7
                mov     cs:dword_140D5815C, r13d

loc_14099DAA7:                          ; CODE XREF: sub_14099D840+25E↑j
                xor     edx, edx
                mov     rcx, r15
                call    sub_1409A11F4
                or      ebx, 0FFFFFFFFh
                mov     rdx, rsi
                mov     ecx, ebx
                call    HalInitializeBios
                xor     r8d, r8d
                mov     rdx, rsi
                mov     ecx, ebx
                call    sub_140A6D770
                mov     rcx, [rsi+0D8h]
                test    rcx, rcx
                jz      short loc_14099DB27
                lea     rdx, aGroupsize ; "GROUPSIZE"
                call    strstr
                test    rax, rax
                jz      short loc_14099DB27
                jmp     short loc_14099DAFA
; ---------------------------------------------------------------------------

loc_14099DAEA:                          ; CODE XREF: sub_14099D840+2BE↓j
                cmp     cl, 20h ; ' '
                jz      short loc_14099DB00
                sub     cl, 30h ; '0'
                cmp     cl, 9
                jbe     short loc_14099DB00
                add     rax, r13

loc_14099DAFA:                          ; CODE XREF: sub_14099D840+2A8↑j
                mov     cl, [rax]
                test    cl, cl
                jnz     short loc_14099DAEA

loc_14099DB00:                          ; CODE XREF: sub_14099D840+2AD↑j
                                        ; sub_14099D840+2B5↑j
                mov     rcx, rax
                call    atoi
                mov     cs:dword_140CFB020, eax
                lea     ecx, [rax-1]
                cmp     ecx, 3Fh ; '?'
                ja      short loc_14099DB1D
                lea     ecx, [rax-1]
                test    eax, ecx
                jz      short loc_14099DB27

loc_14099DB1D:                          ; CODE XREF: sub_14099D840+2D4↑j
                mov     cs:dword_140CFB020, 40h ; '@'

loc_14099DB27:                          ; CODE XREF: sub_14099D840+204↑j
                                        ; sub_14099D840+295↑j ...
                mov     rax, [r14+8]
                mov     ecx, 68h ; 'h'
                mov     [rax+66h], cx
                call    sub_14099D70C
                mov     rdx, rsi
                mov     ecx, ebp
                call    HalInitializeProcessor
                mov     rcx, rdi
                call    sub_14099E24C
                mov     eax, [rdi+24h]
                lea     rbx, sub_140410540
                lea     rsi, sub_140410A00
                test    eax, eax
                jnz     short loc_14099DB75
                mov     rdx, [r14]
                mov     rcx, rdi
                sub     rdx, 2FB0h
                call    sub_1409A0F8C
                mov     eax, [rdi+24h]

loc_14099DB75:                          ; CODE XREF: sub_14099D840+31E↑j
                cmp     cs:byte_140E01840, 0
                jz      short loc_14099DB8C
                lea     rbx, sub_140A17E40
                lea     rsi, sub_140A18180

loc_14099DB8C:                          ; CODE XREF: sub_14099D840+33C↑j
                test    eax, eax
                jnz     short loc_14099DB9B
                call    sub_1403B4F2C
                mov     cs:dword_140CFC938, eax

loc_14099DB9B:                          ; CODE XREF: sub_14099D840+34E↑j
                mov     rdx, [rdi+2D00h]
                test    rdx, rdx
                jz      short loc_14099DBB5
                mov     rax, rdx
                mov     ecx, 122h
                shr     rdx, 20h
                wrmsr

loc_14099DBB5:                          ; CODE XREF: sub_14099D840+365↑j
                cmp     dword ptr [rdi+24h], 0
                jnz     short loc_14099DBED
                mov     ecx, cs:dword_140D58660
                lea     rdx, unk_140E01900
                mov     cs:qword_140C01650, rdx
                mov     cs:qword_140C01658, 40h ; '@'
                mov     [rdx+rcx*8], rsi
                inc     ecx
                lea     eax, [rcx+1]
                mov     [rdx+rcx*8], rbx
                mov     cs:dword_140D58660, eax

loc_14099DBED:                          ; CODE XREF: sub_14099D840+379↑j
                xor     eax, eax
                mov     edx, 230010h
                mov     ecx, 0C0000081h
                wrmsr
                mov     rdx, rbx
                mov     rax, rbx
                shr     rdx, 20h
                mov     ecx, 0C0000083h
                wrmsr
                mov     rdx, rsi
                mov     rax, rsi
                shr     rdx, 20h
                mov     ecx, 0C0000082h
                wrmsr
                mov     eax, 4700h
                xor     edx, edx
                mov     ecx, 0C0000084h
                wrmsr
                mov     edx, ebp
                mov     rcx, rdi
                call    sub_14099DE68
                call    sub_14099DC88
                test    ebp, ebp
                jnz     short loc_14099DC66
                mov     cs:dword_140CFC404, r13d
                lea     rcx, word_140CFC840
                mov     cs:KeNumberProcessors, r13b
                call    KeInitializeAffinityEx
                xor     edx, edx
                lea     rcx, word_140CFC840
                call    KeAddProcessorAffinityEx

loc_14099DC66:                          ; CODE XREF: sub_14099D840+3FC↑j
                lea     rcx, [rdi+100h]
                call    sub_1403FD960
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14099D840   endp

algn_14099DC82:                         ; DATA XREF: .pdata:0000000140126AC8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14099DC88   proc near               ; CODE XREF: sub_14099D840+3F5↑p
                                        ; DATA XREF: .pdata:0000000140126AD4↑o

var_18          = word ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r15
                sub     rsp, 30h
                mov     rbx, gs:20h
                lea     rsi, qword_140C168E0
                lea     rdi, unk_140CEEC80
                cmp     dword ptr [rbx+24h], 0
                jz      loc_14099DD6C

loc_14099DCBE:                          ; CODE XREF: sub_14099DC88+12F↓j
                mov     [rbx+888h], rdi
                mov     r15d, 100h
                mov     [rbx+880h], rdi
                mov     edi, 10h
                add     rbx, 900h

loc_14099DCDE:                          ; CODE XREF: sub_14099DC88+CB↓j
                lea     rcx, [rbx+0C00h]
                mov     [rsp+38h+var_10], rsi
                mov     r9d, 4C6F6F50h
                mov     [rsp+38h+var_18], r15w
                mov     r8d, edi
                xor     edx, edx
                call    sub_14099DDC4
                mov     r9d, 4C6F6F50h
                mov     [rsp+38h+var_10], rsi
                mov     r8d, edi
                mov     [rsp+38h+var_18], r15w
                mov     edx, 200h
                mov     rcx, rbx
                call    sub_14099DDC4
                lea     rcx, [rbx+1800h]
                mov     [rsp+38h+var_10], rsi
                mov     r9d, 4C6F6F50h
                mov     [rsp+38h+var_18], r15w
                mov     r8d, edi
                mov     edx, 1
                call    sub_14099DDC4
                add     edi, 10h
                add     rbx, 60h ; '`'
                cmp     edi, 210h
                jb      short loc_14099DCDE
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                mov     rdi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     r15
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14099DD6C:                          ; CODE XREF: sub_14099DC88+30↑j
                lea     rcx, qword_140C16920
                mov     cs:qword_140C168E8, rsi
                mov     [rsp+38h+var_10], rcx
                mov     eax, 20h ; ' '
                mov     cs:qword_140C16928, rcx
                mov     edx, 200h
                mov     cs:qword_140C16920, rcx
                mov     r9d, 66626353h
                mov     rcx, rdi
                mov     cs:qword_140C168E0, rsi
                mov     r8d, 4F0h
                mov     [rsp+38h+var_18], ax
                call    sub_14099DDC4
                jmp     loc_14099DCBE
sub_14099DC88   endp

; ---------------------------------------------------------------------------
byte_14099DDBC  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140126AD4↑o

; =============== S U B R O U T I N E =======================================


sub_14099DDC4   proc near               ; CODE XREF: sub_1403A904C+61↑p
                                        ; sub_1407915E0+84↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = word ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001409A3C8C SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     edi, r9d
                mov     esi, r8d
                mov     ebx, edx
                mov     rbp, rcx
                call    InitializeSListHead
                mov     [rbp+24h], ebx
                lea     rax, ExAllocatePoolWithTag
                mov     [rbp+30h], rax
                lea     rax, ExFreePoolWithTag
                mov     [rbp+38h], rax
                mov     eax, 2
                mov     [rbp+10h], ax
                movzx   eax, [rsp+28h+arg_20]
                mov     [rbp+12h], ax
                xor     eax, eax
                mov     [rbp+14h], rax
                mov     [rbp+1Ch], rax
                mov     [rbp+50h], rax
                mov     rax, [rsp+28h+arg_28]
                mov     [rbp+28h], edi
                mov     [rbp+2Ch], esi
                add     rbp, 40h ; '@'
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     FatalListEntryError_118
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                mov     [rbp+0], rax
                mov     [rbp+8], rcx
                mov     [rcx], rbp
                mov     [rax+8], rbp
                mov     rbp, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14099DDC4   endp

algn_14099DE62:                         ; DATA XREF: .rdata:000000014008E4B0↑o
                                        ; .pdata:0000000140126AE0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14099DE68   proc near               ; CODE XREF: sub_14099D840+3F0↑p
                                        ; DATA XREF: .pdata:0000000140126AEC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r15
                sub     rsp, 20h
                xor     ebp, ebp
                mov     dword ptr [rcx+7C20h], 1
                mov     rbx, rcx
                mov     [rcx+7C18h], ebp
                mov     [rcx+7EB4h], ebp
                lea     rax, [rcx+7C80h]
                mov     [rcx+7EB8h], rbp
                mov     esi, edx
                lea     r8d, [rbp+20h]
                mov     [rcx+2D08h], rbp
                mov     ecx, r8d

loc_14099DEBA:                          ; CODE XREF: sub_14099DE68+61↓j
                mov     [rax+8], rax
                mov     [rax], rax
                add     rax, 10h
                sub     rcx, 1
                jnz     short loc_14099DEBA
                mov     rax, [rbx+8448h]
                mov     rdx, rbp
                mov     [rax], rbp
                mov     rax, [rbx+8448h]
                mov     [rax+8], ebp
                mov     rax, [rbx+8448h]
                mov     [rax+260h], ebp
                mov     rax, [rbx+8448h]
                mov     [rax+268h], rbp

loc_14099DEFD:                          ; CODE XREF: sub_14099DE68+B2↓j
                mov     rcx, [rbx+8448h]
                add     rcx, 10h
                add     rcx, rdx
                add     rdx, 10h
                mov     [rcx+8], rcx
                mov     [rcx], rcx
                sub     r8, 1
                jnz     short loc_14099DEFD
                mov     rcx, [rbx+8448h]
                lea     edx, [r8+7Fh]
                mov     edi, 210h
                lea     r8d, [rdx-3Fh]
                add     rcx, rdi
                call    memset
                mov     rax, [rbx+8448h]
                mov     byte ptr [rax+250h], 1
                mov     rcx, [rbx+8448h]
                mov     al, [rbx+0D1h]
                mov     [rcx+251h], al
                mov     rcx, rbp

loc_14099DF5C:                          ; CODE XREF: sub_14099DE68+10A↓j
                mov     rax, [rbx+8448h]
                mov     byte ptr [rcx+rax+252h], 1
                inc     rcx
                cmp     rcx, 2
                jl      short loc_14099DF5C
                mov     rcx, [rbx+8448h]
                mov     rax, [rbx+0C8h]
                mov     [rcx+258h], rax
                lea     rcx, [rbx+30C0h]
                mov     rax, [rbx+8448h]
                add     rax, rdi
                mov     [rbx+38h], rax
                call    sub_140364624
                mov     [rbx+30D0h], rbp
                lea     rdi, [rbx+7BA0h]
                mov     [rbx+30D8h], ebp
                lea     rdx, sub_140326150
                mov     [rbx+312Ch], ebp
                xor     r8d, r8d
                mov     [rbx+312Ah], bpl
                mov     rcx, rdi
                mov     [rbx+30DCh], ebp
                mov     eax, cs:dword_140CFB078
                mov     [rbx+3118h], eax
                mov     eax, cs:dword_140CFB0A4
                mov     [rbx+3120h], eax
                mov     eax, cs:dword_140CFB080
                mov     [rbx+7E94h], eax
                call    KeInitializeDpc
                mov     rax, [rdi+38h]
                mov     r15d, 500h
                test    rax, rax
                jnz     short loc_14099E017
                lea     eax, [r15+rsi]
                mov     [rdi+2], ax

loc_14099E017:                          ; CODE XREF: sub_14099DE68+1A5↑j
                lea     rax, [rbx+7C00h]
                mov     byte ptr [rbx+7BA1h], 2
                lea     rcx, [rbx+3080h]
                mov     [rax+8], rax
                mov     [rax], rax
                movzx   edi, si
                mov     qword ptr [rbx+30A8h], 1
                call    InitializeSListHead
                mov     rax, gs:18h
                lea     rcx, [rbx+6F0h]
                lea     r8, [rbx+85E0h]
                lea     rdx, sub_140356AC0
                mov     [rax+28h], rcx
                lea     rax, qword_140D23700
                mov     [rbx+7D8h], rax
                lea     rcx, [rbx+86E8h]
                mov     [rbx+7D0h], rbp
                lea     rax, qword_140D236C0
                mov     [rbx+748h], rax
                lea     rax, qword_140D23800
                mov     [rbx+738h], rax
                lea     rax, qword_140D237C0
                mov     [rbx+758h], rax
                lea     rax, qword_140D23780
                mov     [rbx+768h], rax
                lea     rax, qword_140D23740
                mov     [rbx+788h], rax
                lea     rax, qword_140D23900
                mov     [rbx+798h], rax
                lea     rax, qword_140D238C0
                mov     [rbx+7A8h], rax
                lea     rax, qword_140D23880
                mov     [rbx+7B8h], rax
                lea     rax, qword_140D23840
                mov     [rbx+7C8h], rax
                lea     eax, [rsi+rsi*2]
                mov     [rbx+740h], rbp
                and     eax, 3FFh
                mov     [rbx+730h], rbp
                mov     [rbx+750h], rbp
                mov     [rbx+760h], rbp
                mov     [rbx+780h], rbp
                mov     [rbx+790h], rbp
                mov     [rbx+7A0h], rbp
                mov     [rbx+7B0h], rbp
                mov     [rbx+7C0h], rbp
                mov     [rbx+7F0h], rbp
                mov     [rbx+7F8h], rbp
                mov     [r8], eax
                mov     [rbx+30h], rbp
                mov     [rbx+7C10h], rbp
                mov     dword ptr [rbx+7BE0h], 1
                call    KeInitializeDpc
                test    esi, esi
                jz      short loc_14099E1C9

loc_14099E178:                          ; CODE XREF: sub_14099DE68+3D8↓j
                mov     rcx, rbx
                call    sub_140364634
                xor     r8d, r8d
                lea     rdx, sub_1402F3A90
                lea     rcx, [rbx+8780h]
                call    KeInitializeDpc
                mov     rax, [rbx+87B8h]
                test    rax, rax
                jnz     short loc_14099E1AD
                add     di, r15w
                mov     [rbx+8782h], di

loc_14099E1AD:                          ; CODE XREF: sub_14099DE68+338↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r15
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14099E1C9:                          ; CODE XREF: sub_14099DE68+30E↑j
                mov     al, cs:byte_140CFB003
                lea     rcx, unk_140C2B264
                xor     edx, edx
                mov     cs:byte_140C0F200, al
                mov     r8d, 0A4h
                mov     cs:qword_140D23340, rbp
                mov     cs:qword_140D23700, rbp
                mov     cs:qword_140D236C0, rbp
                mov     cs:qword_140D23800, rbp
                mov     cs:qword_140D23780, rbp
                mov     cs:qword_140D238C0, rbp
                mov     cs:qword_140D23900, rbp
                mov     cs:qword_140D23740, rbp
                mov     cs:qword_140D237C0, rbp
                mov     cs:qword_140D23880, rbp
                mov     cs:qword_140D23840, rbp
                mov     cs:dword_140C2B260, 140014h
                call    memset
                jmp     loc_14099E178
sub_14099DE68   endp

; ---------------------------------------------------------------------------
byte_14099E245  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140126AEC↑o

; =============== S U B R O U T I N E =======================================


sub_14099E24C   proc near               ; CODE XREF: sub_14099D840+306↑p
                                        ; DATA XREF: .rdata:000000014008E518↑o ...

var_88          = qword ptr -88h
var_78          = dword ptr -78h
var_70          = qword ptr -70h
var_68          = dword ptr -68h
var_64          = dword ptr -64h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = xmmword ptr -48h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001409A3C94 SIZE 000004CC BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r12
                push    r13
                push    r15
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0A8h+var_28], rax
                mov     rdi, rcx
                mov     [rsp+0A8h+var_50], rcx
                xorps   xmm0, xmm0
                movups  [rsp+0A8h+var_48], xmm0
                mov     bl, [rcx+40h]
                mov     cl, [rcx+43h]
                xor     r10d, r10d
                mov     dl, [rdi+8Dh]
                mov     al, dl
                lea     r9d, [r10+1]
                sub     al, r9b
                movzx   r8d, r10b
                cmp     al, r9b
                cmovbe  r8d, r9d
                mov     dword ptr [rsp+0A8h+var_70], r8d
                cmp     [rdi+24h], r10d
                jz      loc_14099E7F5
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                xor     ecx, ecx
                call    sub_14099D588
                mov     edx, eax
                mov     rcx, rdi
                call    sub_14099FD74
                mov     r9d, 1
                xor     r10d, r10d

loc_14099E2DE:                          ; CODE XREF: sub_14099E24C+5B5↓j
                mov     esi, 1Fh

loc_14099E2E3:                          ; CODE XREF: sub_14099E24C+60A↓j
                                        ; sub_14099E24C+61A↓j ...
                xor     eax, eax
                xor     ecx, ecx
                cpuid
                mov     [rsp+0A8h+var_60], edx
                mov     [rsp+0A8h+var_78], eax
                mov     dword ptr [rsp+0A8h+var_48+4], ebx
                mov     r8b, [rdi+8Dh]
                cmp     r8b, 2
                jnz     loc_1409A3D6D
                xor     eax, eax
                xor     edx, edx
                mov     ecx, 8Bh
                wrmsr
                mov     eax, r9d
                xor     ecx, ecx
                cpuid
                mov     [rsp+0A8h+var_60], edx
                mov     dword ptr [rsp+0A8h+var_48], eax
                mov     dword ptr [rsp+0A8h+var_48+4], ebx

loc_14099E324:                          ; CODE XREF: sub_14099E24C+5B2D↓j
                mov     ecx, 8Bh
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     [rdi+85A8h], rax

loc_14099E339:                          ; CODE XREF: sub_14099E24C+5B24↓j
                mov     eax, r9d
                xor     ecx, ecx
                cpuid
                mov     r15d, edx
                mov     [rsp+0A8h+var_64], r15d
                mov     [rsp+0A8h+var_5C], ecx
                mov     [rsp+0A8h+var_58], ebx
                mov     eax, 80000000h
                xor     ecx, ecx
                cpuid
                mov     [rsp+0A8h+var_68], eax
                mov     eax, 80000001h
                xor     ecx, ecx
                cpuid
                mov     r12d, edx
                mov     r13d, ecx
                cmp     [rdi+24h], r10d
                jz      loc_14099E86B

loc_14099E376:                          ; CODE XREF: sub_14099E24C+62C↓j
                                        ; sub_14099E24C+643↓j ...
                mov     rcx, rdi
                call    sub_14099E8D0
                prefetchw byte ptr [rdi]
                mov     r11d, 1
                cmp     [rdi+8Dh], r11b
                jz      loc_1409A3E33

loc_14099E394:                          ; CODE XREF: sub_14099E24C+5BEC↓j
                mov     r8d, [rsp+0A8h+var_58]
                mov     eax, r8d
                shr     eax, 18h
                mov     [rdi+0D4h], eax
                mov     eax, r8d
                shr     eax, 5
                and     eax, 7F8h
                mov     [rdi+0E8h], eax
                mov     eax, r15d
                mov     ecx, 789F3FDh
                and     eax, ecx
                xor     r9d, r9d
                cmp     eax, ecx
                jnz     loc_1409A412D
                bt      r12d, 0Bh
                jnb     loc_1409A412D
                bt      r12d, 14h
                jnb     loc_1409A412D
                test    [rsp+0A8h+var_5C], 2000h
                jz      loc_1409A412D
                test    r11b, r13b
                jz      loc_1409A412D
                cmp     cs:dword_140C2AEFC, r9d
                jnz     loc_1409A412D
                mov     r15, [rdi+85A0h]
                or      r15, 20113DFEh
                mov     rax, 400000000h
                test    rax, r15
                jz      short loc_14099E445
                movzx   edx, byte ptr [rdi+0D0h]
                shl     rdx, 8
                movzx   eax, byte ptr [rdi+0D1h]
                or      rdx, rax
                mov     rax, rdx
                shr     rdx, 20h
                mov     ecx, 0C0000103h
                wrmsr

loc_14099E445:                          ; CODE XREF: sub_14099E24C+1D4↑j
                xor     eax, eax
                xor     edx, edx
                mov     ecx, 174h
                wrmsr
                mov     ecx, 176h
                wrmsr
                mov     ecx, 175h
                wrmsr
                bt      r12d, 19h
                jb      loc_1409A3E3D

loc_14099E469:                          ; CODE XREF: sub_14099E24C+5C0D↓j
                mov     [rdi+98h], r11d
                mov     [rdi+9Ch], r11d
                mov     cl, [rdi+8Dh]
                lea     eax, [rcx-2]
                cmp     al, r11b
                ja      loc_1409A3E5E
                xor     r13d, r13d
                mov     r12d, [rsp+0A8h+var_78]
                cmp     r12d, esi
                jnb     loc_1409A3EED
                mov     edx, [rsp+0A8h+var_60]

loc_14099E49E:                          ; CODE XREF: sub_14099E24C+5CB1↓j
                test    r9d, r9d
                jnz     short loc_14099E4C6
                lea     r10d, [r9+0Bh]
                cmp     r12d, r10d
                jb      short loc_14099E4BD
                mov     eax, r10d
                xor     ecx, ecx
                cpuid
                mov     dword ptr [rsp+0A8h+var_48], eax
                test    ebx, ebx
                cmovnz  r9d, r10d

loc_14099E4BD:                          ; CODE XREF: sub_14099E24C+25E↑j
                test    r9d, r9d
                jz      loc_1409A3F02

loc_14099E4C6:                          ; CODE XREF: sub_14099E24C+255↑j
                mov     [rdi+0D4h], edx
                mov     r11d, r13d
                mov     r13d, 1
                mov     r10d, r13d
                xor     r12d, r12d

loc_14099E4DB:                          ; CODE XREF: sub_14099E24C+2C6↓j
                mov     eax, r9d
                mov     ecx, r11d
                cpuid
                mov     r8d, eax
                mov     dword ptr [rsp+0A8h+var_48+4], ebx
                add     r11d, r13d
                shr     ecx, 8
                test    ecx, ecx
                jz      short loc_14099E50C
                and     r8d, esi
                cmp     ecx, r13d
                jz      loc_14099E7E2
                lea     eax, [rcx-2]
                mov     r10d, r13d
                mov     cl, r8b
                shl     r10d, cl

loc_14099E50C:                          ; CODE XREF: sub_14099E24C+2A6↑j
                                        ; sub_14099E24C+5A4↓j
                cmp     word ptr [rsp+0A8h+var_48+4], r12w
                jnz     short loc_14099E4DB
                xor     edx, edx
                mov     eax, r10d
                div     dword ptr [rdi+9Ch]
                mov     [rdi+98h], eax
                mov     r12d, [rsp+0A8h+var_78]
                mov     r11, r13
                xor     r13d, r13d

loc_14099E530:                          ; CODE XREF: sub_14099E24C+5CE8↓j
                                        ; sub_14099E24C+5D0F↓j
                mov     esi, [rsp+0A8h+var_68]

loc_14099E534:                          ; CODE XREF: sub_14099E24C+5C9C↓j
                mov     al, [rdi+8Dh]
                cmp     al, r11b
                jz      loc_1409A3F60
                cmp     al, 2
                jnz     short loc_14099E54C
                bts     r15, 18h

loc_14099E54C:                          ; CODE XREF: sub_14099E24C+2F9↑j
                                        ; sub_14099E24C+5D19↓j
                mov     al, [rdi+98h]
                mov     [rdi+8Eh], al
                mov     al, [rdi+9Ch]
                mov     [rdi+8Fh], al
                mov     ebx, [rdi+9Ch]
                cmp     [rdi+24h], r13d
                jz      short loc_14099E583
                call    HalIsHyperThreadingEnabled
                mov     r11d, 1
                test    al, al
                jz      loc_1409A3F6A

loc_14099E583:                          ; CODE XREF: sub_14099E24C+322↑j
                                        ; sub_14099E24C+5D25↓j
                neg     ebx
                mov     [rdi+0DCh], ebx
                mov     al, [rdi+8Dh]
                mov     cl, al
                sub     cl, r11b
                cmp     cl, 2
                ja      loc_1409A3F76
                cmp     esi, 80000008h
                jb      loc_1409A3F76
                mov     eax, 80000008h
                xor     ecx, ecx
                cpuid
                mov     dword ptr [rsp+0A8h+var_48], eax
                mov     cs:byte_140C0F440, al

loc_14099E5BE:                          ; CODE XREF: sub_14099E24C+5D2D↓j
                                        ; sub_14099E24C+5D3A↓j
                mov     cl, cs:byte_140C0F440
                mov     rax, r11
                shl     rax, cl
                sub     rax, r11
                and     rax, 0FFFFFFFFFFFFF000h
                mov     cs:qword_140C0F438, rax
                mov     cs:qword_140C0F448, rax
                mov     rdx, cr4
                test    r11b, r15b
                jz      short loc_14099E5EE
                bts     rdx, 14h

loc_14099E5EE:                          ; CODE XREF: sub_14099E24C+39B↑j
                mov     rax, r15
                and     eax, 10000000h
                mov     rcx, rdx
                bts     rcx, 10h
                test    rax, rax
                cmovz   rcx, rdx
                cmp     cs:dword_140CFC554, 0
                jnz     loc_1409A3F8B

loc_14099E612:                          ; CODE XREF: sub_14099E24C+5D44↓j
                mov     rax, cs:qword_140CFC4C8
                mov     rdx, rcx
                bts     rdx, 0Bh
                and     al, 4
                cmovz   rdx, rcx
                mov     rcx, rdx
                cmp     [rdi+24h], r13d
                jz      loc_14099E8BD
                mov     rax, 40000000000h
                test    rax, r15
                jz      loc_14099E8BD
                cmp     cs:byte_140CFC409, 0
                jz      loc_14099E8BD
                mov     r9d, 20000h
                or      rcx, r9

loc_14099E65D:                          ; CODE XREF: sub_14099E24C+677↓j
                mov     cr4, rcx
                cmp     cs:dword_140CFC554, 0
                jnz     loc_1409A3F95

loc_14099E66D:                          ; CODE XREF: sub_14099E24C+5D4C↓j
                test    r9, rcx
                jz      short loc_14099E67C
                mov     rax, cr3
                or      rax, 2
                mov     cr3, rax

loc_14099E67C:                          ; CODE XREF: sub_14099E24C+424↑j
                mov     r10b, [rdi+8Dh]
                cmp     r10b, 2
                jnz     short loc_14099E6A2
                cmp     r12d, 7
                jb      short loc_14099E6A2
                mov     eax, 7
                xor     ecx, ecx
                cpuid
                bt      ebx, 0Fh
                jb      loc_1409A3F9D

loc_14099E6A2:                          ; CODE XREF: sub_14099E24C+43B↑j
                                        ; sub_14099E24C+441↑j ...
                mov     r8, r15
                or      r8, r9
                cmp     byte ptr [rsp+0A8h+var_70], r13b
                cmovz   r8, r15
                mov     rsi, r8
                mov     [rsp+0A8h+var_70], r8
                cmp     r10b, 2
                jnz     loc_1409A3FDB
                mov     eax, r11d
                xor     ecx, ecx
                cpuid
                test    cl, 20h
                jz      loc_1409A404E
                mov     ecx, 482h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                jge     loc_1409A3FCC
                mov     ecx, 48Bh
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     rbx, rax
                mov     rdx, rax
                mov     rax, 200000000h
                mov     rcx, r8
                bts     rcx, 1Ah
                and     rdx, rax
                cmovz   rcx, r8
                mov     r8, rcx
                test    r11b, cl
                setnz   cl
                bt      rbx, 36h ; '6'
                setb    al
                test    al, cl
                jz      short loc_14099E72E
                call    sub_1404F1FD8

loc_14099E72E:                          ; CODE XREF: sub_14099E24C+4DB↑j
                mov     r9, 10000000000h
                test    r9, rbx
                jnz     loc_1409A3FC1

loc_14099E741:                          ; CODE XREF: sub_14099E24C+5D7B↓j
                                        ; sub_14099E24C+5D8A↓j
                mov     ecx, 3Ah ; ':'
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     cl, al
                and     cl, 5
                mov     rsi, r8
                bts     rsi, 1Bh
                cmp     cl, 5
                cmovnz  rsi, r8
                test    al, 4
                jz      short loc_14099E76E
                or      cs:byte_140C50BD7, r11b

loc_14099E76E:                          ; CODE XREF: sub_14099E24C+519↑j
                mov     [rsp+0A8h+var_70], rsi
                test    r11b, al
                jz      short loc_14099E784
                or      cs:byte_140C50BD7, 2
                mov     [rsp+0A8h+var_70], rsi

loc_14099E784:                          ; CODE XREF: sub_14099E24C+52A↑j
                                        ; sub_14099E24C+5E0C↓j
                cmp     byte ptr [rdi+8Dh], 2
                jnz     short loc_14099E79F
                mov     eax, 7
                xor     ecx, ecx
                cpuid
                test    bl, 4
                jnz     loc_1409A405D

loc_14099E79F:                          ; CODE XREF: sub_14099E24C+53F↑j
                                        ; sub_14099E24C+5E2A↓j ...
                cmp     [rdi+8Dh], r11b
                jz      loc_1409A40DE

loc_14099E7AC:                          ; CODE XREF: sub_14099E24C+5E97↓j
                                        ; sub_14099E24C+5E9F↓j ...
                mov     [rdi+85A0h], rsi
                mov     rcx, [rsp+0A8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0A8h+var_18]
                mov     rbx, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r13
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14099E7E2:                          ; CODE XREF: sub_14099E24C+2AE↑j
                mov     edx, r13d
                mov     cl, r8b
                shl     edx, cl
                mov     [rdi+9Ch], edx
                jmp     loc_14099E50C
; ---------------------------------------------------------------------------

loc_14099E7F5:                          ; CODE XREF: sub_14099E24C+6A↑j
                cmp     dl, 2
                jnz     loc_1409A3D32
                cmp     bl, 6
                jnz     loc_14099E2DE
                mov     cs:dword_140CFC740, 1DDh
                mov     cs:dword_140CFC73C, 1DEh
                cmp     cl, 27h ; '''
                jbe     loc_1409A3C94
                cmp     cl, 3Ah ; ':'
                jbe     loc_1409A3CD8
                cmp     cl, 3Ch ; '<'
                jnz     loc_1409A3D01

loc_14099E836:                          ; CODE XREF: sub_14099E24C+5A5A↓j
                                        ; sub_14099E24C:loc_1409A3CD8↓j ...
                mov     esi, 1Fh

loc_14099E83B:                          ; CODE XREF: sub_14099E24C+5A78↓j
                                        ; sub_14099E24C+5A87↓j
                mov     cs:dword_140CFC61C, 680h
                mov     cs:dword_140CFC658, 6C0h

loc_14099E84F:                          ; CODE XREF: sub_14099E24C+5A6F↓j
                                        ; sub_14099E24C+5A81↓j ...
                cmp     cs:dword_140CFC61C, r10d
                jz      loc_14099E2E3
                mov     cs:dword_140CFC91C, 1C9h
                jmp     loc_14099E2E3
; ---------------------------------------------------------------------------

loc_14099E86B:                          ; CODE XREF: sub_14099E24C+124↑j
                cmp     r8b, r9b
                jz      loc_1409A3D7E

loc_14099E874:                          ; CODE XREF: sub_14099E24C+5B54↓j
                                        ; sub_14099E24C+5B5C↓j ...
                cmp     [rdi+24h], r10d
                jnz     loc_14099E376
                mov     al, [rdi+8Dh]
                cmp     al, r9b
                jz      loc_1409A3DE1
                cmp     al, 2
                jnz     loc_14099E376
                cmp     byte ptr [rdi+40h], 6
                jnz     loc_14099E376
                movzx   ecx, byte ptr [rdi+43h]
                cmp     cl, 36h ; '6'
                jbe     loc_1409A3DF7

loc_14099E8AC:                          ; CODE XREF: sub_14099E24C+5BBB↓j
                sub     cl, 37h ; '7'
                cmp     cl, 16h
                ja      loc_14099E376
                jmp     loc_1409A3E0C
; ---------------------------------------------------------------------------

loc_14099E8BD:                          ; CODE XREF: sub_14099E24C+3E2↑j
                                        ; sub_14099E24C+3F5↑j ...
                mov     r9d, 20000h
                jmp     loc_14099E65D
; } // starts at 14099E24C
sub_14099E24C   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14099E8C8:                         ; DATA XREF: .rdata:000000014008E518↑o
                                        ; .pdata:0000000140126AF8↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_14099E8D0   proc near               ; CODE XREF: sub_14099E24C+12D↑p
                                        ; DATA XREF: .pdata:0000000140126B04↑o

var_30          = qword ptr -30h
var_20          = dword ptr -20h
var_8           = qword ptr -8
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                and     [rbp+var_20], 0
                mov     rdi, rcx
                call    sub_1403F2D24
                test    eax, eax
                jnz     loc_14099E9C6
                mov     al, [rdi+8Dh]
                cmp     al, 2
                jz      short loc_14099E928
                cmp     al, 3
                jnz     loc_14099EA99
                cmp     byte ptr [rdi+40h], 6
                jnz     short loc_14099E94A
                cmp     byte ptr [rdi+43h], 0Dh
                jz      loc_14099EA99
                jmp     short loc_14099E94A
; ---------------------------------------------------------------------------

loc_14099E928:                          ; CODE XREF: sub_14099E8D0+3C↑j
                cmp     byte ptr [rdi+40h], 6
                jnz     short loc_14099E94A
                movzx   eax, byte ptr [rdi+43h]
                cmp     al, 36h ; '6'
                ja      short loc_14099E94A
                mov     rcx, 6000C010000000h
                bt      rcx, rax
                jb      loc_14099EA99

loc_14099E94A:                          ; CODE XREF: sub_14099E8D0+4A↑j
                                        ; sub_14099E8D0+56↑j ...
                xor     eax, eax
                xor     ecx, ecx
                cpuid
                xor     r8d, r8d
                cmp     eax, 7
                jb      short loc_14099E9B3
                xor     ecx, ecx
                lea     eax, [r8+7]
                cpuid
                bt      edx, 1Dh
                jnb     short loc_14099E977
                mov     ecx, 10Ah
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                mov     r8, rax

loc_14099E977:                          ; CODE XREF: sub_14099E8D0+94↑j
                test    r8b, 1
                jz      short loc_14099E9B3
                mov     rcx, cs:qword_140CFC4C8
                mov     al, cl
                mov     cs:dword_140CFC74C, 1
                and     al, 28h
                cmp     al, 8
                mov     eax, 380000h
                setz    dl
                and     rcx, rax
                cmp     rcx, rax
                jz      short loc_14099E9AB
                call    sub_1403F2F78
                or      dl, al

loc_14099E9AB:                          ; CODE XREF: sub_14099E8D0+D2↑j
                test    dl, dl
                jz      loc_14099EA99

loc_14099E9B3:                          ; CODE XREF: sub_14099E8D0+86↑j
                                        ; sub_14099E8D0+AB↑j
                cmp     dword ptr [rdi+24h], 0
                jz      short loc_14099E9C6
                cmp     cs:byte_140C50BD8, 0
                jz      loc_14099EAB6

loc_14099E9C6:                          ; CODE XREF: sub_14099E8D0+2E↑j
                                        ; sub_14099E8D0+E7↑j
                cmp     byte ptr [rdi+8Dh], 2
                mov     cs:byte_140C50BD8, 1
                jnz     loc_14099EA8C
                test    byte ptr cs:qword_140CFC4C8, 10h
                jnz     loc_14099EA8C
                lea     rcx, [rbp+var_20]
                call    sub_1403A91A0
                test    al, al
                jnz     short loc_14099EA64
                mov     r8d, [rdi+6C8h]
                lea     r9, dword_140020EB0
                movzx   ebx, byte ptr [rdi+8Dh]
                xor     edx, edx
                xor     eax, eax
                mov     ecx, 2Eh ; '.'

loc_14099EA12:                          ; CODE XREF: sub_14099E8D0+162↓j
                cmp     [rax+r9], ebx
                jnz     short loc_14099EA1F
                cmp     [rax+r9+4], r8d
                jz      short loc_14099EA34

loc_14099EA1F:                          ; CODE XREF: sub_14099E8D0+146↑j
                inc     rdx
                lea     rax, [rdx+rdx*4]
                shl     rax, 2
                cmp     dword ptr [rax+r9+8], 13h
                jz      short loc_14099EA67
                jmp     short loc_14099EA12
; ---------------------------------------------------------------------------

loc_14099EA34:                          ; CODE XREF: sub_14099E8D0+14D↑j
                lea     rax, [rdx+rdx*4]
                mov     ecx, [r9+rax*4+0Ch]
                test    ecx, ecx
                jnz     short loc_14099EA67
                mov     eax, 80000000h
                cpuid
                cmp     eax, 80000008h
                jb      short loc_14099EA5A
                mov     eax, 80000008h
                xor     ecx, ecx
                cpuid
                jmp     short loc_14099EA5F
; ---------------------------------------------------------------------------

loc_14099EA5A:                          ; CODE XREF: sub_14099E8D0+17D↑j
                mov     eax, 24h ; '$'

loc_14099EA5F:                          ; CODE XREF: sub_14099E8D0+188↑j
                movzx   ecx, al
                jmp     short loc_14099EA67
; ---------------------------------------------------------------------------

loc_14099EA64:                          ; CODE XREF: sub_14099E8D0+122↑j
                mov     ecx, [rbp+var_20]

loc_14099EA67:                          ; CODE XREF: sub_14099E8D0+160↑j
                                        ; sub_14099E8D0+16F↑j ...
                mov     edx, [rdi+24h]
                test    edx, edx
                jz      short loc_14099EA84
                movsxd  rax, cs:dword_140CFC62C
                cmp     ecx, eax
                jz      short loc_14099EA99
                cmp     cs:byte_140CFC53D, 0
                jz      short loc_14099EAD1
                jmp     short loc_14099EA99
; ---------------------------------------------------------------------------

loc_14099EA84:                          ; CODE XREF: sub_14099E8D0+19C↑j
                mov     cs:dword_140CFC62C, ecx
                jmp     short loc_14099EA99
; ---------------------------------------------------------------------------

loc_14099EA8C:                          ; CODE XREF: sub_14099E8D0+104↑j
                                        ; sub_14099E8D0+111↑j
                cmp     dword ptr [rdi+24h], 0
                jnz     short loc_14099EA99
                or      cs:dword_140CFC62C, 0FFFFFFFFh

loc_14099EA99:                          ; CODE XREF: sub_14099E8D0+40↑j
                                        ; sub_14099E8D0+50↑j ...
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+50h+arg_8]
                mov     rdi, [rsp+50h+arg_10]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14099EAB6:                          ; CODE XREF: sub_14099E8D0+F0↑j
                and     [rsp+50h+var_30], 0
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, 4B56414Ch
                lea     ecx, [r9+5Dh]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14099EAD1:                          ; CODE XREF: sub_14099E8D0+1B0↑j
                movsxd  r9, ecx
                mov     r8, rdx
                mov     edx, 4C315446h
                mov     [rsp+50h+var_30], rax
                mov     ecx, 5Dh ; ']'
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14099E8D0
sub_14099E8D0   endp

algn_14099EAEC:                         ; DATA XREF: .pdata:0000000140126B04↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14099EB00   proc near               ; CODE XREF: start+204↑p
                                        ; DATA XREF: .rdata:000000014008E644↑o ...

var_2E8         = qword ptr -2E8h
var_2E0         = dword ptr -2E0h
var_2D8         = byte ptr -2D8h
var_2D7         = byte ptr -2D7h
var_2D0         = qword ptr -2D0h
var_2C8         = dword ptr -2C8h
var_2C4         = dword ptr -2C4h
var_2C0         = qword ptr -2C0h
var_2B8         = dword ptr -2B8h
var_2B4         = dword ptr -2B4h
var_2B0         = dword ptr -2B0h
var_2AC         = dword ptr -2ACh
var_2A8         = qword ptr -2A8h
var_2A0         = qword ptr -2A0h
var_298         = qword ptr -298h
var_290         = xmmword ptr -290h
var_280         = qword ptr -280h
var_278         = qword ptr -278h
var_270         = qword ptr -270h
var_268         = qword ptr -268h
var_260         = qword ptr -260h
var_258         = qword ptr -258h
var_250         = xmmword ptr -250h
var_238         = dword ptr -238h
var_21C         = dword ptr -21Ch
var_38          = qword ptr -38h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001409A38B2 SIZE 0000001E BYTES
; FUNCTION CHUNK AT 00000001409A4160 SIZE 0000027D BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_10], rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r15
                sub     rsp, 2E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+308h+var_38], rax
                mov     rsi, r9
                mov     [rsp+308h+var_278], r8
                mov     [rsp+308h+var_270], rdx
                mov     [rsp+308h+var_2A0], rcx
                mov     [rsp+308h+var_268], rdx
                mov     [rsp+308h+var_260], r9
                mov     rax, [rsp+308h+arg_28]
                mov     [rsp+308h+var_298], rax
                mov     [rsp+308h+var_258], rax
                xorps   xmm0, xmm0
                movups  [rsp+308h+var_290], xmm0
                xorps   xmm1, xmm1
                movups  [rsp+308h+var_250], xmm1
                mov     r13d, [rsp+308h+arg_20]
                test    r13d, r13d
                jz      loc_14099F180
                mov     edi, 1

loc_14099EB8C:                          ; CODE XREF: sub_14099EB00+693↓j
                                        ; sub_14099EB00+566A↓j ...
                mov     rbx, [rsi+85A0h]
                mov     [rsp+308h+var_2D0], rbx
                mov     al, [rsi+8Dh]
                sub     al, dil
                mov     ecx, 2
                cmp     al, cl
                ja      short loc_14099EBB5
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1403A90E0

loc_14099EBB5:                          ; CODE XREF: sub_14099EB00+A8↑j
                mov     rcx, rsi
                call    sub_14099CF10
                xor     edx, edx
                mov     r8d, 200h
                lea     rcx, [rsp+308h+var_238]
                call    memset
                fxsave  [rsp+308h+var_238]
                test    r13d, r13d
                jz      loc_14099F19E
                cmp     cs:dword_140CFC730, 0
                jnz     loc_1409A4213

loc_14099EBF0:                          ; CODE XREF: sub_14099EB00+5725↓j
                call    sub_14099B47C
                lea     r13, [rsi+8390h]
                mov     dword ptr [r13+0], 140001h
                and     dword ptr [r13+4], 0
                lea     rcx, [r13+8]
                xor     edx, edx
                mov     r8d, 0A0h
                call    memset
                mov     edx, [rsp+308h+arg_20]
                mov     rcx, r13
                call    KeAddProcessorAffinityEx
                mov     r11, rsi
                mov     [rsp+308h+var_2C0], rsi
                mov     ebx, [rsi+98h]
                lea     r12, [rsi+9Ch]
                cmp     ebx, edi
                jz      loc_1409A422A

loc_14099EC46:                          ; CODE XREF: sub_14099EB00+572E↓j
                mov     eax, [r12]
                imul    ebx, eax
                mov     [rsp+308h+var_2B8], ebx
                lea     r9d, [rbx-1]
                not     r9d
                mov     [rsp+308h+var_2B4], r9d
                mov     ecx, [rsi+0D4h]
                mov     r10d, ecx
                and     r10d, r9d
                mov     [rsp+308h+var_2B0], r10d
                mov     [rsi+8438h], r10d
                dec     eax
                not     eax
                mov     [rsp+308h+var_2AC], eax
                and     ecx, eax
                mov     [rsp+308h+var_2C8], ecx
                mov     rdx, [rsi+0C8h]
                mov     [rsp+308h+var_2A8], rdx
                mov     [rsp+308h+var_2D8], 0
                xor     ecx, ecx
                mov     [rsp+308h+var_2C4], ecx
                mov     eax, cs:dword_140CFC404
                test    eax, eax
                jz      loc_14099ED7C
                mov     r8d, [rsp+308h+var_2C8]

loc_14099ECAD:                          ; CODE XREF: sub_14099EB00+276↓j
                lea     r15, cs:140000000h
                mov     [rsp+308h+var_280], r11
                mov     al, [rsp+308h+var_2D8]
                mov     [rsp+308h+var_2D7], al
                mov     r15, ds:rva qword_140CFDCC0[r15+rcx*8]
                mov     eax, r9d
                and     eax, [r15+0D4h]
                cmp     eax, r10d
                jnz     short loc_14099ED54
                mov     edx, ecx
                mov     rcx, r13
                call    KeAddProcessorAffinityEx
                lea     rbx, [r15+8390h]
                mov     edx, [rsp+308h+arg_20]
                mov     rcx, rbx
                call    KeAddProcessorAffinityEx
                movzx   ecx, [rsp+308h+var_2D8]
                mov     eax, ecx
                test    cl, cl
                cmovz   eax, edi
                mov     [rsp+308h+var_2D8], al
                mov     rax, r15
                cmp     [rsp+308h+var_2D7], 0
                cmovnz  rax, [rsp+308h+var_280]
                mov     [rsp+308h+var_2C0], rax
                mov     rcx, rbx
                call    KeCountSetBitsAffinityEx
                mov     ecx, eax
                mov     ebx, [rsp+308h+var_2B8]
                cmp     eax, ebx
                ja      loc_1409A4253
                mov     ecx, [rsp+308h+var_2C4]
                mov     rdx, [rsp+308h+var_2A8]
                mov     r8d, [rsp+308h+var_2C8]
                mov     r9d, [rsp+308h+var_2B4]
                mov     r10d, [rsp+308h+var_2B0]
                mov     r11, [rsp+308h+var_2C0]

loc_14099ED54:                          ; CODE XREF: sub_14099EB00+1D9↑j
                mov     eax, [rsp+308h+var_2AC]
                and     eax, [r15+0D4h]
                cmp     eax, r8d
                jz      loc_14099F154

loc_14099ED68:                          ; CODE XREF: sub_14099EB00+662↓j
                                        ; sub_14099EB00+67B↓j
                add     ecx, edi
                mov     [rsp+308h+var_2C4], ecx
                mov     eax, cs:dword_140CFC404
                cmp     ecx, eax
                jb      loc_14099ECAD

loc_14099ED7C:                          ; CODE XREF: sub_14099EB00+1A2↑j
                mov     rcx, r13
                call    KeCountSetBitsAffinityEx
                cmp     eax, ebx
                ja      loc_1409A4277
                mov     rax, [rsp+308h+var_2A8]
                mov     [rsi+8458h], rax

loc_14099ED98:                          ; CODE XREF: sub_14099EB00+574E↓j
                mov     r13d, [rsp+308h+arg_20]
                mov     r15d, 0FFBFh

loc_14099EDA6:                          ; CODE XREF: sub_14099EB00+7F9↓j
                call    sub_14099FA7C
                mov     rcx, rsi
                call    sub_14099F9C0
                and     qword ptr [rsi+8498h], 0
                lea     rax, [rsi+84A0h]
                mov     [rax], rax
                mov     rax, 0FFFFF780000003D8h
                cmp     qword ptr [rax], 0
                jz      short loc_14099EDFF
                mov     rbx, [rsp+308h+var_2D0]
                bts     rbx, 17h
                mov     [rsp+308h+var_2D0], rbx
                call    KeGetXSaveFeatureFlags
                test    al, 8
                jz      short loc_14099EDF7
                bts     rbx, 0Fh
                mov     [rsp+308h+var_2D0], rbx

loc_14099EDF7:                          ; CODE XREF: sub_14099EB00+2EB↑j
                test    al, 10h
                jnz     loc_1409A4298

loc_14099EDFF:                          ; CODE XREF: sub_14099EB00+2D3↑j
                                        ; sub_14099EB00+57AA↓j
                lea     rdx, [rsp+308h+var_2D0]
                mov     rcx, rsi
                call    sub_14099F910
                mov     rbx, [rsp+308h+var_2D0]
                test    r13d, r13d
                jz      loc_14099F2FE
                cmp     [rsp+308h+var_21C], 0
                cmovnz  r15d, [rsp+308h+var_21C]
                mov     r8, cs:qword_140CFC458
                mov     rax, 0FFFFFFFF3FFFFFFFh
                and     r8, rax
                mov     rcx, rbx
                and     ecx, 8000000h
                mov     rax, r8
                btr     rax, 1Bh
                bts     r8, 1Bh
                test    rcx, rcx
                cmovz   r8, rax
                mov     r9d, 2
                cmp     [rsi+8Dh], r9b
                jnz     short loc_14099EE7B
                cmp     byte ptr [rsi+40h], 6
                jnz     short loc_14099EE7B
                cmp     byte ptr [rsi+43h], 17h
                jz      loc_1409A42FD

loc_14099EE7B:                          ; CODE XREF: sub_14099EB00+369↑j
                                        ; sub_14099EB00+36F↑j ...
                cmp     rbx, r8
                jnz     loc_1409A43C7
                cmp     r15d, cs:dword_140CFB060
                jnz     loc_1409A43C7
                mov     eax, [rsi+0E8h]
                mov     rcx, cs:qword_140CFDCC0
                cmp     [rcx+0E8h], eax
                jnz     loc_1409A43C7
                mov     eax, [rsi+98h]
                cmp     [rcx+98h], eax
                jnz     loc_1409A43C7
                mov     eax, [r12]
                cmp     [rcx+9Ch], eax
                jnz     loc_1409A43C7
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1409A4337

loc_14099EEDA:                          ; CODE XREF: sub_14099EB00+583A↓j
                                        ; sub_14099EB00+5849↓j ...
                mov     cr8, r9
                xor     ecx, ecx
                call    sub_1403A7988
                mov     r15, [rsp+308h+var_2A0]

loc_14099EEEA:                          ; CODE XREF: sub_14099EB00+90F↓j
                                        ; sub_14099EB00+57F8↓j
                cmp     cs:dword_140CFC6B4, 0
                jnz     loc_1409A4381

loc_14099EEF7:                          ; CODE XREF: sub_14099EB00+588F↓j
                call    sub_14099D014
                mov     eax, 0C3h
                mov     ds:0FFFFF780000002F8h, rax
                mov     al, dil
                mov     ds:0FFFFF78000000276h, al
                mov     ds:0FFFFF78000000277h, al
                mov     ds:0FFFFF7800000027Ah, al
                mov     ds:0FFFFF7800000027Ch, al
                mov     ds:0FFFFF7800000027Dh, al
                mov     ds:0FFFFF7800000027Eh, al
                mov     ds:0FFFFF78000000282h, al
                bt      rbx, 13h
                jnb     short loc_14099EF5D
                mov     ds:0FFFFF78000000281h, al

loc_14099EF5D:                          ; CODE XREF: sub_14099EB00+452↑j
                bt      rbx, 0Eh
                jb      loc_1409A4394

loc_14099EF68:                          ; CODE XREF: sub_14099EB00+58A0↓j
                bt      rbx, 17h
                jnb     short loc_14099EF7B
                mov     al, dil
                mov     ds:0FFFFF78000000285h, al

loc_14099EF7B:                          ; CODE XREF: sub_14099EB00+46D↑j
                bt      rbx, 1Ch
                jnb     short loc_14099EF8E
                mov     al, dil
                mov     ds:0FFFFF7800000028Ah, al

loc_14099EF8E:                          ; CODE XREF: sub_14099EB00+480↑j
                bt      rbx, 1Ah
                jnb     short loc_14099EFA1
                mov     al, dil
                mov     ds:0FFFFF78000000288h, al

loc_14099EFA1:                          ; CODE XREF: sub_14099EB00+493↑j
                bt      rbx, 1Bh
                jnb     short loc_14099EFB4
                mov     al, dil
                mov     ds:0FFFFF78000000289h, al

loc_14099EFB4:                          ; CODE XREF: sub_14099EB00+4A6↑j
                mov     rax, 100000000h
                test    rax, rbx
                jz      short loc_14099EFCF
                mov     al, dil
                mov     ds:0FFFFF78000000290h, al

loc_14099EFCF:                          ; CODE XREF: sub_14099EB00+4C1↑j
                mov     rax, 400000000h
                test    rax, rbx
                jz      short loc_14099EFEA
                mov     al, dil
                mov     ds:0FFFFF78000000294h, al

loc_14099EFEA:                          ; CODE XREF: sub_14099EB00+4DC↑j
                mov     rax, 800000000000h
                test    rax, rbx
                jz      short loc_14099F005
                mov     al, dil
                mov     ds:0FFFFF78000000298h, al

loc_14099F005:                          ; CODE XREF: sub_14099EB00+4F7↑j
                mov     rax, 1000000000000h
                test    rax, rbx
                jz      short loc_14099F020
                mov     al, dil
                mov     ds:0FFFFF78000000299h, al

loc_14099F020:                          ; CODE XREF: sub_14099EB00+512↑j
                mov     rax, 2000000000000h
                test    rax, rbx
                jz      short loc_14099F03B
                mov     al, dil
                mov     ds:0FFFFF7800000029Ah, al

loc_14099F03B:                          ; CODE XREF: sub_14099EB00+52D↑j
                mov     rdx, 0FFFFF780000003D8h
                test    byte ptr [rdx], 4
                setnz   cl
                bt      rbx, 32h ; '2'
                setb    al
                test    al, cl
                jz      short loc_14099F063
                mov     al, dil
                mov     ds:0FFFFF7800000029Bh, al

loc_14099F063:                          ; CODE XREF: sub_14099EB00+555↑j
                test    byte ptr [rdx], 4
                setnz   cl
                bt      rbx, 33h ; '3'
                setb    al
                test    al, cl
                jz      short loc_14099F081
                mov     al, dil
                mov     ds:0FFFFF7800000029Ch, al

loc_14099F081:                          ; CODE XREF: sub_14099EB00+573↑j
                mov     rax, 10000000000000h
                test    rax, rbx
                jnz     loc_1409A43A5

loc_14099F094:                          ; CODE XREF: sub_14099EB00+58B0↓j
                                        ; sub_14099EB00+58C2↓j
                mov     al, cs:byte_140C50BD7
                mov     ds:0FFFFF780000002EDh, al
                mov     r9, rsi
                mov     r8, r15
                mov     rdx, [rsp+308h+var_278]
                mov     rdi, [rsp+308h+var_270]
                mov     rcx, rdi
                call    sub_14099F764
                nop

loc_14099F0C2:                          ; DATA XREF: .rdata:000000014008E62C↑o
;   __try { // __except at loc_14099F0F5
                test    r13d, r13d
                jz      short loc_14099F0D9
                xor     ecx, ecx
                call    sub_14099D76C
                test    al, al
                jz      short loc_14099F0E8
                mov     rbx, [rsp+308h+var_298]
                jmp     short loc_14099F0F3
; ---------------------------------------------------------------------------

loc_14099F0D9:                          ; CODE XREF: sub_14099EB00+5C5↑j
                mov     rbx, [rsp+308h+var_298]
                mov     rcx, rbx
                call    sub_140A3C054
                jmp     short loc_14099F0F3
; ---------------------------------------------------------------------------

loc_14099F0E8:                          ; CODE XREF: sub_14099EB00+5D0↑j
                mov     ecx, 5Ch ; '\'
                call    KeBugCheck
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14099F0F3:                          ; CODE XREF: sub_14099EB00+5D7↑j
                                        ; sub_14099EB00+5E6↑j
                jmp     short loc_14099F115
;   } // starts at 14099F0C2
; ---------------------------------------------------------------------------

loc_14099F0F5:                          ; DATA XREF: .rdata:000000014008E62C↑o
;   __except(loc_1409A38B2) // owned by 14099F0C2
                mov     rdi, [rsp+308h+var_268]
                mov     rsi, [rsp+308h+var_260]
                mov     rbx, [rsp+308h+var_258]
                mov     r13d, [rsp+308h+arg_20]

loc_14099F115:                          ; CODE XREF: sub_14099EB00:loc_14099F0F3↑j
                mov     r8d, r13d
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_14099F420
                and     qword ptr [rbx+88h], 0
                mov     rcx, [rsp+308h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+308h+arg_10]
                add     rsp, 2E0h
                pop     r15
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14099F154:                          ; CODE XREF: sub_14099EB00+262↑j
                mov     rax, [rsi+0C0h]
                cmp     [r15+0C0h], rax
                jnz     loc_14099ED68
                or      rdx, [r15+0C8h]
                mov     [rsp+308h+var_2A8], rdx
                or      [r15+8458h], rdx
                jmp     loc_14099ED68
; ---------------------------------------------------------------------------

loc_14099F180:                          ; CODE XREF: sub_14099EB00+81↑j
                mov     rcx, rax
                call    sub_1407921BC
                mov     edi, 1
                cmp     cs:dword_140D5815C, edi
                jnz     loc_14099EB8C
                jmp     loc_1409A4160
; ---------------------------------------------------------------------------

loc_14099F19E:                          ; CODE XREF: sub_14099EB00+DD↑j
                call    sub_1409912A0
                mov     cs:dword_140CFC730, eax
                test    eax, eax
                jnz     loc_1409A4180

loc_14099F1B1:                          ; CODE XREF: sub_14099EB00+568D↓j
                cmp     cs:byte_140CFC409, 0
                jz      loc_1409A419D
                mov     rax, cr3
                mov     cr3, rax
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 0
                jz      loc_1409A4192

loc_14099F1E1:                          ; CODE XREF: sub_14099EB00+5698↓j
                                        ; sub_14099EB00+56B7↓j ...
                call    sub_14099B47C
                mov     rax, 0FFFFF78000000280h
                cmp     byte ptr [rax], 0
                jz      loc_1409A41C7
                mov     eax, 80000000h
                or      rbx, rax

loc_14099F201:                          ; CODE XREF: sub_14099EB00+56D9↓j
                mov     [rsp+308h+var_2D0], rbx
                mov     rax, cr4
                or      rax, 18h
                mov     cr4, rax
                cmp     cs:byte_140CFC409, 0
                jz      loc_1409A41E9
                mov     rax, cr3
                mov     cr3, rax
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 0
                jz      loc_1409A41DE

loc_14099F240:                          ; CODE XREF: sub_14099EB00+56E4↓j
                                        ; sub_14099EB00+5703↓j ...
                mov     rcx, rsi
                call    sub_1403B597C
                mov     rcx, rsi
                call    sub_1409A0D50
                lea     r12, [rsi+9Ch]
                mov     ecx, [r12]
                imul    ecx, [rsi+98h]
                neg     ecx
                mov     eax, [rsi+0D4h]
                and     eax, ecx
                mov     [rsi+8438h], eax
                lea     rbx, [rsi+8390h]
                mov     dword ptr [rbx], 140001h
                and     dword ptr [rbx+4], 0
                lea     rcx, [rbx+8]
                xor     edx, edx
                mov     r8d, 0A0h
                call    memset
                xor     edx, edx
                mov     rcx, rbx
                call    KeAddProcessorAffinityEx
                mov     rax, [rsi+0C8h]
                mov     [rsi+8458h], rax
                mov     [rsp+308h+var_2C0], rsi
                mov     r15d, 0FFBFh
                mov     eax, r15d
                cmp     [rsp+308h+var_21C], 0
                cmovnz  eax, [rsp+308h+var_21C]
                mov     cs:dword_140CFB060, eax
                lea     rax, cs:140000000h
                mov     [rsp+308h+var_2E8], rax
                xor     r9d, r9d
                mov     r8d, cs:dword_1400C7F04
                lea     rdx, qword_1400C7F08
                lea     rcx, qword_1400C77A0
                call    sub_14039FDA4
                jmp     loc_14099EDA6
; ---------------------------------------------------------------------------

loc_14099F2FE:                          ; CODE XREF: sub_14099EB00+314↑j
                mov     eax, 9
                mov     cs:word_140CFB058, ax
                movsx   eax, byte ptr [rsi+40h]
                mov     cs:word_140CFC528, ax
                movzx   eax, word ptr [rsi+42h]
                mov     cs:word_140CFC604, ax
                mov     cs:qword_140CFC458, rbx
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1409A42AF

loc_14099F335:                          ; CODE XREF: sub_14099EB00+57B2↓j
                                        ; sub_14099EB00+57C0↓j ...
                mov     cr8, rdi
                and     cs:qword_140D232C0, 0
                call    sub_140A69BB0
                lea     rax, qword_140C31B20
                mov     cs:qword_140C31B28, rax
                mov     cs:qword_140C31B20, rax
                mov     ecx, cs:dword_140D010D0
                mov     eax, ecx
                shr     eax, 6
                and     ecx, 3Fh
                xor     edx, edx
                mov     dword ptr [rsp+308h+var_290+0Ah], edx
                mov     word ptr [rsp+308h+var_290+0Eh], dx
                mov     word ptr [rsp+308h+var_290+8], ax
                mov     rax, rdi
                shl     rax, cl
                mov     qword ptr [rsp+308h+var_290], rax
                mov     [rsp+308h+var_2E0], edi
                and     [rsp+308h+var_2E8], rdx
                xor     r9d, r9d
                lea     r8, [rsp+308h+var_290]
                mov     r15, [rsp+308h+var_2A0]
                mov     rcx, r15
                call    sub_14067E8C8
                mov     byte ptr [r15+281h], 7Fh
                rdtsc
                shl     rdx, 20h
                or      rax, rdx
                mov     ecx, eax
                and     ecx, 0Fh
                mov     rdx, rax
                rol     rdx, 2Bh
                xor     rdx, rax
                ror     rdx, cl
                mov     cs:qword_140CFC808, rdx
                rdtsc
                shl     rdx, 20h
                or      rax, rdx
                mov     ecx, eax
                and     ecx, 0Fh
                mov     rdx, rax
                ror     rdx, 2Fh
                xor     rax, rdx
                rol     rax, cl
                mov     cs:qword_140CFCA10, rax
                lea     rcx, [rsp+308h+var_250]
                call    HviGetHypervisorFeatures
                test    dword ptr [rsp+308h+var_250+0Ch], 1000h
                jz      loc_14099EEEA
                jmp     loc_1409A42F2
; } // starts at 14099EB00
sub_14099EB00   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_14099F41A:                         ; DATA XREF: .rdata:000000014008E644↑o
                                        ; .pdata:0000000140126B10↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14099F420   proc near               ; CODE XREF: sub_14099EB00+61E↑p
                                        ; DATA XREF: .rdata:000000014008E678↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 00000001409A43DE SIZE 000000CA BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     edi, r8d
                mov     rbp, rdx
                mov     rbx, rcx
                test    r8d, r8d
                jz      loc_14099F536

loc_14099F444:                          ; CODE XREF: sub_14099F420+13A↓j
                mov     rcx, cr8
                mov     esi, 2
                mov     cr8, rsi
                mov     eax, cs:dword_140CFC660
                lea     r14d, [rsi-1]
                test    eax, eax
                jnz     loc_1409A43DE

loc_14099F463:                          ; CODE XREF: sub_14099F420+4FC1↓j
                                        ; sub_14099F420+4FCA↓j ...
                sti
                mov     rcx, cs:PsInitialSystemProcess
                call    KeAttachProcess
                test    edi, edi
                jz      loc_14099F55F

loc_14099F478:                          ; CODE XREF: sub_14099F420+1DE↓j
                mov     rcx, [rbx+0C0h]
                xor     sil, sil
                movzx   eax, byte ptr [rbx+0D1h]
                lock bts [rcx+50h], rax
                mov     rcx, [rbx+0C0h]
                movzx   eax, byte ptr [rbx+0D1h]
                lock bts [rcx+60h], rax
                mov     rdi, gs:20h
                and     [rsp+38h+arg_10], 0

loc_14099F4B1:                          ; CODE XREF: sub_14099F420+505F↓j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_1409A4420

loc_14099F4C1:                          ; CODE XREF: sub_14099F420+5004↓j
                                        ; sub_14099F420+5013↓j ...
                lock bts qword ptr [rbx+30h], 0
                jb      loc_1409A4447
                cmp     qword ptr [rbx+10h], 0
                mov     [rbx+23h], r14b
                jnz     short loc_14099F4EA
                mov     r8d, r14d
                mov     edx, r14d
                mov     rcx, rbx
                mov     sil, r14b
                call    sub_1402CECEC

loc_14099F4EA:                          ; CODE XREF: sub_14099F420+B7↑j
                mov     r9b, sil
                xor     r8d, r8d
                mov     rdx, rbp
                mov     rcx, rbx
                call    sub_14028DBD0
                lock and qword ptr [rbx+30h], 0
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_1409A4484

loc_14099F51A:                          ; CODE XREF: sub_14099F420+5068↓j
                                        ; sub_14099F420+5077↓j ...
                mov     rcx, rbx
                call    sub_14099F60C
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14099F536:                          ; CODE XREF: sub_14099F420+1E↑j
                mov     eax, cs:dword_140CFB078
                mov     [rcx+3118h], eax
                mov     eax, cs:dword_140CFB0A4
                mov     [rcx+3120h], eax
                mov     eax, cs:dword_140CFB080
                mov     [rcx+7E94h], eax
                jmp     loc_14099F444
; ---------------------------------------------------------------------------

loc_14099F55F:                          ; CODE XREF: sub_14099F420+52↑j
                and     cs:qword_140C31DB8, 0
                lea     rax, qword_140C31DA8
                mov     r9d, 8
                mov     cs:qword_140C31DB0, rax
                xor     r8d, r8d
                mov     cs:qword_140C31DA8, rax
                lea     rdx, sub_140353EF0
                lea     rcx, unk_140C31CA0
                call    KeInitializeTimer2
                xor     r8d, r8d
                lea     rdx, sub_1402B8120
                lea     rcx, unk_140C31D28
                call    KeInitializeDpc
                xor     r8d, r8d
                lea     rdx, sub_140353670
                lea     rcx, unk_140C31D68
                call    KeInitializeDpc
                xor     r8d, r8d
                lea     rdx, sub_140520D10
                lea     rcx, unk_140C31DE0
                call    KeInitializeDpc
                and     cs:qword_140C31DC0, 0
                lea     rax, qword_140C31DD0
                mov     cs:qword_140C31DD8, rax
                mov     cs:qword_140C31DD0, rax
                mov     cs:byte_140C31DE1, sil
                jmp     loc_14099F478
sub_14099F420   endp

; ---------------------------------------------------------------------------
byte_14099F603  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014008E678↑o
                                        ; .pdata:0000000140126B1C↑o

; =============== S U B R O U T I N E =======================================


sub_14099F60C   proc near               ; CODE XREF: sub_14099F420+FD↑p
                                        ; sub_140A41ED0+82↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001409A44A8 SIZE 000000A4 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                sub     rsp, 20h
                cmp     cs:qword_140CFC6F0, 0
                mov     rbp, rcx
                jz      loc_14099F742
                mov     rdi, cr8
                mov     r12d, 2
                mov     cr8, r12
                mov     eax, cs:dword_140CFC660
                or      rsi, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_1409A44A8

loc_14099F656:                          ; CODE XREF: sub_14099F60C+4E9E↓j
                                        ; sub_14099F60C+4EA8↓j ...
                movzx   ebx, byte ptr [rbp+0D0h]
                lea     rcx, unk_140C31B38
                call    KeAcquireSpinLockAtDpcLevel
                lea     rcx, qword_140CFC558
                call    sub_140214C94
                movzx   r8d, byte ptr [rbp+0D1h]
                lea     r11, cs:140000000h
                inc     byte ptr [rbx+r11+0CFCDD0h]
                mov     r9d, ebx
                mov     rcx, [rbp+0C8h]
                mov     rax, cs:qword_140CFC6F0
                inc     cs:dword_140CFC924
                shl     ebx, 6
                add     ebx, r8d
                mov     [rax+rbx*8], rcx
                mov     rax, cs:qword_140CFC6E8
                mov     rcx, [rbp+0C8h]
                mov     [rax+rbx*8], rcx
                mov     ecx, r9d
                add     rcx, rcx
                mov     rax, ds:rva qword_140CFD940[r11+rcx*8]
                bts     rax, r8
                mov     ds:rva qword_140CFD940[r11+rcx*8], rax
                mov     rax, ds:rva qword_140CFD660[r11+r9*8]
                bts     rax, r8
                mov     ds:rva qword_140CFD660[r11+r9*8], rax
                mov     rax, cs:PsInitialSystemProcess
                lea     rdx, [rax+948h]
                mov     eax, [rax+87Ch]
                test    al, al
                jns     short loc_14099F708
                mov     rdx, [rdx]

loc_14099F708:                          ; CODE XREF: sub_14099F60C+F7↑j
                mov     rax, [rdx+r9*8]
                lea     rcx, qword_140CFC558
                bts     rax, r8
                mov     [rdx+r9*8], rax
                call    sub_1403A73E4
                lea     rcx, unk_140C31B38
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1409A44E9

loc_14099F73A:                          ; CODE XREF: sub_14099F60C+4EDF↓j
                                        ; sub_14099F60C+4EEB↓j ...
                movzx   eax, dil
                mov     cr8, rax

loc_14099F742:                          ; CODE XREF: sub_14099F60C+24↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14099F60C   endp

byte_14099F75E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014008E6A4↑o
                                        ; .pdata:0000000140126B28↑o

; =============== S U B R O U T I N E =======================================


sub_14099F764   proc near               ; CODE XREF: sub_14099EB00+5BC↑p
                                        ; DATA XREF: .rdata:000000014008E6CC↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001409A454C SIZE 00000011 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 50h
                and     dword ptr [rax-18h], 0
                lea     rbp, sub_140401F90
                and     dword ptr [rcx+50h], 0
                mov     rdi, r9
                mov     [rax-20h], r8
                mov     rsi, r8
                and     qword ptr [rax-28h], 0
                xor     r9d, r9d
                and     qword ptr [rax-30h], 0
                mov     r8, rbp
                and     qword ptr [rax-38h], 0
                mov     rbx, rcx
                call    sub_140991548
                btr     dword ptr [rbx+74h], 0Eh
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1402D0C68
                mov     eax, [rdi+24h]
                mov     r8d, 1
                mov     [rbx+218h], eax
                mov     byte ptr [rbx+184h], 2
                movzx   edx, byte ptr [rdi+0D0h]
                mov     [rbx+230h], dx
                mov     rax, [rdi+0C8h]
                mov     [rbx+228h], rax
                mov     ecx, [rdi+24h]
                or      dword ptr [rbx+74h], 8
                mov     [rbx+0C4h], ecx
                mov     [rbx+24Ch], ecx
                lea     rcx, qword_140D24FE0
                mov     [rbx+248h], dx
                mov     [rbx+240h], rax
                mov     [rbx+71h], r8b
                mov     byte ptr [rbx+186h], 2
                mov     [rbx+450h], rbp
                mov     [rbx+4D0h], rbp
                mov     rax, [rdi+38h]
                mov     byte ptr [rax], 7Fh
                mov     byte ptr [rbx+0C3h], 7Fh
                cmp     dword ptr [rdi+24h], 0
                jz      loc_14099F8DE
                cmp     cs:dword_140CFC6B8, 0
                jnz     loc_1409A454C

loc_14099F858:                          ; CODE XREF: sub_14099F764+19E↓j
                                        ; sub_14099F764+4DED↓j
                lea     rax, [rbx+560h]
                mov     [rax+8], rax
                mov     [rax], rax
                lea     rax, [rbx+570h]
                mov     [rax+8], rax
                mov     [rax], rax
                and     qword ptr [rbx+580h], 0
                add     rbx, 4E8h
                mov     rax, cs:qword_140D24FE8
                cmp     [rax], rcx
                jnz     loc_1409A4556
                mov     [rbx], rcx
                lea     rcx, dword_140D010D0
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     cs:qword_140D24FE8, rbx
                mov     eax, [rdi+24h]
                mov     edx, [rcx+rax*4]
                mov     ecx, edx
                mov     eax, edx
                and     ecx, 3Fh
                shl     r8, cl
                shr     rax, 6
                lock or [rsi+rax*8+178h], r8
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14099F8DE:                          ; CODE XREF: sub_14099F764+E1↑j
                mov     cs:qword_140D24FE8, rcx
                mov     cs:qword_140D24FE0, rcx
                lock or cs:dword_140D24E60, 8000h
                lock or cs:dword_140D2527C, 400000h
                jmp     loc_14099F858
sub_14099F764   endp

; ---------------------------------------------------------------------------
algn_14099F907:                         ; DATA XREF: .rdata:000000014008E6CC↑o
                                        ; .pdata:0000000140126B34↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14099F910   proc near               ; CODE XREF: sub_14099EB00+307↑p
                                        ; DATA XREF: .pdata:0000000140126B40↑o

var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 20h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+28h+var_18], rax
                mov     r9, rcx
                xor     eax, eax
                xor     ecx, ecx
                mov     r8, rdx
                cpuid
                mov     cl, [r9+8Dh]
                dec     cl
                cmp     cl, 1
                ja      short loc_14099F958
                cmp     eax, 7
                jb      short loc_14099F958
                xor     ecx, ecx
                mov     eax, 7
                cpuid
                test    cl, cl
                jns     short loc_14099F958
                mov     cs:byte_140CFB041, 1

loc_14099F958:                          ; CODE XREF: sub_14099F910+2D↑j
                                        ; sub_14099F910+32↑j ...
                cmp     cs:byte_140CFB041, 0
                jz      short loc_14099F9A5
                mov     rcx, [r8]
                mov     edx, 800000h
                test    rdx, rcx
                jz      short loc_14099F9A5
                mov     eax, ds:0FFFFF780000005F0h
                bt      rax, 0Bh
                jnb     short loc_14099F9A5
                mov     rax, 400000000000h
                or      rcx, rax
                mov     [r8], rcx
                or      [r9+85A0h], rax
                mov     rax, cr4
                or      rax, rdx
                mov     cr4, rax
                mov     cs:byte_140CFB042, 1

loc_14099F9A5:                          ; CODE XREF: sub_14099F910+4F↑j
                                        ; sub_14099F910+5C↑j ...
                mov     rcx, [rsp+28h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14099F910
sub_14099F910   endp

algn_14099F9B9:                         ; DATA XREF: .pdata:0000000140126B40↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_14099F9C0   proc near               ; CODE XREF: sub_14099EB00+2AE↑p
                                        ; DATA XREF: .rdata:000000014008E6F0↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001409A455E SIZE 0000001B BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                lea     rdi, [rcx+8000h]
                mov     rbx, rcx
                mov     rcx, rdi
                xor     edx, edx
                mov     r8d, 200h
                call    memset
                lea     rax, sub_1407C52D0
                mov     byte ptr [rdi+0F0h], 1
                mov     [rdi+0E0h], rax
                lea     rsi, [rdi+110h]
                mov     eax, 64h ; 'd'
                mov     byte ptr [rdi+0D0h], 2
                mov     r8, rbx
                mov     [rdi+19Eh], ax
                lea     rdx, sub_1402526C0
                mov     rcx, rsi
                call    KeInitializeDpc
                mov     rax, [rsi+38h]
                mov     ecx, [rbx+24h]
                test    rax, rax
                jnz     short loc_14099FA42
                mov     eax, 500h
                add     cx, ax
                mov     [rsi+2], cx

loc_14099FA42:                          ; CODE XREF: sub_14099F9C0+74↑j
                mov     byte ptr [rdi+111h], 3
                call    sub_1403A975C
                test    al, al
                jz      loc_1409A455E
                and     dword ptr [rdi+0D8h], 0

loc_14099FA5D:                          ; CODE XREF: sub_14099F9C0+4BB4↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                mov     byte ptr [rdi+1A4h], 1
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14099F9C0   endp

byte_14099FA75  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014008E6F0↑o
                                        ; .pdata:0000000140126B4C↑o

; =============== S U B R O U T I N E =======================================


sub_14099FA7C   proc near               ; CODE XREF: sub_14099EB00:loc_14099EDA6↑p
                                        ; DATA XREF: .rdata:000000014008E740↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001409A457A SIZE 00000016 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, gs:18h
                mov     rbx, gs:20h
                mov     al, [rbx+8Dh]
                cmp     al, 1
                jz      loc_1409A4585
                sub     al, 2
                cmp     al, 1
                ja      loc_1409A457A
                call    sub_14099FB6C

loc_14099FABA:                          ; CODE XREF: sub_14099FA7C+4B0F↓j
                xor     esi, esi
                lea     r8, [rbx+82D8h]
                and     [rdi+0BCh], esi
                xor     r10d, r10d
                cmp     [rbx+8314h], esi
                jbe     short loc_14099FB45

loc_14099FAD4:                          ; CODE XREF: sub_14099FA7C+C7↓j
                cmp     byte ptr [r8], 2
                jb      short loc_14099FB35
                test    dword ptr [r8+8], 0FFFFFFFDh
                jnz     short loc_14099FB35
                movzx   eax, byte ptr [r8+1]
                mov     ecx, 10h
                cmp     al, 0FFh
                mov     r9d, eax
                cmovz   r9d, ecx
                test    r9b, r9b
                jz      short loc_14099FB1C
                mov     r11d, [r8+4]
                xor     edx, edx
                mov     eax, r11d
                movzx   ecx, r9b
                div     ecx
                cmp     eax, esi
                jbe     short loc_14099FB1C
                mov     esi, eax
                mov     [rdi+0BCh], r11d
                mov     [rdi+51h], r9b

loc_14099FB1C:                          ; CODE XREF: sub_14099FA7C+7E↑j
                                        ; sub_14099FA7C+91↑j
                movzx   ecx, word ptr [r8+2]
                cmp     ecx, cs:dword_140CFB0C8
                ja      short loc_14099FB5E

loc_14099FB29:                          ; CODE XREF: sub_14099FA7C+E8↓j
                mov     eax, [r8+4]
                cmp     eax, cs:dword_140CFB14C
                ja      short loc_14099FB56

loc_14099FB35:                          ; CODE XREF: sub_14099FA7C+5C↑j
                                        ; sub_14099FA7C+66↑j ...
                add     r8, 0Ch
                inc     r10d
                cmp     r10d, [rbx+8314h]
                jb      short loc_14099FAD4

loc_14099FB45:                          ; CODE XREF: sub_14099FA7C+56↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14099FB56:                          ; CODE XREF: sub_14099FA7C+B7↑j
                mov     cs:dword_140CFB14C, eax
                jmp     short loc_14099FB35
; ---------------------------------------------------------------------------

loc_14099FB5E:                          ; CODE XREF: sub_14099FA7C+AB↑j
                mov     cs:dword_140CFB0C8, ecx
                jmp     short loc_14099FB29
sub_14099FA7C   endp

; ---------------------------------------------------------------------------
byte_14099FB66  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014008E740↑o
                                        ; .pdata:0000000140126B58↑o

; =============== S U B R O U T I N E =======================================


sub_14099FB6C   proc near               ; CODE XREF: sub_14099FA7C+39↑p
                                        ; DATA XREF: .pdata:0000000140126B64↑o

var_18          = qword ptr -18h

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 40h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+48h+var_18], rax
                mov     r8, gs:20h
                xor     eax, eax
                xor     ecx, ecx
                cpuid
                add     eax, 0FFFFFFFDh
                and     dword ptr [r8+8314h], 0
                cmp     eax, 7FFFFFFCh
                ja      short loc_14099FBAF
                mov     edx, 4
                mov     rcx, r8
                call    sub_14099FBCC

loc_14099FBAF:                          ; CODE XREF: sub_14099FB6C+34↑j
                mov     rcx, [rsp+48h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14099FB6C
sub_14099FB6C   endp

byte_14099FBC3  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140126B64↑o

; =============== S U B R O U T I N E =======================================


sub_14099FBCC   proc near               ; CODE XREF: sub_14099FB6C+3E↑p
                                        ; sub_1409B1AFC+5F↓p
                                        ; DATA XREF: ...

var_20          = qword ptr -20h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001409A4590 SIZE 0000001D BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+38h+var_20], rax
                xor     r10d, r10d
                lea     r9, [rcx+82D8h]
                mov     esi, edx
                mov     r8, rcx
                mov     r14d, 0FFFh
                lea     ebp, [r10+1]

loc_14099FC06:                          ; CODE XREF: sub_14099FBCC+165↓j
                mov     eax, esi
                mov     ecx, r10d
                cpuid
                mov     edx, eax
                mov     r11d, ecx
                shl     edx, 1Bh
                sar     edx, 1Bh
                test    edx, edx
                jz      loc_14099FD37
                sub     edx, ebp
                jz      loc_14099FD61
                sub     edx, ebp
                jz      loc_14099FD58
                sub     edx, ebp
                jnz     loc_1409A4590
                and     [r9+8], edx

loc_14099FC3C:                          ; CODE XREF: sub_14099FBCC+190↓j
                                        ; sub_14099FBCC+19D↓j ...
                bt      eax, 9
                jb      loc_1409A45A6
                mov     ecx, ebx
                shr     ecx, 16h
                add     cl, bpl

loc_14099FC4E:                          ; CODE XREF: sub_14099FBCC+49DC↓j
                mov     [r9+1], cl
                mov     edx, ebx
                shr     edx, 0Ch
                mov     ecx, eax
                shr     ecx, 5
                and     edx, 3FFh
                and     cl, 7
                shr     eax, 0Eh
                mov     [r9], cl
                add     edx, ebp
                movzx   ecx, bx
                and     cx, r14w
                add     cx, bp
                mov     [r9+2], cx
                mov     ecx, ebx
                and     ecx, r14d
                shr     ebx, 16h
                add     ecx, ebp
                add     ebx, ebp
                imul    edx, ecx
                lea     ecx, [r11+1]
                imul    edx, ebx
                imul    edx, ecx
                mov     [r9+4], edx
                mov     r11, [r8+0C8h]
                and     eax, r14d
                jz      short loc_14099FD11
                mov     edi, [r8+0D4h]
                lea     eax, ds:1[rax*2]
                bsr     ecx, eax
                mov     eax, ebp
                xor     edx, edx
                shl     al, cl
                movzx   ebx, al
                mov     eax, cs:dword_140CFC404
                sub     ebx, ebp
                not     ebx
                and     edi, ebx
                test    eax, eax
                jz      short loc_14099FD11

loc_14099FCCF:                          ; CODE XREF: sub_14099FBCC+143↓j
                mov     rax, [r8+0C0h]
                lea     rcx, qword_140CFDCC0
                mov     rcx, [rcx+rdx*8]
                cmp     [rcx+0C0h], rax
                jnz     short loc_14099FD05
                mov     eax, [rcx+0D4h]
                and     eax, ebx
                cmp     eax, edi
                jnz     short loc_14099FD05
                or      r11, [rcx+0C8h]
                or      [rcx+r10*8+8470h], r11

loc_14099FD05:                          ; CODE XREF: sub_14099FBCC+11C↑j
                                        ; sub_14099FBCC+128↑j
                mov     eax, cs:dword_140CFC404
                add     edx, ebp
                cmp     edx, eax
                jb      short loc_14099FCCF

loc_14099FD11:                          ; CODE XREF: sub_14099FBCC+D7↑j
                                        ; sub_14099FBCC+101↑j
                add     r9, 0Ch
                mov     [r8+r10*8+8470h], r11
                add     [r8+8314h], ebp

loc_14099FD24:                          ; CODE XREF: sub_14099FBCC+49C7↓j
                mov     eax, [r8+8314h]
                add     r10d, ebp
                cmp     eax, 5
                jb      loc_14099FC06

loc_14099FD37:                          ; CODE XREF: sub_14099FBCC+4E↑j
                mov     rcx, [rsp+38h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+38h+arg_10]
                mov     rbp, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14099FD58:                          ; CODE XREF: sub_14099FBCC+5E↑j
                mov     [r9+8], ebp
                jmp     loc_14099FC3C
; ---------------------------------------------------------------------------

loc_14099FD61:                          ; CODE XREF: sub_14099FBCC+56↑j
                mov     dword ptr [r9+8], 2
                jmp     loc_14099FC3C
; } // starts at 14099FBCC
sub_14099FBCC   endp

; ---------------------------------------------------------------------------
byte_14099FD6E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014008E784↑o
                                        ; .pdata:0000000140126B70↑o

; =============== S U B R O U T I N E =======================================


sub_14099FD74   proc near               ; CODE XREF: sub_14099D840+210↑p
                                        ; sub_14099E24C+84↑p
                                        ; DATA XREF: ...

var_98          = qword ptr -98h
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = dword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001409A45AE SIZE 000002D6 BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_8], edx
                push    rsi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_38], rax
                mov     rsi, rcx
                mov     [rsp+0B8h+var_50], rcx
                xorps   xmm0, xmm0
                movups  [rsp+0B8h+var_48], xmm0
                mov     eax, 80000000h
                xor     ecx, ecx
                cpuid
                mov     r10d, eax
                mov     [rsp+0B8h+var_80], eax
                xor     eax, eax
                xor     ecx, ecx
                cpuid
                mov     r9d, eax
                mov     [rsp+0B8h+var_84], eax
                mov     dword ptr [rsp+0B8h+var_48], eax
                mov     dword ptr [rsp+0B8h+var_48+4], ebx
                mov     dword ptr [rsp+0B8h+var_48+8], ecx
                mov     dword ptr [rsp+0B8h+var_48+0Ch], edx
                xor     r13d, r13d
                mov     [rsp+0B8h+var_68], r13
                xor     r12d, r12d
                mov     [rsp+0B8h+var_60], r12
                xor     r11d, r11d
                mov     [rsp+0B8h+var_88], r11d
                xor     eax, eax
                lea     r14, cs:140000000h
                lea     r15d, [r13+1]

loc_14099FE01:                          ; CODE XREF: sub_14099FD74+163↓j
                mov     [rsp+0B8h+var_7C], eax
                cmp     eax, 2Bh ; '+'
                jnb     loc_1409A002E
                lea     r15, [rax+rax*2]
                mov     r8d, ds:rva dword_14001022C[r14+r15*8]
                test    r8b, 2
                jnz     loc_14099FECA
                mov     ecx, r8d
                shr     ecx, 18h
                test    ecx, ecx
                jnz     loc_14099FEDC

loc_14099FE32:                          ; CODE XREF: sub_14099FD74+172↓j
                mov     eax, ds:rva dword_140010220[r14+r15*8]
                mov     dword ptr [rsp+0B8h+var_70], eax
                cmp     eax, r11d
                jnz     loc_14099FF8B

loc_14099FE47:                          ; CODE XREF: sub_14099FD74+243↓j
                                        ; sub_14099FD74+4842↓j
                xor     ebx, ebx
                movsxd  r9, ds:rva dword_140010228[r14+r15*8]
                mov     r10d, ds:rva dword_140010224[r14+r15*8]
                mov     edx, r8d
                and     edx, 8
                test    dword ptr [rsp+r9*4+0B8h+var_48], r10d
                jz      loc_14099FEEE

loc_14099FE6A:                          ; CODE XREF: sub_14099FD74+192↓j
                                        ; sub_14099FD74+1AF↓j
                mov     eax, r8d
                and     eax, 10h
                test    edx, edx
                jz      loc_14099FF71
                or      r13, ds:rva qword_140010230[r14+r15*8]
                mov     [rsp+0B8h+var_68], r13

loc_14099FE85:                          ; CODE XREF: sub_14099FD74+1FF↓j
                                        ; sub_14099FD74+212↓j
                test    r8b, 4
                jz      short loc_14099FEBB
                cmp     dword ptr [rsi+24h], 0
                jz      short loc_14099FEBB
                xor     ebx, ebx
                test    edx, edx
                jz      loc_14099FFBC
                mov     rcx, ds:rva qword_140010230[r14+r15*8]
                mov     rax, rcx
                and     rax, cs:qword_140CFC458
                cmp     rax, rcx
                setz    bl

loc_14099FEB3:                          ; CODE XREF: sub_14099FD74+24A↓j
                                        ; sub_14099FD74+26B↓j
                test    ebx, ebx
                jz      loc_1409A4622

loc_14099FEBB:                          ; CODE XREF: sub_14099FD74+115↑j
                                        ; sub_14099FD74+11B↑j ...
                mov     r11d, [rsp+0B8h+var_88]
                mov     r9d, [rsp+0B8h+var_84]
                mov     r10d, [rsp+0B8h+var_80]

loc_14099FECA:                          ; CODE XREF: sub_14099FD74+AA↑j
                                        ; sub_14099FD74+178↓j
                mov     r15d, 1
                mov     eax, [rsp+0B8h+var_7C]
                add     eax, r15d
                jmp     loc_14099FE01
; ---------------------------------------------------------------------------

loc_14099FEDC:                          ; CODE XREF: sub_14099FD74+B8↑j
                movzx   eax, byte ptr [rsi+8Dh]
                bt      ecx, eax
                jb      loc_14099FE32
                jmp     short loc_14099FECA
; ---------------------------------------------------------------------------

loc_14099FEEE:                          ; CODE XREF: sub_14099FD74+F0↑j
                mov     r11d, edx
                test    edx, edx
                jz      short loc_14099FF0C
                mov     rcx, ds:rva qword_140010230[r14+r15*8]
                mov     rax, rcx
                and     rax, r13
                cmp     rax, rcx
                jz      loc_14099FE6A

loc_14099FF0C:                          ; CODE XREF: sub_14099FD74+17F↑j
                mov     eax, r8d
                and     eax, 10h
                mov     [rsp+0B8h+var_78], eax
                jnz     loc_14099FFE4
                mov     ecx, 1

loc_14099FF21:                          ; CODE XREF: sub_14099FD74+28D↓j
                test    ebx, ebx
                jnz     loc_14099FE6A
                test    cl, r8b
                jnz     loc_1409A45DB
                test    r8b, 4
                jz      short loc_14099FEBB
                cmp     [rsi+24h], ebx
                jz      loc_14099FEBB
                xor     edx, edx
                test    r11d, r11d
                jz      loc_1409A0006
                mov     rcx, ds:rva qword_140010230[r14+r15*8]
                mov     rax, rcx
                and     rax, cs:qword_140CFC458
                cmp     rax, rcx
                setz    dl

loc_14099FF64:                          ; CODE XREF: sub_14099FD74+294↓j
                                        ; sub_14099FD74+2AF↓j
                test    edx, edx
                jz      loc_14099FEBB
                jmp     loc_1409A45BB
; ---------------------------------------------------------------------------

loc_14099FF71:                          ; CODE XREF: sub_14099FD74+FE↑j
                test    eax, eax
                jz      loc_14099FE85
                or      r12, ds:rva qword_140010230[r14+r15*8]
                mov     [rsp+0B8h+var_60], r12
                jmp     loc_14099FE85
; ---------------------------------------------------------------------------

loc_14099FF8B:                          ; CODE XREF: sub_14099FD74+CD↑j
                mov     [rsp+0B8h+var_88], eax
                cmp     eax, 80000000h
                jnb     loc_1409A0078

loc_14099FF9A:                          ; CODE XREF: sub_14099FD74+30D↓j
                cmp     eax, r9d
                ja      loc_1409A45AE

loc_14099FFA3:                          ; CODE XREF: sub_14099FD74+307↓j
                xor     ecx, ecx
                cpuid
                mov     dword ptr [rsp+0B8h+var_48], eax
                mov     dword ptr [rsp+0B8h+var_48+4], ebx
                mov     dword ptr [rsp+0B8h+var_48+8], ecx
                mov     dword ptr [rsp+0B8h+var_48+0Ch], edx
                jmp     loc_14099FE47
; ---------------------------------------------------------------------------

loc_14099FFBC:                          ; CODE XREF: sub_14099FD74+121↑j
                test    eax, eax
                jz      loc_14099FEB3
                mov     rcx, ds:rva qword_140010230[r14+r15*8]
                mov     rax, rcx
                and     rax, cs:qword_140CFC4C8
                cmp     rax, rcx
                jz      loc_14099FEBB
                jmp     loc_14099FEB3
; ---------------------------------------------------------------------------

loc_14099FFE4:                          ; CODE XREF: sub_14099FD74+1A2↑j
                mov     rcx, ds:rva qword_140010230[r14+r15*8]
                mov     rax, rcx
                and     rax, r12
                cmp     rax, rcx
                mov     ecx, 1
                cmovz   ebx, ecx
                mov     eax, [rsp+0B8h+var_78]
                jmp     loc_14099FF21
; ---------------------------------------------------------------------------

loc_1409A0006:                          ; CODE XREF: sub_14099FD74+1D2↑j
                test    eax, eax
                jz      loc_14099FF64
                mov     rcx, ds:rva qword_140010230[r14+r15*8]
                mov     rax, rcx
                and     rax, cs:qword_140CFC4C8
                cmp     rax, rcx
                jnz     loc_14099FF64
                jmp     loc_1409A45BB
; ---------------------------------------------------------------------------

loc_1409A002E:                          ; CODE XREF: sub_14099FD74+94↑j
                xor     r8d, r8d

loc_1409A0031:                          ; CODE XREF: sub_14099FD74+369↓j
                mov     [rsp+0B8h+var_7C], r8d
                cmp     r8d, r15d
                jb      short loc_1409A0086
                xor     edx, edx
                mov     r8d, [rsp+0B8h+arg_8]

loc_1409A0045:                          ; CODE XREF: sub_14099FD74+302↓j
                lea     rbx, [rdx+rdx*4]
                cmp     ds:rva dword_140020EB8[r14+rbx*4], 13h
                jz      loc_1409A00F4
                movzx   eax, byte ptr [rsi+8Dh]
                cmp     ds:rva dword_140020EB0[r14+rbx*4], eax
                jnz     short loc_1409A0073
                cmp     ds:rva dword_140020EB4[r14+rbx*4], r8d
                jz      short loc_1409A00E2

loc_1409A0073:                          ; CODE XREF: sub_14099FD74+2F3↑j
                add     edx, r15d
                jmp     short loc_1409A0045
; ---------------------------------------------------------------------------

loc_1409A0078:                          ; CODE XREF: sub_14099FD74+220↑j
                cmp     eax, r10d
                jbe     loc_14099FFA3
                jmp     loc_14099FF9A
; ---------------------------------------------------------------------------

loc_1409A0086:                          ; CODE XREF: sub_14099FD74+2C5↑j
                lea     rcx, [r8+r8*2]
                lea     r15, ds:6160h[rcx*8]
                add     r15, r14
                mov     [rsp+0B8h+var_70], r15
                mov     edx, [r15+4]
                test    dl, 2
                jnz     short loc_1409A00D4
                mov     ecx, edx
                shr     ecx, 18h
                test    ecx, ecx
                jnz     loc_1409A4645

loc_1409A00B0:                          ; CODE XREF: sub_14099FD74+48E1↓j
                test    dl, 8
                jnz     loc_1409A465A
                test    dl, 10h
                jz      short loc_1409A00D4
                mov     rdx, r12

loc_1409A00C1:                          ; CODE XREF: sub_14099FD74+48E9↓j
                mov     rcx, [r15+10h]
                mov     rax, rcx
                and     rax, rdx
                cmp     rax, rcx
                jz      loc_1409A4662

loc_1409A00D4:                          ; CODE XREF: sub_14099FD74+32D↑j
                                        ; sub_14099FD74+348↑j ...
                mov     r15d, 1
                add     r8d, r15d
                jmp     loc_1409A0031
; ---------------------------------------------------------------------------

loc_1409A00E2:                          ; CODE XREF: sub_14099FD74+2FD↑j
                lea     rax, [rdx+rdx*4]
                mov     eax, ds:rva dword_140020EC0[r14+rax*4]
                mov     [rsi+6CCh], eax

loc_1409A00F4:                          ; CODE XREF: sub_14099FD74+2DE↑j
                mov     ecx, [rsi+24h]
                test    ecx, ecx
                jz      short loc_1409A0105
                xor     ecx, ecx
                call    sub_14023DAD0
                mov     ecx, [rsi+24h]

loc_1409A0105:                          ; CODE XREF: sub_14099FD74+385↑j
                xor     r14d, r14d
                cmp     [rsi+8Dh], r15b
                jz      loc_1409A4829

loc_1409A0115:                          ; CODE XREF: sub_14099FD74+4ACA↓j
                test    ecx, ecx
                jz      short loc_1409A012D
                xor     ecx, ecx
                call    sub_14023DAD0
                test    [rax+85A0h], r14
                jnz     loc_1409A4843

loc_1409A012D:                          ; CODE XREF: sub_14099FD74+3A3↑j
                not     r14
                and     r13, r14
                mov     eax, [rsp+0B8h+arg_8]
                mov     [rsi+6C8h], eax
                or      [rsi+85A0h], r13
                mov     eax, [rsi+24h]
                test    eax, eax
                jz      short loc_1409A0188
                mov     r9, cs:qword_140CFC4C8
                cmp     r12, r9
                jnz     loc_1409A486C

loc_1409A015E:                          ; CODE XREF: sub_14099FD74+423↓j
                mov     rcx, [rsp+0B8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0B8h+arg_10]
                add     rsp, 90h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1409A0188:                          ; CODE XREF: sub_14099FD74+3D8↑j
                or      cs:qword_140CFC4C8, r12
                mov     rcx, rsi
                call    sub_140A41F78
                jmp     short loc_1409A015E
; } // starts at 14099FD74
sub_14099FD74   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_1409A0199:                         ; DATA XREF: .rdata:000000014008E7CC↑o
                                        ; .pdata:0000000140126B7C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409A01A0   proc near               ; DATA XREF: .rdata:0000000140008270↑o
                                        ; .rdata:000000014009F990↑o ...

; FUNCTION CHUNK AT 00000001409A84EC SIZE 0000000D BYTES

                sub     rsp, 28h
                cmp     ecx, 4
                jz      short loc_1409A01D2
                cmp     ecx, 13h
                jz      short loc_1409A01C5
                cmp     ecx, 0Ch
                jz      short loc_1409A0207
                cmp     ecx, 11h
                jz      short loc_1409A01EA
                cmp     ecx, 15h
                jz      short loc_1409A01D9

loc_1409A01BD:                          ; CODE XREF: sub_1409A01A0+30↓j
                                        ; sub_1409A01A0+37↓j ...
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409A01C5:                          ; CODE XREF: sub_1409A01A0+C↑j
                call    sub_1403AF7AC
                and     cs:dword_140C4A24C, eax
                jmp     short loc_1409A01BD
; ---------------------------------------------------------------------------

loc_1409A01D2:                          ; CODE XREF: sub_1409A01A0+7↑j
                call    sub_1403A6504
                jmp     short loc_1409A01BD
; ---------------------------------------------------------------------------

loc_1409A01D9:                          ; CODE XREF: sub_1409A01A0+1B↑j
                call    sub_1403AFAE0
                mov     ecx, 15h

loc_1409A01E3:                          ; CODE XREF: sub_1409A01A0+74↓j
                call    sub_140A46B8C
                jmp     short loc_1409A01BD
; ---------------------------------------------------------------------------

loc_1409A01EA:                          ; CODE XREF: sub_1409A01A0+16↑j
                xor     edx, edx
                mov     rcx, r8
                call    sub_14079A840
                call    sub_140A46C04
                cmp     cs:dword_140C49750, 0
                jz      short loc_1409A01BD
                jmp     loc_1409A84EC
; ---------------------------------------------------------------------------

loc_1409A0207:                          ; CODE XREF: sub_1409A01A0+11↑j
                mov     rcx, r8
                call    sub_140A46B20
                mov     ecx, 0Ch
                jmp     short loc_1409A01E3
sub_1409A01A0   endp

; ---------------------------------------------------------------------------
algn_1409A0216:                         ; DATA XREF: .rdata:000000014009F990↑o
                                        ; .pdata:0000000140126B88↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409A0220   proc near               ; DATA XREF: .rdata:00000001400081F0↑o
                                        ; .pdata:0000000140126B94↑o
                push    rbx
                sub     rsp, 20h
                mov     ebx, edx
                cmp     ecx, 0Dh
                jz      short loc_1409A024E
                cmp     ecx, 11h
                jz      short loc_1409A0247
                cmp     ecx, 13h
                jz      short loc_1409A0240

loc_1409A0237:                          ; CODE XREF: sub_1409A0220+2C↓j
                                        ; sub_1409A0220+6C↓j
                xor     eax, eax
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1409A0240:                          ; CODE XREF: sub_1409A0220+15↑j
                mov     ecx, ebx
                call    sub_1409A02BC

loc_1409A0247:                          ; CODE XREF: sub_1409A0220+10↑j
                call    sub_1409A0294
                jmp     short loc_1409A0237
; ---------------------------------------------------------------------------

loc_1409A024E:                          ; CODE XREF: sub_1409A0220+B↑j
                lea     rax, sub_1404BEA90
                mov     cs:off_140C007D0, rax
                lea     rax, sub_1404BEE80
                mov     cs:off_140C007E0, rax
                lea     rax, sub_1404BED40
                mov     cs:off_140C007D8, rax
                call    sub_140A46CD0
                mov     ecx, ebx
                call    sub_1409A02BC
                and     cs:qword_140C4AE50, 0
                jmp     short loc_1409A0237
sub_1409A0220   endp

; ---------------------------------------------------------------------------
byte_1409A028E  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140126B94↑o

; =============== S U B R O U T I N E =======================================


sub_1409A0294   proc near               ; CODE XREF: sub_1409A0220:loc_1409A0247↑p
                                        ; DATA XREF: .pdata:0000000140126BA0↑o
                sub     rsp, 28h
                mov     rax, cs:off_140C00A40
                mov     rax, [rax+78h]
                test    rax, rax
                jz      short loc_1409A02AD
                call    sub_1404079D0

loc_1409A02AD:                          ; CODE XREF: sub_1409A0294+12↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409A0294   endp

byte_1409A02B3  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140126BA0↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1409A02BC   proc near               ; CODE XREF: sub_1409A0220+22↑p
                                        ; sub_1409A0220+5F↑p
                                        ; DATA XREF: ...

var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h

; FUNCTION CHUNK AT 00000001409A84FA SIZE 00000046 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rdi
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                mov     eax, cs:dword_140C4A24C
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                mov     edi, ecx
                movups  [rbp+var_30], xmm0
                movups  [rbp+var_20], xmm1
                test    al, 1
                jz      loc_1409A8533
                test    ecx, ecx
                jz      short loc_1409A032A

loc_1409A02FE:                          ; CODE XREF: sub_1409A02BC+111↓j
                                        ; sub_1409A02BC+8279↓j
                mov     rax, cs:off_140C00A40
                mov     rax, [rax]
                call    sub_1404079D0
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+50h+arg_0]
                mov     rdi, [rsp+50h+arg_8]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1409A032A:                          ; CODE XREF: sub_1409A02BC+40↑j
                xor     ecx, ecx
                xor     eax, eax
                cpuid
                mov     dword ptr [rbp+var_30+4], ebx
                mov     ebx, 0Ch
                mov     dword ptr [rbp+var_30+8], edx
                mov     r8d, ebx
                mov     dword ptr [rbp+var_30+0Ch], ecx
                lea     rdx, aAuthenticamd_0 ; "AuthenticAMD"
                lea     rcx, [rbp+var_30+4]
                mov     dword ptr [rbp+var_30], eax
                call    strncmp
                test    eax, eax
                jz      loc_1409A84FA
                cmp     dword ptr [rbp+var_30], 0Ah
                jb      short loc_1409A03B3
                mov     r8d, ebx
                lea     rdx, aGenuineintel_0 ; "GenuineIntel"
                lea     rcx, [rbp+var_30+4]
                call    strncmp
                test    eax, eax
                jnz     short loc_1409A03B3
                xor     ecx, ecx
                lea     eax, [rbx-2]
                cpuid
                mov     dword ptr [rbp+var_30+8], ecx
                movzx   ecx, al
                mov     dword ptr [rbp+var_30], eax
                mov     dword ptr [rbp+var_30+4], ebx
                mov     dword ptr [rbp+var_30+0Ch], edx
                cmp     ecx, 1
                jb      short loc_1409A03B3
                test    eax, 0FF000000h
                jz      short loc_1409A03B3
                test    bl, 1
                jnz     short loc_1409A03B3
                lea     rax, off_1400054A0
                mov     cs:off_140C00A40, rax
                cmp     ecx, 4
                jnb     short loc_1409A03D2

loc_1409A03B3:                          ; CODE XREF: sub_1409A02BC+A4↑j
                                        ; sub_1409A02BC+BB↑j ...
                and     cs:qword_140C50848, 0
                call    sub_1403A1F88
                test    al, al
                jnz     loc_1409A850D

loc_1409A03C8:                          ; CODE XREF: sub_1409A02BC+8263↓j
                                        ; sub_1409A02BC+827F↓j
                call    sub_1409A03E4
                jmp     loc_1409A02FE
; ---------------------------------------------------------------------------

loc_1409A03D2:                          ; CODE XREF: sub_1409A02BC+F5↑j
                or      cs:dword_140C4AE40, 1
                jmp     short loc_1409A03B3
; } // starts at 1409A02BC
sub_1409A02BC   endp

; ---------------------------------------------------------------------------
byte_1409A03DB  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014009FE88↑o
                                        ; .pdata:0000000140126BAC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1409A03E4   proc near               ; CODE XREF: sub_1409A02BC:loc_1409A03C8↑p
                                        ; DATA XREF: .rdata:000000014009FEB0↑o ...

var_20          = byte ptr -20h
var_1F          = byte ptr -1Fh
var_1E          = byte ptr -1Eh
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
arg_0           = qword ptr  10h

; FUNCTION CHUNK AT 00000001409A8540 SIZE 000000D2 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                push    rbp
                mov     rbp, rsp
                sub     rsp, 40h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                mov     eax, cs:dword_140C4A24C
                xor     ebx, ebx
                mov     [rbp+var_1F], bl
                xorps   xmm0, xmm0
                mov     [rbp+var_1E], bl
                mov     [rbp+var_20], bl
                mov     cs:byte_140C48A6C, bl
                movups  [rbp+var_18], xmm0
                movups  [rbp+var_18], xmm0
                test    al, 1
                jz      loc_1409A0548
                call    sub_1403A1FC8
                test    al, al
                jnz     loc_1409A8540

loc_1409A0436:                          ; CODE XREF: sub_1409A03E4+8172↓j
                lea     r9, [rbp+var_20]
                xor     edx, edx
                lea     r8, [rbp+var_1E]
                lea     rcx, [rbp+var_1F]
                call    sub_1403A0F60
                test    al, al
                jz      loc_1409A0548
                cmp     [rbp+var_20], 2
                jnz     loc_1409A0548
                cmp     [rbp+var_1F], 6
                jnz     loc_1409A85A1
                movzx   eax, [rbp+var_1E]
                cmp     eax, 56h ; 'V'
                ja      loc_1409A85B2
                jz      short loc_1409A047D
                cmp     eax, 3Ch ; '<'
                jnz     loc_1409A855B

loc_1409A047D:                          ; CODE XREF: sub_1409A03E4+8E↑j
                                        ; sub_1409A03E4+817A↓j ...
                mov     cs:dword_140C48A78, 10h

loc_1409A0487:                          ; CODE XREF: sub_1409A03E4+81C9↓j
                                        ; sub_1409A03E4+820D↓j
                xor     ecx, ecx
                mov     eax, 0Ah
                cpuid
                movzx   ecx, al
                cmp     ecx, 1
                jb      loc_1409A0548
                cmp     ecx, 3
                mov     eax, 1
                setbe   cs:byte_140C0F3CA
                xor     ecx, ecx
                cpuid
                bt      ecx, 0Fh
                jnb     short loc_1409A04DF
                mov     ecx, 345h
                rdmsr
                shl     rdx, 20h
                or      rax, rdx
                and     eax, 3Fh
                sub     eax, 3
                jz      loc_1409A8606
                sub     eax, 1
                jnz     loc_1409A85F6
                mov     cs:byte_140C0F3C9, 3Ch ; '<'

loc_1409A04DF:                          ; CODE XREF: sub_1409A03E4+CF↑j
                                        ; sub_1409A03E4+8215↓j ...
                lea     rax, sub_1404DD2D0
                mov     cs:byte_140C48A6C, 1
                mov     cs:off_140C00988, rax
                lea     rax, sub_1404DD3E0
                mov     cs:off_140C00990, rax
                lea     rax, sub_1408686A0
                mov     cs:off_140C00998, rax
                lea     rax, sub_1403CF8F0
                mov     cs:off_140C009A0, rax
                lea     rax, sub_14032FBB0
                mov     cs:off_140C009A8, rax
                lea     rax, sub_1408686E0
                mov     cs:off_140C009B0, rax
                lea     rax, sub_140868790
                mov     cs:off_140C009B8, rax

loc_1409A0548:                          ; CODE XREF: sub_1409A03E4+3F↑j
                                        ; sub_1409A03E4+67↑j ...
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+40h+arg_0]
                add     rsp, 40h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1409A03E4
sub_1409A03E4   endp

byte_1409A0560  db 10h dup(0CCh)        ; DATA XREF: .rdata:000000014009FEB0↑o
                                        ; .pdata:0000000140126BB8↑o

; =============== S U B R O U T I N E =======================================


sub_1409A0570   proc near               ; DATA XREF: .rdata:0000000140008200↑o
                                        ; .rdata:000000014009FF4C↑o ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001409A8612 SIZE 0000002C BYTES

                push    rbx
                sub     rsp, 30h
                xor     ebx, ebx
                cmp     ecx, 10h
                jg      short loc_1409A05A8
                jz      loc_1409A0682
                test    ecx, ecx
                jz      loc_1409A061B
                cmp     ecx, 4
                jz      short loc_1409A0600
                cmp     ecx, 7
                jz      short loc_1409A0614
                cmp     ecx, 9
                jz      short loc_1409A060A
                cmp     ecx, 0Bh
                jz      short loc_1409A0607

loc_1409A059F:                          ; CODE XREF: sub_1409A0570+4E↓j
                                        ; sub_1409A0570+57↓j ...
                mov     eax, ebx

loc_1409A05A1:                          ; CODE XREF: sub_1409A0570+6C↓j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1409A05A8:                          ; CODE XREF: sub_1409A0570+B↑j
                cmp     ecx, 13h
                jz      short loc_1409A05DE
                cmp     ecx, 11h
                jz      short loc_1409A05C9
                cmp     ecx, 15h
                jz      loc_1409A068D
                cmp     ecx, 1Dh
                jnz     short loc_1409A059F
                call    sub_1403BDD20
                mov     ebx, eax
                jmp     short loc_1409A059F
; ---------------------------------------------------------------------------

loc_1409A05C9:                          ; CODE XREF: sub_1409A0570+40↑j
                call    sub_140A75BCC
                call    sub_1403CD77C
                call    PsGetHostSilo
                mov     ebx, eax
                test    eax, eax
                js      short loc_1409A05A1

loc_1409A05DE:                          ; CODE XREF: sub_1409A0570+3B↑j
                call    sub_14037B664
                cmp     eax, 1
                jnz     short loc_1409A05ED
                call    sub_1403A375C

loc_1409A05ED:                          ; CODE XREF: sub_1409A0570+76↑j
                mov     eax, cs:dword_140C4A24C
                test    al, 1
                jz      short loc_1409A059F
                xor     ecx, ecx
                call    sub_1403A3990
                jmp     short loc_1409A059F
; ---------------------------------------------------------------------------

loc_1409A0600:                          ; CODE XREF: sub_1409A0570+1E↑j
                call    sub_1403B0928
                jmp     short loc_1409A059F
; ---------------------------------------------------------------------------

loc_1409A0607:                          ; CODE XREF: sub_1409A0570+2D↑j
                sti
                jmp     short loc_1409A059F
; ---------------------------------------------------------------------------

loc_1409A060A:                          ; CODE XREF: sub_1409A0570+28↑j
                mov     rcx, r8
                call    sub_140A74CB4
                jmp     short loc_1409A059F
; ---------------------------------------------------------------------------

loc_1409A0614:                          ; CODE XREF: sub_1409A0570+23↑j
                call    sub_140364758
                jmp     short loc_1409A059F
; ---------------------------------------------------------------------------

loc_1409A061B:                          ; CODE XREF: sub_1409A0570+15↑j
                lea     rax, sub_140761520
                mov     cs:off_140C00790, rax
                lea     rax, sub_140760120
                mov     cs:off_140C00798, rax
                lea     rax, sub_1403C9C50
                mov     cs:off_140C007C8, rax
                lea     rax, sub_1403653A0
                mov     cs:off_140C00808, rax
                lea     rax, sub_140378A60
                mov     cs:off_140C00868, rax
                lea     rax, sub_1404D17D0
                mov     cs:off_140C00938, rax
                lea     rax, sub_1404D2FA0
                mov     cs:off_140C00978, rax
                jmp     loc_1409A059F
; ---------------------------------------------------------------------------

loc_1409A0682:                          ; CODE XREF: sub_1409A0570+D↑j
                mov     cs:byte_140C0F3C8, bl
                jmp     loc_1409A059F
; ---------------------------------------------------------------------------

loc_1409A068D:                          ; CODE XREF: sub_1409A0570+45↑j
                movsxd  rax, cs:dword_140C49774
                test    eax, eax
                jz      loc_1409A059F
                jmp     loc_1409A8612
sub_1409A0570   endp

; ---------------------------------------------------------------------------
algn_1409A06A1:                         ; DATA XREF: .rdata:000000014009FF4C↑o
                                        ; .pdata:0000000140126BC4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1409A06B0   proc near               ; DATA XREF: .rdata:0000000140008210↑o
                                        ; .pdata:0000000140126BD0↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     ebp, ebp
                mov     rsi, r8
                mov     edi, ecx
                test    ecx, ecx
                jz      short loc_1409A070D
                mov     rax, cs:off_140C04F48
                test    rax, rax
                jz      short loc_1409A06E7
                mov     rax, [rax]
                call    sub_1404079D0
                test    al, al
                jnz     short loc_1409A070D

loc_1409A06E7:                          ; CODE XREF: sub_1409A06B0+29↑j
                cmp     edi, 8
                jnz     short loc_1409A0706
                mov     rax, cs:off_140C04F48
                mov     rax, [rax]
                call    sub_1404079D0
                test    al, al
                jnz     short loc_1409A0706
                xor     ecx, ecx
                call    sub_1404BCB08

loc_1409A0706:                          ; CODE XREF: sub_1409A06B0+3A↑j
                                        ; sub_1409A06B0+4D↑j
                xor     eax, eax
                jmp     loc_1409A087B
; ---------------------------------------------------------------------------

loc_1409A070D:                          ; CODE XREF: sub_1409A06B0+1D↑j
                                        ; sub_1409A06B0+35↑j
                mov     ebx, ebp
                test    edi, edi
                jz      loc_1409A081F
                cmp     edi, 8
                jz      loc_1409A0805
                cmp     edi, 0Ah
                jz      loc_1409A07CE
                cmp     edi, 11h
                jz      short loc_1409A0750
                cmp     edi, 13h
                jz      short loc_1409A0746
                cmp     edi, 20h ; ' '
                jnz     loc_1409A0879
                call    sub_1403B3ED8
                jmp     loc_1409A0879
; ---------------------------------------------------------------------------

loc_1409A0746:                          ; CODE XREF: sub_1409A06B0+81↑j
                call    sub_1409A0898
                jmp     loc_1409A081B
; ---------------------------------------------------------------------------

loc_1409A0750:                          ; CODE XREF: sub_1409A06B0+7C↑j
                call    sub_1403B3E98
                mov     ebx, eax
                test    eax, eax
                js      loc_1409A0879
                call    sub_1403B3D98
                mov     ebx, eax
                test    eax, eax
                js      loc_1409A0879
                lea     rax, sub_1404C9080
                mov     cs:off_140C009C0, rax
                lea     rax, sub_1404CA0A0
                mov     cs:off_140C009C8, rax
                lea     rax, sub_1407D1640
                mov     cs:off_140C009D0, rax
                lea     rax, sub_1403F0050
                mov     cs:off_140C00A38, rax
                call    sub_1409A0898
                mov     ebx, eax
                test    eax, eax
                js      loc_1409A0879
                call    sub_1403B3D5C
                cmp     cs:byte_140C49C6C, bpl
                jz      loc_1409A0879
                call    sub_1403F01C0
                jmp     short loc_1409A081B
; ---------------------------------------------------------------------------

loc_1409A07CE:                          ; CODE XREF: sub_1409A06B0+73↑j
                mov     cs:dword_140C49D20, ebp
                call    sub_14037910C
                test    al, al
                jz      short loc_1409A07E7
                mov     cs:dword_140C49D20, 1

loc_1409A07E7:                          ; CODE XREF: sub_1409A06B0+12B↑j
                mov     rcx, rsi
                call    sub_1403B3D18
                mov     ebx, eax
                test    eax, eax
                js      loc_1409A0879
                mov     rdx, rsi
                xor     ecx, ecx
                call    sub_14099D1E4
                jmp     short loc_1409A081B
; ---------------------------------------------------------------------------

loc_1409A0805:                          ; CODE XREF: sub_1409A06B0+6A↑j
                mov     rcx, rsi
                call    sub_140A47128
                mov     ebx, eax
                test    eax, eax
                js      short loc_1409A0879
                mov     rcx, rsi
                call    sub_1403B0B90

loc_1409A081B:                          ; CODE XREF: sub_1409A06B0+9B↑j
                                        ; sub_1409A06B0+11C↑j ...
                mov     ebx, eax
                jmp     short loc_1409A0879
; ---------------------------------------------------------------------------

loc_1409A081F:                          ; CODE XREF: sub_1409A06B0+61↑j
                lea     rax, qword_140C49C90
                mov     rcx, rsi
                mov     cs:qword_140C49C98, rax
                mov     cs:qword_140C49C90, rax
                lea     rax, qword_140C49C70
                mov     cs:qword_140C49C78, rax
                mov     cs:qword_140C49C70, rax
                lea     rax, sub_140A764D0
                mov     cs:off_140C008B0, rax
                call    sub_1403647EC
                cmp     eax, 1
                cmova   eax, ebp
                mov     cs:dword_140C49D24, eax
                lea     rax, sub_1404C9F10
                mov     cs:qword_140C00A30, rax

loc_1409A0879:                          ; CODE XREF: sub_1409A06B0+86↑j
                                        ; sub_1409A06B0+91↑j ...
                mov     eax, ebx

loc_1409A087B:                          ; CODE XREF: sub_1409A06B0+58↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409A06B0   endp

algn_1409A0891:                         ; DATA XREF: .pdata:0000000140126BD0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1409A0898   proc near               ; CODE XREF: sub_1409A06B0:loc_1409A0746↑p
                                        ; sub_1409A06B0+F6↑p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

                sub     rsp, 38h
                cmp     cs:byte_140C49C6C, 0
                jnz     short loc_1409A08BF
                or      [rsp+38h+var_18], 0FFFFFFFFFFFFFFFFh
                lea     rdx, sub_1404CC210
                mov     r8b, 0Ch
                mov     ecx, 0CEh
                call    sub_1403A269C

loc_1409A08BF:                          ; CODE XREF: sub_1409A0898+B↑j
                xor     eax, eax
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409A0898   endp

algn_1409A08C7:                         ; DATA XREF: .pdata:0000000140126BDC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1409A08D0   proc near               ; CODE XREF: sub_1408BBF18+120↑p
                                        ; sub_140A4F854+2A3↓p
                                        ; DATA XREF: ...
                shl     ecx, 6
                add     ecx, 0CABFh
                and     ecx, 0FFFFF000h
                lea     eax, [rcx+1000h]
                mov     [r8], eax
                lea     eax, [rcx+3FB0h]
                mov     [rdx], eax
                lea     eax, [rcx+7000h]
                retn
sub_1409A08D0   endp

; ---------------------------------------------------------------------------
                align 8
algn_1409A08F8:                         ; DATA XREF: .pdata:0000000140126BE8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409A0900   proc near               ; CODE XREF: sub_1409B1550+61↓p
                                        ; sub_140A4E488+1EC↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001409A863E SIZE 0000001B BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 30h
                cmp     cs:dword_140CFB13C, 0
                mov     rdi, rcx
                jz      short loc_1409A094B
                add     rcx, 7B80h
                call    sub_140363550
                lea     rcx, [rdi+30E8h]
                call    sub_140364624
                and     qword ptr [rdi+30F8h], 0
                mov     dword ptr [rdi+3100h], 0

loc_1409A094B:                          ; CODE XREF: sub_1409A0900+1F↑j
                cmp     cs:dword_140CFB030, 0
                mov     r14d, 0FFFFFFFFh
                jz      loc_1409A0A20
                mov     r8d, [rdi+24h]
                lea     rsi, [rdi+8258h]
                mov     rcx, rsi
                lea     rdx, sub_140326150
                call    KeInitializeThreadedDpc
                mov     ecx, [rdi+24h]
                mov     byte ptr [rdi+8259h], 2
                mov     rax, [rsi+38h]
                test    rax, rax
                jnz     short loc_1409A0997
                mov     eax, 500h
                add     cx, ax
                mov     [rsi+2], cx

loc_1409A0997:                          ; CODE XREF: sub_1409A0900+89↑j
                lea     rbx, [rdi+8298h]
                xor     edx, edx
                mov     rcx, rbx
                call    KeInitializeTimerEx
                mov     eax, cs:dword_140CFB030
                xor     edx, edx
                mov     r9d, cs:dword_140CFC418
                mov     rcx, rbx
                imul    rax, 2710h
                mov     r8d, r9d
                mov     [rsp+38h+var_18], rsi
                dec     rax
                add     rax, r9
                div     r9
                cmp     rax, r14
                cmova   rax, r14
                and     dword ptr [rdi+7BECh], 0
                and     dword ptr [rdi+7C2Ch], 0
                imul    r8, rax
                mov     [rdi+7BE8h], eax
                mov     rax, 346DC5D63886594Bh
                mul     r8
                mov     r8, rdx
                shr     r8, 0Bh
                shr     r8, 1
                cmp     r8, r14
                cmova   r8, r14
                neg     r9d
                mov     edx, r9d
                mov     r9d, 0FAh
                call    KeSetCoalescableTimer

loc_1409A0A20:                          ; CODE XREF: sub_1409A0900+58↑j
                mov     eax, cs:dword_140CFB03C
                test    eax, eax
                jz      short loc_1409A0A51
                mov     r8d, cs:dword_140CFC418
                xor     edx, edx
                imul    rcx, rax, 2710h
                lea     rax, [r8-1]
                add     rax, rcx
                div     r8
                cmp     rax, r14
                cmova   rax, r14
                mov     [rdi+7EA0h], eax

loc_1409A0A51:                          ; CODE XREF: sub_1409A0900+128↑j
                mov     eax, cs:dword_140C50BC8
                test    eax, eax
                jz      loc_1409A0AF4
                mov     edx, eax
                mov     ecx, 200h
                shl     rdx, 3
                mov     r8d, 5057694Bh
                call    ExAllocatePoolWithTag
                mov     [rdi+84A8h], rax
                test    rax, rax
                jz      loc_1409A863E
                mov     r8d, cs:dword_140C50BC8
                xor     edx, edx
                shl     r8, 3
                mov     rcx, rax
                mov     [rdi+84B0h], rax
                call    memset
                mov     r8d, cs:dword_140CFC418
                xor     edx, edx
                mov     eax, cs:dword_140C50BD0
                imul    rcx, rax, 2710h
                lea     rax, [r8-1]
                add     rax, rcx
                div     r8
                cmp     rax, r14
                cmova   rax, r14
                xor     edx, edx
                mov     [rdi+7BF4h], eax
                mov     eax, cs:dword_140C50BCC
                imul    rcx, rax, 2710h
                lea     rax, [r8-1]
                add     rax, rcx
                div     r8
                cmp     rax, r14
                cmova   rax, r14
                mov     [rdi+7F00h], eax

loc_1409A0AF4:                          ; CODE XREF: sub_1409A0900+159↑j
                                        ; sub_1409A0900+7D54↓j
                mov     rbx, [rsp+38h+arg_0]
                xor     eax, eax
                mov     rsi, [rsp+38h+arg_8]
                mov     rdi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409A0900   endp

byte_1409A0B0D  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A1214↑o
                                        ; .pdata:0000000140126BF4↑o

; =============== S U B R O U T I N E =======================================


sub_1409A0B14   proc near               ; CODE XREF: sub_140A4F1B0+14D↓p
                                        ; DATA XREF: .pdata:0000000140126C00↑o
                sub     rsp, 28h
                test    rcx, rcx
                jz      short loc_1409A0B32
                call    RtlFindLeastSignificantBit
                mov     cl, al

loc_1409A0B24:                          ; CODE XREF: sub_1409A0B14+24↓j
                mov     eax, 1
                shl     rax, cl
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1409A0B32:                          ; CODE XREF: sub_1409A0B14+7↑j
                mov     cl, cs:byte_140C0F440
                jmp     short loc_1409A0B24
sub_1409A0B14   endp

; ---------------------------------------------------------------------------
algn_1409A0B3A:                         ; DATA XREF: .pdata:0000000140126C00↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409A0B40   proc near               ; CODE XREF: sub_1409B0FDC:loc_1409B1021↓p
                                        ; sub_1409B1550+1A0↓p ...

var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = qword ptr -18h

                sub     rsp, 48h
                and     [rsp+48h+var_20], 0
                cmp     cs:byte_140C2B230, 0
                jz      short loc_1409A0B8D
                mov     ecx, 0FFFFh
                call    KeQueryActiveProcessorCountEx
                and     [rsp+48h+var_28], 0
                lea     rdx, [rsp+48h+var_28]
                dec     eax
                lea     rcx, sub_1409A3230
                mov     [rsp+48h+var_24], eax
                lea     rax, unk_140C2B248
                mov     [rsp+48h+var_18], rax
                mov     dword ptr [rsp+48h+var_20], 0
                call    KeIpiGenericCall

loc_1409A0B8D:                          ; CODE XREF: sub_1409A0B40+11↑j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409A0B40   endp

byte_1409A0B93  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140126C0C↑o

; =============== S U B R O U T I N E =======================================


sub_1409A0B9C   proc near               ; CODE XREF: sub_1408BBF18+311↑p
                                        ; sub_140A4F854+12D↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001409A865A SIZE 00000011 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, cs:qword_140CFC458
                mov     rbx, rcx
                and     edi, 800000h
                jz      loc_1409A865A
                mov     ecx, cs:dword_140CFB088
                add     ecx, 375h
                add     ecx, cs:dword_140CFB064

loc_1409A0BD8:                          ; CODE XREF: sub_1409A0B9C+7AC0↓j
                test    ecx, ecx
                jz      short loc_1409A0C0B
                mov     ebp, ecx
                call    sub_140761300
                mov     rsi, rax
                test    rax, rax
                jz      loc_1409A8661
                mov     r8d, ebp
                xor     edx, edx
                mov     rcx, rax
                call    memset
                lea     rax, [rsi+3Fh]
                and     rax, 0FFFFFFFFFFFFFFC0h
                mov     [rbx+85D0h], rax

loc_1409A0C0B:                          ; CODE XREF: sub_1409A0B9C+3E↑j
                test    rdi, rdi
                jz      short loc_1409A0C6B
                mov     r8d, cs:dword_140CFB088
                mov     r9d, 0FFFFFB30h
                mov     eax, cs:dword_140CFB064
                add     r8, 0Fh
                add     r8, [rbx+85D0h]
                add     eax, 0FFFFFE00h
                and     r8, 0FFFFFFFFFFFFFFF0h
                lea     rdx, [r8+4D0h]
                mov     [rdx+14h], eax
                lea     ecx, [rdx+57h]
                and     ecx, 0FFFFFFC0h
                mov     [rdx+8], r9d
                sub     ecx, edx
                mov     dword ptr [rdx+0Ch], 4D0h
                add     eax, 4D0h
                mov     [rdx+10h], ecx
                add     eax, ecx
                mov     [rdx], r9d
                mov     [rdx+4], eax
                mov     [rbx+85C0h], r8

loc_1409A0C6B:                          ; CODE XREF: sub_1409A0B9C+72↑j
                mov     dword ptr [rbx+85C8h], 10000Bh
                test    rdi, rdi
                jz      short loc_1409A0C92
                mov     eax, [rbx+85C8h]
                mov     ecx, 10004Bh
                cmp     dword ptr [rbx+24h], 0
                cmovz   eax, ecx
                mov     [rbx+85C8h], eax

loc_1409A0C92:                          ; CODE XREF: sub_1409A0B9C+DC↑j
                xor     eax, eax

loc_1409A0C94:                          ; CODE XREF: sub_1409A0B9C+7ACA↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409A0B9C   endp

algn_1409A0CAA:                         ; DATA XREF: .rdata:00000001400A14E0↑o
                                        ; .pdata:0000000140126C18↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1409A0CB0   proc near               ; CODE XREF: sub_1409B17F0+43↓p
                                        ; sub_140A4F854+562↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     ebx, edx
                call    sub_140364788
                mov     cs:word_140CFB014, ax
                cli
                mov     eax, cs:dword_140CFC404
                mov     edx, ecx
                mov     edi, 1
                lea     rcx, word_140CFC840
                add     eax, edi
                mov     cs:dword_140CFC404, eax
                call    KeAddProcessorAffinityEx
                sti
                test    ebx, ebx
                jnz     short loc_1409A0CFE
                mov     al, cs:KeNumberProcessors
                add     al, dil
                mov     cs:KeNumberProcessors, al

loc_1409A0CFE:                          ; CODE XREF: sub_1409A0CB0+3D↑j
                mov     eax, ds:0FFFFF780000003C0h
                mov     rbx, [rsp+28h+arg_0]
                add     eax, edi
                mov     ds:0FFFFF780000003C0h, eax
                mov     rax, 0FFFFF7800000036Ah
                movzx   eax, word ptr [rax]
                add     ax, di
                mov     ds:0FFFFF7800000036Ah, ax
                mov     al, byte ptr cs:word_140CFB014
                mov     ds:0FFFFF780000003C4h, al
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409A0CB0   endp

algn_1409A0D47:                         ; DATA XREF: .pdata:0000000140126C24↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1409A0D50   proc near               ; CODE XREF: sub_14099EB00+74B↑p
                                        ; sub_1409B1550+69↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                mov     eax, [rcx+24h]
                lea     rbx, cs:140000000h
                mov     r10, [rcx+0C0h]
                mov     ecx, ds:rva dword_140D010D0[rbx+rax*4]
                mov     r11d, ecx
                mov     r9, [r10+88h]
                mov     eax, ecx
                and     eax, 3Fh
                shr     r11d, 6
                bts     r9, rax
                mov     edx, r11d
                bsf     rax, r9
                shl     edx, 6
                add     eax, edx
                mov     [r10+88h], r9
                bsr     r8, r9
                mov     eax, ds:rva dword_140D024D0[rbx+rax*4]
                mov     [r10+0ACh], eax
                lea     eax, [rdx+r8]
                mov     eax, ds:rva dword_140D024D0[rbx+rax*4]
                movzx   ebx, word ptr [r10+92h]
                mov     [r10+0B0h], eax
                movzx   eax, word ptr [r10+0ACh]
                mov     [r10+6Ch], ax
                mov     [r10+6Eh], ax
                lea     rax, [r9-1]
                test    r9, rax
                jz      short loc_1409A0DE5

loc_1409A0DDE:                          ; CODE XREF: sub_1409A0D50+A0↓j
                                        ; sub_1409A0D50+E2↓j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409A0DE5:                          ; CODE XREF: sub_1409A0D50+8C↑j
                movzx   eax, cs:word_140CFB000
                xor     edx, edx
                test    eax, eax
                jz      short loc_1409A0DDE
                lea     r8, qword_140D23380
                mov     r10d, eax

loc_1409A0DFC:                          ; CODE XREF: sub_1409A0D50+E4↓j
                mov     r9, [r8]
                movzx   eax, word ptr [r9+90h]
                cmp     eax, r11d
                jnz     short loc_1409A0E2A
                test    rdx, rdx
                mov     rax, r9
                cmovnz  rax, rdx
                mov     rdx, rax
                mov     ecx, [rax+80h]
                bts     rcx, rbx
                mov     [r9+80h], ecx

loc_1409A0E2A:                          ; CODE XREF: sub_1409A0D50+BA↑j
                add     r8, 8
                sub     r10, 1
                jz      short loc_1409A0DDE
                jmp     short loc_1409A0DFC
sub_1409A0D50   endp

; ---------------------------------------------------------------------------
byte_1409A0E36  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140126C30↑o

; =============== S U B R O U T I N E =======================================


sub_1409A0E3C   proc near               ; CODE XREF: sub_1408BBF18+2F7↑p
                                        ; sub_140A444A4+486↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001409A866C SIZE 00000019 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                cmp     dword ptr [rcx+24h], 0
                mov     rbx, rcx
                jz      short loc_1409A0E5C
                or      qword ptr [rcx+85B0h], 0FFFFFFFFFFFFFFFFh

loc_1409A0E5C:                          ; CODE XREF: sub_1409A0E3C+16↑j
                mov     edi, 40h ; '@'
                lea     rcx, qword_140C4EDC0
                mov     edx, edi
                call    sub_1402583E0
                mov     rcx, rax
                test    rax, rax
                jz      loc_1409A867E
                shl     rcx, 19h
                mov     rax, 0FFFFF68000000000h
                shl     rax, 19h
                mov     edx, 30C8h
                sub     rcx, rax
                mov     r8d, 20206D4Dh
                sar     rcx, 10h
                mov     [rbx+8200h], rcx
                mov     ecx, edi
                mov     eax, cs:dword_140C4DD78
                mov     [rbx+7F1Ch], eax
                call    sub_140268720
                mov     rdi, rax
                test    rax, rax
                jz      loc_1409A8676
                and     dword ptr [rdi+30C0h], 0
                lea     rcx, [rax+20h]
                mov     [rax], rcx
                lea     rax, [rcx+1018h]
                mov     [rdi+8], rax
                lea     rax, [rcx+2018h]
                mov     [rdi+10h], rax
                mov     dword ptr [rdi+18h], 200h
                mov     rax, [rbx+0C0h]
                movzx   r8d, word ptr [rax+92h]
                imul    rcx, r8, 11C0h
                add     rcx, cs:qword_140C50C10
                movzx   eax, byte ptr [rcx+1074h]
                mov     [rbx+7F14h], eax
                mov     eax, [rcx+1070h]
                mov     [rbx+7F18h], eax
                rdtsc
                mov     cl, cs:byte_140C4DD0D
                mov     esi, 1
                shl     rdx, 20h
                or      rax, rdx
                mov     edx, esi
                shl     dx, cl
                mov     cl, cs:byte_140C4DD0C
                sub     dx, si
                shl     r8d, cl
                lea     rcx, [rdi+3040h]
                movzx   edx, dx
                and     edx, eax
                or      edx, r8d
                lea     r8d, [rsi+7]
                call    sub_140301208
                test    eax, eax
                jz      loc_1409A866C
                mov     [rbx+7FF8h], rdi
                mov     eax, esi

loc_1409A0F74:                          ; CODE XREF: sub_1409A0E3C+7844↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409A0E3C   endp

byte_1409A0F85  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A155C↑o
                                        ; .pdata:0000000140126C3C↑o

; =============== S U B R O U T I N E =======================================


sub_1409A0F8C   proc near               ; CODE XREF: sub_14079FA20+1EC↑p
                                        ; sub_14099D840+32D↑p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 00000001409A8686 SIZE 00000041 BYTES

                push    rbx
                sub     rsp, 20h
                mov     r11, rdx
                mov     rbx, rcx
                call    sub_1403B5B5C
                test    al, al
                jnz     loc_1409A8686
                mov     rax, cs:qword_140CFC4C8
                and     eax, 18000h
                cmp     rax, 8000h
                jz      loc_1409A8692

loc_1409A0FBD:                          ; CODE XREF: sub_1409A0F8C+7711↓j
                call    sub_1403B5B48
                test    al, al
                jnz     loc_1409A86A2

loc_1409A0FCA:                          ; CODE XREF: sub_1409A0F8C+771D↓j
                cmp     cs:byte_140C50BD8, 0
                jz      loc_1409A86AE

loc_1409A0FD7:                          ; CODE XREF: sub_1409A0F8C+772F↓j
                mov     rax, cr3
                mov     [rcx+8E80h], rax
                mov     rax, [rdx+1004h]
                mov     [rdx+1078h], rax
                call    sub_1403B5AF8
                lea     rcx, [r11+4200h]
                mov     [r11+1004h], rcx
                cmp     dword ptr [rbx+24h], 0
                jz      short loc_1409A1056
                mov     rdx, r11
                mov     rcx, rbx
                call    sub_1409A1120
                test    eax, eax
                jz      loc_1409A86C0
                xor     ecx, ecx
                call    sub_14023DAD0
                movzx   ecx, word ptr [rax+8EAAh]
                or      dword ptr [rbx+8E98h], 2
                mov     [rbx+8EAAh], cx

loc_1409A1037:                          ; CODE XREF: sub_1409A0F8C+189↓j
                cmp     cs:byte_140CFC409, 0
                jz      short loc_1409A104A
                lock bts qword ptr [rbx+8E80h], 3Fh ; '?'

loc_1409A104A:                          ; CODE XREF: sub_1409A0F8C+B2↑j
                                        ; sub_1409A0F8C+7701↓j ...
                mov     eax, 1

loc_1409A104F:                          ; CODE XREF: sub_1409A0F8C+7736↓j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1409A1056:                          ; CODE XREF: sub_1409A0F8C+7A↑j
                mov     dl, 1
                mov     rcx, r11
                call    sub_1409A11F4
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     byte ptr [rcx+390h], 1
                mov     cs:byte_140D24D90, 1
                lock or cs:dword_140D2527C, 4000h
                mov     ecx, 1
                call    sub_14021EC00
                mov     eax, 18h
                mov     rcx, 40000000000h
                mov     [rbx+8EAAh], ax
                mov     rax, [rbx+85A0h]
                test    rcx, rax
                jz      short loc_1409A10DD
                mov     rax, cr4
                btr     rax, 7
                bts     rax, 11h
                mov     cr4, rax
                mov     rax, cr3
                or      rax, 2
                mov     cr3, rax
                or      cs:byte_140CFC409, 1
                mov     rax, [rbx+85A0h]

loc_1409A10DD:                          ; CODE XREF: sub_1409A0F8C+127↑j
                mov     rcx, 240000000000h
                and     rax, rcx
                cmp     rax, rcx
                jnz     short loc_1409A10F6
                or      cs:byte_140CFC409, 2

loc_1409A10F6:                          ; CODE XREF: sub_1409A0F8C+161↑j
                call    sub_140364728
                mov     al, cs:byte_140CFC409
                neg     al
                mov     cs:byte_140E01840, 1
                sbb     ecx, ecx
                add     ecx, 2
                mov     cs:dword_140CFC72C, ecx
                jmp     loc_1409A1037
sub_1409A0F8C   endp

; ---------------------------------------------------------------------------
algn_1409A111A:                         ; DATA XREF: .rdata:00000001400A15FC↑o
                                        ; .pdata:0000000140126C48↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409A1120   proc near               ; CODE XREF: sub_1409A0F8C+82↑p
                                        ; sub_1409A14B0+8F↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001409A86C8 SIZE 00000027 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                cmp     cs:byte_140E01840, 0
                mov     rdi, rdx
                mov     rbx, rcx
                jz      short loc_1409A1181
                mov     edx, 5000h
                mov     rcx, rdi
                call    sub_14079FD4C
                test    eax, eax
                jz      loc_1409A86D5
                lea     rbp, [rbx+8E80h]
                mov     edx, 1000h
                mov     rcx, rbp
                xor     esi, esi
                call    sub_14079FD4C
                test    eax, eax
                jz      loc_1409A86DC
                cmp     dword ptr [rbx+24h], 0
                mov     esi, 1
                jz      short loc_1409A119C

loc_1409A1181:                          ; CODE XREF: sub_1409A1120+21↑j
                                        ; sub_1409A1120+C6↓j
                mov     eax, 1

loc_1409A1186:                          ; CODE XREF: sub_1409A1120+75B7↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1409A119C:                          ; CODE XREF: sub_1409A1120+5F↑j
                lea     rbx, cs:140000000h
                mov     rcx, rbx
                call    RtlImageNtHeader
                lea     r8, sub_140A16100
                mov     rdx, rbx
                sub     r8d, ebx
                mov     rcx, rax
                call    sub_14033C730
                mov     edx, [rax+8]
                mov     ecx, [rax+10h]
                cmp     edx, ecx
                cmovbe  edx, ecx
                mov     ecx, 0FFFFF000h
                add     edx, 0FFFh
                and     rdx, rcx
                mov     ecx, [rax+0Ch]
                add     rcx, rbx
                call    sub_14079FD4C
                test    eax, eax
                jnz     short loc_1409A1181
                jmp     loc_1409A86DC
sub_1409A1120   endp

; ---------------------------------------------------------------------------
byte_1409A11ED  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A1624↑o
                                        ; .pdata:0000000140126C54↑o

; =============== S U B R O U T I N E =======================================


sub_1409A11F4   proc near               ; CODE XREF: sub_14099D840+26C↑p
                                        ; sub_1409A0F8C+CF↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001409A86F0 SIZE 00000030 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], r14
                and     cs:dword_140D58660, 0
                lea     r9, qword_140D58270
                xor     r10d, r10d
                lea     r8, [rcx+4]
                mov     bl, dl
                mov     ebp, 0F8h
                mov     r14d, 8E00h
                lea     esi, [r10+10h]

loc_1409A122D:                          ; CODE XREF: sub_1409A11F4+AB↓j
                cmp     cs:dword_140D586D8, 0
                jnz     loc_1409A86F0

loc_1409A123A:                          ; CODE XREF: sub_1409A11F4+7500↓j
                                        ; sub_1409A11F4+7514↓j
                test    bl, bl
                lea     rax, sub_1404009E0
                lea     rcx, sub_140A172C0
                cmovz   rcx, rax
                lea     rdx, [rcx+r10*8]
                cmp     r10d, 2Eh ; '.'
                jz      loc_1409A135E

loc_1409A125C:                          ; CODE XREF: sub_1409A11F4+171↓j
                movzx   eax, byte ptr [r9]
                cmp     r10d, eax
                jz      short loc_1409A12B7
                movzx   eax, word ptr [r8]
                and     ax, bp
                mov     [r8-4], dx
                or      ax, r14w
                mov     [r8], ax
                mov     rax, rdx
                shr     rax, 10h
                shr     rdx, 20h

loc_1409A1284:                          ; CODE XREF: sub_1409A11F4+19A↓j
                mov     [r8+4], edx
                mov     [r8+2], ax
                mov     [r8-2], si

loc_1409A1292:                          ; CODE XREF: sub_1409A11F4+141↓j
                                        ; sub_1409A11F4+7521↓j
                inc     r10d
                add     r8, rsi
                cmp     r10d, 0FFh
                jbe     short loc_1409A122D
                mov     rbx, [rsp+arg_0]
                mov     rbp, [rsp+arg_8]
                mov     rsi, [rsp+arg_10]
                mov     r14, [rsp+arg_18]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409A12B7:                          ; CODE XREF: sub_1409A11F4+6F↑j
                test    bl, bl
                jz      short loc_1409A133A
                mov     r11, [r9+10h]

loc_1409A12BF:                          ; CODE XREF: sub_1409A11F4+14A↓j
                mov     [r8-4], r11w
                mov     ecx, 0FFF8h
                mov     [r8-2], si
                mov     al, [r9+2]
                and     al, 7
                movzx   edx, al
                movzx   eax, word ptr [r8]
                and     ax, cx
                or      dx, ax
                mov     eax, 0EEFFh
                and     dx, ax
                mov     eax, 0E00h
                or      dx, ax
                mov     [r8], dx
                mov     al, [r9+1]
                and     al, 3
                or      al, 4
                movzx   ecx, al
                mov     eax, 1FFFh
                and     dx, ax
                shl     cx, 0Dh
                or      cx, dx
                mov     rax, r11
                shr     rax, 10h
                mov     [r8+2], ax
                mov     rax, r11
                shr     rax, 20h
                mov     [r8+4], eax
                mov     [r8], cx
                cmp     byte ptr [r9+1], 0
                jnz     short loc_1409A1343

loc_1409A1331:                          ; CODE XREF: sub_1409A11F4+168↓j
                                        ; sub_1409A11F4+7527↓j
                add     r9, 18h
                jmp     loc_1409A1292
; ---------------------------------------------------------------------------

loc_1409A133A:                          ; CODE XREF: sub_1409A11F4+C5↑j
                mov     r11, [r9+8]
                jmp     loc_1409A12BF
; ---------------------------------------------------------------------------

loc_1409A1343:                          ; CODE XREF: sub_1409A11F4+13B↑j
                mov     ecx, cs:dword_140D58660
                lea     rdx, unk_140E01900
                mov     [rdx+rcx*8], r11
                inc     ecx
                mov     cs:dword_140D58660, ecx
                jmp     short loc_1409A1331
; ---------------------------------------------------------------------------

loc_1409A135E:                          ; CODE XREF: sub_1409A11F4+62↑j
                cmp     cs:dword_140D5815C, 1
                jz      loc_1409A125C
                movzx   eax, word ptr [r8]
                and     ax, bp
                mov     [r8-4], dx
                or      ax, r14w
                mov     [r8], ax
                mov     rax, rdx
                shr     rax, 10h
                shr     rdx, 20h
                add     r9, 18h
                jmp     loc_1409A1284
sub_1409A11F4   endp

; ---------------------------------------------------------------------------
algn_1409A1393:                         ; DATA XREF: .rdata:00000001400A18A8↑o
                                        ; .pdata:0000000140126C60↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409A13A0   proc near               ; DATA XREF: .rdata:0000000140005518↑o
                                        ; .rdata:00000001400A18C8↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001409A8720 SIZE 00000021 BYTES

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 20h
                cmp     cs:byte_140C48EB9, 0
                jz      loc_1409A1473
                mov     ebx, gs:1A4h
                mov     edi, 1000h
                test    ebx, ebx
                jz      loc_1409A147F

loc_1409A13CC:                          ; CODE XREF: sub_1409A13A0+FA↓j
                lea     rcx, [rbx+rbx*4]
                xor     r9d, r9d
                shl     rcx, 5
                lea     r8, [rsp+28h+arg_0]
                add     rcx, cs:qword_140C48EB0
                xor     edx, edx
                mov     [rsp+28h+arg_0], rcx
                xor     ecx, ecx
                call    KeAllocateProcessorProfileStructures
                test    eax, eax
                js      loc_1409A14A0
                mov     ecx, cs:dword_140C48EF4
                test    ecx, ecx
                jz      short loc_1409A140E
                xor     edx, edx
                mov     eax, edi
                div     ecx
                imul    eax, ecx
                mov     edi, eax

loc_1409A140E:                          ; CODE XREF: sub_1409A13A0+61↑j
                mov     r8d, cs:dword_140C48E9C
                xor     edx, edx
                mov     rbx, [rsp+28h+arg_0]
                shl     r8, 3
                cmp     cs:byte_140C48EB8, dl
                jz      loc_1409A8720
                mov     rcx, [rbx+20h]
                mov     [rbx+28h], rcx
                lea     rax, [rdi+rcx]
                mov     [rbx+30h], rax
                mov     [rbx+38h], rcx
                lea     rcx, [rbx+40h]
                call    memset
                lea     rcx, [rbx+80h]

loc_1409A1450:                          ; CODE XREF: sub_1409A13A0+739C↓j
                mov     r8d, cs:dword_140C48EF0
                xor     edx, edx
                shl     r8, 3
                call    memset
                mov     rdx, rbx
                mov     rax, rbx
                shr     rdx, 20h
                mov     ecx, 600h
                wrmsr

loc_1409A1473:                          ; CODE XREF: sub_1409A13A0+11↑j
                                        ; sub_1409A13A0+107↓j
                mov     rbx, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409A147F:                          ; CODE XREF: sub_1409A13A0+26↑j
                call    sub_1403A2364
                mov     ecx, eax
                lea     r8, qword_140C48EB0
                mov     r9b, 1
                mov     rdx, rdi
                call    KeAllocateProcessorProfileStructures
                test    eax, eax
                jns     loc_1409A13CC

loc_1409A14A0:                          ; CODE XREF: sub_1409A13A0+53↑j
                mov     cs:byte_140C48EB9, 0
                jmp     short loc_1409A1473
sub_1409A13A0   endp

; ---------------------------------------------------------------------------
algn_1409A14A9:                         ; DATA XREF: .rdata:00000001400A18C8↑o
                                        ; .pdata:0000000140126C6C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1409A14B0   proc near               ; CODE XREF: sub_1403B65FC+86↑p
                                        ; sub_14051259C+71↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001409A8742 SIZE 00000048 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r14
                sub     rsp, 20h
                mov     rsi, [rcx]
                xor     r14d, r14d
                cmp     cs:byte_140CFC408, r14b
                mov     rdi, rcx
                mov     rcx, [rcx+38h]
                mov     r12d, 1000h
                movzx   ebx, r14b
                mov     edx, r12d
                lea     eax, [r14+1]
                lea     r8d, [r14+2]
                cmovnz  ebx, eax
                lea     rbp, [rsi-2FB0h]
                call    sub_140379FE0
                test    bl, bl
                jnz     loc_1409A8742

loc_1409A1508:                          ; CODE XREF: sub_1409A14B0+72B1↓j
                                        ; sub_1409A14B0+72CA↓j
                mov     ecx, [rdi+1A4h]
                test    ecx, ecx
                jz      short loc_1409A1535
                cmp     cs:byte_140CFC408, r14b
                jnz     short loc_1409A154D

loc_1409A151B:                          ; CODE XREF: sub_1409A14B0+96↓j
                                        ; sub_1409A14B0+A2↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409A1535:                          ; CODE XREF: sub_1409A14B0+60↑j
                lea     rcx, [rdi+180h]
                mov     rdx, rbp
                call    sub_1409A1120
                test    eax, eax
                jnz     short loc_1409A151B
                jmp     loc_1409A877F
; ---------------------------------------------------------------------------

loc_1409A154D:                          ; CODE XREF: sub_1409A14B0+69↑j
                call    sub_1404FC464
                jmp     short loc_1409A151B
sub_1409A14B0   endp

; ---------------------------------------------------------------------------
byte_1409A1554  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A1934↑o
                                        ; .pdata:0000000140126C78↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1409A155C   proc near               ; CODE XREF: sub_1409B1550+1C0↓p
                                        ; sub_1409B1550+1EE↓p ...

var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = word ptr -10h
var_E           = dword ptr -0Eh
var_A           = word ptr -0Ah
arg_0           = qword ptr  48h
arg_8           = word ptr  50h
arg_10          = dword ptr  58h
arg_18          = dword ptr  60h

                mov     [rsp-40h+arg_0], rcx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 68h
                mov     r9d, [rcx+8314h]
                xor     r15d, r15d
                mov     [rbp+var_E], r15d
                xorps   xmm0, xmm0
                mov     [rbp+var_A], r15w
                mov     r11b, dl
                mov     [rbp+arg_8], r15w
                mov     rbx, rcx
                mov     [rbp+arg_10], r15d
                movups  [rbp+var_30], xmm0
                test    r9d, r9d
                jz      short loc_1409A15B7
                lea     eax, [r9-1]
                mov     rax, [rcx+rax*8+8470h]
                mov     [rcx+8468h], rax
                jmp     short loc_1409A15BE
; ---------------------------------------------------------------------------

loc_1409A15B7:                          ; CODE XREF: sub_1409A155C+44↑j
                mov     rax, [rcx+8468h]

loc_1409A15BE:                          ; CODE XREF: sub_1409A155C+59↑j
                test    rax, rax
                jnz     short loc_1409A15D1
                mov     rax, [rcx+0C8h]
                mov     [rcx+8468h], rax

loc_1409A15D1:                          ; CODE XREF: sub_1409A155C+65↑j
                movzx   r8d, byte ptr [rcx+0D1h]
                mov     edx, r15d
                mov     [rbp+var_48], r8d
                mov     esi, 1
                mov     [rbp+arg_18], edx
                test    r9d, r9d
                jz      short loc_1409A1628
                mov     r10, [rcx+8458h]
                not     r10

loc_1409A15F7:                          ; CODE XREF: sub_1409A155C+AF↓j
                mov     eax, edx
                test    [rcx+rax*8+8470h], r10
                jnz     short loc_1409A160F
                add     edx, esi
                mov     [rbp+arg_18], edx
                cmp     edx, r9d
                jb      short loc_1409A15F7
                jmp     short loc_1409A1628
; ---------------------------------------------------------------------------

loc_1409A160F:                          ; CODE XREF: sub_1409A155C+A5↑j
                mov     eax, edx
                mov     rcx, [rcx+rax*8+8470h]
                bsf     r8, rcx
                mov     [rbx+8460h], rcx
                mov     [rbp+var_48], r8d

loc_1409A1628:                          ; CODE XREF: sub_1409A155C+8F↑j
                                        ; sub_1409A155C+B1↑j
                mov     r10, [rbx+0C0h]
                mov     [rbx+8454h], r8d
                test    r11b, r11b
                jnz     loc_1409A191A
                mov     eax, [r10+0ACh]
                cmp     [rbx+24h], eax
                jnz     loc_1409A191A
                mov     edi, cs:dword_140CFB2B0
                test    edi, edi
                cmovz   edi, esi
                bt      edi, 8
                jnb     short loc_1409A166F
                btr     edi, 8
                call    sub_1403F258C
                test    eax, eax
                jz      short loc_1409A166F
                add     edi, edi

loc_1409A166F:                          ; CODE XREF: sub_1409A155C+102↑j
                                        ; sub_1409A155C+10F↑j
                mov     eax, 40h ; '@'
                cmp     edi, eax
                cmova   edi, eax
                mov     r14, cr8
                mov     [rbp+var_38], r14
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                or      r12, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_1409A16CD
                test    sil, al
                jz      short loc_1409A16CD
                cmp     r14b, 0Fh
                ja      short loc_1409A16CD
                mov     rax, gs:20h
                mov     rdx, r12
                movzx   ecx, r14b
                add     ecx, esi
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_1409A16CD:                          ; CODE XREF: sub_1409A155C+13A↑j
                                        ; sub_1409A155C+13F↑j ...
                movzx   ecx, word ptr [r10+92h]
                lea     r8, [rbp+arg_8]
                lea     rdx, [rbp+var_30]
                mov     [r10+98h], r15
                call    KeQueryNodeActiveAffinity
                movzx   r8d, [rbp+arg_8]
                xor     edx, edx
                mov     rsi, [rbx+8448h]
                mov     r13d, r15d
                mov     [rbp+var_20], r15
                lea     eax, [r8-1]
                add     eax, edi
                div     edi
                xor     edx, edx
                mov     ecx, eax
                mov     eax, r8d
                div     ecx
                lea     rcx, [rbp+arg_10]
                mov     [rbp+var_40], eax
                movzx   eax, word ptr [rbp+var_30+8]
                mov     [rbp+var_10], ax
                mov     rax, qword ptr [rbp+var_30]
                mov     [rbp+var_44], edx
                lea     rdx, [rbp+var_20]
                mov     [rbp+var_18], rax
                call    KeEnumerateNextProcessor
                test    eax, eax
                jnz     loc_1409A1817
                mov     r12d, [rbp+var_44]
                lea     rbx, qword_140CFDCC0
                mov     r14d, [rbp+var_40]

loc_1409A1749:                          ; CODE XREF: sub_1409A155C+2A9↓j
                mov     eax, [rbp+arg_10]
                mov     rdi, [rbx+rax*8]
                movzx   eax, byte ptr [rsi+253h]
                cmp     r13d, eax
                jnz     short loc_1409A1763
                mov     rsi, [rdi+8448h]

loc_1409A1763:                          ; CODE XREF: sub_1409A155C+1FE↑j
                mov     ecx, r15d
                cmovnz  ecx, r13d
                test    ecx, ecx
                jnz     short loc_1409A1787
                mov     [rsi+253h], r14b
                test    r12d, r12d
                jz      short loc_1409A1787
                lea     eax, [r14+1]
                dec     r12d
                mov     [rsi+253h], al

loc_1409A1787:                          ; CODE XREF: sub_1409A155C+210↑j
                                        ; sub_1409A155C+21C↑j
                mov     rax, [rdi+0C8h]
                lea     r13d, [rcx+1]
                mov     [rdi+8448h], rsi
                or      [rsi+258h], rax
                movzx   edx, byte ptr [rsi+251h]
                movzx   ecx, byte ptr [rdi+0D1h]
                mov     r15, [rdi+10h]
                mov     eax, ecx
                sub     rcx, rdx
                sub     eax, edx
                mov     [rbp+arg_18], eax
                mov     eax, ecx
                lea     rcx, [rsi+210h]
                add     rcx, rax
                mov     [rdi+38h], rcx
                test    r15, r15
                jnz     short loc_1409A17D5
                mov     r15, [rdi+8]

loc_1409A17D5:                          ; CODE XREF: sub_1409A155C+273↑j
                mov     rdx, rdi
                mov     rcx, r15
                call    sub_1402D0980
                mov     cl, 1
                test    al, al
                jnz     short loc_1409A17ED
                mov     cl, [r15+0C3h]

loc_1409A17ED:                          ; CODE XREF: sub_1409A155C+288↑j
                mov     rax, [rdi+38h]
                lea     rdx, [rbp+var_20]
                mov     [rax], cl
                lea     rcx, [rbp+arg_10]
                call    KeEnumerateNextProcessor
                xor     r15d, r15d
                test    eax, eax
                jz      loc_1409A1749
                mov     rbx, [rbp+arg_0]
                or      r12, 0FFFFFFFFFFFFFFFFh
                mov     r14, [rbp+var_38]

loc_1409A1817:                          ; CODE XREF: sub_1409A155C+1D8↑j
                movzx   eax, word ptr [rbp+var_30+8]
                lea     rdx, [rbp+var_20]
                mov     [rbp+var_10], ax
                lea     rcx, [rbp+arg_10]
                mov     rax, qword ptr [rbp+var_30]
                mov     [rbp+var_18], rax
                mov     [rbp+var_20], r15
                call    KeEnumerateNextProcessor
                mov     edi, 1
                test    eax, eax
                jnz     short loc_1409A18BE
                lea     rsi, qword_140CFDCC0

loc_1409A1848:                          ; CODE XREF: sub_1409A155C+360↓j
                mov     eax, [rbp+arg_10]
                mov     rcx, [rsi+rax*8]
                mov     rdx, [rcx+8448h]
                cmp     [rdx+253h], dil
                jbe     short loc_1409A186D
                mov     rax, [rdx+258h]
                mov     [rcx+8440h], rax

loc_1409A186D:                          ; CODE XREF: sub_1409A155C+301↑j
                mov     al, [rcx+0D1h]
                cmp     al, [rdx+251h]
                jnz     short loc_1409A18AD
                cmp     [rdx+253h], dil
                jbe     short loc_1409A18AD
                mov     [rcx+8450h], edi
                mov     [rdx+254h], al
                mov     rax, [rdx+258h]
                bsr     rcx, rax
                mov     [rbp+arg_18], ecx
                sub     cl, [rdx+251h]
                add     cl, dil
                mov     [rdx+250h], cl

loc_1409A18AD:                          ; CODE XREF: sub_1409A155C+31D↑j
                                        ; sub_1409A155C+326↑j
                lea     rdx, [rbp+var_20]
                lea     rcx, [rbp+arg_10]
                call    KeEnumerateNextProcessor
                test    eax, eax
                jz      short loc_1409A1848

loc_1409A18BE:                          ; CODE XREF: sub_1409A155C+2E3↑j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1409A1912
                test    dil, al
                jz      short loc_1409A1912
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1409A1912
                cmp     r14b, 0Fh
                ja      short loc_1409A1912
                cmp     al, 2
                jb      short loc_1409A1912
                mov     r9, gs:20h
                movzx   ecx, r14b
                add     ecx, edi
                shl     r12, cl
                mov     r8, [r9+84B8h]
                movzx   eax, r12w
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1409A1912
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1409A1912:                          ; CODE XREF: sub_1409A155C+36A↑j
                                        ; sub_1409A155C+36F↑j ...
                movzx   eax, r14b
                mov     cr8, rax

loc_1409A191A:                          ; CODE XREF: sub_1409A155C+DD↑j
                                        ; sub_1409A155C+ED↑j
                mov     rcx, rbx
                call    sub_1403B66BC
                add     rsp, 68h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1409A155C   endp

algn_1409A1934:                         ; DATA XREF: .pdata:0000000140126C84↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409A1940   proc near               ; DATA XREF: .rdata:00000001400081A0↑o
                                        ; .pdata:0000000140126C90↑o
                push    rbx
                sub     rsp, 30h
                xor     ebx, ebx
                cmp     ecx, 13h
                jz      short loc_1409A1984
                cmp     ecx, 2
                jz      short loc_1409A199B
                cmp     ecx, 7
                jz      short loc_1409A1994
                cmp     ecx, 11h
                jz      short loc_1409A196A
                cmp     ecx, 1Bh
                jz      short loc_1409A198B

loc_1409A1961:                          ; CODE XREF: sub_1409A1940+49↓j
                                        ; sub_1409A1940+52↓j ...
                mov     eax, ebx
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1409A196A:                          ; CODE XREF: sub_1409A1940+1A↑j
                lea     rax, qword_140C48C20
                mov     cs:qword_140C48C28, rax
                mov     cs:qword_140C48C20, rax
                call    sub_1403BA7DC

loc_1409A1984:                          ; CODE XREF: sub_1409A1940+B↑j
                call    sub_14099BAE0
                jmp     short loc_1409A1961
; ---------------------------------------------------------------------------

loc_1409A198B:                          ; CODE XREF: sub_1409A1940+1F↑j
                call    sub_140A64B9C
                mov     ebx, eax
                jmp     short loc_1409A1961
; ---------------------------------------------------------------------------

loc_1409A1994:                          ; CODE XREF: sub_1409A1940+15↑j
                call    sub_140A3B0C0
                jmp     short loc_1409A1961
; ---------------------------------------------------------------------------

loc_1409A199B:                          ; CODE XREF: sub_1409A1940+10↑j
                mov     rax, [r8+0F0h]
                mov     ecx, [rax+0D80h]
                mov     cs:dword_140C50890, ecx
                jmp     short loc_1409A1961
sub_1409A1940   endp

; ---------------------------------------------------------------------------
algn_1409A19B0:                         ; DATA XREF: .pdata:0000000140126C90↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409A19C0   proc near               ; DATA XREF: .rdata:00000001400082A0↑o
                                        ; .pdata:0000000140126C9C↑o
                sub     rsp, 28h
                mov     edx, ecx
                call    sub_14037B664
                cmp     eax, 1
                jnz     short loc_1409A19DF
                cmp     edx, 13h
                jz      short loc_1409A1A03
                cmp     edx, 0Ch
                jz      short loc_1409A1A0A
                cmp     edx, 11h
                jz      short loc_1409A19E7

loc_1409A19DF:                          ; CODE XREF: sub_1409A19C0+E↑j
                                        ; sub_1409A19C0+48↓j ...
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409A19E7:                          ; CODE XREF: sub_1409A19C0+1D↑j
                lea     rax, sub_1404D7A30
                mov     cs:off_140C006C8, rax
                lea     rax, sub_1404D7D10
                mov     cs:off_140C006D0, rax

loc_1409A1A03:                          ; CODE XREF: sub_1409A19C0+13↑j
                call    sub_1409A1A1C
                jmp     short loc_1409A19DF
; ---------------------------------------------------------------------------

loc_1409A1A0A:                          ; CODE XREF: sub_1409A19C0+18↑j
                mov     rcx, r8
                call    sub_140A65D7C
                jmp     short loc_1409A19DF
sub_1409A19C0   endp

; ---------------------------------------------------------------------------
byte_1409A1A14  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140126C9C↑o

; =============== S U B R O U T I N E =======================================


sub_1409A1A1C   proc near               ; CODE XREF: sub_1409A19C0:loc_1409A1A03↑p
                                        ; DATA XREF: .rdata:00000001400A4EF8↑o ...

var_18          = qword ptr -18h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001409A878A SIZE 00000021 BYTES

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 30h
                and     [rsp+38h+arg_0], 0
                lea     rcx, [rsp+38h+arg_0]
                call    KeGetCurrentProcessorNumberEx
                mov     ebx, eax
                test    eax, eax
                jz      loc_1409A1ACB

loc_1409A1A3F:                          ; CODE XREF: sub_1409A1A1C+B7↓j
                                        ; sub_1409A1A1C+EE↓j
                mov     rdx, gs:18h
                cmp     cs:byte_140C4A250, 0
                jnz     short loc_1409A1ABF
                cmp     qword ptr [rdx+0D8h], 0
                jnz     short loc_1409A1A7E
                imul    rcx, rbx, 0B8h
                add     rcx, cs:qword_140C506A0
                mov     [rdx+0D8h], rcx
                and     qword ptr [rcx+0B0h], 0
                mov     [rcx+0A4h], ebx

loc_1409A1A7E:                          ; CODE XREF: sub_1409A1A1C+3D↑j
                mov     rax, gs:18h
                mov     rdi, [rax+0D8h]
                cmp     byte ptr [rdi+98h], 0
                jnz     short loc_1409A1ABF
                mov     r8, rdi
                lea     rdx, sub_14038D7F0
                lea     rcx, [rdi+28h]
                call    KeInitializeDpc
                lea     rdx, [rsp+38h+arg_0]
                lea     rcx, [rdi+28h]
                call    KeSetTargetProcessorDpcEx
                mov     byte ptr [rdi+98h], 1

loc_1409A1ABF:                          ; CODE XREF: sub_1409A1A1C+33↑j
                                        ; sub_1409A1A1C+79↑j
                mov     rbx, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409A1ACB:                          ; CODE XREF: sub_1409A1A1C+1D↑j
                cmp     cs:qword_140C506A0, 0
                jnz     loc_1409A1A3F
                call    sub_1403A2364
                imul    ecx, eax, 0B8h
                mov     edx, ecx
                mov     edi, ecx
                call    sub_14037CD18
                mov     cs:qword_140C506A0, rax
                test    rax, rax
                jz      loc_1409A878A
                mov     r8d, edi
                xor     edx, edx
                mov     rcx, rax
                call    memset
                jmp     loc_1409A1A3F
sub_1409A1A1C   endp

; ---------------------------------------------------------------------------
algn_1409A1B0F:                         ; DATA XREF: .rdata:00000001400A4EF8↑o
                                        ; .pdata:0000000140126CA8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1409A1B20   proc near               ; DATA XREF: .rdata:0000000140008180↑o
                                        ; .pdata:0000000140126CB4↑o
                push    rbx
                sub     rsp, 20h
                xor     ebx, ebx
                sub     ecx, 4
                jz      short loc_1409A1B4B
                sub     ecx, 3
                jz      short loc_1409A1B75
                sub     ecx, 1
                jz      short loc_1409A1B6B
                sub     ecx, 1
                jz      short loc_1409A1B4B
                sub     ecx, 10h
                jz      short loc_1409A1B54
                sub     ecx, 2
                jz      short loc_1409A1B64
                cmp     ecx, 2
                jz      short loc_1409A1B5D

loc_1409A1B4B:                          ; CODE XREF: sub_1409A1B20+B↑j
                                        ; sub_1409A1B20+1A↑j ...
                mov     eax, ebx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1409A1B54:                          ; CODE XREF: sub_1409A1B20+1F↑j
                call    sub_140A67BA8

loc_1409A1B59:                          ; CODE XREF: sub_1409A1B20+42↓j
                                        ; sub_1409A1B20+53↓j
                mov     ebx, eax
                jmp     short loc_1409A1B4B
; ---------------------------------------------------------------------------

loc_1409A1B5D:                          ; CODE XREF: sub_1409A1B20+29↑j
                call    sub_1403BB060
                jmp     short loc_1409A1B59
; ---------------------------------------------------------------------------

loc_1409A1B64:                          ; CODE XREF: sub_1409A1B20+24↑j
                call    sub_140A65B84
                jmp     short loc_1409A1B4B
; ---------------------------------------------------------------------------

loc_1409A1B6B:                          ; CODE XREF: sub_1409A1B20+15↑j
                mov     rcx, r8
                call    sub_140A65CA0
                jmp     short loc_1409A1B59
; ---------------------------------------------------------------------------

loc_1409A1B75:                          ; CODE XREF: sub_1409A1B20+10↑j
                lea     rax, qword_140C49C40
                mov     cs:qword_140C4BD90, rbx
                mov     cs:qword_140C49C48, rax
                mov     cs:qword_140C49C40, rax
                lea     rax, qword_140C4BD80
                mov     cs:qword_140C4BD88, rax
                mov     cs:qword_140C4BD80, rax
                lea     rax, qword_140C4BD60
                mov     cs:qword_140C4BD68, rax
                mov     cs:qword_140C4BD60, rax
                jmp     short loc_1409A1B4B
sub_1409A1B20   endp

; ---------------------------------------------------------------------------
byte_1409A1BBD  db 13h dup(0CCh)        ; DATA XREF: .pdata:0000000140126CB4↑o

; =============== S U B R O U T I N E =======================================


sub_1409A1BD0   proc near               ; DATA XREF: .rdata:off_140008160↑o
                                        ; .pdata:0000000140126CC0↑o
                push    rbx
                sub     rsp, 20h
                xor     ebx, ebx
                cmp     ecx, 7
                jz      short loc_1409A1C0F
                cmp     ecx, 0Ch
                jz      short loc_1409A1C08
                cmp     ecx, 11h
                jz      short loc_1409A1BFE
                cmp     ecx, 17h
                jz      short loc_1409A1BF5

loc_1409A1BEC:                          ; CODE XREF: sub_1409A1BD0+2C↓j
                                        ; sub_1409A1BD0+36↓j ...
                mov     eax, ebx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1409A1BF5:                          ; CODE XREF: sub_1409A1BD0+1A↑j
                call    sub_140A67B5C
                mov     ebx, eax
                jmp     short loc_1409A1BEC
; ---------------------------------------------------------------------------

loc_1409A1BFE:                          ; CODE XREF: sub_1409A1BD0+15↑j
                mov     rcx, r8
                call    sub_140A67530
                jmp     short loc_1409A1BEC
; ---------------------------------------------------------------------------

loc_1409A1C08:                          ; CODE XREF: sub_1409A1BD0+10↑j
                call    sub_1403BBC54
                jmp     short loc_1409A1BEC
; ---------------------------------------------------------------------------

loc_1409A1C0F:                          ; CODE XREF: sub_1409A1BD0+B↑j
                mov     rcx, r8
                call    sub_140A65D48
                jmp     short loc_1409A1BEC
sub_1409A1BD0   endp

; ---------------------------------------------------------------------------
algn_1409A1C19:                         ; DATA XREF: .pdata:0000000140126CC0↑o
                align 20h
; Exported entry 2663. WheaConfigureErrorSource

; =============== S U B R O U T I N E =======================================


