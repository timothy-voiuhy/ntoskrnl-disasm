KeOrAffinityEx  proc near               ; CODE XREF: sub_140250E60+3BA↑p
                                        ; sub_140250E60+42D↑p ...

var_C8          = byte ptr -0C8h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046DF90 SIZE 0000000A BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0E8h+var_18], rax
                mov     rbx, r8
                mov     rdi, rdx
                mov     rsi, rcx
                xor     edx, edx
                mov     r8d, 0A8h
                lea     rcx, [rsp+0E8h+var_C8]
                call    memset
                test    rbx, rbx
                jz      loc_14046DF90

loc_14031293D:                          ; CODE XREF: KeOrAffinityEx+15B6A5↓j
                movzx   eax, word ptr [rdi]
                mov     r9, rdi
                movzx   edx, word ptr [rsi]
                cmp     dx, ax
                movzx   r10d, dx
                cmovnb  r10w, ax
                cmovnb  r9, rsi
                xor     ebp, ebp
                mov     eax, 14h
                mov     [rbx+2], ax
                mov     r11d, ebp
                movzx   ecx, bp
                movzx   eax, word ptr [r9]
                mov     [rbx], ax
                cmp     bp, r10w
                jnb     short loc_14031299F

loc_140312974:                          ; CODE XREF: KeOrAffinityEx+AD↓j
                movzx   eax, cx
                lea     r8, ds:0[rax*8]
                mov     rdx, [r8+rsi+8]
                or      rdx, [r8+rdi+8]
                mov     [r8+rbx+8], rdx
                jz      short loc_140312996
                mov     r11d, 1

loc_140312996:                          ; CODE XREF: KeOrAffinityEx+9E↑j
                inc     cx
                cmp     cx, r10w
                jb      short loc_140312974

loc_14031299F:                          ; CODE XREF: KeOrAffinityEx+82↑j
                cmp     cx, [r9]
                jb      short loc_140312A00

loc_1403129A5:                          ; CODE XREF: KeOrAffinityEx+12B↓j
                lea     rax, [rsp+0E8h+var_C8]
                cmp     rbx, rax
                jz      short loc_1403129D1
                mov     [rbx+4], ebp
                cmp     cx, [rbx+2]
                jnb     short loc_1403129D1
                nop     dword ptr [rax+rax+00000000h]

loc_1403129C0:                          ; CODE XREF: KeOrAffinityEx+DF↓j
                movzx   edx, cx
                inc     cx
                mov     [rbx+rdx*8+8], rbp
                cmp     cx, [rbx+2]
                jb      short loc_1403129C0

loc_1403129D1:                          ; CODE XREF: KeOrAffinityEx+BD↑j
                                        ; KeOrAffinityEx+C6↑j
                mov     eax, r11d
                mov     rcx, [rsp+0E8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0E8h+var_8]
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+28h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_140312A00:                          ; CODE XREF: KeOrAffinityEx+B3↑j
                                        ; KeOrAffinityEx+129↓j
                movzx   eax, cx
                mov     rdx, [r9+rax*8+8]
                mov     [rbx+rax*8+8], rdx
                test    rdx, rdx
                jnz     short loc_140312A1D

loc_140312A12:                          ; CODE XREF: KeOrAffinityEx+133↓j
                inc     cx
                cmp     cx, [r9]
                jb      short loc_140312A00
                jmp     short loc_1403129A5
; ---------------------------------------------------------------------------

loc_140312A1D:                          ; CODE XREF: KeOrAffinityEx+120↑j
                mov     r11d, 1
                jmp     short loc_140312A12
; } // starts at 1403128F0
KeOrAffinityEx  endp

; ---------------------------------------------------------------------------
byte_140312A25  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400776B4↑o
                                        ; .pdata:00000001400D4A84↑o

; =============== S U B R O U T I N E =======================================


sub_140312A2C   proc near               ; CODE XREF: sub_14060DA00+413↓p
                                        ; DATA XREF: .pdata:00000001400D4A90↑o

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014041998B SIZE 00000016 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                xor     ebx, ebx

loc_140312A3B:                          ; DATA XREF: .rdata:00000001400776D8↑o
;   __try { // __except at loc_140312A74
                movzx   eax, cs:word_140CFB058
                mov     [rcx], ax
                movzx   eax, cs:word_140CFC528
                mov     [rcx+2], ax
                movzx   eax, cs:word_140CFC604
                mov     [rcx+4], ax
                mov     ecx, 0FFFFh
                call    KeQueryMaximumProcessorCountEx
                mov     [rdi+6], ax
                mov     eax, dword ptr cs:qword_140CFC458
                mov     [rdi+8], eax
                jmp     short loc_140312A76
;   } // starts at 140312A3B
; ---------------------------------------------------------------------------

loc_140312A74:                          ; DATA XREF: .rdata:00000001400776D8↑o
;   __except(BaseFiberStart$filt$0) // owned by 140312A3B
                mov     ebx, eax

loc_140312A76:                          ; CODE XREF: sub_140312A2C+46↑j
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140312A2C
sub_140312A2C   endp

algn_140312A84:                         ; DATA XREF: .pdata:00000001400D4A90↑o
                align 10h
; Exported entry 1249. KeQueryMaximumProcessorCountEx

; =============== S U B R O U T I N E =======================================


