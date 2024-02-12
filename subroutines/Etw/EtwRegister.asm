EtwRegister     proc near               ; CODE XREF: sub_140377CF4+380↑p
                                        ; sub_14039B3F4+18↑p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                mov     rbx, r9
                mov     rdi, r8
                mov     rsi, rdx
                mov     rbp, rcx
                call    sub_1402B95B0
                mov     [rsp+48h+var_18], rbx
                mov     r9, rsi
                mov     r8d, 3
                mov     rdx, rbp
                mov     rcx, [rax+360h]
                mov     rax, [rsp+48h]
                mov     [rsp+48h+var_20], rax
                mov     [rsp+48h+var_28], rdi
                call    sub_140761630
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
EtwRegister     endp

algn_140761627:                         ; DATA XREF: .pdata:0000000140109F38↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=3Fh

sub_140761630   proc near               ; CODE XREF: EtwRegisterClassicProvider+35↑p
                                        ; EtwRegister+4C↑p
                                        ; DATA XREF: ...

var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = word ptr -60h
var_5E          = byte ptr -5Eh
var_5D          = byte ptr -5Dh
var_5C          = dword ptr -5Ch
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
arg_10          = qword ptr  20h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h

; FUNCTION CHUNK AT 0000000140842D86 SIZE 00000139 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-0Fh]
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+3Fh+var_40], rax
                mov     r12, [rbp+3Fh+arg_30]
                xorps   xmm0, xmm0
                and     [rbp+3Fh+var_90], 0
                mov     r14, r9
                mov     r13, [rbp+3Fh+arg_20]
                mov     edi, r8d
                mov     r15, rdx
                mov     [rbp+3Fh+var_88], r13
                and     qword ptr [r12], 0
                mov     rsi, rcx
                mov     rax, [rdx]
                sub     rax, qword ptr cs:xmmword_14000A7D8
                movups  [rbp+3Fh+var_80], xmm0
                movups  [rbp+3Fh+var_70], xmm0
                jnz     short loc_14076169E
                mov     rax, [rdx+8]
                sub     rax, qword ptr cs:xmmword_14000A7D8+8

loc_14076169E:                          ; CODE XREF: sub_140761630+61↑j
                test    rax, rax
                jz      loc_140842D86
                test    r14, r14
                jz      loc_14076190A

loc_1407616B0:                          ; CODE XREF: sub_140761630+2DD↓j
                cmp     edi, 3
                jnz     loc_140761839

loc_1407616B9:                          ; CODE XREF: sub_140761630+215↓j
                xor     r8d, r8d
                call    sub_14060C690
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_1407616E3
                xor     r8d, r8d
                mov     rdx, r15
                mov     rcx, rsi
                call    sub_1406B1774
                mov     rbx, rax
                test    rax, rax
                jz      loc_140842D9A

loc_1407616E3:                          ; CODE XREF: sub_140761630+97↑j
                cmp     qword ptr [rbx+190h], 0
                jnz     loc_140842DA5

loc_1407616F1:                          ; CODE XREF: sub_140761630+E17B1↓j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rsi, [rbx+198h]
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockExclusiveEx
                mov     rax, gs:188h
                mov     r9, r13
                mov     [rbx+1A0h], rax
                mov     r8, r14
                lea     rax, [rbp+3Fh+var_90]
                mov     edx, edi
                mov     rcx, rbx
                mov     [rsp+0D0h+var_B0], rax
                call    sub_140761920
                mov     r13d, eax
                test    eax, eax
                js      loc_140842E90
                mov     rdi, [rbp+3Fh+var_90]
                mov     rcx, [rbp+3Fh+arg_28]
                mov     [rdi+30h], rcx
                mov     [r12], rdi
                xor     r12d, r12d
                cmp     [rbx+60h], r12d
                jnz     loc_140761814

loc_140761763:                          ; CODE XREF: sub_140761630+204↓j
                mov     rcx, [rbx+190h]
                test    rcx, rcx
                jnz     loc_140842DE6

