IoCreateFileEx  proc near               ; CODE XREF: sub_1405EB770+5A0↑p
                                        ; sub_1405EB770+60B↑p ...

var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_68          = dword ptr -68h
var_60          = dword ptr -60h
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = dword ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = dword ptr  38h
arg_38          = dword ptr  40h
arg_40          = dword ptr  48h
arg_48          = qword ptr  50h
arg_50          = dword ptr  58h
arg_58          = dword ptr  60h
arg_60          = qword ptr  68h
arg_68          = dword ptr  70h
arg_70          = qword ptr  78h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 80h
                mov     esi, [rsp+98h+arg_68]
                mov     rbp, r9
                mov     rbx, [rsp+98h+arg_70]
                mov     r10d, esi
                shr     r10d, 0Ah
                mov     r14, r8
                and     r10d, 2
                mov     r15d, edx
                mov     r12, rcx
                test    rbx, rbx
                jz      short loc_1405EC801
                mov     rcx, [rbx+8]
                mov     edi, r10d
                or      edi, 1
                cmp     qword ptr [rbx+10h], 0
                cmovz   edi, r10d
                test    rcx, rcx
                jz      short loc_1405EC7E0
                call    sub_1405EC8C0
                test    eax, eax
                js      loc_1405EC88D

loc_1405EC7E0:                          ; CODE XREF: IoCreateFileEx+61↑j
                mov     ecx, edi
                or      ecx, 4
                cmp     qword ptr [rbx+18h], 0
                cmovz   ecx, edi
                cmp     word ptr [rbx], 28h ; '('
                mov     r10d, ecx
                jb      short loc_1405EC801
                cmp     qword ptr [rbx+20h], 1
                jnz     loc_1405EC8B0

loc_1405EC801:                          ; CODE XREF: IoCreateFileEx+49↑j
                                        ; IoCreateFileEx+84↑j ...
                mov     rax, [rsp+98h+arg_60]
                bts     esi, 8
                mov     [rsp+98h+var_20], rbx
                mov     r9, rbp
                mov     [rsp+98h+var_28], r10d
                mov     r8, r14
                mov     [rsp+98h+var_30], esi
                mov     edx, r15d
                mov     [rsp+98h+var_38], rax
                mov     rcx, r12
                mov     eax, [rsp+98h+arg_58]
                mov     [rsp+98h+var_40], eax
                mov     eax, [rsp+98h+arg_50]
                mov     [rsp+98h+var_48], eax
                mov     rax, [rsp+98h+arg_48]
                mov     [rsp+98h+var_50], rax
                mov     eax, [rsp+98h+arg_40]
                mov     [rsp+98h+var_58], eax
                mov     eax, [rsp+98h+arg_38]
                mov     [rsp+98h+var_60], eax
                mov     eax, [rsp+98h+arg_30]
                mov     [rsp+98h+var_68], eax
                mov     eax, [rsp+98h+arg_28]
                mov     [rsp+98h+var_70], eax
                mov     rax, [rsp+98h+arg_20]
                mov     [rsp+98h+var_78], rax
                call    sub_14063FB00

loc_1405EC88D:                          ; CODE XREF: IoCreateFileEx+6A↑j
                lea     r11, [rsp+98h+var_18]
                mov     rbx, [r11+20h]
                mov     rbp, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1405EC8B0:                          ; CODE XREF: IoCreateFileEx+8B↑j
                or      r10d, 40h
                jmp     loc_1405EC801
IoCreateFileEx  endp

; ---------------------------------------------------------------------------
algn_1405EC8B9:                         ; DATA XREF: .pdata:00000001400FC1F8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1405EC8C0   proc near               ; CODE XREF: IoQueryInformationByName+190↑p
                                        ; IoCreateFileEx+63↑p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 00000001407F5278 SIZE 0000001A BYTES

                sub     rsp, 38h
                mov     edx, [rcx+4]
                test    dl, 9
                jnz     short loc_1405EC8FE
                mov     r8b, 1
                or      edx, 1

