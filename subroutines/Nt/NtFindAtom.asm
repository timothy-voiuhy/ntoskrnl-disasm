NtFindAtom      proc near               ; DATA XREF: .rdata:0000000140061DC8↑o
                                        ; .pdata:000000014010017C↑o ...

var_258         = word ptr -258h
var_250         = qword ptr -250h
var_248         = qword ptr -248h
var_240         = dword ptr -240h
var_238         = word ptr -238h
var_38          = qword ptr -38h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014080ADE6 SIZE 00000021 BYTES

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_18], rbx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 250h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+278h+var_38], rax
                mov     rsi, r8
                mov     ebx, edx
                mov     rdi, rcx
                xor     r12d, r12d
                mov     [rsp+278h+var_250], r12
                mov     [rsp+278h+var_258], r12w
                mov     [rsp+278h+var_240], r12d
                call    sub_1402A9500
                mov     rcx, rax
                lea     r8, [rsp+278h+var_250]
                lea     edx, [r12+2]
                call    sub_140662DDC
                cmp     [rsp+278h+var_250], r12
                jz      loc_14080ADE6
                cmp     ebx, 1FEh
                ja      loc_14080ADF0
                mov     rax, gs:188h
                mov     r15b, [rax+232h]
                mov     r14, rdi
                mov     [rsp+278h+var_248], rdi
                test    r15b, r15b
                jz      short loc_140662D78

loc_140662CFC:                          ; DATA XREF: .rdata:0000000140061DA0↑o
;   __try { // __except at loc_140662D76
                mov     rdx, 7FFFFFFF0000h
                test    rsi, rsi
                jz      short loc_140662D20
                mov     rcx, rsi
                cmp     rsi, rdx
                cmovnb  rcx, rdx
                movzx   eax, word ptr [rcx]
                mov     [rcx], ax
                mov     r14, [rsp+278h+var_248]

loc_140662D20:                          ; CODE XREF: NtFindAtom+99↑j
                test    rdi, rdi
                jz      short loc_140662D74
                test    ebx, ebx
                jz      short loc_140662D3D
                test    dil, 1
                jnz     short loc_140662D62
                lea     rcx, [rdi+rbx]
                cmp     rcx, rdx
                ja      short loc_140662D67
                cmp     rcx, rdi
                jb      short loc_140662D67

loc_140662D3D:                          ; CODE XREF: NtFindAtom+B7↑j
                                        ; NtFindAtom+102↓j
                lea     r14, [rsp+278h+var_238]
                mov     [rsp+278h+var_248], r14
                mov     r8, rbx
                mov     rdx, rdi
                lea     rcx, [rsp+278h+var_238]
                call    memmove
                shr     rbx, 1
                mov     [rsp+rbx*2+278h+var_238], r12w
                jmp     short loc_140662D74
; ---------------------------------------------------------------------------

loc_140662D62:                          ; CODE XREF: NtFindAtom+BD↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------

loc_140662D67:                          ; CODE XREF: NtFindAtom+C6↑j
                                        ; NtFindAtom+CB↑j
                xor     eax, eax
                mov     ds:7FFFFFFF0000h, al
                jmp     short loc_140662D3D
; ---------------------------------------------------------------------------

loc_140662D74:                          ; CODE XREF: NtFindAtom+B3↑j
                                        ; NtFindAtom+F0↑j
                jmp     short loc_140662D78
;   } // starts at 140662CFC
; ---------------------------------------------------------------------------

loc_140662D76:                          ; DATA XREF: .rdata:0000000140061DA0↑o
;   __except(1) // owned by 140662CFC
                jmp     short loc_140662DAC
; ---------------------------------------------------------------------------

loc_140662D78:                          ; CODE XREF: NtFindAtom+8A↑j
                                        ; NtFindAtom:loc_140662D74↑j
                lea     r8, [rsp+278h+var_258]
                mov     rdx, r14
                mov     rcx, [rsp+278h+var_250]
                call    RtlLookupAtomInAtomTable
                mov     ecx, eax
                test    rsi, rsi
                jz      short loc_140662DAA
                test    eax, eax
                js      short loc_140662DAA
                test    r15b, r15b
                jz      loc_14080ADFA

