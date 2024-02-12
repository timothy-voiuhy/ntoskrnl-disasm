IoPageRead      proc near               ; CODE XREF: sub_1408E858C+1CE↓p
                                        ; DATA XREF: .rdata:0000000140094DD4↑o ...

var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404961BA SIZE 00000017 BYTES

                sub     rsp, 48h
                mov     r10, rcx
                mov     r11, r8
                xor     ecx, ecx
                test    r10b, 3
                jnz     loc_1404961BA

loc_14037F5A6:                          ; CODE XREF: IoPageRead+116C3C↓j
                mov     rax, rdx
                mov     r8, rdx
                and     eax, 1
                and     r8, 0FFFFFFFFFFFFFFFEh
                test    rax, rax
                cmovz   r8, rdx
                mov     edx, ecx
                or      edx, 4
                test    rax, rax
                cmovz   edx, ecx
                mov     rcx, r8
                mov     eax, edx
                and     ecx, 2
                or      eax, 8
                test    rcx, rcx
                cmovz   eax, edx
                mov     rdx, r8
                and     rdx, 0FFFFFFFFFFFFFFFDh
                test    rcx, rcx
                mov     rcx, r10
                cmovz   rdx, r8
                and     [rsp+48h+var_18], 0
                mov     [rsp+48h+var_20], eax
                mov     r8, r11
                mov     rax, [rsp+48h+arg_20]
                mov     [rsp+48h+var_28], rax
                call    sub_1402A2250
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoPageRead      endp

algn_14037F609:                         ; DATA XREF: .rdata:0000000140094DD4↑o
                                        ; .pdata:00000001400DB3B4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_14037F610   proc near               ; DATA XREF: .pdata:00000001400DB3C0↑o
                                        ; sub_140A1EEE4+2E05↓o
                sub     rsp, 28h
                mov     r8, qword ptr cs:xmmword_140E00020+8
                cmp     rcx, r8
                jb      short loc_14037F62E
                mov     eax, dword ptr cs:qword_140E00030
                add     rax, r8
                cmp     rcx, rax
                jb      short loc_14037F639

loc_14037F62E:                          ; CODE XREF: sub_14037F610+E↑j
                call    sub_1402AD640

loc_14037F633:                          ; CODE XREF: sub_14037F610+43↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14037F639:                          ; CODE XREF: sub_14037F610+1C↑j
                movaps  xmm0, cs:xmmword_140E00020
                movups  xmmword ptr [rdx], xmm0
                movsd   xmm1, cs:qword_140E00030
                movsd   qword ptr [rdx+10h], xmm1
                mov     rax, [rdx]
                jmp     short loc_14037F633
sub_14037F610   endp

; ---------------------------------------------------------------------------
algn_14037F655:                         ; DATA XREF: .pdata:00000001400DB3C0↑o
                align 20h
; Exported entry 730. IoAllocateDriverObjectExtension

; =============== S U B R O U T I N E =======================================