loc_1405EC8D2:                          ; CODE XREF: sub_1405EC8C0+54↓j
                mov     [rcx+4], edx
                lea     rdx, [rcx+8]
                mov     rax, [rdx]
                cmp     rax, rdx
                jz      loc_1407F5278

loc_1405EC8E5:                          ; CODE XREF: sub_1405EC8C0+34↓j
                test    r8b, r8b
                jz      short loc_1405EC8EE
                or      dword ptr [rax+28h], 1

loc_1405EC8EE:                          ; CODE XREF: sub_1405EC8C0+28↑j
                mov     rax, [rax]
                cmp     rax, rdx
                jnz     short loc_1405EC8E5
                xor     eax, eax

loc_1405EC8F8:                          ; CODE XREF: sub_1405EC8C0+5B↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405EC8FE:                          ; CODE XREF: sub_1405EC8C0+A↑j
                mov     r9d, 3F0h
                mov     eax, edx
                and     eax, r9d
                xor     r8b, r8b
                cmp     eax, r9d
                jz      short loc_1405EC916
                add     edx, 10h
                jmp     short loc_1405EC8D2
; ---------------------------------------------------------------------------

loc_1405EC916:                          ; CODE XREF: sub_1405EC8C0+4F↑j
                mov     eax, 0C000042Bh
                jmp     short loc_1405EC8F8
sub_1405EC8C0   endp

; ---------------------------------------------------------------------------
byte_1405EC91D  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400466A0↑o
                                        ; .pdata:00000001400FC204↑o

; =============== S U B R O U T I N E =======================================


sub_1405EC924   proc near               ; CODE XREF: sub_1405EB770+62A↑p
                                        ; sub_1405EB770+EBF↑p ...

var_38          = xmmword ptr -38h
arg_0           = dword ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407F5292 SIZE 000000AA BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_0], ecx
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r13, r8
                mov     rsi, rdx
                xor     edi, edi
                mov     rbx, [rdx+28h]
                mov     [rsp+58h+arg_18], rbx
                xorps   xmm0, xmm0
                movups  [rsp+58h+var_38], xmm0
                mov     rax, gs:188h
                mov     r14b, [rax+232h]
                mov     [rsp+58h+arg_8], r14b
                lea     r15d, [rdi+2]
                test    [rdx+8], r15b
                jz      loc_1405ECAAE
                sub     ecx, r15d
                jz      loc_1405ECAE9
                sub     ecx, 1
                jz      loc_1407F52E7
                sub     ecx, r15d
                jz      loc_1407F52A8
                cmp     ecx, 1
                jnz     loc_1405ECAAE
                mov     eax, [rdx+4]
                test    al, 20h
                jz      short loc_1405EC9E4
                add     rdx, 0A8h
                lea     r8, [rsp+58h+var_38]
                mov     cl, r14b
                call    sub_1405ECB2C
                mov     edi, eax
                test    eax, eax
                js      loc_1407F529D
                lea     rdx, [rsi+0B8h]
                lea     r8, [rsp+58h+var_38+8]
                mov     cl, r14b
                call    sub_1405ECB2C
                mov     edi, eax
                test    eax, eax
                js      loc_1407F5292

loc_1405EC9DC:                          ; CODE XREF: sub_1405EC924+208974↓j
                                        ; sub_1405EC924+20897F↓j
                test    edi, edi
                js      loc_1407F5316

loc_1405EC9E4:                          ; CODE XREF: sub_1405EC924+7A↑j
                                        ; DATA XREF: .rdata:00000001400466CC↑o
