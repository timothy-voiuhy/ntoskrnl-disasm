RtlDeleteElementGenericTable proc near  ; DATA XREF: .pdata:00000001400D5C6C↑o

arg_0           = qword ptr  8
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_10], 0
                lea     r8, [rsp+28h+arg_10]
                mov     rbx, rcx
                call    sub_140327ACC
                cmp     eax, 1
                jnz     short loc_140326872
                mov     rdi, [rsp+28h+arg_10]
                mov     rcx, rdi
                call    RtlDelete
                mov     [rbx], rax
                lea     rax, [rdi+18h]
                mov     rdx, [rax]
                cmp     [rdx+8], rax
                jnz     short loc_14032686B
                mov     rcx, [rax+8]
                cmp     [rcx], rax
                jnz     short loc_14032686B
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                lea     rcx, [rbx+8]
                dec     dword ptr [rbx+24h]
                mov     rdx, rdi
                and     dword ptr [rbx+20h], 0
                mov     rax, [rbx+38h]
                mov     [rbx+18h], rcx
                mov     rcx, rbx
                call    sub_1404079D0
                mov     al, 1

loc_14032685F:                          ; CODE XREF: RtlDeleteElementGenericTable+84↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14032686B:                          ; CODE XREF: RtlDeleteElementGenericTable+3D↑j
                                        ; RtlDeleteElementGenericTable+46↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_140326872:                          ; CODE XREF: RtlDeleteElementGenericTable+20↑j
                xor     al, al
                jmp     short loc_14032685F
RtlDeleteElementGenericTable endp
