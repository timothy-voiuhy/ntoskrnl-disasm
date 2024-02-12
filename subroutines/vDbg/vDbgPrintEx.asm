vDbgPrintEx     proc near               ; DATA XREF: .pdata:00000001400D9ADC↑o

var_18          = qword ptr -18h
var_10          = byte ptr -10h

                sub     rsp, 38h
                mov     [rsp+38h+var_10], 1
                mov     [rsp+38h+var_18], r9
                mov     r9, r8
                mov     r8d, edx
                mov     edx, ecx
                lea     rcx, qword_140412E80
                call    sub_140364C40
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
vDbgPrintEx     endp

algn_140364C38:                         ; DATA XREF: .pdata:00000001400D9ADC↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=50h

sub_140364C40   proc near               ; CODE XREF: sub_140364B78+32↑p
                                        ; DbgPrint+37↑p ...

var_D0          = byte ptr -0D0h
var_70          = dword ptr -70h
var_50          = dword ptr -50h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_20          = qword ptr  30h
arg_28          = byte ptr  38h

; FUNCTION CHUNK AT 00000001404A87C2 SIZE 0000019F BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                lea     rbp, [rsp+20h]
                mov     [rbp+50h+arg_0], rbx
                mov     [rbp+50h+arg_8], rsi
                mov     [rbp+50h+arg_10], rdi
                mov     rax, cs:__security_cookie
                xor     rax, rbp
                mov     [rbp+50h+var_28], rax
                mov     [rbp+50h+var_38], r9
                mov     r12d, r8d
                mov     r13d, edx
                mov     r14, rcx
                xorps   xmm0, xmm0
                movups  [rbp+50h+var_48], xmm0
                mov     edx, r8d
                mov     ecx, r13d
                call    sub_140364DA0
                test    eax, eax
                jnz     short loc_140364CB9

loc_140364C90:                          ; CODE XREF: sub_140364C40+143D1C↓j
                xor     eax, eax

loc_140364C92:                          ; CODE XREF: sub_140364C40:loc_140364D29↓j
                                        ; sub_140364C40+140↓j ...
                mov     rcx, [rbp+50h+var_28]
                xor     rcx, rbp
                call    __security_check_cookie
                mov     rbx, [rbp+50h+arg_0]
                mov     rsi, [rbp+50h+arg_8]
                mov     rdi, [rbp+50h+arg_10]
                lea     rsp, [rbp+30h]
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140364CB9:                          ; CODE XREF: sub_140364C40+4E↑j
                xor     edi, edi
                xor     eax, eax
                mov     [rbp+50h+var_50], eax
                xor     esi, esi
                or      r15, 0FFFFFFFFFFFFFFFFh

loc_140364CC6:                          ; CODE XREF: sub_140364C40+143B87↓j
                cmp     esi, 200h
                jnb     short loc_140364D36
                mov     eax, [rsp+70h+var_70]
                sub     rsp, 80h
                lea     rdi, [rsp+0F0h+var_D0]
                mov     eax, [rdi]
                sub     esi, 0FFFFFF80h

loc_140364CE2:                          ; DATA XREF: .rdata:000000014009F6EC↑o
;   __try { // __except at loc_140364D29
                mov     rcx, r15

loc_140364CE5:                          ; CODE XREF: sub_140364C40+AD↓j
                inc     rcx
                cmp     byte ptr [r14+rcx], 0
                jnz     short loc_140364CE5
                mov     [rbp+50h+var_30], rcx
                lea     ebx, [rsi-1]
                cmp     rcx, rbx
                cmovbe  rbx, rcx
                mov     r8, rbx
                mov     rdx, r14
                mov     rcx, rdi
                call    memmove
                mov     edx, esi
                sub     rdx, rbx
                lea     rcx, [rbx+rdi]
                mov     r9, [rbp+50h+arg_20]
                mov     r8, [rbp+50h+var_38]
                call    sub_14037166C
                mov     [rbp+50h+var_50], eax
                jmp     short loc_140364D2E
;   } // starts at 140364CE2
; ---------------------------------------------------------------------------