loc_140662D9E:                          ; DATA XREF: .rdata:0000000140061DB0↑o
;   __try { // __except at loc_140662DA8
                movzx   eax, [rsp+278h+var_258]
                mov     [rsi], ax
                jmp     short loc_140662DAA
;   } // starts at 140662D9E
; ---------------------------------------------------------------------------

loc_140662DA8:                          ; DATA XREF: .rdata:0000000140061DB0↑o
;   __except(1) // owned by 140662D9E
                mov     ecx, eax

loc_140662DAA:                          ; CODE XREF: NtFindAtom+11F↑j
                                        ; NtFindAtom+123↑j ...
                mov     eax, ecx

loc_140662DAC:                          ; CODE XREF: NtFindAtom:loc_140662D76↑j
                                        ; NtFindAtom+1A817B↓j ...
                mov     rcx, [rsp+278h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+278h+arg_18]
                add     rsp, 250h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140662C70
NtFindAtom      endp

byte_140662DD5  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140061DC8↑o
                                        ; .pdata:000000014010017C↑o

; =============== S U B R O U T I N E =======================================


sub_140662DDC   proc near               ; CODE XREF: NtFindAtom+53↑p
                                        ; sub_1406630E0+B8↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, r8
                mov     rbp, rdx
                mov     rsi, rcx
                call    sub_1402A9540
                mov     rdi, rax
                test    rax, rax
                jz      short loc_140662E3E
                mov     rax, [rax+8]
                mov     r8, rbx
                mov     rcx, [rdi+10h]
                mov     rdx, rbp
                call    sub_1404079D0
                mov     rdx, rdi
                mov     rcx, rsi
                mov     ebx, eax
                call    sub_1402A9600

loc_140662E26:                          ; CODE XREF: sub_140662DDC+67↓j
                mov     rbp, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140662E3E:                          ; CODE XREF: sub_140662DDC+28↑j
                mov     ebx, 0C000000Dh
                jmp     short loc_140662E26
sub_140662DDC   endp

; ---------------------------------------------------------------------------
byte_140662E45  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140100188↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_140662E4C   proc near               ; CODE XREF: sub_1405F62BC+6B↑p
                                        ; sub_14068AE3C+689↓p
                                        ; DATA XREF: ...

var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_70          = qword ptr -70h
var_68          = xmmword ptr -68h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = dword ptr -40h
arg_0           = byte ptr  10h
arg_8           = qword ptr  18h
arg_10          = byte ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 000000014080AE08 SIZE 000000D2 BYTES

                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], r8b
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 90h
                mov     rbx, rdx
                mov     r14b, r8b
                xor     edx, edx
                mov     rdi, rcx
                lea     rcx, [rbp+57h+var_80]
                lea     r8d, [rdx+48h]
                call    memset
                mov     rcx, cs:qword_140CFC960
                call    sub_140309D44
                mov     rcx, cs:qword_140CFC5D0
                mov     rsi, rax
                mov     [rbp+57h+var_A0], rax
                call    sub_140309D44
                mov     r12d, cs:dword_140D2E6A0
                xor     r15d, r15d
                mov     rcx, [rdi+8C0h]
                mov     r13d, r15d
                shr     r12d, 2
                and     r12d, 1
                mov     [rbp+57h+var_90], rax
                mov     [rbp+57h+arg_18], r15
                lea     edx, [r15+2]
                mov     [rbp+57h+arg_0], r15b
                mov     [rbp+57h+var_98], rcx
                test    r14b, r14b
                jz      loc_1406630B5
                test    r12b, r12b
                jz      loc_1406630A3

