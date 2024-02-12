ntoskrnl_4      proc near               ; CODE XREF: ExAllocateTimer+14↑p
                                        ; ntoskrnl_3:loc_1405B62FF↓p
                                        ; DATA XREF: ...

var_38          = qword ptr -38h
var_28          = word ptr -28h
var_26          = word ptr -26h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014044F8B8 SIZE 0000001B BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r15, rcx
                mov     edi, r9d
                mov     ecx, r9d
                mov     r14, r8
                mov     rbp, rdx
                call    sub_1402B77AC
                test    al, al
                jz      loc_14044F8B8
                mov     r9d, 0
                mov     esi, edi
                and     esi, 2
                setnz   r9b
                xor     eax, eax
                test    r14, r14
                setnz   al
                cmp     r9d, eax
                jnz     loc_14044F8B8
                mov     edx, 0A0h
                mov     ecx, 200h
                mov     r8d, 6D547845h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1402B51BC
                mov     r8, rbp
                mov     rdx, r15
                test    esi, esi
                jnz     short loc_1402B51D9
                and     [rax+2], si
                mov     r9d, edi
                mov     rcx, rax
                call    sub_1402B780C

loc_1402B516A:                          ; CODE XREF: ntoskrnl_4+11D↓j
                mov     rax, cs:qword_140CFC808
                mov     rdx, cs:qword_140CFCA10
                mov     ecx, eax
                bswap   rdx
                xor     rdx, rbx
                ror     rdx, cl
                xor     rdx, rax
                mov     [rbx+88h], rdx
                mov     rax, cs:qword_140CFC808
                mov     rdx, cs:qword_140CFCA10
                mov     ecx, eax
                bswap   rdx
                xor     rdx, rbx
                ror     rdx, cl
                xor     rdx, rax
                mov     al, cs:byte_140CFC4C6
                mov     [rbx+98h], al
                mov     [rbx+90h], rdx

loc_1402B51BC:                          ; CODE XREF: ntoskrnl_4+6F↑j
                mov     rbp, [rsp+58h+arg_8]
                mov     rax, rbx
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402B51D9:                          ; CODE XREF: ntoskrnl_4+79↑j
                movzx   ecx, word ptr [r14]
                lea     r9, [rsp+58h+var_28]
                mov     [rsp+58h+var_28], cx
                movzx   ecx, word ptr [r14+2]
                mov     [rsp+58h+var_26], cx
                mov     rcx, rbx
                mov     dword ptr [rsp+58h+var_38], edi
                call    sub_140381360
                jmp     loc_1402B516A
ntoskrnl_4      endp

; ---------------------------------------------------------------------------
algn_1402B5202:                         ; DATA XREF: .rdata:00000001400656A4↑o
                                        ; .pdata:00000001400D09C8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1402B5208   proc near               ; CODE XREF: sub_14067C148+3C↓p
                                        ; DATA XREF: .pdata:00000001400D09D4↑o
                sub     rsp, 28h
                mov     rcx, [rcx+38h]
                xor     r9d, r9d
                mov     eax, edx
                xor     r8d, r8d
                imul    rdx, rax, 0FFFFFFFFFFFFD8F0h
                call    ExSetTimer
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402B5208   endp

algn_1402B522A:                         ; DATA XREF: .pdata:00000001400D09D4↑o
                align 10h
; Exported entry 323. ExSetTimer

; =============== S U B R O U T I N E =======================================


