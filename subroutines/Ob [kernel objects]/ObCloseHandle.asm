ObCloseHandle   proc near               ; CODE XREF: NtSetInformationFile+D08↑p
                                        ; sub_1402B6518+15D↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014080ACDC SIZE 00000023 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                test    cs:dword_140C2A6E0, 100h
                mov     dil, dl
                mov     rbx, rcx
                jnz     loc_14080ACDC

loc_140662B40:                          ; CODE XREF: ObCloseHandle+1A81BF↓j
                                        ; ObCloseHandle+1A81CE↓j ...
                mov     dl, dil
                mov     rcx, rbx
                call    sub_140662B60
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObCloseHandle   endp

algn_140662B57:                         ; DATA XREF: .rdata:0000000140061D44↑o
                                        ; .pdata:0000000140100164↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140662B60   proc near               ; CODE XREF: ObCloseHandle+26↑p
                                        ; sub_14071CB34+111512↓p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_40          = byte ptr -40h
arg_0           = qword ptr  8
arg_10          = byte ptr  18h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 000000014080AD00 SIZE 000000E5 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r14, gs:188h
                xor     r13d, r13d
                mov     r15b, dl
                mov     [rax+18h], r13b
                mov     rdi, rcx
                mov     r12b, r13b
                mov     rsi, [r14+0B8h]
                call    sub_140243260
                test    al, al
                jz      short loc_140662C0A
                mov     rbx, cs:qword_140C259A0
                xor     rdi, 0FFFFFFFF80000000h
                mov     rbp, cs:PsInitialSystemProcess

loc_140662BB4:                          ; CODE XREF: sub_140662B60+CD↓j
                                        ; sub_140662B60+E9↓j
                dec     word ptr [r14+1E4h]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_140663A60
                test    rax, rax
                jz      loc_14080AD00
                mov     [rsp+68h+var_40], r13b
                mov     r9, rdi
                mov     r8, rbp
                mov     byte ptr [rsp+68h+var_48], r15b
                mov     rdx, rax
                mov     rcx, rbx
                call    sub_140649AF0

loc_140662BEB:                          ; CODE XREF: sub_140662B60+1A8229↓j
                mov     ebx, eax

loc_140662BED:                          ; CODE XREF: sub_140662B60+1A8233↓j
                                        ; sub_140662B60+1A8280↓j
                test    r12b, r12b
                jnz     short loc_140662C4E

loc_140662BF2:                          ; CODE XREF: sub_140662B60+D4↓j
                                        ; sub_140662B60+FA↓j
                mov     eax, ebx
                mov     rbx, [rsp+68h+arg_0]
                add     rsp, 30h
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

loc_140662C0A:                          ; CODE XREF: sub_140662B60+3D↑j
                mov     rax, gs:188h
                mov     rbp, rsi
                cmp     byte ptr [rax+24Ah], 1
                jz      short loc_140662C36
                mov     rbx, [rsi+570h]
                cmp     rbx, cs:qword_140C259A0
                jnz     short loc_140662BB4

loc_140662C2F:                          ; CODE XREF: sub_140662B60+E4↓j
                mov     ebx, 0C0000008h
                jmp     short loc_140662BF2
; ---------------------------------------------------------------------------

loc_140662C36:                          ; CODE XREF: sub_140662B60+BD↑j
                mov     rcx, rsi
                call    sub_140639CB4
                mov     rbx, rax
                test    rax, rax
                jz      short loc_140662C2F
                mov     r12b, 1
                jmp     loc_140662BB4
; ---------------------------------------------------------------------------

loc_140662C4E:                          ; CODE XREF: sub_140662B60+90↑j
                lea     rcx, [rbp+458h]
                call    sub_14024C380
                jmp     short loc_140662BF2
sub_140662B60   endp

; ---------------------------------------------------------------------------
byte_140662C5C  db 14h dup(0CCh)        ; DATA XREF: .rdata:0000000140061D70↑o
                                        ; .pdata:0000000140100170↑o
; Exported entry 1554. NtFindAtom

; =============== S U B R O U T I N E =======================================


