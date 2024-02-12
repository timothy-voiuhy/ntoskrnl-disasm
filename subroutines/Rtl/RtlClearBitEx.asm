RtlClearBitEx   proc near               ; DATA XREF: .pdata:00000001400D7E8C↑o
                mov     rax, [rcx+8]
                btr     [rax], rdx
                retn
RtlClearBitEx   endp

; ---------------------------------------------------------------------------
                align 2
algn_14034DA8A:                         ; DATA XREF: .pdata:00000001400D7E8C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14034DA90   proc near               ; CODE XREF: sub_140231440+99E↑p
                                        ; DATA XREF: .pdata:00000001400D7E98↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     edi, [rcx+28h]
                mov     eax, 0FFFFEh
                mov     rbp, rcx
                cmp     edi, eax
                jz      short loc_14034DB12
                lea     ebx, [rdi+rdi]
                cmp     ebx, edi
                jbe     short loc_14034DB12
                cmp     ebx, eax
                ja      short loc_14034DB12
                cmp     ebx, edx
                mov     ecx, 40h ; '@'
                mov     r8d, 6C466D4Dh
                cmova   ebx, edx
                lea     rdx, ds:30h[rbx*8]
                call    sub_140268720
                mov     rsi, rax
                test    rax, rax
                jz      short loc_14034DB12
                lea     r8, ds:30h[rdi*8]
                mov     rdx, rbp
                mov     rcx, rax
                call    memmove
                mov     rax, rsi
                mov     [rsi+2Ch], ebx

loc_14034DAFC:                          ; CODE XREF: sub_14034DA90+84↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14034DB12:                          ; CODE XREF: sub_14034DA90+21↑j
                                        ; sub_14034DA90+28↑j ...
                xor     eax, eax
                jmp     short loc_14034DAFC
sub_14034DA90   endp

; ---------------------------------------------------------------------------
byte_14034DB16  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400D7E98↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_14034DB1C   proc near               ; CODE XREF: sub_140390574+B5↓p
                                        ; sub_140393F00+102↓p ...

var_A0          = qword ptr -0A0h
var_90          = byte ptr -90h
var_8F          = byte ptr -8Fh
var_8E          = word ptr -8Eh
var_8C          = dword ptr -8Ch
var_88          = word ptr -88h
var_86          = word ptr -86h
var_84          = word ptr -84h
var_82          = word ptr -82h
var_80          = word ptr -80h
var_7E          = word ptr -7Eh
var_7C          = word ptr -7Ch
var_7A          = word ptr -7Ah
var_78          = dword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = byte ptr -20h

; FUNCTION CHUNK AT 00000001404828D2 SIZE 0000031B BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_28], rax
                movzx   r15d, cl
                xor     bl, bl
                mov     r14d, 0Fh
                mov     [rbp+57h+var_8F], bl
                xor     ecx, ecx
                mov     [rbp+57h+var_8C], r8d
                mov     r12b, r14b
                mov     [rbp+57h+var_8E], dx
                mov     rdi, r9
                call    sub_1402AA098
                test    al, al
                jnz     short loc_14034DBA8
                mov     eax, 0C000009Dh

loc_14034DB7A:                          ; CODE XREF: sub_14034DB1C+130↓j
                                        ; sub_14034DB1C+1F6↓j ...
                mov     rcx, [rbp+57h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0C0h+var_20]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rdi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14034DBA8:                          ; CODE XREF: sub_14034DB1C+57↑j
                mov     [r9], r15b
                mov     [r9+2], dx
                mov     rax, gs:188h
                mov     rax, [rax+480h]
                mov     [rbp+57h+var_70], rax
                cmp     r15b, 2
                ja      loc_1404828D2
                call    sub_14024B150
                or      r10, 0FFFFFFFFFFFFFFFFh
                xor     r8d, r8d
                mov     esi, 1
                test    al, al
                jz      loc_140482987

loc_14034DBE7:                          ; CODE XREF: sub_14034DB1C+134E72↓j
                                        ; sub_14034DB1C+134E88↓j ...
                mov     r14, gs:188h
                mov     r13, cr8
                mov     eax, [rbp+57h+var_8C]
                cmp     r15b, sil
                jz      loc_1404829F1
                test    eax, eax
                jnz     loc_1404829FC
                cmp     r13b, 2
                jnb     loc_14034DD17
                mov     eax, [r14+31Ch]
                test    eax, eax
                jnz     loc_1404829F9
                mov     [rdi+4], r8d
                cmp     cs:byte_140CFC408, r8b
                jz      short loc_14034DC5A
                mov     [rsp+0C0h+var_A0], r8
                lea     rcx, byte_140C47280
                xor     r8d, r8d
                xor     r9d, r9d
                xor     edx, edx
                call    KeWaitForSingleObject
                xor     r8d, r8d
                test    eax, eax
                js      loc_14034DB7A
                mov     [rbp+57h+var_8F], sil
                or      r10, 0FFFFFFFFFFFFFFFFh

loc_14034DC5A:                          ; CODE XREF: sub_14034DB1C+110↑j
                                        ; sub_14034DB1C+202↓j ...
                cmp     [r14+31Ch], r8d
                movzx   ebx, bl
                cmovz   ebx, esi

