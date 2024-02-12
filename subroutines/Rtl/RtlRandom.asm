RtlRandom       proc near               ; CODE XREF: sub_1404EB518+16↑p
                                        ; sub_1404EB518+6A↑p ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     ecx, 1
                call    sub_1402D2900
                btr     eax, 1Fh
                mov     [rbx], eax
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlRandom       endp

byte_14071C5D0  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140106D88↑o

; =============== S U B R O U T I N E =======================================


sub_14071C5D8   proc near               ; CODE XREF: sub_1406CE5F4+DC↑p
                                        ; sub_140761F34+552↓p
                                        ; DATA XREF: ...

arg_0           = byte ptr  8
arg_8           = qword ptr  10h

                mov     rax, rsp
                mov     [rax+10h], rdx
                push    rbx
                sub     rsp, 20h
                xor     ebx, ebx
                lea     r9, [rax+8]
                add     rcx, 48h ; 'H'
                mov     [rax+8], bl
                lea     rdx, [rax+10h]
                lea     r8d, [rbx+8]
                call    RtlInsertElementGenericTableAvl
                test    rax, rax
                jz      short loc_14071C61B
                cmp     [rsp+28h+arg_0], bl
                jz      short loc_14071C612
                mov     rax, [rsp+28h+arg_8]
                lock inc dword ptr [rax+8]

loc_14071C612:                          ; CODE XREF: sub_14071C5D8+2F↑j
                                        ; sub_14071C5D8+48↓j
                mov     eax, ebx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14071C61B:                          ; CODE XREF: sub_14071C5D8+29↑j
                mov     ebx, 0C000009Ah
                jmp     short loc_14071C612
sub_14071C5D8   endp

; ---------------------------------------------------------------------------
algn_14071C622:                         ; DATA XREF: .pdata:0000000140106D94↑o
                align 10h
; Exported entry 1537. NtCompareSigningLevels

; =============== S U B R O U T I N E =======================================