loc_140662EE6:                          ; CODE XREF: sub_140662E4C+25A↓j
                                        ; sub_140662E4C+263↓j
                mov     eax, r15d
                mov     [rbp+57h+var_80], 48h ; 'H'
                test    rcx, rcx
                cmovnz  eax, edx
                mov     [rbp+57h+var_78], eax
                mov     rax, [rdi+540h]
                mov     [rbp+57h+var_70], rax
                mov     rax, gs:188h
                movups  xmm0, xmmword ptr [rax+478h]
                mov     [rbp+57h+var_40], r15d
                movdqu  [rbp+57h+var_68], xmm0
                jnz     loc_14080AE08
                test    rbx, rbx
                jz      loc_14080AE45
                mov     rcx, [rbx+0B0h]
                test    rcx, rcx
                jz      loc_14080AE45
                mov     [rbp+57h+arg_18], rcx

loc_140662F41:                          ; CODE XREF: sub_140662E4C+1A8012↓j
                mov     [rbp+57h+var_58], rcx
                test    rbx, rbx
                jz      loc_14080AE63
                mov     eax, [rbx+4]
                test    al, 20h
                jz      loc_14080AE63
                or      [rbp+57h+var_78], 1
                lea     rax, [rbx+0E8h]

loc_140662F64:                          ; CODE XREF: sub_140662E4C+1A801B↓j
                mov     qword ptr [rbp+57h+var_50], rax
                test    rbx, rbx
                jz      loc_14080AE6C
                mov     rax, [rbx+0D0h]
                test    rax, rax
                jz      loc_14080AE6C
                add     rax, 70h ; 'p'

loc_140662F85:                          ; CODE XREF: sub_140662E4C+1A7FF4↓j
                mov     qword ptr [rbp+57h+var_50+8], rax

loc_140662F89:                          ; CODE XREF: sub_140662E4C+1A7FCB↓j
                                        ; sub_140662E4C+1A7FDB↓j ...
                lea     rbx, [rbp+57h+var_80]

loc_140662F8D:                          ; CODE XREF: sub_140662E4C+26C↓j
                mov     eax, cs:dword_140D2E6A0
                test    dl, al
                jz      loc_1406630BD

loc_140662F9B:                          ; CODE XREF: sub_140662E4C+27A↓j
                mov     r14d, r15d

loc_140662F9E:                          ; CODE XREF: sub_140662E4C+17A↓j
                mov     eax, r14d
                lea     rcx, unk_140CEC120
                lea     r15, [rcx+rax*8]
                mov     rcx, r15
                call    sub_1402A9540
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_140663033
                xor     r15d, r15d

loc_140662FBF:                          ; CODE XREF: sub_140662E4C+224↓j
                                        ; sub_140662E4C+22F↓j
                inc     r14d
                cmp     r14d, 40h ; '@'
                jb      short loc_140662F9E

loc_140662FC8:                          ; CODE XREF: sub_140662E4C+1A8044↓j
                mov     rsi, [rbp+57h+var_A0]

loc_140662FCC:                          ; CODE XREF: sub_140662E4C+274↓j
                mov     rax, [rbp+57h+var_90]
                test    rax, rax
                jz      short loc_140663001
                test    rbx, rbx
                jz      short loc_140662FE0
                cmp     [rbx+40h], r15d
                jl      short loc_140663001

loc_140662FE0:                          ; CODE XREF: sub_140662E4C+18C↑j
                mov     rax, [rax]
                mov     r8, rbx
                mov     rdx, [rdi+440h]
                mov     rcx, rdi
                call    sub_1404079D0
                mov     rcx, cs:qword_140CFC5D0
                call    sub_140309D28

loc_140663001:                          ; CODE XREF: sub_140662E4C+187↑j
                                        ; sub_140662E4C+192↑j
                test    rsi, rsi
                jnz     loc_14080AE95

loc_14066300A:                          ; CODE XREF: sub_140662E4C+1A8052↓j
                                        ; sub_140662E4C+1A807A↓j
                cmp     [rbp+57h+arg_0], r15b
                jnz     loc_14080AECB