loc_14034DC67:                          ; CODE XREF: sub_14034DB1C+134ED8↓j
                cmp     r13b, sil
                jz      loc_140482A04
                test    r13b, r13b
                movzx   eax, bl
                mov     ecx, r8d
                cmovz   ecx, eax
                mov     [rbp+57h+var_78], ecx
                test    cl, cl
                jz      short loc_14034DC8B

loc_14034DC83:                          ; CODE XREF: sub_14034DB1C+134EEC↓j
                add     [r14+1E4h], r10w

loc_14034DC8B:                          ; CODE XREF: sub_14034DB1C+165↑j
                mov     r13d, [rbp+57h+var_8C]

loc_14034DC8F:                          ; CODE XREF: sub_14034DB1C+258↓j
                mov     eax, dword ptr cs:xmmword_140CFC490+4
                movzx   ebx, r15w
                test    al, 8
                jnz     loc_140482A0D
                mov     [rbp+57h+var_90], r8b

loc_14034DCA5:                          ; CODE XREF: sub_14034DB1C+134F31↓j
                mov     r8d, dword ptr [rbp+57h+var_70]
                mov     rdx, rdi
                xor     ecx, ecx
                call    sub_1403F9A20
                xor     r8d, r8d
                cmp     [rbp+57h+var_90], r8b
                jnz     loc_140482A52

loc_14034DCC0:                          ; CODE XREF: sub_14034DB1C+134F74↓j
                mov     al, [rdi+1]
                test    al, al
                js      loc_140482A95

loc_14034DCCB:                          ; CODE XREF: sub_14034DB1C+134F81↓j
                cmp     al, 6
                jz      loc_140482B41
                cmp     al, sil
                jnz     short loc_14034DD23

loc_14034DCD8:                          ; CODE XREF: sub_14034DB1C+135067↓j
                cmp     [rbp+57h+var_8F], r8b
                jz      short loc_14034DCF7
                mov     dword ptr [rsp+0C0h+var_A0], r8d
                lea     rcx, byte_140C47280
                mov     r8d, esi
                xor     edx, edx
                call    sub_1402CBA10
                xor     r8d, r8d

loc_14034DCF7:                          ; CODE XREF: sub_14034DB1C+1C0↑j
                cmp     byte ptr [rbp+57h+var_78], r8b
                jz      short loc_14034DD05
                mov     rcx, r14
                call    sub_14021E1F0

loc_14034DD05:                          ; CODE XREF: sub_14034DB1C+1DF↑j
                cmp     r12b, 0Fh
                jnz     loc_140482B88

loc_14034DD0F:                          ; CODE XREF: sub_14034DB1C+1350CC↓j
                mov     eax, [rdi+8]
                jmp     loc_14034DB7A
; ---------------------------------------------------------------------------

loc_14034DD17:                          ; CODE XREF: sub_14034DB1C+F0↑j
                mov     [rdi+4], r8d
                mov     [rbp+57h+var_8C], esi
                jmp     loc_14034DC5A
; ---------------------------------------------------------------------------

loc_14034DD23:                          ; CODE XREF: sub_14034DB1C+1BA↑j
                cmp     r15b, sil
                jz      loc_140482AA2
                test    r13d, r13d
                jnz     short loc_14034DD3B
                mov     eax, [rdi+4]
                mov     [r14+31Ch], eax

loc_14034DD3B:                          ; CODE XREF: sub_14034DB1C+213↑j
                                        ; sub_14034DB1C+134F98↓j
                movzx   edx, byte ptr [rdi+1]
                mov     ecx, edx
                test    edx, edx
                jz      short loc_14034DD79
                sub     ecx, 2
                jz      loc_140482AB9
                sub     ecx, esi
                jz      loc_140482ACF
                cmp     ecx, 2
                jz      short loc_14034DD79

loc_14034DD5B:                          ; CODE XREF: sub_14034DB1C+134FAE↓j
                                        ; sub_14034DB1C+134FC7↓j ...
                test    r13d, r13d
                jnz     short loc_14034DD6C
                cmp     r15b, sil
                jz      short loc_14034DD6C
                mov     [r14+31Ch], r8d

loc_14034DD6C:                          ; CODE XREF: sub_14034DB1C+242↑j
                                        ; sub_14034DB1C+247↑j
                mov     [rdi], r8b
                mov     [rdi+2], r8w
                jmp     loc_14034DC8F
; ---------------------------------------------------------------------------

loc_14034DD79:                          ; CODE XREF: sub_14034DB1C+227↑j
                                        ; sub_14034DB1C+23D↑j
                mov     rcx, rdi
                call    sub_140582FB4
                nop
                jmp     loc_140482B39
; } // starts at 14034DB1C
sub_14034DB1C   endp

; ---------------------------------------------------------------------------
algn_14034DD87:                         ; DATA XREF: .rdata:0000000140082E64↑o
                                        ; .pdata:00000001400D7EA4↑o
                align 10h
; Exported entry 2022. RtlCompareAltitudes

; =============== S U B R O U T I N E =======================================


