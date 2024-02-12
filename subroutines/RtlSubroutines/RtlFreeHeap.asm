RtlFreeHeap     proc near               ; CODE XREF: sub_140316838+1594F0↓p
                                        ; DATA XREF: .rdata:0000000140077EF0↑o ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014046F9C6 SIZE 0000001F BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                mov     rdi, r8
                mov     esi, edx
                mov     rbx, rcx
                test    r8, r8
                jz      short loc_14031673D
                test    rcx, rcx
                jz      loc_14046F9C6

loc_140316715:                          ; CODE XREF: RtlFreeHeap+1592F0↓j
                cmp     dword ptr [rbx+10h], 0DDEEDDEEh
                mov     r8d, esi
                mov     rdx, rdi
                mov     rcx, rbx
                jz      short loc_140316744
                call    sub_140316754

loc_14031672C:                          ; CODE XREF: RtlFreeHeap+52↓j
                                        ; RtlFreeHeap+59↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14031673D:                          ; CODE XREF: RtlFreeHeap+1A↑j
                mov     eax, 1
                jmp     short loc_14031672C
; ---------------------------------------------------------------------------

loc_140316744:                          ; CODE XREF: RtlFreeHeap+35↑j
                call    sub_140586A50
                jmp     short loc_14031672C
RtlFreeHeap     endp

; ---------------------------------------------------------------------------
byte_14031674B  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140077EF0↑o
                                        ; .pdata:00000001400D4D60↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140316754   proc near               ; CODE XREF: RtlFreeHeap+37↑p
                                        ; sub_140586A50:loc_140586A54↓p
                                        ; DATA XREF: ...

var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_28          = dword ptr -28h
var_18          = dword ptr -18h
var_8           = dword ptr -8
var_s0          = byte ptr  0
arg_18          = dword ptr  38h

; FUNCTION CHUNK AT 000000014046F9E6 SIZE 000001BA BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r9
                push    rbp
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                xor     ebx, ebx
                mov     r15d, r8d
                cmp     dword ptr [rcx+10h], 0CCDDCCDDh
                mov     r14, rdx
                mov     rsi, rcx
                jnz     loc_14046F9E6
                mov     ecx, r8d
                mov     [rbp+arg_18], ebx
                call    sub_14031692C
                or      eax, [rsi+14h]
                lea     rdx, [rbp+arg_18]
                mov     [rsp+60h+var_40], rdx
                lea     rcx, [rsi+40h]
                xor     edx, edx
                mov     r9d, eax
                mov     r8, r14
                call    sub_14023A280
                mov     ebx, eax

loc_1403167B5:                          ; CODE XREF: sub_140316754+1592F4↓j
                                        ; sub_140316754+1593EF↓j ...
                lea     r11, [rsp+60h+var_s0]
                mov     eax, ebx
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140316754   endp

algn_1403167D2:                         ; DATA XREF: .rdata:0000000140077F1C↑o
                                        ; .pdata:00000001400D4D6C↑o
                align 20h
; Exported entry 1986. RtlAllocateHeap

; =============== S U B R O U T I N E =======================================


