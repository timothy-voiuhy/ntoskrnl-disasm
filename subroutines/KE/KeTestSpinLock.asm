KeTestSpinLock  proc near               ; CODE XREF: sub_1403DB980+21↓p
                                        ; DATA XREF: .pdata:00000001400D6110↑o
                mov     rax, [rcx]
                test    rax, rax
                jnz     short loc_14032B41C
                mov     al, 1
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14032B41C:                          ; CODE XREF: KeTestSpinLock+6↑j
                pause
                xor     al, al
                retn
KeTestSpinLock  endp

; ---------------------------------------------------------------------------
                align 2
algn_14032B422:                         ; DATA XREF: .pdata:00000001400D6110↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_14032B428   proc near               ; CODE XREF: sub_14063CB90+632↓p
                                        ; sub_1406E8E64+19B↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404751FE SIZE 000000D6 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                lea     rbp, [rcx+48h]
                mov     r14, rcx
                mov     rcx, rbp
                mov     r12, r8
                mov     r15, rdx
                call    ExAcquireSpinLockExclusive
                movzx   edi, al
                or      rsi, 0FFFFFFFFFFFFFFFFh
                mov     rax, [r14+28h]
                cmp     rax, rsi
                jz      loc_1404751FE
                test    r15, r15
                jz      short loc_14032B48B
                xor     edx, edx
                mov     rcx, r15
                call    sub_140267ABC
                xor     edx, edx
                mov     rcx, r12
                call    sub_140267ABC
                mov     rax, [r14+28h]

loc_14032B48B:                          ; CODE XREF: sub_14032B428+49↑j
                inc     rax
                mov     rcx, rbp
                mov     [r14+28h], rax
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140475275

loc_14032B4A8:                          ; CODE XREF: sub_14032B428+149E4F↓j
                                        ; sub_14032B428+149E5B↓j ...
                mov     ebx, 1

loc_14032B4AD:                          ; CODE XREF: sub_14032B428+149DE8↓j
                                        ; sub_14032B428+149DF0↓j ...
                mov     cr8, rdi
                mov     rbp, [rsp+38h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14032B428   endp

byte_14032B4D3  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014007C378↑o
                                        ; .pdata:00000001400D611C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=60h

sub_14032B4DC   proc near               ; CODE XREF: sub_1406E8E64+13A↓p
                                        ; DATA XREF: .rdata:000000014007C3B0↑o ...

var_140         = dword ptr -140h
var_138         = qword ptr -138h
var_130         = byte ptr -130h
var_128         = qword ptr -128h
var_120         = dword ptr -120h
var_11C         = dword ptr -11Ch
var_118         = dword ptr -118h
var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = dword ptr -100h
var_FC          = word ptr -0FCh
var_F8          = dword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_40          = qword ptr -40h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404752D4 SIZE 0000019C BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-30h]
                sub     rsp, 130h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+60h+var_40], rax
                mov     rbx, r8
                mov     r12, rdx
                mov     rdi, rcx
                xor     r15d, r15d
                xor     edx, edx
                mov     [rsp+160h+var_120], r15d
                mov     r8d, 0B8h
                lea     rcx, [rsp+160h+var_100]
                call    memset
                cmp     cs:byte_140C4DD68, r15b
                jnz     loc_14032B722
                shr     rdi, 9
                mov     rcx, 7FFFFFFFF8h
                and     rdi, rcx
                mov     [rsp+160h+var_100], 1
                mov     [rsp+160h+var_FC], r15w
                mov     [rsp+160h+var_F0], r15
                mov     [rsp+160h+var_F8], 14h
                mov     [rsp+160h+var_E8], r15
                mov     rsi, 0FFFFF68000000000h
                mov     rax, rsi
                shr     r12, 9
                add     rdi, rax
                and     r12, rcx
                mov     rax, rsi
                mov     r13, [rbx+0B8h]
                add     r12, rax
                add     r13, 680h
                mov     rcx, r13
                mov     [rsp+160h+var_110], r13
                call    sub_140231340
                mov     bl, al
                mov     [rsp+160h+var_130], al