loc_140364D29:                          ; DATA XREF: .rdata:000000014009F6EC↑o
;   __except(1) // owned by 140364CE2
                jmp     loc_140364C92
; ---------------------------------------------------------------------------

loc_140364D2E:                          ; CODE XREF: sub_140364C40+E7↑j
                test    eax, eax
                js      loc_1404A87C2

loc_140364D36:                          ; CODE XREF: sub_140364C40+8C↑j
                                        ; sub_140364C40+143B8D↓j
                cmp     eax, 80000005h
                jz      loc_1404A87D2
                mov     rcx, r15

loc_140364D44:                          ; CODE XREF: sub_140364C40+10B↓j
                inc     rcx
                cmp     byte ptr [rdi+rcx], 0
                jnz     short loc_140364D44

loc_140364D4D:                          ; CODE XREF: sub_140364C40+143BA2↓j
                mov     qword ptr [rbp+50h+var_48+8], rdi
                mov     word ptr [rbp+50h+var_48], cx
                mov     eax, cs:dword_140C313E0
                test    al, 3
                jnz     short loc_140364D6C
                cmp     cs:byte_140C50590, 1
                jz      loc_1404A87E7

loc_140364D6C:                          ; CODE XREF: sub_140364C40+11D↑j
                                        ; sub_140364C40+143CA6↓j ...
                mov     r8d, r12d
                mov     edx, r13d
                lea     rcx, [rbp+50h+var_48]
                call    sub_140406CE0
                cmp     eax, 80000003h
                jnz     loc_140364C92
                jmp     loc_1404A8944
; } // starts at 140364C40
sub_140364C40   endp ; sp-analysis failed

; ---------------------------------------------------------------------------
algn_140364D8B:                         ; DATA XREF: .rdata:000000014009F704↑o
                                        ; .pdata:00000001400D9AE8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140364DA0   proc near               ; CODE XREF: sub_140364C40+47↑p
                                        ; DbgQueryDebugFilterState+4↓p
                                        ; DATA XREF: ...
                mov     eax, 9Ch
                mov     r8d, 3
                cmp     ecx, eax
                cmovb   r8d, edx
                mov     edx, 1
                lea     r9d, [rax-37h]
                cmovb   r9d, ecx
                cmp     r8d, 1Fh
                ja      short loc_140364DCD
                mov     ecx, r8d
                mov     r8d, edx
                shl     r8d, cl

loc_140364DCD:                          ; CODE XREF: sub_140364DA0+22↑j
                test    cs:dword_140C11598, r8d
                jnz     short loc_140364DEA
                lea     rcx, off_140007410
                mov     rax, [rcx+r9*8]
                test    [rax], r8d
                jnz     short loc_140364DEA
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140364DEA:                          ; CODE XREF: sub_140364DA0+34↑j
                                        ; sub_140364DA0+44↑j
                mov     eax, edx
                retn
sub_140364DA0   endp

; ---------------------------------------------------------------------------
                align 2
byte_140364DEE  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400D9AF4↑o

; =============== S U B R O U T I N E =======================================


sub_140364DF4   proc near               ; CODE XREF: sub_140724AF0+12↓p
                                        ; sub_140725A4C+12↓p
                                        ; DATA XREF: ...
                mov     rax, [rcx+0B8h]
                movzx   ecx, word ptr [rax+72Eh]
                mov     rax, cs:qword_140C4E4C8
                mov     rax, [rax+rcx*8]
                retn
sub_140364DF4   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_140364E0F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D9B00↑o

; =============== S U B R O U T I N E =======================================


sub_140364E18   proc near               ; CODE XREF: sub_14036D5D0+63↓p
                                        ; sub_140724B80+46↓p ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_40          = qword ptr -40h
var_38          = word ptr -38h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h
var_10          = qword ptr -10h
var_8           = byte ptr -8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_10], rax
                mov     rbx, cs:qword_140C50B90
                mov     rsi, rdx
                mov     rdi, rcx
                test    rbx, rbx
                jz      short loc_140364E57
                mov     rdx, rcx
                mov     rcx, rbx
                call    EtwEventEnabled
                test    al, al
                jnz     short loc_140364E79

