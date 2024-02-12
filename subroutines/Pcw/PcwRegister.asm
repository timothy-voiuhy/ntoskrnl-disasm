PcwRegister     proc near               ; CODE XREF: sub_1407CAD10+9B↓p
                                        ; sub_1407CAD10+F0↓p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001408511F6 SIZE 00000010 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rdi, rdx
                mov     rcx, cs:qword_140D2D098
                call    sub_140309D44
                test    rax, rax
                jz      loc_1408511F6
                mov     rax, [rax]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1404079D0
                mov     rcx, cs:qword_140D2D098
                mov     ebx, eax
                call    sub_140309D28

loc_1407806B1:                          ; CODE XREF: PcwRegister+D0B91↓j
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PcwRegister     endp

byte_1407806BF  db 11h dup(0CCh)        ; DATA XREF: .rdata:000000014009BCA0↑o
                                        ; .pdata:000000014010B8E8↑o

; =============== S U B R O U T I N E =======================================


sub_1407806D0   proc near               ; CODE XREF: sub_14067EC44+F61↑p
                                        ; sub_14067EC44+1C9B↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_1402B95B0
                xor     edx, edx
                cmp     rbx, [rax+368h]
                setz    dl
                mov     eax, edx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1407806D0   endp

algn_1407806F3:                         ; DATA XREF: .pdata:000000014010B8F4↑o
                align 20h
; Exported entry 1973. RtlAddAccessAllowedAceEx

; =============== S U B R O U T I N E =======================================


