PsGetThreadTeb  proc near               ; CODE XREF: sub_1406A9F6C+195↓p
                                        ; sub_1406AAAB4+92↓p
                                        ; DATA XREF: ...
                mov     rax, [rcx+0F0h]
                retn
PsGetThreadTeb  endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140307929:                         ; DATA XREF: .pdata:00000001400D40C4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140307930   proc near               ; CODE XREF: sub_1406AA874+189↓p
                                        ; DATA XREF: .rdata:00000001400717F4↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046AB00 SIZE 00000053 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                push    r15
                movzx   eax, word ptr [rdx]
                xor     esi, esi
                mov     [rcx], eax
                mov     rbx, rdx
                movzx   eax, word ptr [rdx+2]
                mov     r10, rcx
                mov     [rcx+4], eax
                mov     r9d, esi
                mov     eax, [rdx+8]
                lea     ebp, [rsi+1]
                mov     [rcx+0Ch], eax
                lea     r11, [rbx+20h]
                movzx   eax, word ptr [rdx+0Ch]
                lea     r15d, [rsi+2]
                movzx   r8d, word ptr [rdx+6]
                mov     r14d, 7FFFh
                shl     r8d, 10h
                or      r8d, eax
                mov     [rcx+10h], r8d
                lea     r8d, [rsi+7]
                mov     eax, [rdx+10h]
                mov     [rcx+14h], eax
                movzx   eax, word ptr [rdx+14h]
                mov     [rcx+18h], eax
                movzx   eax, word ptr [rbx+2]
                mov     dil, [rdx+4]
                movzx   edx, si
                shr     eax, 0Bh
                and     eax, 7
                sub     r8d, eax

loc_1403079AE:                          ; CODE XREF: sub_140307930+C3↓j
                movsd   xmm0, qword ptr [r11]
                lea     eax, [r9+r9*4]
                add     eax, eax
                shl     dx, 2
                mov     ecx, eax
                movsd   qword ptr [rax+r10+1Ch], xmm0
                movzx   eax, word ptr [r11+8]
                mov     [rcx+r10+24h], ax
                test    dil, dil
                js      loc_14046AB00
                or      dx, 3

loc_1403079DE:                          ; CODE XREF: sub_140307930+1631EC↓j
                                        ; sub_140307930+1631FD↓j ...
                add     dil, dil
                add     r9d, ebp
                dec     r8d
                add     r11, 10h
                and     r8d, 7
                cmp     r9d, 8
                jb      short loc_1403079AE
                mov     rbx, [rsp+10h+arg_0]
                mov     rbp, [rsp+10h+arg_8]
                mov     rsi, [rsp+10h+arg_10]
                mov     rdi, [rsp+10h+arg_18]
                movzx   eax, dx
                mov     [r10+8], eax
                pop     r15
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140307930   endp

byte_140307A16  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400717F4↑o
                                        ; .pdata:00000001400D40D0↑o

; =============== S U B R O U T I N E =======================================


sub_140307A1C   proc near               ; CODE XREF: sub_14052C538+D0↓p
                                        ; sub_1406A9274+27↓p
                                        ; DATA XREF: ...

var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046AB54 SIZE 000000CA BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r12b, dl
                mov     rbx, rcx
                mov     rdi, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                or      rbp, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_14046AB54

loc_140307A5E:                          ; CODE XREF: sub_140307A1C+16313A↓j
                                        ; sub_140307A1C+163144↓j ...
                mov     r15, gs:20h
                lea     r14, [rbx+40h]
                mov     rcx, r14
                call    ExAcquireSpinLockExclusiveAtDpcLevel
                mov     esi, [rbx+278h]
                mov     eax, [rbx+378h]
                shr     esi, 3
                and     esi, 1
                add     esi, eax
                test    r12b, r12b
                jz      loc_14046AB95
                xor     ecx, ecx
                call    sub_140212F34
                mov     [rbx+48h], rax
                lock bts dword ptr [rbx+278h], 3

loc_140307AA4:                          ; CODE XREF: sub_140307A1C+163181↓j
                test    esi, esi
                jnz     loc_14046ABA2
                lea     rsi, [rbx+30h]
                mov     rbx, [rsi]

loc_140307AB3:                          ; CODE XREF: sub_140307A1C+B7↓j
                cmp     rbx, rsi
                jz      short loc_140307AD5
                lea     rdx, [rbx-2F8h]
                test    r12b, r12b
                jz      loc_14046AC0C

loc_140307AC8:                          ; CODE XREF: sub_140307A1C+1631FD↓j
                mov     rcx, r15
                call    sub_140307B1C

loc_140307AD0:                          ; CODE XREF: sub_140307A1C+1631F7↓j
                mov     rbx, [rbx]
                jmp     short loc_140307AB3
; ---------------------------------------------------------------------------