loc_140364E57:                          ; CODE XREF: sub_140364E18+2E↑j
                xor     eax, eax

loc_140364E59:                          ; CODE XREF: sub_140364E18+C7↓j
                mov     rcx, [rsp+78h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+78h+var_8]
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140364E79:                          ; CODE XREF: sub_140364E18+3D↑j
                movzx   r8d, word ptr [rsi]
                mov     ecx, 2
                and     [rsp+78h+var_24], 0
                movzx   eax, r8w
                and     [rsp+78h+var_14], 0
                xor     r9d, r9d
                shr     ax, 1
                mov     rdx, rdi
                mov     [rsp+78h+var_38], ax
                lea     rax, [rsp+78h+var_38]
                mov     [rsp+78h+var_30], rax
                mov     rax, [rsi+8]
                mov     [rsp+78h+var_20], rax
                lea     rax, [rsp+78h+var_30]
                mov     [rsp+78h+var_40], rax
                mov     [rsp+78h+var_48], ecx
                and     [rsp+78h+var_50], 0
                and     [rsp+78h+var_58], 0
                mov     [rsp+78h+var_28], ecx
                mov     rcx, rbx
                mov     [rsp+78h+var_18], r8d
                xor     r8d, r8d
                call    EtwWriteEx
                jmp     loc_140364E59
; } // starts at 140364E18
sub_140364E18   endp

; ---------------------------------------------------------------------------
algn_140364EE4:                         ; DATA XREF: .pdata:00000001400D9B0C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140364EF0   proc near               ; DATA XREF: .pdata:00000001400D9B18↑o
                                        ; sub_140724B80+86↓o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                xor     r8d, r8d
                mov     rcx, [rcx+1D8h]
                xor     edx, edx
                call    ZwWaitForSingleObject
                mov     rdx, gs:188h
                mov     esi, eax
                dec     word ptr [rdx+1E4h]
                mov     dl, 1
                lea     rcx, [rbx+58h]
                call    ExAcquireResourceExclusiveLite
                cmp     byte ptr [rbx+1E9h], 0
                jnz     short loc_140364F66
                mov     r8d, esi
                mov     byte ptr [rbx+1E9h], 1
                lea     rdx, [rbx+10h]
                lea     rcx, qword_14000D538
                call    sub_140364F94
                mov     r8d, esi
                lea     rdx, [rbx+10h]
                lea     rcx, qword_14000D528
                call    sub_140364F94

loc_140364F66:                          ; CODE XREF: sub_140364EF0+47↑j
                lea     rcx, [rbx+58h]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140364EF0   endp

byte_140364F8E  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400D9B18↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140364F94   proc near               ; CODE XREF: sub_140364EF0+5E↑p
                                        ; sub_140364EF0+71↑p ...

var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = word ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = qword ptr -18h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
var_8           = qword ptr -8
arg_8           = qword ptr  28h
arg_10          = dword ptr  30h

; __unwind { // __GSHandlerCheck
                mov     [rsp-18h+arg_8], rbx
                mov     [rsp-18h+arg_10], r8d
                push    rbp
                push    rsi
                push    rdi
                mov     rbp, rsp
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                mov     rbx, cs:qword_140C50B90
                mov     rsi, rdx
                mov     rdi, rcx
                test    rbx, rbx
                jz      short loc_140364FDA
                mov     rdx, rcx
                mov     rcx, rbx
                call    EtwEventEnabled
                test    al, al
                jnz     short loc_140364FFC

loc_140364FDA:                          ; CODE XREF: sub_140364F94+35↑j
                xor     eax, eax

loc_140364FDC:                          ; CODE XREF: sub_140364F94+D8↓j
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+80h+arg_8]
                add     rsp, 80h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140364FFC:                          ; CODE XREF: sub_140364F94+44↑j
                movzx   ecx, word ptr [rsi]
                xor     r9d, r9d
                and     [rbp+var_2C], 0
                movzx   eax, cx
                and     [rbp+var_1C], 0
                xor     r8d, r8d
                and     [rbp+var_C], 0
                mov     rdx, rdi
                shr     ax, 1
                mov     [rbp+var_40], ax
                lea     rax, [rbp+var_40]
                mov     [rbp+var_38], rax
                mov     rax, [rsi+8]
                mov     [rbp+var_28], rax
                lea     rax, [rbp+arg_10]
                mov     [rbp+var_18], rax
                lea     rax, [rbp+var_38]
                mov     [rsp+80h+var_48], rax
                mov     [rsp+80h+var_50], 3
                and     [rsp+80h+var_58], 0
                and     [rsp+80h+var_60], 0
                mov     [rbp+var_20], ecx
                mov     rcx, rbx
                mov     [rbp+var_30], 2
                mov     [rbp+var_10], 4
                call    EtwWriteEx
                jmp     loc_140364FDC