;   __try { // __except at loc_1405ECA9C
                and     dword ptr [rbx+10h], 0
                test    byte ptr [r13+87Ah], 7
                setnbe  cl
                mov     [rbx+10h], cl
                mov     al, [r13+87Ah]
                and     al, 7
                cmp     al, 1
                setnz   al
                dec     al
                and     al, 10h
                or      al, cl
                mov     [rbx+10h], al
                mov     cl, [r13+466h]
                and     cl, r15b
                or      cl, al
                mov     [rbx+10h], cl
                mov     eax, cs:dword_140D2E7B4
                and     al, 1
                shl     al, 2
                or      al, cl
                mov     [rbx+10h], al
                mov     cl, [rsi+8]
                shr     cl, 2
                and     cl, 8
                or      cl, al
                mov     [rbx+10h], cl
                test    cl, 8
                jz      short loc_1405ECA53
                mov     rax, [rsi+130h]
                mov     [rbx+48h], rax
                mov     eax, [rsi+138h]
                mov     [rbx+50h], eax

loc_1405ECA53:                          ; CODE XREF: sub_1405EC924+119↑j
                mov     rax, qword ptr [rsp+58h+var_38]
                mov     [rbx+18h], rax
                mov     rax, qword ptr [rsp+58h+var_38+8]
                mov     [rbx+20h], rax
                mov     rax, [rsi+0D8h]
                mov     [rbx+28h], rax
                mov     eax, [rsi+0E0h]
                mov     [rbx+30h], eax
                mov     rax, [rsi+0D0h]
                mov     ecx, [rax+8]
                mov     [rbx+34h], ecx
                mov     rax, [r13+550h]
                mov     [rbx+38h], rax
                mov     eax, [rsi+0E4h]
                mov     [rbx+40h], eax
                jmp     short loc_1405ECAAE
;   } // starts at 1405EC9E4
; ---------------------------------------------------------------------------

loc_1405ECA9C:                          ; DATA XREF: .rdata:00000001400466CC↑o
;   __except(1) // owned by 1405EC9E4
                mov     edi, eax
                mov     r15d, 2
                mov     rbx, [rsp+58h+arg_18]
                mov     r14b, [rsp+58h+arg_8]

loc_1405ECAAE:                          ; CODE XREF: sub_1405EC924+4B↑j
                                        ; sub_1405EC924+6F↑j ...
                test    edi, edi
                js      loc_1407F5316

loc_1405ECAB6:                          ; DATA XREF: .rdata:00000001400466DC↑o
;   __try { // __except at loc_1405ECABF
                mov     eax, [rsp+58h+arg_0]
                mov     [rbx+8], eax
                jmp     short loc_1405ECACC
;   } // starts at 1405ECAB6
; ---------------------------------------------------------------------------

loc_1405ECABF:                          ; DATA XREF: .rdata:00000001400466DC↑o
;   __except(1) // owned by 1405ECAB6
                mov     edi, eax
                mov     r15d, 2
                mov     r14b, [rsp+58h+arg_8]

loc_1405ECACC:                          ; CODE XREF: sub_1405EC924+199↑j
                test    edi, edi
                js      loc_1407F5316
                xor     eax, eax

loc_1405ECAD6:                          ; CODE XREF: sub_1405EC924+208A13↓j
                mov     rbx, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405ECAE9:                          ; CODE XREF: sub_1405EC924+54↑j
                add     rdx, 0A8h
                lea     r8, [rsp+58h+var_38]
                mov     cl, r14b
                call    sub_1405ECB2C
                mov     edi, eax
                test    eax, eax
                js      loc_1407F530B

loc_1405ECB07:                          ; DATA XREF: .rdata:00000001400466EC↑o
;   __try { // __except at loc_1405ECB12
                mov     rax, qword ptr [rsp+58h+var_38]
                mov     [rbx+10h], rax
                jmp     short loc_1405ECAAE
;   } // starts at 1405ECB07
; ---------------------------------------------------------------------------

loc_1405ECB12:                          ; DATA XREF: .rdata:00000001400466EC↑o
;   __except(1) // owned by 1405ECB07
                mov     edi, eax
                mov     r15d, 2
                mov     rbx, [rsp+58h+arg_18]
                mov     r14b, [rsp+58h+arg_8]
                jmp     short loc_1405ECAAE
; } // starts at 1405EC924
sub_1405EC924   endp

; ---------------------------------------------------------------------------
byte_1405ECB26  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140046720↑o
                                        ; .pdata:00000001400FC210↑o

; =============== S U B R O U T I N E =======================================


sub_1405ECB2C   proc near               ; CODE XREF: sub_1405EC924+8B↑p
                                        ; sub_1405EC924+A9↑p ...

