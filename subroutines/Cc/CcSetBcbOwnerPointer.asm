CcSetBcbOwnerPointer proc near          ; DATA XREF: .pdata:000000014011AD08↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     eax, 2FAh
                mov     rdi, rdx
                cmp     [rcx], ax
                jnz     short loc_1408690C7
                lea     rbx, [rcx+10h]
                jmp     short loc_1408690BD
; ---------------------------------------------------------------------------

loc_1408690AD:                          ; CODE XREF: CcSetBcbOwnerPointer+33↓j
                lea     rcx, [rax+48h]
                mov     rdx, rdi
                call    ExSetResourceOwnerPointer
                lea     rbx, [rbx+8]

loc_1408690BD:                          ; CODE XREF: CcSetBcbOwnerPointer+1B↑j
                mov     rax, [rbx]
                test    rax, rax
                jnz     short loc_1408690AD
                jmp     short loc_1408690D0
; ---------------------------------------------------------------------------

loc_1408690C7:                          ; CODE XREF: CcSetBcbOwnerPointer+15↑j
                add     rcx, 48h ; 'H'
                call    ExSetResourceOwnerPointer

loc_1408690D0:                          ; CODE XREF: CcSetBcbOwnerPointer+35↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
CcSetBcbOwnerPointer endp
