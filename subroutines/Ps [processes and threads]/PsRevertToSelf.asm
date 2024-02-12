PsRevertToSelf  proc near               ; CODE XREF: sub_1406DB2B8+129↑p
                                        ; DATA XREF: .pdata:0000000140103D04↑o

var_18          = dword ptr -18h

                sub     rsp, 38h
                mov     rcx, gs:188h
                xor     r9d, r9d
                xor     r8d, r8d
                mov     [rsp+38h+var_18], 2
                xor     edx, edx
                call    PsImpersonateClient
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PsRevertToSelf  endp

algn_1406DC578:                         ; DATA XREF: .pdata:0000000140103D04↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406DC580   proc near               ; DATA XREF: .pdata:0000000140103D10↑o
                                        ; PAGE:000000014098AAC8↓o

var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_58          = byte ptr -58h
var_48          = qword ptr -48h
var_8           = byte ptr -8
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407E7BB7 SIZE 00000034 BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], rdi
                push    r14
                sub     rsp, 0B0h
                mov     rbx, r8
                mov     rsi, rdx
                mov     r14, rcx
                xor     eax, eax
                mov     [r11-78h], rax
                mov     [rsp+0B8h+var_70], eax
                xor     edx, edx
                lea     r8d, [rax+48h]
                lea     rcx, [r11-58h]
                call    memset
                mov     rax, gs:188h
                mov     dil, [rax+232h]

loc_1406DC5CA:                          ; DATA XREF: .rdata:0000000140077300↑o
;   __try { // __except at loc_1406DC602
                test    dil, dil
                jz      short loc_1406DC5EF
                test    bl, 3
                jnz     short loc_1406DC5E9
                mov     rax, 7FFFFFFF0000h
                cmp     rbx, rax
                cmovb   rax, rbx
                mov     al, [rax]
                jmp     short loc_1406DC5EF
; ---------------------------------------------------------------------------

loc_1406DC5E9:                          ; CODE XREF: sub_1406DC580+52↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406DC5EF:                          ; CODE XREF: sub_1406DC580+4D↑j
                                        ; sub_1406DC580+67↑j
                movsd   xmm0, qword ptr [rbx]
                movsd   [rsp+0B8h+var_78], xmm0
                mov     eax, [rbx+8]
                mov     [rsp+0B8h+var_70], eax
                jmp     short loc_1406DC607
;   } // starts at 1406DC5CA
; ---------------------------------------------------------------------------

loc_1406DC602:                          ; DATA XREF: .rdata:0000000140077300↑o
;   __except(loc_1407E7BB7) // owned by 1406DC5CA
                jmp     loc_1406DC6CA
; ---------------------------------------------------------------------------

loc_1406DC607:                          ; CODE XREF: sub_1406DC580+80↑j
                mov     r8, cs:PsThreadType
                and     [rsp+0B8h+var_80], 0
                and     [rsp+0B8h+var_90], 0
                lea     rax, [rsp+0B8h+var_80]
                mov     [rsp+0B8h+var_98], rax
                mov     r9b, dil
                mov     edx, 200h
                mov     rcx, rsi
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      loc_1406DC6CA
                mov     r8, cs:PsThreadType
                and     [rsp+0B8h+arg_18], 0
                and     [rsp+0B8h+var_90], 0
                lea     rax, [rsp+0B8h+arg_18]
                mov     [rsp+0B8h+var_98], rax
                mov     r9b, dil
                mov     edx, 100h
                mov     rcx, r14
                call    ObReferenceObjectByHandle
                mov     edi, eax
                mov     rbx, [rsp+0B8h+var_80]
                test    eax, eax
                js      short loc_1406DC6C0
                lea     r9, [rsp+0B8h+var_58]
                xor     r8d, r8d
                lea     rdx, [rsp+0B8h+var_78]
                mov     rcx, rbx
                call    SeCreateClientSecurity
                mov     edi, eax
                test    eax, eax
                js      short loc_1406DC6B3
                mov     rdx, [rsp+0B8h+arg_18]
                lea     rcx, [rsp+0B8h+var_58]
                call    SeImpersonateClientEx
                mov     edi, eax
                mov     rcx, [rsp+0B8h+var_48]
                call    PsDereferenceSiloContext

loc_1406DC6B3:                          ; CODE XREF: sub_1406DC580+113↑j
                mov     rcx, [rsp+0B8h+arg_18]
                call    PsDereferenceSiloContext

loc_1406DC6C0:                          ; CODE XREF: sub_1406DC580+F8↑j
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     eax, edi

loc_1406DC6CA:                          ; CODE XREF: sub_1406DC580:loc_1406DC602↑j
                                        ; sub_1406DC580+B6↑j
                lea     r11, [rsp+0B8h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406DC580
sub_1406DC580   endp

algn_1406DC6E5:                         ; DATA XREF: .pdata:0000000140103D10↑o
                align 10h
; Exported entry 2529. SeImpersonateClientEx

; =============== S U B R O U T I N E =======================================


