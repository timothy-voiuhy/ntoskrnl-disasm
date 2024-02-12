KeRemoveQueueDpcEx proc near            ; CODE XREF: sub_1402C0640+E5↑p
                                        ; sub_140311EDC+1C↑p ...

var_228         = dword ptr -228h
var_208         = byte ptr -208h
var_204         = dword ptr -204h
var_200         = qword ptr -200h
var_1F8         = qword ptr -1F8h
var_1F0         = word ptr -1F0h
var_1EE         = dword ptr -1EEh
var_1EA         = word ptr -1EAh
var_1E8         = dword ptr -1E8h
var_1A8         = word ptr -1A8h
var_1A0         = qword ptr -1A0h
var_F8          = byte ptr -0F8h
var_48          = qword ptr -48h
var_38          = byte ptr -38h
var_8           = dword ptr -8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046DCFC SIZE 00000240 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                pushfq
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 1F0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+228h+var_48], rax
                mov     r12b, dl
                mov     rdi, rcx
                xor     edx, edx
                lea     rcx, [rsp+228h+var_1E8]
                lea     r8d, [rdx+40h]
                call    memset
                mov     ebx, 0A8h
                lea     rcx, [rsp+228h+var_F8]
                mov     r8d, ebx
                xor     edx, edx
                call    memset
                xor     ebp, ebp
                lea     rcx, [rsp+228h+var_1A8]
                mov     r8d, ebx
                mov     [rsp+228h+var_1EE], ebp
                xor     edx, edx
                mov     [rsp+228h+var_1EA], bp
                mov     [rsp+228h+var_204], ebp
                call    memset
                mov     r15b, bpl
                mov     [rsp+228h+var_208], bpl
                cli
                mov     r14d, [rsp+228h+var_8]
                lea     rsi, qword_140CFDCC0
                mov     r13, [rdi+38h]
                shr     r14d, 9
                and     r14b, 1
                test    r13, r13
                jnz     loc_14046DCFC

loc_14031205A:                          ; CODE XREF: KeRemoveQueueDpcEx+15BE0A↓j
                test    r14b, r14b
                jz      short loc_140312060
                sti

loc_140312060:                          ; CODE XREF: KeRemoveQueueDpcEx+AD↑j
                test    r12b, r12b
                jnz     loc_14046DDBF

loc_140312069:                          ; CODE XREF: KeRemoveQueueDpcEx+15BE13↓j
                                        ; KeRemoveQueueDpcEx+15BF63↓j ...
                mov     al, r15b
                mov     rcx, [rsp+228h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+228h+var_38]
                mov     rbx, [r11+48h]
                mov     rbp, [r11+50h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140311FB0
KeRemoveQueueDpcEx endp
