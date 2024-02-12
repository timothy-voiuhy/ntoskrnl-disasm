KeCancelTimer   proc near               ; CODE XREF: sub_14020C310+1AA↑p
                                        ; sub_1402B4C98+7D↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404539D4 SIZE 0000009F BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     r10, rcx
                mov     rbx, cr8
                mov     eax, 2
                mov     cr8, rax
                lea     rsi, [rax-3]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404539D4

loc_1402BE801:                          ; CODE XREF: KeCancelTimer+195206↓j
                                        ; KeCancelTimer+19520F↓j ...
                mov     dl, 1
                mov     rcx, r10
                call    sub_140242A30
                movzx   edi, al
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140453A13

loc_1402BE81C:                          ; CODE XREF: KeCancelTimer+195245↓j
                                        ; KeCancelTimer+195251↓j ...
                movzx   eax, bl
                mov     cr8, rax
                mov     rbx, [rsp+28h+arg_0]
                movzx   eax, dil
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
KeCancelTimer   endp

algn_1402BE838:                         ; DATA XREF: .rdata:0000000140067E34↑o
                                        ; .pdata:00000001400D122C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402BE840   proc near               ; CODE XREF: sub_1402BEBBC+172↓p
                                        ; DATA XREF: .pdata:00000001400D1238↑o
                sub     rsp, 28h
                mov     r10, rcx
                mov     r9, rdx
                mov     edx, [r8+2D0h]
                mov     rcx, r8
                call    sub_1402C4FC0
                test    al, al
                jnz     short loc_1402BE863

loc_1402BE85D:                          ; CODE XREF: sub_1402BE840+41↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402BE863:                          ; CODE XREF: sub_1402BE840+1B↑j
                movzx   edx, word ptr [r9+92h]
                xor     r8d, r8d
                mov     rax, [r10+10h]
                mov     rcx, [rax+rdx*8]
                xor     edx, edx
                add     rcx, 10h
                call    KeSetEvent
                jmp     short loc_1402BE85D
sub_1402BE840   endp

; ---------------------------------------------------------------------------
algn_1402BE883:                         ; DATA XREF: .pdata:00000001400D1238↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402BE890   proc near               ; CODE XREF: sub_140240E30+BA4↑p
                                        ; sub_1402AEF60+541↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 0000000140453A74 SIZE 0000001B BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], r9d
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14, [rcx+2D08h]
                mov     r12d, r8d
                mov     qword ptr [rcx+2D08h], 0
                mov     r13d, edx
                mov     r15, rcx

loc_1402BE8CC:                          ; CODE XREF: sub_1402BE890+CE↓j
                movzx   eax, byte ptr [r14+173h]
                lea     rsi, [r14-0D8h]
                mov     rbx, [rsi+0D0h]
                mov     r14, [r14]
                lea     rdi, [rax+rax*2]
                shl     rdi, 4
                add     rdi, rbx

loc_1402BE8F0:                          ; CODE XREF: sub_1402BE890+A0↓j
                movzx   eax, byte ptr [rbx+11h]
                cmp     al, 5
                jnb     short loc_1402BE929
                mov     rbp, [rbx+20h]
                mov     rcx, rbp
                call    sub_1402AF4F0
                cmp     byte ptr [rbx+11h], 4
                jnz     short loc_1402BE921
                mov     rax, [rbx]
                cmp     [rax+8], rbx
                jz      short loc_1402BE982

loc_1402BE913:                          ; CODE XREF: sub_1402BE890+F9↓j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1402BE91A:                          ; CODE XREF: sub_1402BE890+FB↓j
                mov     [rcx], rax
                mov     [rax+8], rcx

loc_1402BE921:                          ; CODE XREF: sub_1402BE890+78↑j
                lock and dword ptr [rbp+0], 0FFFFFF7Fh

loc_1402BE929:                          ; CODE XREF: sub_1402BE890+66↑j
                add     rbx, 30h ; '0'
                cmp     rbx, rdi
                jnz     short loc_1402BE8F0
                mov     [rsi+236h], r13b
                mov     [rsi+237h], r12b
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jnz     loc_140453A74

loc_1402BE950:                          ; CODE XREF: sub_1402BE890+1951FA↓j
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_1402C36E0
                test    r14, r14
                jnz     loc_1402BE8CC
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402BE982:                          ; CODE XREF: sub_1402BE890+81↑j
                mov     rcx, [rbx+8]
                cmp     [rcx], rbx
                jnz     short loc_1402BE913
                jmp     short loc_1402BE91A
sub_1402BE890   endp

; ---------------------------------------------------------------------------
algn_1402BE98D:                         ; DATA XREF: .rdata:0000000140067E70↑o
                                        ; .pdata:00000001400D1244↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402BE9A0   proc near               ; CODE XREF: sub_1402C1B50+2CA↓p
                                        ; sub_1403FF150+10D↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140453A90 SIZE 00000031 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     r8, cs:qword_140D248A0
                xor     esi, esi
                mov     r11d, edx
                mov     rdi, rcx
                mov     ebx, esi
                test    r8, r8
                jz      loc_1402BEA6A
                mov     r9d, [r8+1080h]
                bsf     ecx, r9d
                jz      short loc_1402BEA1F

