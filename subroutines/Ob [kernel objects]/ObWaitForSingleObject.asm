ObWaitForSingleObject proc near         ; CODE XREF: NtWaitForSingleObject+65↑p
                                        ; DATA XREF: .rdata:0000000140056210↑o ...

var_38          = qword ptr -38h
var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001407E68A0 SIZE 00000020 BYTES
; FUNCTION CHUNK AT 0000000140806490 SIZE 00000047 BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], rdi
                push    r14
                sub     rsp, 50h
                movzx   esi, r9b
                movzx   r14d, r8b
                xor     eax, eax
                mov     [r11-10h], rax
                mov     [r11-28h], rax
                lea     rax, [r11-10h]
                mov     [r11-30h], rax
                mov     dword ptr [rsp+58h+var_38], 7457624Fh
                movzx   r9d, dl
                xor     r8d, r8d
                mov     edx, 100000h
                call    ObReferenceObjectByHandleWithTag
                mov     ebx, eax
                test    eax, eax
                js      short loc_140644DF1
                mov     rdi, [rsp+58h+var_10]
                lea     rcx, [rdi-30h]
                call    sub_14023FE50
                mov     r10, rax
                mov     rcx, cs:qword_140C15FC8
                test    rcx, rcx
                jnz     loc_140806490

loc_140644DAF:                          ; CODE XREF: ObWaitForSingleObject+1C177A↓j
                                        ; DATA XREF: .rdata:00000001400561FC↑o
;   __try { // __except at loc_140644DD9
                mov     rax, [rsp+58h+arg_20]
                mov     [rsp+58h+var_38], rax
                movzx   r9d, sil
                movzx   r8d, r14b
                mov     edx, 6
                mov     rcx, r10
                call    KeWaitForSingleObject
                mov     ebx, eax
                mov     [rsp+58h+var_18], eax
                jmp     short loc_140644DE4
;   } // starts at 140644DAF
; ---------------------------------------------------------------------------

loc_140644DD9:                          ; DATA XREF: .rdata:00000001400561FC↑o
;   __except(loc_1407E68A0) // owned by 140644DAF
                mov     ebx, eax
                mov     [rsp+58h+var_18], eax
                mov     rdi, [rsp+58h+var_10]

loc_140644DE4:                          ; CODE XREF: ObWaitForSingleObject+97↑j
                mov     edx, 7457624Fh
                mov     rcx, rdi
                call    ObfDereferenceObjectWithTag

loc_140644DF1:                          ; CODE XREF: ObWaitForSingleObject+4C↑j
                mov     eax, ebx

loc_140644DF3:                          ; CODE XREF: ObWaitForSingleObject+1C1792↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_8]
                mov     rdi, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140644D40
ObWaitForSingleObject endp