loc_140663014:                          ; CODE XREF: sub_140662E4C+1A8089↓j
                mov     rbx, [rsp+0C0h+arg_8]
                mov     eax, r13d
                add     rsp, 90h
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
; ---------------------------------------------------------------------------

loc_140663033:                          ; CODE XREF: sub_140662E4C+16E↑j
                mov     eax, [rax+10h]
                cmp     [rbp+57h+var_98], r13
                jnz     loc_14080AE75

loc_140663040:                          ; CODE XREF: sub_140662E4C+1A8031↓j
                test    al, 2
                jz      short loc_140663086
                test    r12b, r12b
                jz      short loc_14066305F
                mov     rax, [rsi+8]
                mov     r8, rbx
                mov     rdx, [rdi+440h]
                mov     rcx, rdi
                call    sub_1404079D0

loc_14066305F:                          ; CODE XREF: sub_140662E4C+1FB↑j
                                        ; sub_140662E4C+255↓j ...
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_1402A9600
                xor     r15d, r15d
                test    rbx, rbx
                jz      loc_140662FBF
                mov     eax, [rbx+40h]
                test    eax, eax
                jns     loc_140662FBF
                jmp     loc_14080AE82
; ---------------------------------------------------------------------------

loc_140663086:                          ; CODE XREF: sub_140662E4C+1F6↑j
                mov     rax, [rsi+8]
                mov     r8b, [rbp+57h+arg_10]
                mov     rdx, [rdi+440h]
                mov     rcx, [rdi+540h]
                call    sub_1404079D0
                jmp     short loc_14066305F
; ---------------------------------------------------------------------------

loc_1406630A3:                          ; CODE XREF: sub_140662E4C+94↑j
                test    rsi, rsi
                jnz     loc_140662EE6
                test    rax, rax
                jnz     loc_140662EE6

loc_1406630B5:                          ; CODE XREF: sub_140662E4C+8B↑j
                mov     rbx, r15
                jmp     loc_140662F8D
; ---------------------------------------------------------------------------

loc_1406630BD:                          ; CODE XREF: sub_140662E4C+149↑j
                test    r12b, r12b
                jz      loc_140662FCC
                jmp     loc_140662F9B
sub_140662E4C   endp

; ---------------------------------------------------------------------------
algn_1406630CB:                         ; DATA XREF: .rdata:0000000140061E10↑o
                                        ; .pdata:0000000140100194↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406630E0   proc near               ; CODE XREF: sub_14030CB40+E0↑p
                                        ; sub_14034E0E0+96↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014080AEDA SIZE 00000017 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 20h
                and     dword ptr [rax+18h], 0
                mov     r10, r9
                movsxd  rbx, ecx
                mov     rdi, rdx
                test    r8d, r8d
                jnz     short loc_14066315A
                call    sub_1402A9500
                mov     rcx, rax
                mov     rbp, rax
                call    sub_1402A9540
                mov     rsi, rax
                test    rax, rax
                jz      loc_14080AEE7
                mov     rax, [rax+8]
                mov     rdx, rbx
                mov     rcx, [rsi+10h]
                mov     r8, rdi
                call    sub_1404079D0
                mov     rdx, rsi
                mov     rcx, rbp
                mov     ebx, eax
                call    sub_1402A9600

loc_140663142:                          ; CODE XREF: sub_1406630E0+BF↓j
                                        ; sub_1406630E0+D8↓j ...
                mov     rbp, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14066315A:                          ; CODE XREF: sub_1406630E0+24↑j
                sub     r8d, 1
                jnz     loc_14080AEDA
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+464h], 10000h
                jz      short loc_1406631A1
                call    sub_1402A9C50
                cmp     [r9], eax
                jnz     short loc_1406631A1
                call    sub_1402A9500
                mov     rcx, rax
                mov     r8, rdi
                mov     rdx, rbx
                call    sub_140662DDC
                mov     ebx, eax
                jmp     short loc_140663142
; ---------------------------------------------------------------------------

loc_1406631A1:                          ; CODE XREF: sub_1406630E0+9E↑j
                                        ; sub_1406630E0+A8↑j
                mov     rcx, r10

