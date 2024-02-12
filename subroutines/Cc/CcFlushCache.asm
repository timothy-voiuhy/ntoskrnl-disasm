CcFlushCache    proc near               ; DATA XREF: .pdata:00000001400D851C↑o

var_18          = byte ptr -18h
var_10          = qword ptr -10h

                sub     rsp, 38h
                mov     [rsp+38h+var_10], r9
                xor     r9d, r9d
                mov     [rsp+38h+var_18], 0
                call    sub_140260E80
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcFlushCache    endp

byte_1403548BC  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D851C↑o

; =============== S U B R O U T I N E =======================================


sub_1403548C4   proc near               ; CODE XREF: sub_1402851E0+113E↑p
                                        ; sub_1403F3EF0+2B↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h

; FUNCTION CHUNK AT 000000014048559A SIZE 00000039 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                mov     r9d, [rcx+10h]
                mov     rbx, rcx
                shr     r9, 10h
                and     r9d, 3FFh
                mov     edi, edx
                cmp     r9, rdi
                jb      loc_14048559A
                and     [rsp+38h+arg_8], 0
                lock bts qword ptr [rcx+18h], 3Fh ; '?'
                jb      loc_1404855B2

loc_1403548FD:                          ; CODE XREF: sub_1403548C4+130D0A↓j
                mov     rdx, [rbx+10h]
                mov     rax, rdx
                shr     rax, 10h
                and     eax, 3FFh
                sub     eax, edi
                mov     ecx, eax
                shl     rcx, 10h
                xor     rcx, rdx
                and     ecx, 3FF0000h
                xor     rcx, rdx
                mov     [rbx+10h], rcx
                mov     rcx, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rcx
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403548C4   endp

byte_140354940  db 8 dup(0CCh)          ; DATA XREF: .rdata:0000000140084BA0↑o
                                        ; .pdata:00000001400D8528↑o

; =============== S U B R O U T I N E =======================================


sub_140354948   proc near               ; CODE XREF: sub_14070ABF0+36↓p
                                        ; sub_1407C9700+8F↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                mov     r11d, [rcx]
                mov     rsi, r8
                mov     r9d, edx
                mov     r10, rcx
                cmp     r11d, edx
                jbe     loc_140354A76
                mov     rdx, [rcx+8]
                lea     r14, qword_140011060
                lea     ecx, [r11-1]
                mov     eax, r9d
                shr     rcx, 5
                shr     rax, 5
                lea     rbx, [rdx+rcx*4]
                lea     r8, [rdx+rax*4]
                xor     edx, edx
                cmp     r8, rbx
                jz      short loc_1403549B2
                mov     ecx, [r8]
                mov     eax, r9d
                and     eax, 1Fh
                mov     edi, eax
                mov     eax, [r14+rax*4]
                not     eax
                and     ecx, eax
                jz      loc_140354A4F

loc_1403549B2:                          ; CODE XREF: sub_140354948+4F↑j
                                        ; sub_140354948+115↓j ...
                cmp     r9d, r11d
                jnb     short loc_1403549C9
                mov     rax, [r10+8]

loc_1403549BB:                          ; CODE XREF: sub_140354948+7F↓j
                bt      [rax], r9d
                jb      short loc_1403549C9
                inc     r9d
                cmp     r9d, r11d
                jb      short loc_1403549BB

loc_1403549C9:                          ; CODE XREF: sub_140354948+6D↑j
                                        ; sub_140354948+77↑j
                or      edi, 0FFFFFFFFh
                cmp     r8, rbx
                jz      short loc_1403549E7
                mov     ecx, [r8]
                mov     eax, r9d
                and     eax, 1Fh
                mov     r11d, eax
                mov     eax, [r14+rax*4]
                or      eax, ecx
                cmp     eax, edi
                jz      short loc_140354A28

loc_1403549E7:                          ; CODE XREF: sub_140354948+87↑j
                                        ; sub_140354948+F3↓j ...
                mov     ecx, [r10]
                lea     eax, [rdx+r9]
                cmp     eax, ecx
                jnb     short loc_140354A08
                mov     r8, [r10+8]

loc_1403549F6:                          ; CODE XREF: sub_140354948+BE↓j
                bt      [r8], eax
                jnb     short loc_140354A08
                cmp     edx, edi
                jnb     short loc_140354A08
                inc     eax
                inc     edx
                cmp     eax, ecx
                jb      short loc_1403549F6

loc_140354A08:                          ; CODE XREF: sub_140354948+A8↑j
                                        ; sub_140354948+B2↑j ...
                cmp     edx, edi
                mov     [rsi], r9d
                cmova   edx, edi

