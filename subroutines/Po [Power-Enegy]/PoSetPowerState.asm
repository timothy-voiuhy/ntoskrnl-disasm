PoSetPowerState proc near               ; CODE XREF: sub_14038AEA0+77↓p
                                        ; DATA XREF: .rdata:0000000140093CF8↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014049520C SIZE 00000065 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 20h
                mov     rbp, [rcx+138h]
                mov     ebx, r8d
                lea     rcx, qword_140C23AB8
                mov     esi, edx
                xor     edi, edi
                call    KeAcquireSpinLockRaiseToDpc
                movzx   r14d, al
                test    esi, esi
                jz      short loc_14037CC0B
                cmp     esi, 1
                jnz     short loc_14037CBCF
                mov     eax, [rbp+10h]
                mov     edi, eax
                shr     edi, 4
                and     edi, 0Fh
                cmp     edi, ebx
                jz      short loc_14037CBCF
                and     eax, 0FFFFFF0Fh
                and     ebx, 0Fh
                shl     ebx, 4

loc_14037CBCA:                          ; CODE XREF: PoSetPowerState+AD↓j
                or      ebx, eax
                mov     [rbp+10h], ebx

loc_14037CBCF:                          ; CODE XREF: PoSetPowerState+3E↑j
                                        ; PoSetPowerState+4D↑j ...
                lea     rcx, qword_140C23AB8
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14049520C

loc_14037CBE9:                          ; CODE XREF: PoSetPowerState+11869E↓j
                                        ; PoSetPowerState+1186AA↓j ...
                mov     cr8, r14
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, edi
                mov     rdi, [rsp+28h+arg_18]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14037CC0B:                          ; CODE XREF: PoSetPowerState+39↑j
                mov     eax, [rbp+10h]
                mov     edi, eax
                and     edi, 0Fh
                cmp     edi, ebx
                jz      short loc_14037CBCF
                and     eax, 0FFFFFFF0h
                and     ebx, 0Fh
                jmp     short loc_14037CBCA
PoSetPowerState endp