loc_140307AD5:                          ; CODE XREF: sub_140307A1C+9A↑j
                mov     rcx, r14
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                xor     r9d, r9d
                mov     [rsp+48h+var_28], dil
                xor     edx, edx
                mov     rcx, r15
                lea     r8d, [r9+1]
                call    sub_14023E110
                xor     eax, eax

loc_140307AF5:                          ; CODE XREF: sub_140307A1C+1631EB↓j
                mov     rbx, [rsp+48h+arg_0]
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
sub_140307A1C   endp

byte_140307B15  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014007185C↑o
                                        ; .pdata:00000001400D40DC↑o

; =============== S U B R O U T I N E =======================================


sub_140307B1C   proc near               ; CODE XREF: sub_1402D0C68+44B↑p
                                        ; sub_140307A1C+AF↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                lea     rsi, [rdx+2E0h]
                mov     rbx, rcx
                mov     rcx, rsi
                mov     rdi, rdx
                call    sub_1402AF4F0
                lock bts dword ptr [rdi+78h], 0Eh
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_140308520
                test    al, al
                jz      short loc_140307B6D

loc_140307B55:                          ; CODE XREF: sub_140307B1C+57↓j
                lock and dword ptr [rsi], 0FFFFFF7Fh
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140307B6D:                          ; CODE XREF: sub_140307B1C+37↑j
                lock btr dword ptr [rdi+78h], 0Eh
                jmp     short loc_140307B55
sub_140307B1C   endp

; ---------------------------------------------------------------------------
byte_140307B75  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D40E8↑o

; =============== S U B R O U T I N E =======================================


sub_140307B7C   proc near               ; CODE XREF: sub_14068AE3C+7ED↓p
                                        ; sub_1406AB230+7B↓p ...

var_B8          = byte ptr -0B8h
var_A8          = dword ptr -0A8h
var_98          = byte ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046AC1E SIZE 000000CB BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 0C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0D8h+var_28], rax
                mov     rax, [rcx+220h]
                mov     rbx, rcx
                mov     edi, 2
                test    byte ptr [rax+3E0h], 1
                jnz     loc_14046AC1E

loc_140307BBF:                          ; CODE XREF: sub_140307B7C+1630D8↓j
                lock bts dword ptr [rbx+78h], 0Fh
                jb      loc_140307C80
                lea     rsi, [rbx+288h]
                xor     r14b, r14b
                mov     rbp, cr8
                mov     cr8, rdi
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046AC59

loc_140307BEB:                          ; CODE XREF: sub_140307B7C+1630DF↓j
                                        ; sub_140307B7C+1630E9↓j ...
                mov     rdi, gs:20h
                and     [rsp+0D8h+var_A8], 0

loc_140307BF9:                          ; CODE XREF: sub_140307B7C+150↓j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046AC9B

loc_140307C09:                          ; CODE XREF: sub_140307B7C+163123↓j
                                        ; sub_140307B7C+163132↓j ...
                lock bts qword ptr [rbx+40h], 0
                jb      loc_140307CA9
                mov     rdi, gs:20h
                test    dword ptr [rbx+74h], 4000h
                jz      short loc_140307C4B
                cmp     byte ptr [rsi+52h], 0
                mov     r14b, 1
                jnz     short loc_140307C4B
                mov     rcx, rsi
                mov     [rsi+52h], r14b
                call    sub_140308A40
                mov     r8b, bpl
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1403088BC

loc_140307C4B:                          ; CODE XREF: sub_140307B7C+AA↑j
                                        ; sub_140307B7C+B3↑j
                mov     rcx, rbx
                call    sub_1403261B0
                xor     r9d, r9d
                mov     [rsp+0D8h+var_B8], bpl
                xor     edx, edx
                mov     rcx, rdi
                lea     r8d, [r9+1]
                call    sub_14023E110
                test    r14b, r14b
                jz      short loc_140307C80
                xor     edx, edx
                mov     rcx, rbx
                call    KeAlertThread
                mov     rcx, rbx
                call    sub_1402D1A10

loc_140307C80:                          ; CODE XREF: sub_140307B7C+49↑j
                                        ; sub_140307B7C+F0↑j
                mov     rcx, [rsp+0D8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0D8h+var_18]
                mov     rbx, [r11+28h]
                mov     rbp, [r11+30h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140307CA9:                          ; CODE XREF: sub_140307B7C+94↑j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046ACC2

loc_140307CB9:                          ; CODE XREF: sub_140307B7C+14E↓j
                                        ; sub_140307B7C+16314A↓j ...
                lea     rcx, [rsp+0D8h+var_A8]
                call    sub_1402C8C70
                mov     rax, [rbx+40h]
                test    rax, rax
                jnz     short loc_140307CB9
                jmp     loc_140307BF9
; } // starts at 140307B7C
sub_140307B7C   endp

; ---------------------------------------------------------------------------
algn_140307CD1:                         ; DATA XREF: .rdata:0000000140071930↑o
                                        ; .pdata:00000001400D40F4↑o
                align 20h
; Exported entry 1109. KeAlertThread

; =============== S U B R O U T I N E =======================================