loc_140354A10:                          ; CODE XREF: sub_140354948+133↓j
                mov     rbx, [rsp+arg_0]
                mov     eax, edx
                mov     rsi, [rsp+arg_8]
                mov     rdi, [rsp+arg_10]
                mov     r14, [rsp+arg_18]
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140354A28:                          ; CODE XREF: sub_140354948+9D↑j
                mov     edx, 20h ; ' '
                sub     edx, r11d
                cmp     edx, edi
                jnb     short loc_140354A08
                add     r8, 4

loc_140354A38:                          ; CODE XREF: sub_140354948+103↓j
                cmp     r8, rbx
                jnb     short loc_1403549E7
                cmp     [r8], edi
                jnz     short loc_1403549E7
                add     r8, 4
                add     edx, 20h ; ' '
                cmp     edx, edi
                jb      short loc_140354A38
                jmp     short loc_140354A08
; ---------------------------------------------------------------------------

loc_140354A4F:                          ; CODE XREF: sub_140354948+64↑j
                sub     r9d, edi
                add     r9d, 20h ; ' '
                add     r8, 4

loc_140354A5A:                          ; CODE XREF: sub_140354948+12C↓j
                cmp     r8, rbx
                jnb     loc_1403549B2
                cmp     [r8], edx
                jnz     loc_1403549B2
                add     r8, 4
                add     r9d, 20h ; ' '
                jmp     short loc_140354A5A
; ---------------------------------------------------------------------------

loc_140354A76:                          ; CODE XREF: sub_140354948+22↑j
                mov     [r8], r9d
                xor     edx, edx
                jmp     short loc_140354A10
sub_140354948   endp

; ---------------------------------------------------------------------------
byte_140354A7D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D8534↑o

; =============== S U B R O U T I N E =======================================


sub_140354A84   proc near               ; CODE XREF: sub_1405F3CF0+BA3↓p
                                        ; DATA XREF: .rdata:0000000140084BE4↑o ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404855D4 SIZE 00000117 BYTES

                mov     [rsp+arg_18], rbx
                mov     [rsp+arg_8], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                and     qword ptr [rcx+20h], 0
                mov     r15, r8
                mov     rsi, rcx
                test    r8, r8
                jz      loc_140354B7B
                mov     rdi, cr8
                mov     r10d, 2
                mov     cr8, r10
                mov     eax, cs:dword_140CFC660
                or      r12, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_1404855D4

loc_140354AD1:                          ; CODE XREF: sub_140354A84+130B52↓j
                                        ; sub_140354A84+130B5C↓j ...
                mov     eax, cs:dword_140CFC404
                test    eax, eax
                jz      short loc_140354B58
                lea     r13, qword_140CFDCC0
                mov     [rsp+58h+arg_10], rax
                lea     r14, [rsi+80h]

loc_140354AEE:                          ; CODE XREF: sub_140354A84+CC↓j
                mov     rbx, gs:20h
                and     [rsp+58h+arg_0], 0
                mov     rbp, [r13+0]

loc_140354B00:                          ; CODE XREF: sub_140354A84+130↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_140485615

loc_140354B10:                          ; CODE XREF: sub_140354A84+130B95↓j
                                        ; sub_140354A84+130BA4↓j ...
                lock bts qword ptr [rbp+30h], 0
                jb      short loc_140354B91
                mov     rax, [r14]
                mov     [r14+28h], rax
                lock and qword ptr [rbp+30h], 0
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_140485663

loc_140354B3F:                          ; CODE XREF: sub_140354A84+130BE3↓j
                                        ; sub_140354A84+130BF2↓j ...
                add     r13, 8
                add     r14, 1A8h
                sub     [rsp+58h+arg_10], 1
                jnz     short loc_140354AEE
                mov     r10d, 2

loc_140354B58:                          ; CODE XREF: sub_140354A84+55↑j
                mov     rax, [rsp+58h+arg_8]
                mov     [rsi+48h], rax
                xchg    r15, [rsi+20h]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140485687

loc_140354B73:                          ; CODE XREF: sub_140354A84+130C05↓j
                                        ; sub_140354A84+130C11↓j ...
                movzx   eax, dil
                mov     cr8, rax

loc_140354B7B:                          ; CODE XREF: sub_140354A84+27↑j
                mov     rbx, [rsp+58h+arg_18]
                add     rsp, 20h
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

loc_140354B91:                          ; CODE XREF: sub_140354A84+93↑j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14048563C

loc_140354BA1:                          ; CODE XREF: sub_140354A84+12E↓j
                                        ; sub_140354A84+130BBC↓j ...
                lea     rcx, [rsp+58h+arg_0]
                call    sub_1402C8C70
                mov     rax, [rbp+30h]
                test    rax, rax
                jnz     short loc_140354BA1
                jmp     loc_140354B00
sub_140354A84   endp