loc_1402BE9D6:                          ; CODE XREF: sub_1402BE9A0+7D↓j
                lea     eax, [r9-1]
                mov     r10d, ecx
                and     r9d, eax
                mov     eax, ecx
                shl     rax, 5
                lea     rcx, [r8+10A4h]
                add     rcx, rax
                jz      short loc_1402BEA19
                mov     rax, r11
                shr     rax, 1Dh
                mov     edx, [rcx+rax*4]
                and     edx, r11d
                test    edx, 1FFFFFFFh
                jz      short loc_1402BEA19
                movzx   ecx, byte ptr [r8+r10*2+1071h]
                mov     eax, 1
                shl     eax, cl
                or      ebx, eax

loc_1402BEA19:                          ; CODE XREF: sub_1402BE9A0+50↑j
                                        ; sub_1402BE9A0+65↑j
                bsf     ecx, r9d
                jnz     short loc_1402BE9D6

loc_1402BEA1F:                          ; CODE XREF: sub_1402BE9A0+34↑j
                                        ; sub_1402BE9A0+CF↓j
                test    bl, 2
                jnz     loc_140453A90
                mov     rax, rsi

loc_1402BEA2B:                          ; CODE XREF: sub_1402BE9A0+1950F8↓j
                mov     [rdi], rax
                test    bl, 4
                jnz     short loc_1402BEA71
                mov     rax, rsi

loc_1402BEA36:                          ; CODE XREF: sub_1402BE9A0+D6↓j
                mov     [rdi+8], rax
                test    bl, 8
                jz      short loc_1402BEA78
                rdtsc
                shl     rdx, 20h
                or      rax, rdx
                mov     [rdi+10h], rax

loc_1402BEA4C:                          ; CODE XREF: sub_1402BE9A0+DC↓j
                test    bl, 10h
                jnz     loc_140453A9D
                mov     [rdi+18h], rsi

loc_1402BEA59:                          ; CODE XREF: sub_1402BE9A0+19511C↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402BEA6A:                          ; CODE XREF: sub_1402BE9A0+23↑j
                mov     ebx, 1Eh
                jmp     short loc_1402BEA1F
; ---------------------------------------------------------------------------

loc_1402BEA71:                          ; CODE XREF: sub_1402BE9A0+91↑j
                call    sub_1402D2E80
                jmp     short loc_1402BEA36
; ---------------------------------------------------------------------------

loc_1402BEA78:                          ; CODE XREF: sub_1402BE9A0+9D↑j
                mov     [rdi+10h], rsi
                jmp     short loc_1402BEA4C
sub_1402BE9A0   endp

; ---------------------------------------------------------------------------
byte_1402BEA7E  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140067E94↑o
                                        ; .pdata:00000001400D1250↑o

; =============== S U B R O U T I N E =======================================


sub_1402BEA84   proc near               ; CODE XREF: sub_1402C1B50+2FE↓p
                                        ; sub_1402AEF60+19F24F↓p ...

var_58          = word ptr -58h
var_50          = dword ptr -50h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = byte ptr -18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_20], rax
                mov     rax, cs:qword_140CFB008
                movzx   r14d, cx
                mov     [r11-30h], r8
                mov     [r11-28h], r9d
                and     [rsp+78h+var_24], 0
                mov     ebx, [rax+1080h]
                bsf     r8d, ebx
                mov     ebp, edx
                jz      loc_1402BEB5D
                mov     rdi, [rsp+78h+arg_28]
                mov     esi, [rsp+78h+arg_20]

loc_1402BEADF:                          ; CODE XREF: sub_1402BEA84+D7↓j
                mov     rdx, cs:qword_140CFB008
                lea     eax, [rbx-1]
                and     ebx, eax
                mov     rax, r8
                shl     rax, 5
                lea     rcx, [rdx+10A4h]
                add     rcx, rax
                jz      short loc_1402BEB57
                mov     rax, rbp
                shr     rax, 1Dh
                mov     ecx, [rcx+rax*4]
                and     ecx, ebp
                test    ecx, 1FFFFFFFh
                jz      short loc_1402BEB57
                movzx   eax, byte ptr [rdx+r8*2+1071h]
                mov     r9d, 2
                and     [rsp+78h+var_34], 0
                dec     rax
                mov     [rsp+78h+var_38], 8
                mov     [rsp+78h+var_50], esi
                mov     [rsp+78h+var_58], r14w
                lea     rcx, [rdi+rax*8]
                mov     [rsp+78h+var_40], rcx
                lea     rcx, [rsp+78h+var_40]
                movzx   r8d, byte ptr [rdx+r8*2+1070h]
                call    sub_14024AA80

loc_1402BEB57:                          ; CODE XREF: sub_1402BEA84+78↑j
                                        ; sub_1402BEA84+8C↑j
                bsf     r8d, ebx
                jnz     short loc_1402BEADF

loc_1402BEB5D:                          ; CODE XREF: sub_1402BEA84+46↑j
                mov     rcx, [rsp+78h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+78h+var_18]
                mov     rbx, [r11+28h]
                mov     rbp, [r11+30h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1402BEA84
sub_1402BEA84   endp

byte_1402BEB80  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400D125C↑o
; Exported entry 345. ExTryQueueWorkItem

; =============== S U B R O U T I N E =======================================