loc_140761773:                          ; CODE XREF: sub_140761630+E17BA↓j
                                        ; sub_140761630+E17DE↓j
                lea     rdx, [rbp+3Fh+var_80]
                mov     rcx, rdi
                call    sub_140607870
                mov     rcx, rdi
                call    sub_14060BC30
                test    r14, r14
                jz      short loc_1407617A0
                test    byte ptr [rdi+62h], 8
                jnz     loc_140761850
                cmp     dword ptr [rbp+3Fh+var_80], r12d
                jnz     loc_140761897

loc_1407617A0:                          ; CODE XREF: sub_140761630+15A↑j
                                        ; sub_140761630+224↓j ...
                mov     rcx, cs:qword_140C19990
                lea     rdx, qword_14000A7C8
                call    EtwEventEnabled
                test    al, al
                jnz     loc_140842E6E

loc_1407617BB:                          ; CODE XREF: sub_140761630+E185B↓j
                                        ; sub_140761630+E1863↓j
                xor     edx, edx
                mov     [rbx+1A0h], r12
                mov     rcx, rsi
                call    ExReleasePushLockEx
                call    KeLeaveCriticalRegion
                mov     rax, [rbx+190h]
                test    rax, rax
                jnz     loc_140842E98

loc_1407617E1:                          ; CODE XREF: sub_140761630+E188A↓j
                mov     rcx, rbx
                call    sub_14060C59C

loc_1407617E9:                          ; CODE XREF: sub_140761630+E1770↓j
                mov     eax, r13d

loc_1407617EC:                          ; CODE XREF: sub_140761630+E175B↓j
                                        ; sub_140761630+E1765↓j
                mov     rcx, [rbp+3Fh+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0D0h+arg_10]
                add     rsp, 0A0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140761814:                          ; CODE XREF: sub_140761630+12D↑j
                mov     dl, [rdi+62h]
                lea     rcx, [rdi+64h]
                shr     dl, 3
                xor     r9d, r9d
                mov     [rsp+0D0h+var_B0], rcx
                and     dl, 1
                xor     r8d, r8d
                mov     rcx, rbx
                call    sub_140607718
                jmp     loc_140761763
; ---------------------------------------------------------------------------

loc_140761839:                          ; CODE XREF: sub_140761630+83↑j
                cmp     edi, 2
                jnz     loc_140842D90
                test    r14, r14
                jnz     loc_1407616B9
                jmp     loc_140842D90
; ---------------------------------------------------------------------------

loc_140761850:                          ; CODE XREF: sub_140761630+160↑j
                test    byte ptr [rbx+5Bh], 1
                jz      loc_1407617A0
                movzx   eax, word ptr [rbx+58h]
                lea     rcx, [rbx+28h]
                mov     r9, [rbp+3Fh+var_88]
                lea     r8, [rbp+3Fh+var_60]
                mov     [rbp+3Fh+var_60], ax
                mov     dl, 1
                mov     al, [rbx+5Ah]
                mov     [rbp+3Fh+var_5E], al
                mov     eax, [rbx+50h]
                mov     [rbp+3Fh+var_5C], eax
                mov     eax, [rbx+54h]
                mov     [rbp+3Fh+var_58], eax
                mov     rax, r14
                mov     [rbp+3Fh+var_5D], r12b
                mov     [rbp+3Fh+var_54], r12d
                call    sub_1404079D0
                jmp     loc_1407617A0
; ---------------------------------------------------------------------------

loc_140761897:                          ; CODE XREF: sub_140761630+16A↑j
                xorps   xmm0, xmm0
                mov     [rbp+3Fh+var_90], r12
                movups  [rbp+3Fh+var_50], xmm0
                mov     dl, [rdi+64h]
                mov     rcx, rbx
                mov     rsi, r12
                call    sub_14060C2D8
                mov     r12d, eax
                test    eax, eax
                jnz     loc_140842E13

