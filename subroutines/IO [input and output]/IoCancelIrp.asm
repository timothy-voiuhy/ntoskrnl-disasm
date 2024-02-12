IoCancelIrp     proc near               ; CODE XREF: sub_140306388+13E↑p
                                        ; sub_140307694+101↑p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014046AA28 SIZE 00000096 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                cmp     cs:dword_140C1D15C, 0
                mov     rbx, rcx
                jnz     loc_14046AA28

loc_1403077FF:                          ; CODE XREF: IoCancelIrp+163260↓j
                                        ; IoCancelIrp+16326C↓j
                mov     ecx, 7
                call    KeAcquireQueuedSpinLock
                xor     edi, edi
                mov     byte ptr [rbx+44h], 1
                xchg    rdi, [rbx+68h]
                mov     sil, al
                test    rdi, rdi
                jz      short loc_14030786A
                mov     cl, [rbx+42h]
                inc     cl
                cmp     [rbx+43h], cl
                jg      loc_14046AA51
                cmp     cs:dword_140C1D15C, 0
                mov     [rbx+45h], al
                jnz     loc_14046AA6A

loc_140307839:                          ; CODE XREF: IoCancelIrp+1632A2↓j
                mov     rcx, [rbx+0B8h]
                mov     rdx, rbx
                mov     rax, rdi
                mov     rcx, [rcx+28h]
                call    sub_1404079D0

loc_14030784F:                          ; CODE XREF: IoCancelIrp+1632BF↓j
                mov     rax, cr8
                cmp     al, 2
                jz      short loc_14030787B

loc_140307857:                          ; CODE XREF: IoCancelIrp+9F↓j
                mov     al, 1

loc_140307859:                          ; CODE XREF: IoCancelIrp+99↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14030786A:                          ; CODE XREF: IoCancelIrp+39↑j
                mov     dl, sil
                mov     ecx, 7
                call    KeReleaseQueuedSpinLock
                xor     al, al
                jmp     short loc_140307859
; ---------------------------------------------------------------------------

loc_14030787B:                          ; CODE XREF: IoCancelIrp+75↑j
                cmp     sil, 2
                jz      short loc_140307857
                jmp     loc_14046AAA4
IoCancelIrp     endp

; ---------------------------------------------------------------------------
algn_140307886:                         ; DATA XREF: .rdata:000000014007156C↑o
                                        ; .pdata:00000001400D40AC↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_140307890   proc near               ; DATA XREF: .rdata:0000000140071618↑o
                                        ; .pdata:00000001400D40B8↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140419939 SIZE 0000004C BYTES
; FUNCTION CHUNK AT 000000014046AABE SIZE 00000042 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 40h
                mov     rdi, rdx
                mov     rsi, rcx
                mov     eax, cs:dword_140CFC660
                xor     ebx, ebx
                test    eax, eax
                jnz     loc_14046AABE

loc_1403078B5:                          ; CODE XREF: sub_140307890+163230↓j
                                        ; sub_140307890+16323E↓j ...
                mov     cr8, rbx
                mov     rbx, gs:188h
                mov     rcx, rbx
                call    sub_140664890
                mov     eax, [rbx+510h]
                xor     eax, 1
                and     eax, 3
                cmp     al, 3
                jnz     short loc_1403078F2

loc_1403078DA:                          ; DATA XREF: .rdata:0000000140071604↑o
;   __try { // __except at loc_1403078E7
                mov     rcx, rdi
                mov     rax, rsi
                call    sub_1404079D0
                jmp     short loc_1403078F2
;   } // starts at 1403078DA
; ---------------------------------------------------------------------------

loc_1403078E7:                          ; DATA XREF: .rdata:0000000140071604↑o
;   __except(loc_140419939) // owned by 1403078DA
                mov     ecx, 1Eh
                call    KeBugCheck
                nop

loc_1403078F2:                          ; CODE XREF: sub_140307890+48↑j
                                        ; sub_140307890+55↑j
                mov     r8b, 1
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1406AB230
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_8]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140307890
sub_140307890   endp

algn_140307910:                         ; DATA XREF: .rdata:0000000140071618↑o
                                        ; .pdata:00000001400D40B8↑o
                align 20h
; Exported entry 1874. PsGetThreadTeb

; =============== S U B R O U T I N E =======================================