; } // starts at 140364F94
sub_140364F94   endp

; ---------------------------------------------------------------------------
algn_140365071:                         ; DATA XREF: .pdata:00000001400D9B24↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_140365078   proc near               ; CODE XREF: sub_140724B80+12↓p
                                        ; DATA XREF: .rdata:00000001400A24BC↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404ABA8C SIZE 00000066 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                lea     rbx, [rcx+1A8h]
                mov     rdi, rcx
                mov     rcx, rbx
                call    KeAcquireSpinLockRaiseToDpc
                mov     rcx, rbx
                movzx   esi, al
                mov     byte ptr [rdi+1B0h], 0
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404ABA8C

loc_1403650B9:                          ; CODE XREF: sub_140365078+146A16↓j
                                        ; sub_140365078+146A23↓j ...
                mov     cr8, rsi
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140365078   endp

algn_1403650CE:                         ; DATA XREF: .rdata:00000001400A24BC↑o
                                        ; .pdata:00000001400D9B30↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403650E0   proc near               ; DATA XREF: .pdata:00000001400D9B3C↑o
                                        ; sub_1403AFD20+1EA↓o
                mov     rax, cs:qword_140C4BFA0
                retn
sub_1403650E0   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403650E9:                         ; DATA XREF: .pdata:00000001400D9B3C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403650F0   proc near               ; DATA XREF: .rdata:00000001400059C0↑o
                                        ; .pdata:00000001400D9B48↑o ...
                mov     rax, cs:qword_140C50650
                retn
sub_1403650F0   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403650F9:                         ; DATA XREF: .pdata:00000001400D9B48↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140365100   proc near               ; DATA XREF: .pdata:00000001400D9B54↑o
                                        ; sub_140A3B08C↓o

arg_20          = qword ptr  28h

                mov     rax, [rsp+arg_20]
                mov     [rax], r8
                mov     al, 1
                retn
sub_140365100   endp

; ---------------------------------------------------------------------------
                align 4
algn_14036510C:                         ; DATA XREF: .pdata:00000001400D9B54↑o
                align 20h

loc_140365120:                          ; DATA XREF: .pdata:00000001400D9B60↑o
                                        ; .data:off_140C05390↓o
                movzx   edx, cx
                in      al, dx
                retn
; ---------------------------------------------------------------------------
                align 2
algn_140365126:                         ; DATA XREF: .pdata:00000001400D9B60↑o
                align 10h

loc_140365130:                          ; DATA XREF: .pdata:00000001400D9B6C↑o
                                        ; .data:off_140C05398↓o
                mov     al, dl
                movzx   edx, cx
                out     dx, al
                retn
; ---------------------------------------------------------------------------
                align 8
algn_140365138:                         ; DATA XREF: .pdata:00000001400D9B6C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140365140   proc near               ; DATA XREF: .pdata:00000001400D9B78↑o
                                        ; .data:off_140C00A50↓o
                sub     rsp, 28h
                call    memmove
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140365140   endp

algn_14036514F:                         ; DATA XREF: .pdata:00000001400D9B78↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140365160   proc near               ; DATA XREF: .rdata:00000001400090C0↑o
                                        ; .pdata:00000001400D9B84↑o
                shr     rcx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rcx, rax
                mov     rax, 0FFFFF68000000000h
                lea     rax, [rax+rcx*8]
                retn