; ---------------------------------------------------------------------------
algn_140354BB9:                         ; DATA XREF: .rdata:0000000140084BE4↑o
                                        ; .pdata:00000001400D8540↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140354BC0   proc near               ; CODE XREF: CcCopyWriteWontFlush+7C↑p
                                        ; sub_140265630+1D7E44↓p
                                        ; DATA XREF: ...

var_28          = xmmword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404856EC SIZE 00000069 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 40h
                xor     eax, eax
                mov     edi, edx
                xorps   xmm0, xmm0
                xor     bl, bl
                movups  [rsp+48h+var_28], xmm0
                mov     rsi, rcx
                mov     [r11-18h], rax
                lea     ebp, [rax+1]
                and     edi, ebp
                jnz     short loc_140354C00
                lea     rdx, [r11-28h]
                lea     rcx, qword_140CDB640
                call    KeAcquireInStackQueuedSpinLock

loc_140354C00:                          ; CODE XREF: sub_140354BC0+2E↑j
                mov     rax, [rsi+28h]
                test    rax, rax
                jz      short loc_140354C22
                mov     rcx, [rax+8]
                test    rcx, rcx
                jz      short loc_140354C22
                test    dword ptr [rcx+98h], 40000000h
                movzx   ebx, bl
                cmovnz  ebx, ebp

loc_140354C22:                          ; CODE XREF: sub_140354BC0+47↑j
                                        ; sub_140354BC0+50↑j
                test    edi, edi
                jnz     short loc_140354C47
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_1404856EC

loc_140354C43:                          ; CODE XREF: sub_140354BC0+130B2F↓j
                                        ; sub_140354BC0+130B3B↓j ...
                mov     cr8, rdi

loc_140354C47:                          ; CODE XREF: sub_140354BC0+64↑j
                mov     rbp, [rsp+48h+arg_8]
                mov     al, bl
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140354BC0   endp

byte_140354C5F  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140084C0C↑o
                                        ; .pdata:00000001400D854C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140354C68   proc near               ; CODE XREF: sub_1402F8B14+50C↑p
                                        ; DATA XREF: .rdata:0000000140084C38↑o ...

var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140485756 SIZE 00000066 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    rbp
                mov     rbp, rsp
                sub     rsp, 50h
                xor     eax, eax
                lea     rdx, [rbp+var_18]
                xorps   xmm0, xmm0
                mov     [rbp+var_8], rax
                xorps   xmm1, xmm1
                mov     [rbp+var_20], rax
                mov     rsi, rcx
                mov     rbx, 0FFFFF78000000320h
                movups  [rbp+var_18], xmm0
                lea     rcx, qword_140CDB640
                movups  [rbp+var_30], xmm1
                mov     rbx, [rbx]
                call    KeAcquireInStackQueuedSpinLock
                mov     rdi, cs:qword_140C486F0
                lea     r14, qword_140C486F0

loc_140354CC9:                          ; CODE XREF: sub_140354C68+73↓j
                cmp     rdi, r14
                jz      short loc_140354D1B
                mov     eax, [rdi+0A8h]
                test    al, 1
                jnz     short loc_140354CDD

loc_140354CD8:                          ; CODE XREF: sub_140354C68+B1↓j
                mov     rdi, [rdi]
                jmp     short loc_140354CC9
; ---------------------------------------------------------------------------

loc_140354CDD:                          ; CODE XREF: sub_140354C68+6E↑j
                and     qword ptr [rbp+var_30], 0
                lea     rdx, [rsi+80h]
                lea     rcx, [rbp+var_30]
                mov     qword ptr [rbp+var_30+8], rdx
                call    sub_14024B3F0
                mov     eax, [rdi+0A8h]
                test    al, 1
                jz      short loc_140354D10
                and     eax, 0FFFFFFFEh
                mov     [rdi+0A0h], rbx
                mov     [rdi+0A8h], eax

loc_140354D10:                          ; CODE XREF: sub_140354C68+96↑j
                lea     rcx, [rbp+var_30]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                jmp     short loc_140354CD8
; ---------------------------------------------------------------------------

loc_140354D1B:                          ; CODE XREF: sub_140354C68+64↑j
                lea     rcx, [rbp+var_18]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_8]
                test    eax, eax
                jnz     loc_140485756

loc_140354D36:                          ; CODE XREF: sub_140354C68+130AF0↓j
                                        ; sub_140354C68+130AFC↓j ...
                mov     cr8, rbx
                mov     rbx, [rsp+50h+arg_0]
                mov     rsi, [rsp+50h+arg_8]
                mov     rdi, [rsp+50h+arg_10]
                mov     r14, [rsp+50h+arg_18]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140354C68   endp

algn_140354D55:                         ; DATA XREF: .rdata:0000000140084C38↑o
                                        ; .pdata:00000001400D8558↑o
                align 20h
; Exported entry 2015. RtlClearAllBitsEx

; =============== S U B R O U T I N E =======================================