loc_1406631A4:                          ; CODE XREF: sub_1406630E0+1A7E02↓j
                mov     r8, rdi
                lea     r9, [rsp+28h+arg_10]
                mov     rdx, rbx
                call    sub_1406908D4
                mov     ebx, eax
                test    eax, eax
                js      short loc_140663142
                mov     ebx, [rsp+28h+arg_10]
                jmp     short loc_140663142
sub_1406630E0   endp

; ---------------------------------------------------------------------------
byte_1406631C0  db 10h dup(0CCh)        ; DATA XREF: .rdata:0000000140061E38↑o
                                        ; .pdata:00000001401001A0↑o

; =============== S U B R O U T I N E =======================================


sub_1406631D0   proc near               ; CODE XREF: sub_140661DB0+748↑p
                                        ; sub_1406643E4+16A↓p ...

var_38          = byte ptr -38h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014080AEF2 SIZE 00000007 BYTES

                mov     rax, rsp
                push    r15
                sub     rsp, 60h

loc_1406631D9:                          ; DATA XREF: .rdata:0000000140061E64↑o
                                        ; .rdata:0000000140061E78↑o ...
                mov     [rax+8], rbx
                xorps   xmm0, xmm0
                mov     [rax+18h], rbp
                mov     rbx, r8
                mov     [rax-10h], rsi
                mov     rbp, rcx
                movups  xmmword ptr [rax-38h], xmm0
                mov     r15, gs:188h
                mov     rsi, r9
                mov     [rax-18h], rdi
                mov     rdi, rdx
                mov     [rax-20h], r12
                dec     word ptr [r15+1E4h]
                xor     r12d, r12d
                mov     [rax+10h], r12
                call    KeAreAllApcsDisabled
                test    al, al
                jnz     loc_14080AEF2

loc_140663225:                          ; CODE XREF: sub_1406631D0+1A7D24↓j
                mov     rax, cs:qword_140CF4338
                test    rax, rax
                jz      short loc_140663255
                mov     rax, [rax+18h]
                lea     r9, [rsp+68h+arg_8]
                lea     r8, [rsp+68h+var_38]
                mov     edx, 400h
                mov     rcx, rsi
                call    sub_1404079D0
                test    eax, eax
                js      short loc_140663255
                lea     rbp, [rsp+68h+var_38]

loc_140663255:                          ; CODE XREF: sub_1406631D0+5F↑j
                                        ; sub_1406631D0+7E↑j
                test    rdi, rdi
                jz      short loc_140663261
                mov     r12, [rdi+440h]

loc_140663261:                          ; CODE XREF: sub_1406631D0+88↑j
                mov     eax, dword ptr cs:xmmword_140CFC480
                test    al, 4
                jz      short loc_14066327A
                lea     r8, [rbx+8]
                mov     rdx, rdi
                mov     rcx, rbp
                call    sub_140663C1C

loc_14066327A:                          ; CODE XREF: sub_1406631D0+99↑j
                mov     eax, cs:dword_140D2E6A0
                test    al, 1
                jz      short loc_1406632CF
                or      dword ptr [rbx+8], 400h
                mov     edi, 40h ; '@'

loc_140663290:                          ; DATA XREF: .rdata:0000000140061E78↑o
                                        ; .rdata:0000000140061E88↑o ...
                mov     [rsp+68h+var_28], r14
                lea     r14, [rbx+8]
                mov     qword ptr [rbx], 38h ; '8'
                mov     [rbx+30h], rsi
                lea     rbx, unk_140CEC320
                nop     dword ptr [rax+rax+00h]

loc_1406632B0:                          ; CODE XREF: sub_1406631D0+F8↓j
                mov     rcx, rbx
                call    sub_1402A9540
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_140663315

loc_1406632C0:                          ; CODE XREF: sub_1406631D0+170↓j
                add     rbx, 8
                sub     rdi, 1
                jnz     short loc_1406632B0
                mov     r14, [rsp+68h+var_28]

