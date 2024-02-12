PsAssignImpersonationToken proc near    ; CODE XREF: NtSetInformationThread+1D6↓p
                                        ; DATA XREF: .rdata:00000001400541A8↑o ...

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014080570E SIZE 00000012 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 30h
                mov     rdi, rcx
                mov     rcx, gs:188h
                mov     rax, rdx
                test    rdx, rdx
                jnz     short loc_14063F4FE
                xor     r9d, r9d
                mov     dword ptr [rsp+38h+var_18], 2
                xor     r8d, r8d
                mov     rcx, rdi
                call    PsImpersonateClient
                xor     ebx, ebx

loc_14063F4EB:                          ; CODE XREF: PsAssignImpersonationToken+B9↓j
                mov     eax, ebx

loc_14063F4ED:                          ; CODE XREF: PsAssignImpersonationToken+80↓j
                                        ; PsAssignImpersonationToken+1C626B↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14063F4FE:                          ; CODE XREF: PsAssignImpersonationToken+21↑j
                movzx   r9d, byte ptr [rcx+232h]
                xor     ebx, ebx
                mov     r8, cs:SeTokenObjectType
                lea     rcx, [rsp+38h+arg_8]
                mov     [rsp+38h+var_10], rbx
                mov     [rsp+38h+var_18], rcx
                mov     rcx, rax
                lea     edx, [rbx+4]
                mov     [rsp+38h+arg_8], rbx
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      short loc_14063F4ED
                mov     rsi, [rsp+38h+arg_8]
                cmp     dword ptr [rsi+0C0h], 2
                jnz     loc_14080570E
                mov     eax, [rsi+0C4h]
                xor     r9d, r9d
                xor     r8d, r8d
                mov     dword ptr [rsp+38h+var_18], eax
                mov     rdx, rsi
                mov     rcx, rdi
                call    PsImpersonateClient
                mov     rcx, rsi
                mov     ebx, eax
                call    PsDereferenceSiloContext
                jmp     short loc_14063F4EB
PsAssignImpersonationToken endp