sub_140365160   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140365181:                         ; DATA XREF: .pdata:00000001400D9B84↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140365190   proc near               ; DATA XREF: .pdata:00000001400D9B90↑o
                                        ; sub_140A6B67C+52↓o
                xchg    rcx, cs:qword_140CDB1A8
                mov     rax, rcx
                retn
sub_140365190   endp

; ---------------------------------------------------------------------------
                align 4
byte_14036519C  db 14h dup(0CCh)        ; DATA XREF: .pdata:00000001400D9B90↑o

; =============== S U B R O U T I N E =======================================


sub_1403651B0   proc near               ; DATA XREF: .pdata:00000001400D9B9C↑o
                                        ; sub_1404DE6FC+4B↓o ...
                movzx   edx, cx
                in      eax, dx
                retn
sub_1403651B0   endp

; ---------------------------------------------------------------------------
                align 2
algn_1403651B6:                         ; DATA XREF: .pdata:00000001400D9B9C↑o
                align 20h

loc_1403651C0:                          ; DATA XREF: .pdata:00000001400D9BA8↑o
                                        ; .data:off_140C053A0↓o
                movzx   edx, cx
                in      ax, dx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
algn_1403651C7:                         ; DATA XREF: .pdata:00000001400D9BA8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403651D0   proc near               ; DATA XREF: .pdata:00000001400D9BB4↑o
                                        ; sub_1404DE76C+4B↓o ...
                mov     eax, edx
                movzx   edx, cx
                out     dx, eax
                retn
sub_1403651D0   endp

; ---------------------------------------------------------------------------
                align 8
algn_1403651D8:                         ; DATA XREF: .pdata:00000001400D9BB4↑o
                align 20h

loc_1403651E0:                          ; DATA XREF: .pdata:00000001400D9BC0↑o
                                        ; .data:off_140C053A8↓o
                movzx   eax, dx
                movzx   edx, cx
                out     dx, ax
                retn
; ---------------------------------------------------------------------------
                align 2
algn_1403651EA:                         ; DATA XREF: .pdata:00000001400D9BC0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403651F0   proc near               ; DATA XREF: .pdata:00000001400D9BCC↑o
                                        ; sub_140A6F558+48↓o
                mov     cs:byte_140C49DD0, 1
                retn
sub_1403651F0   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1403651F9:                         ; DATA XREF: .pdata:00000001400D9BCC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140365200   proc near               ; DATA XREF: .pdata:00000001400D9BD8↑o
                                        ; sub_140A65D7C+1F↓o