loc_1406632CF:                          ; CODE XREF: sub_1406631D0+B2↑j
                                        ; DATA XREF: .pdata:00000001401001C4↑o ...
                mov     rcx, [rsp+68h+arg_8]
                mov     r12, [rsp+68h+var_20]
                mov     rdi, [rsp+68h+var_18]
                mov     rsi, [rsp+68h+var_10]
                mov     rbp, [rsp+68h+arg_10]
                mov     rbx, [rsp+68h+arg_0]
                test    rcx, rcx
                jz      short loc_140663305

loc_1406632F5:                          ; DATA XREF: .pdata:00000001401001D0↑o
                                        ; .pdata:00000001401001DC↑o
                mov     rax, cs:qword_140CF4338
                mov     rax, [rax+20h]
                call    sub_1404079D0

loc_140663305:                          ; CODE XREF: sub_1406631D0+123↑j
                mov     rcx, r15
                call    sub_14021E1F0
                add     rsp, 60h
                pop     r15
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140663315:                          ; CODE XREF: sub_1406631D0+EE↑j
                                        ; DATA XREF: .pdata:00000001401001DC↑o ...
                test    dword ptr [r14], 800h
                mov     rax, [rax+8]
                jnz     short loc_140663345

loc_140663322:                          ; CODE XREF: sub_1406631D0+17B↓j
                test    rax, rax
                jz      short loc_140663335
                mov     r8, r14
                mov     rdx, r12
                mov     rcx, rbp
                call    sub_1404079D0

loc_140663335:                          ; CODE XREF: sub_1406631D0+155↑j
                                        ; sub_1406631D0+179↓j
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402A9600
                jmp     loc_1406632C0
; ---------------------------------------------------------------------------

loc_140663345:                          ; CODE XREF: sub_1406631D0+150↑j
                test    byte ptr [rsi+10h], 1
                jz      short loc_140663335
                jmp     short loc_140663322
sub_1406631D0   endp

; ---------------------------------------------------------------------------
algn_14066334D:                         ; DATA XREF: .pdata:00000001401001E8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140663360   proc near               ; CODE XREF: sub_140664A4C+104↓p
                                        ; sub_14068AE3C+6CD↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014080AEFA SIZE 00000026 BYTES

                push    rbp
                push    r14
                push    r15
                sub     rsp, 20h
                cmp     qword ptr [rcx+5E0h], 0
                movzx   r14d, dl
                mov     r15, rcx
                jnz     loc_14080AEFA
                xor     bpl, bpl

loc_140663382:                          ; CODE XREF: sub_140663360+1A7B9D↓j
                mov     eax, cs:dword_140D2E6A0

loc_140663388:                          ; DATA XREF: .rdata:0000000140061F14↑o
                                        ; .rdata:0000000140061F24↑o ...
                mov     [rsp+38h+arg_0], rbx
                mov     [rsp+38h+arg_8], rsi
                mov     [rsp+38h+arg_10], rdi
                test    r14b, r14b
                jz      loc_14066349B
                test    r8b, r8b
                jnz     loc_140663433
                test    al, 8
                jz      short loc_1406633DA
                lea     rbx, unk_140CEC520
                mov     edi, 40h ; '@'
                nop     dword ptr [rax+00000000h]

loc_1406633C0:                          ; CODE XREF: sub_140663360+78↓j
                mov     rcx, rbx
                call    sub_1402A9540
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_1406633F4

loc_1406633D0:                          ; CODE XREF: sub_140663360+D1↓j
                add     rbx, 8
                sub     rdi, 1
                jnz     short loc_1406633C0

loc_1406633DA:                          ; CODE XREF: sub_140663360+4B↑j
                                        ; sub_140663360+D5↓j ...
                mov     rdi, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_8]
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
algn_1406633F3:                         ; DATA XREF: .pdata:0000000140100200↑o
                                        ; .pdata:000000014010020C↑o
                align 4