loc_1407618BB:                          ; CODE XREF: sub_140761630+E17FC↓j
                                        ; sub_140761630+E1829↓j
                mov     rax, [rbp+3Fh+var_88]
                lea     rcx, xmmword_14000A340
                mov     r9, qword ptr [rbp+3Fh+var_70]
                mov     edx, 1
                mov     r8b, byte ptr [rbp+3Fh+var_80+4]
                mov     [rsp+0D0h+var_A0], rax
                mov     rax, [rbp+3Fh+var_90]
                mov     [rsp+0D0h+var_A8], rax
                mov     rax, qword ptr [rbp+3Fh+var_70+8]
                mov     [rsp+0D0h+var_B0], rax
                mov     rax, r14
                call    sub_1404079D0
                xor     r12d, r12d
                test    rsi, rsi
                jnz     loc_140842E5E

loc_1407618FE:                          ; CODE XREF: sub_140761630+E1839↓j
                lea     rsi, [rbx+198h]
                jmp     loc_1407617A0
; ---------------------------------------------------------------------------

loc_14076190A:                          ; CODE XREF: sub_140761630+7A↑j
                test    r13, r13
                jz      loc_1407616B0
                jmp     loc_140842D90
; } // starts at 140761630
sub_140761630   endp

; ---------------------------------------------------------------------------
algn_140761918:                         ; DATA XREF: .rdata:00000001400927AC↑o
                                        ; .pdata:0000000140109F44↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140761920   proc near               ; CODE XREF: sub_140761630+106↑p
                                        ; DATA XREF: .rdata:00000001400927D8↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140842EC0 SIZE 00000011 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rsi, r8
                mov     r15d, edx
                mov     rbp, rcx
                xor     edi, edi
                mov     ecx, 200h
                mov     r8d, 52777445h
                mov     r14, r9
                lea     edx, [rdi+70h]
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_140842EC7
                xor     edx, edx
                lea     r8d, [rdi+70h]
                mov     rcx, rax
                call    memset
                lea     eax, [rdi+1]
                mov     rcx, rbp
                mov     [rbx+62h], ax
                call    sub_14060C784
                mov     [rbx+20h], rbp
                cmp     r15d, 2
                jz      short loc_1407619FC

loc_14076198C:                          ; CODE XREF: sub_140761920+E1↓j
                test    rsi, rsi
                jz      short loc_1407619A5
                mov     rcx, rsi
                mov     [rbx+58h], rsi
                mov     [rbx+50h], r14
                call    sub_140243AF0
                test    eax, eax
                jnz     short loc_140761A03

loc_1407619A5:                          ; CODE XREF: sub_140761920+6F↑j
                                        ; sub_140761920+100↓j
                lea     rax, [rbp+38h]
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     FatalListEntryError_105
                mov     [rbx+8], rax
                mov     [rbx], rcx
                mov     [rcx+8], rbx
                mov     [rax], rbx
                lea     rax, [rbx+10h]
                mov     [rax+8], rax
                mov     [rax], rax
                mov     eax, 80h
                or      [rbx+62h], ax
                mov     rax, [rsp+38h+arg_20]
                mov     [rax], rbx

loc_1407619E0:                          ; CODE XREF: sub_140761920+E15AC↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, edi
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1407619FC:                          ; CODE XREF: sub_140761920+6A↑j
                or      word ptr [rbx+62h], 8
                jmp     short loc_14076198C
; ---------------------------------------------------------------------------

loc_140761A03:                          ; CODE XREF: sub_140761920+83↑j
                or      word ptr [rbx+62h], 10h
                mov     rcx, gs:188h
                mov     rcx, [rcx+0B8h]
                call    sub_140245840
                mov     [rbx+38h], eax
                jmp     short loc_1407619A5
sub_140761920   endp

; ---------------------------------------------------------------------------
algn_140761A22:                         ; DATA XREF: .rdata:00000001400927D8↑o
                                        ; .pdata:0000000140109F50↑o
                align 10h
; Exported entry 756. IoCheckFunctionAccess

; =============== S U B R O U T I N E =======================================