var_18          = qword ptr -18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; __unwind { // __GSHandlerCheck
                push    rbx
                sub     rsp, 20h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+28h+var_18], rax
                mov     r10, [rsp+28h+arg_20]
                mov     eax, edx
                mov     r11, [rsp+28h+arg_28]
                xor     ecx, ecx
                cpuid
                mov     [r8], eax
                mov     [r9], ebx
                mov     [r10], ecx
                mov     [r11], edx
                mov     rcx, [rsp+28h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140365200
sub_140365200   endp

algn_140365245:                         ; DATA XREF: .pdata:00000001400D9BD8↑o
                align 10h
qword_140365250 dq 20E2C148320FCA8Bh    ; DATA XREF: .pdata:00000001400D9BE4↑o
                                        ; sub_140A65D7C+2D↓o
; ---------------------------------------------------------------------------
                or      rax, rdx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
byte_14036525D  db 13h dup(0CCh)        ; DATA XREF: .pdata:00000001400D9BE4↑o
qword_140365270 dq 0D08B49C08B49CA8Bh, 0CCC3300F20EAC148h
                                        ; DATA XREF: .pdata:00000001400D9BF0↑o
                                        ; sub_140A65D7C+26↓o
byte_140365280  db 10h dup(0CCh)        ; DATA XREF: .pdata:00000001400D9BF0↑o

; =============== S U B R O U T I N E =======================================


sub_140365290   proc near               ; DATA XREF: .rdata:0000000140005DE8↑o
                                        ; .rdata:0000000140005F28↑o ...
                mov     rax, [rcx+1F8h]
                retn
sub_140365290   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_140365299:                         ; DATA XREF: .pdata:00000001400D9BFC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403652A0   proc near               ; DATA XREF: .rdata:0000000140005D70↑o
                                        ; .rdata:0000000140005EB0↑o ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rdx
                lea     rcx, [rdx+4]
                xor     edx, edx
                lea     r8d, [rdx+7Ch]
                call    memset
                or      dword ptr [rbx+24h], 2
                xor     eax, eax
                mov     dword ptr [rbx], 1
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403652A0   endp

algn_1403652CB:                         ; DATA XREF: .pdata:00000001400D9C08↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403652E0   proc near               ; DATA XREF: .pdata:00000001400D9C14↑o
                                        ; .data:0000000140C051A0↓o
                mov     edx, 70h ; 'p'
                mov     al, cl
                out     dx, al          ; CMOS Memory/RTC Index Register:
                                        ; RTC Seconds
                mov     edx, 71h ; 'q'
                in      al, dx          ; CMOS Memory/RTC Data Register
                retn
sub_1403652E0   endp

; ---------------------------------------------------------------------------
                align 10h
algn_1403652F0:                         ; DATA XREF: .pdata:00000001400D9C14↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140365300   proc near               ; DATA XREF: .pdata:00000001400D9C20↑o
                                        ; .data:0000000140C051A8↓o
                mov     r8b, dl
                mov     edx, 70h ; 'p'
                mov     al, cl
                out     dx, al          ; CMOS Memory/RTC Index Register:
                                        ; RTC Seconds
                mov     edx, 71h ; 'q'
                mov     al, r8b
                out     dx, al          ; CMOS Memory/RTC Data Register
                retn
sub_140365300   endp

; ---------------------------------------------------------------------------
                align 2
algn_140365316:                         ; DATA XREF: .pdata:00000001400D9C20↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140365320   proc near               ; DATA XREF: .pdata:00000001400D9C2C↑o
                                        ; sub_1403A1D44+8E↓o
                mov     rax, cs:qword_140C508B0
                movsxd  rdx, ecx
                mov     eax, [rdx+rax]
                retn
sub_140365320   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_14036532F:                         ; DATA XREF: .pdata:00000001400D9C2C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140365340   proc near               ; DATA XREF: .pdata:00000001400D9C38↑o
                                        ; sub_1403A1D44+95↓o
                mov     rax, cs:qword_140C508B0
                movsxd  r8, ecx
                mov     [r8+rax], edx
                retn
sub_140365340   endp

; ---------------------------------------------------------------------------
                align 10h
algn_140365350:                         ; DATA XREF: .pdata:00000001400D9C38↑o
                align 20h
qword_140365360 dq 800C18104F9C1h, 4820E2C148320F00h
                                        ; DATA XREF: .pdata:00000001400D9C44↑o
                                        ; sub_1403A1D44+1025AF↓o
; ---------------------------------------------------------------------------
                or      eax, edx
                retn
; ---------------------------------------------------------------------------
                align 4
algn_140365374:                         ; DATA XREF: .pdata:00000001400D9C44↑o
                align 20h
qword_140365380 dq 0C181D28B04F9C1h, 0EAC148C28B000008h
                                        ; DATA XREF: .pdata:00000001400D9C50↑o
                                        ; sub_1403A1D44+1025B6↓o
                db 20h, 0Fh, 30h, 0C3h, 0CCh
algn_140365395:                         ; DATA XREF: .pdata:00000001400D9C50↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403653A0   proc near               ; DATA XREF: .pdata:00000001400D9C5C↑o
                                        ; sub_1409A0570+D5↓o ...
                xor     eax, eax
                mov     [rcx], rax
                mov     eax, 0C00000BBh
                retn
sub_1403653A0   endp

; ---------------------------------------------------------------------------
                align 4
algn_1403653AC:                         ; DATA XREF: .pdata:00000001400D9C5C↑o
                align 20h
; Exported entry 615. HalFlushCommonBuffer

; =============== S U B R O U T I N E =======================================