var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = dword ptr -18h
var_10          = byte ptr -10h

                sub     rsp, 48h
                mov     rax, gs:188h
                mov     r10, [rdx]
                mov     r11, [rax+0B8h]
                xor     eax, eax
                test    cl, cl
                jz      short loc_1405ECB74
                mov     [rsp+48h+var_10], al
                mov     r9, r8
                mov     [rsp+48h+var_18], 2
                mov     r8, r11
                mov     [rsp+48h+var_20], eax
                mov     rdx, r10
                mov     rcx, r11
                mov     [rsp+48h+var_28], eax
                call    ObDuplicateObject

loc_1405ECB6E:                          ; CODE XREF: sub_1405ECB2C+4E↓j
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1405ECB74:                          ; CODE XREF: sub_1405ECB2C+1B↑j
                mov     [r8], r10
                mov     [rdx], rax
                jmp     short loc_1405ECB6E
sub_1405ECB2C   endp

; ---------------------------------------------------------------------------
byte_1405ECB7C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400FC21C↑o

; =============== S U B R O U T I N E =======================================


sub_1405ECB84   proc near               ; CODE XREF: sub_1405EB770+528↑p
                                        ; DATA XREF: .rdata:0000000140046754↑o ...

var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = byte ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001407F533C SIZE 0000001C BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                movups  xmm0, cs:xmmword_140011030
                xor     ebp, ebp
                mov     rdi, rdx
                xorps   xmm1, xmm1
                mov     [rax+8], rbp
                movups  xmmword ptr [rcx], xmm1
                mov     r14, rcx
                mov     ebx, ebp
                movups  xmmword ptr [rcx+10h], xmm1
                mov     [rax+18h], rbx
                lea     rdx, [rsp+68h+arg_0]
                movdqu  xmmword ptr [rax-38h], xmm0
                lea     eax, [rbp+28h]
                mov     qword ptr [rcx+20h], 1
                mov     [rcx], ax
                xor     ecx, ecx
                call    FsRtlAllocateExtraCreateParameterList
                mov     esi, eax
                test    eax, eax
                js      loc_1405ECC67
                lea     rax, [rsp+68h+arg_10]
                xor     r9d, r9d
                mov     [rsp+68h+var_40], rax
                lea     r15d, [rbp+10h]
                mov     edx, r15d
                mov     [rsp+68h+var_48], 70437350h
                xor     r8d, r8d
                lea     rcx, [rsp+68h+var_38]
                call    FsRtlAllocateExtraCreateParameter
                mov     rbx, [rsp+68h+arg_10]
                mov     esi, eax
                test    eax, eax
                js      short loc_1405ECC67
                mov     [rbx], r15d
                mov     rdx, rbx
                mov     [rbx+8], rdi
                mov     rdi, [rsp+68h+arg_0]
                mov     rcx, rdi
                call    FsRtlInsertExtraCreateParameter
                mov     esi, eax
                test    eax, eax
                js      short loc_1405ECC41
                mov     [r14+8], rdi
                mov     ebx, ebp
                mov     edi, ebp

loc_1405ECC41:                          ; CODE XREF: sub_1405ECB84+B3↑j
                                        ; sub_1405ECB84+E8↓j
                test    rdi, rdi
                jnz     loc_1407F533C

loc_1405ECC4A:                          ; CODE XREF: sub_1405ECB84+2087C1↓j
                test    rbx, rbx
                jnz     loc_1407F534A

loc_1405ECC53:                          ; CODE XREF: sub_1405ECB84+2087CF↓j
                mov     rbx, [rsp+68h+arg_8]
                mov     eax, esi
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405ECC67:                          ; CODE XREF: sub_1405ECB84+58↑j
                                        ; sub_1405ECB84+96↑j
                mov     rdi, [rsp+68h+arg_0]
                jmp     short loc_1405ECC41
sub_1405ECB84   endp

; ---------------------------------------------------------------------------
algn_1405ECC6E:                         ; DATA XREF: .rdata:0000000140046754↑o
                                        ; .pdata:00000001400FC228↑o
                align 20h
; Exported entry 467. FsRtlInsertExtraCreateParameter

; =============== S U B R O U T I N E =======================================


