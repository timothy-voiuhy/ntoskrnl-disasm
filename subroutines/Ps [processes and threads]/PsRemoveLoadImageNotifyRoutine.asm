PsRemoveLoadImageNotifyRoutine proc near
                                        ; CODE XREF: sub_140948B18+136↓p
                                        ; DATA XREF: .pdata:0000000140121A70↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rsi, gs:188h
                or      r15d, 0FFFFFFFFh
                mov     r14, rcx
                add     [rsi+1E4h], r15w
                xor     edi, edi

loc_14090DBC2:                          ; CODE XREF: PsRemoveLoadImageNotifyRoutine+74↓j
                lea     rcx, unk_140CEC320
                lea     rbp, [rcx+rdi*8]
                mov     rcx, rbp
                call    sub_1402A9540
                mov     rbx, rax
                test    rax, rax
                jz      short loc_14090DBFF
                cmp     [rax+8], r14
                jnz     short loc_14090DBF4
                mov     r8, rax
                xor     edx, edx
                mov     rcx, rbp
                call    sub_1403AF5DC
                test    al, al
                jnz     short loc_14090DC2D

loc_14090DBF4:                          ; CODE XREF: PsRemoveLoadImageNotifyRoutine+51↑j
                mov     rdx, rbx
                mov     rcx, rbp
                call    sub_1402A9600

loc_14090DBFF:                          ; CODE XREF: PsRemoveLoadImageNotifyRoutine+4B↑j
                inc     edi
                cmp     edi, 40h ; '@'
                jb      short loc_14090DBC2
                mov     rcx, rsi
                call    sub_14021E1F0
                mov     eax, 0C000007Ah

loc_14090DC13:                          ; CODE XREF: PsRemoveLoadImageNotifyRoutine+CC↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14090DC2D:                          ; CODE XREF: PsRemoveLoadImageNotifyRoutine+62↑j
                lock add cs:dword_140D2E9D4, r15d
                mov     rdx, rbx
                mov     rcx, rbp
                call    sub_1402A9600
                mov     rcx, rsi
                call    sub_14021E1F0
                mov     rcx, rbx
                call    ExWaitForRundownProtectionRelease
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                xor     eax, eax
                jmp     short loc_14090DC13
PsRemoveLoadImageNotifyRoutine endp