loc_14032B5A5:                          ; CODE XREF: sub_14032B4DC+1B8↓j
                cmp     rdi, r12
                ja      loc_14032B718
                lea     rax, [rsp+160h+var_120]
                mov     r9b, bl
                mov     [rsp+160h+var_138], rax
                lea     r8, [rsp+160h+var_100]
                mov     rdx, r12
                mov     [rsp+160h+var_140], r15d
                mov     rcx, rdi
                call    sub_1402A7DC0
                mov     rdi, rax
                test    rax, rax
                jz      loc_14032B718
                mov     r14, rax
                mov     r8, 7FFFFFFFF8h
                shr     r14, 9
                and     r14, r8
                mov     rax, rsi
                mov     ecx, [rsp+160h+var_120]
                add     r14, rax
                mov     [rsp+160h+var_108], r14
                test    ecx, ecx
                jnz     loc_1404752D4
                mov     rsi, rdi
                mov     rax, 0FFFFF68000000000h
                shl     rsi, 19h
                mov     rax, rax
                shl     rax, 19h
                mov     r13, 7FFFFFFFFFFFFFFFh
                sub     rsi, rax
                mov     r14, 0FFFFFA8000000000h
                sar     rsi, 10h

loc_14032B63A:                          ; CODE XREF: sub_14032B4DC+189↓j
                mov     rcx, rdi
                call    sub_1402805F0
                mov     [rsp+160h+var_128], rax
                mov     rbx, rax
                test    al, 1
                jnz     short loc_14032B699

loc_14032B64E:                          ; CODE XREF: sub_14032B4DC+1C0↓j
                                        ; sub_14032B4DC+237↓j
                add     rsi, 1000h
                add     rdi, 8
                test    rsi, 1FFFFFh
                jz      short loc_14032B667
                cmp     rdi, r12
                jbe     short loc_14032B63A

loc_14032B667:                          ; CODE XREF: sub_14032B4DC+184↑j
                lea     rcx, [rsp+160h+var_100]
                call    sub_14028EDB0
                mov     r14, [rsp+160h+var_108]
                mov     r13, [rsp+160h+var_110]
                mov     rsi, 0FFFFF68000000000h

loc_14032B685:                          ; CODE XREF: sub_14032B4DC+149F77↓j
                mov     rdx, r14
                mov     rcx, r13
                call    sub_140312B40
                mov     bl, [rsp+160h+var_130]
                jmp     loc_14032B5A5
; ---------------------------------------------------------------------------

loc_14032B699:                          ; CODE XREF: sub_14032B4DC+170↑j
                test    bl, 42h
                jz      short loc_14032B64E
                lea     rcx, [rsp+160h+var_128]
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14032B74A

loc_14032B6B0:                          ; CODE XREF: sub_14032B4DC+278↓j
                                        ; sub_14032B4DC+295↓j ...
                shr     rbx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rbx, rax
                lea     rbx, [rbx+rbx*2]
                shl     rbx, 4
                mov     rax, r14
                add     rbx, rax
                mov     [rsp+160h+var_118], r15d

loc_14032B6D4:                          ; CODE XREF: sub_14032B4DC+149F8F↓j
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jb      loc_140475458
                mov     al, [rbx+22h]
                or      al, 10h
                mov     [rbx+22h], al
                lock and [rbx+18h], r13
                mov     rdx, [rsp+160h+var_128]
                mov     rcx, rdi
                and     rdx, 0FFFFFFFFFFFFFFBDh
                call    sub_1402A6830
                xor     r9d, r9d
                lea     rcx, [rsp+160h+var_100]
                mov     rdx, rsi
                lea     r8d, [r9+1]
                call    sub_1402882E0
                jmp     loc_14032B64E
; ---------------------------------------------------------------------------

loc_14032B718:                          ; CODE XREF: sub_14032B4DC+CC↑j
                                        ; sub_14032B4DC+FA↑j
                mov     dl, bl
                mov     rcx, r13
                call    sub_140226960

loc_14032B722:                          ; CODE XREF: sub_14032B4DC+54↑j
                mov     rcx, [rbp+60h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+160h+arg_18]
                add     rsp, 130h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14032B74A:                          ; CODE XREF: sub_14032B4DC+1CE↑j
                test    cs:dword_140CFC400, 0C00000h
                jz      loc_14032B6B0
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     byte ptr [rcx+390h], 1
                jz      loc_14032B6B0
                test    bl, 20h
                jnz     loc_14032B6B0
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rdx, [rcx+788h]
                test    rdx, rdx
                jz      loc_14032B6B0
                lea     rax, [rsp+160h+var_128]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [rdx+rax*8]
                test    al, 20h
                jz      short loc_14032B7BA
                or      rbx, 20h

loc_14032B7BA:                          ; CODE XREF: sub_14032B4DC+2D8↑j
                test    al, 42h
                jmp     loc_14032B6B0
; } // starts at 14032B4DC
sub_14032B4DC   endp

; ---------------------------------------------------------------------------
algn_14032B7C1:                         ; DATA XREF: .rdata:000000014007C3B0↑o
                                        ; .pdata:00000001400D6128↑o
                align 10h
; Exported entry 1414. MmCanFileBeTruncated

; =============== S U B R O U T I N E =======================================