loc_1406633F4:                          ; CODE XREF: sub_140663360+6E↑j
                                        ; DATA XREF: .pdata:000000014010020C↑o ...
                mov     eax, [rax+10h]
                test    al, 1
                jnz     short loc_140663426
                test    bpl, bpl
                jnz     loc_14080AF13

loc_140663404:                          ; CODE XREF: sub_140663360+1A7BBB↓j
                mov     rcx, [r15+220h]
                movzx   r8d, r14b
                mov     rax, [rsi+8]
                mov     rdx, [r15+480h]
                mov     rcx, [rcx+440h]
                call    sub_1404079D0

loc_140663426:                          ; CODE XREF: sub_140663360+99↑j
                                        ; sub_140663360+1A7BB5↓j
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402A9600
                jmp     short loc_1406633D0
; ---------------------------------------------------------------------------

loc_140663433:                          ; CODE XREF: sub_140663360+43↑j
                test    al, 10h
                jz      short loc_1406633DA
                lea     rbx, unk_140CEC520
                mov     edi, 40h ; '@'

loc_140663443:                          ; CODE XREF: sub_140663360+FB↓j
                mov     rcx, rbx
                call    sub_1402A9540
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_140663462

loc_140663453:                          ; CODE XREF: sub_140663360+115↓j
                add     rbx, 8
                sub     rdi, 1
                jnz     short loc_140663443
                jmp     loc_1406633DA
; ---------------------------------------------------------------------------

loc_140663462:                          ; CODE XREF: sub_140663360+F1↑j
                mov     ecx, [rax+10h]
                test    cl, 1
                jnz     short loc_140663477

loc_14066346A:                          ; CODE XREF: sub_140663360+139↓j
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402A9600
                jmp     short loc_140663453
; ---------------------------------------------------------------------------

loc_140663477:                          ; CODE XREF: sub_140663360+108↑j
                mov     rcx, [r15+220h]
                movzx   r8d, r14b
                mov     rax, [rax+8]
                mov     rdx, [r15+480h]
                mov     rcx, [rcx+440h]
                call    sub_1404079D0
                jmp     short loc_14066346A
; ---------------------------------------------------------------------------

loc_14066349B:                          ; CODE XREF: sub_140663360+3A↑j
                test    al, 10h
                jz      short loc_140663506

loc_14066349F:                          ; CODE XREF: sub_140663360+1B4↓j
                lea     rbx, unk_140CEC520
                mov     edi, 40h ; '@'
                nop     dword ptr [rax+rax+00h]

loc_1406634B0:                          ; CODE XREF: sub_140663360+168↓j
                mov     rcx, rbx
                call    sub_1402A9540
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_1406634CF

loc_1406634C0:                          ; CODE XREF: sub_140663360+1A4↓j
                add     rbx, 8
                sub     rdi, 1
                jnz     short loc_1406634B0
                jmp     loc_1406633DA
; ---------------------------------------------------------------------------

loc_1406634CF:                          ; CODE XREF: sub_140663360+15E↑j
                test    bpl, bpl
                jnz     loc_14080AF02

loc_1406634D8:                          ; CODE XREF: sub_140663360+1A7BAE↓j
                mov     rcx, [r15+220h]
                xor     r8d, r8d
                mov     rax, [rax+8]
                mov     rdx, [r15+480h]
                mov     rcx, [rcx+440h]
                call    sub_1404079D0

loc_1406634F9:                          ; CODE XREF: sub_140663360+1A7BA8↓j
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402A9600
                jmp     short loc_1406634C0
; ---------------------------------------------------------------------------

loc_140663506:                          ; CODE XREF: sub_140663360+13D↑j
                mov     eax, cs:dword_140D2E6A0
                test    al, 8
                jz      loc_1406633DA
                jmp     short loc_14066349F
sub_140663360   endp

; ---------------------------------------------------------------------------
algn_140663516:                         ; DATA XREF: .pdata:0000000140100218↑o
                align 20h
; Exported entry 2286. RtlLookupAtomInAtomTable

; =============== S U B R O U T I N E =======================================


