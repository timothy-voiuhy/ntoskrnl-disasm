KeAttachProcess proc near               ; CODE XREF: sub_14099F420+4B↓p
                                        ; sub_1409B3120+260↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140486530 SIZE 000000B1 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 30h
                mov     rdi, gs:188h
                mov     rsi, rcx
                mov     r8, [rdi+0B8h]
                cmp     r8, rcx
                jz      loc_1403565E3
                movzx   ecx, byte ptr [rdi+24Ah]
                mov     edx, 10001h
                test    cl, cl
                jnz     loc_1404865C0
                mov     eax, gs:32ACh
                test    edx, eax
                jnz     loc_1404865C0
                test    dword ptr [rsi+278h], 400h
                jnz     loc_1404865C0
                mov     rbp, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140486530

loc_14035659F:                          ; CODE XREF: KeAttachProcess+130012↓j
                                        ; KeAttachProcess+13001C↓j ...
                mov     rbx, gs:20h
                and     [rsp+38h+arg_0], 0

loc_1403565AD:                          ; CODE XREF: KeAttachProcess+FC↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_140486572

loc_1403565BD:                          ; CODE XREF: KeAttachProcess+130056↓j
                                        ; KeAttachProcess+130065↓j ...
                lock bts qword ptr [rdi+40h], 0
                jb      short loc_1403565F9
                lea     rax, [rdi+258h]
                xor     r9d, r9d
                mov     r8b, bpl
                mov     [rsp+38h+var_18], rax
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_14021E570

loc_1403565E3:                          ; CODE XREF: KeAttachProcess+2A↑j
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403565F9:                          ; CODE XREF: KeAttachProcess+A4↑j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_140486599

loc_140356609:                          ; CODE XREF: KeAttachProcess+FA↓j
                                        ; KeAttachProcess+13007D↓j ...
                lea     rcx, [rsp+38h+arg_0]
                call    sub_1402C8C70
                mov     rax, [rdi+40h]
                test    rax, rax
                jnz     short loc_140356609
                jmp     short loc_1403565AD
KeAttachProcess endp
