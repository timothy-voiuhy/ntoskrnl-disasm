ObRegisterCallbacks proc near           ; DATA XREF: .rdata:00000001400AAFB0↑o
                                        ; .pdata:000000014010E804↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001408606BE SIZE 000000DD BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                movzx   eax, word ptr [rcx]
                mov     r15, rcx
                mov     ecx, 0FF00h
                xor     edi, edi
                and     ax, cx
                mov     r12, rdx
                mov     ecx, 100h
                mov     ebx, edi
                cmp     ax, cx
                jnz     loc_140860791
                movzx   eax, word ptr [r15+2]
                test    ax, ax
                jz      loc_140860791
                movzx   ebp, word ptr [r15+8]
                lea     r13d, [rdi+1]
                mov     ecx, eax
                add     ebp, 20h ; ' '
                shl     ecx, 6
                mov     r8d, 6C46624Fh
                add     ebp, ecx
                mov     ecx, r13d
                mov     edx, ebp
                mov     r14d, ebp
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jz      loc_1408606BE
                mov     r8d, r14d
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     eax, 100h
                mov     [rsi], ax
                mov     rax, [r15+18h]
                mov     [rsi+8], rax
                movzx   r8d, word ptr [r15+8]
                sub     ebp, r8d
                mov     [rsi+12h], r8w
                mov     [rsi+10h], r8w
                mov     ecx, ebp
                add     rcx, rsi
                mov     [rsi+18h], rcx
                mov     rdx, [r15+10h]
                call    memmove
                mov     ebp, edi
                cmp     di, [r15+2]
                jnb     loc_1407C94A3

loc_1407C93ED:                          ; CODE XREF: ObRegisterCallbacks+17D↓j
                mov     r14d, ebp
                shl     r14, 5
                add     r14, [r15+20h]
                mov     ebx, ebp
                cmp     [r14+8], edi
                jz      loc_140860780
                mov     rax, [r14]
                mov     rcx, [rax]
                test    byte ptr [rcx+42h], 40h
                jz      loc_140860780
                mov     rcx, [r14+10h]
                test    rcx, rcx
                jz      loc_1408606C8

loc_1407C9421:                          ; CODE XREF: ObRegisterCallbacks+973BB↓j
                mov     edx, 20h ; ' '
                call    sub_1403AF6A0
                test    eax, eax
                jz      loc_1408606F2

loc_1407C9433:                          ; CODE XREF: ObRegisterCallbacks+973B5↓j
                mov     rcx, [r14+18h]
                test    rcx, rcx
                jnz     loc_1408606E0

loc_1407C9440:                          ; CODE XREF: ObRegisterCallbacks+973CC↓j
                shl     rbx, 6
                add     rbx, 20h ; ' '
                add     rbx, rsi
                lea     rcx, [rbx+38h]
                mov     [rbx+8], rbx
                mov     [rbx], rbx
                call    KeInitializeSpinLock
                mov     eax, [r14+8]
                mov     rdx, rbx
                mov     [rbx+10h], eax
                mov     [rbx+18h], rsi
                mov     rax, [r14]
                mov     rcx, [rax]
                mov     [rbx+20h], rcx
                mov     rax, [r14+10h]
                mov     [rbx+28h], rax
                mov     rax, [r14+18h]
                mov     [rbx+30h], rax
                call    sub_1407C94F4
                mov     ebx, eax
                test    eax, eax
                js      short loc_1407C94A3
                add     [rsi+2], r13w
                add     ebp, r13d
                movzx   ecx, word ptr [r15+2]
                cmp     ebp, ecx
                jb      loc_1407C93ED

loc_1407C94A3:                          ; CODE XREF: ObRegisterCallbacks+C7↑j
                                        ; ObRegisterCallbacks+16C↑j ...
                test    ebx, ebx
                js      loc_1408606F7
                cmp     di, [rsi+2]
                jnb     short loc_1407C94C7

loc_1407C94B1:                          ; CODE XREF: ObRegisterCallbacks+1A5↓j
                mov     eax, edi
                add     edi, r13d
                shl     rax, 6
                or      [rax+rsi+34h], r13d
                movzx   eax, word ptr [rsi+2]
                cmp     edi, eax
                jb      short loc_1407C94B1

loc_1407C94C7:                          ; CODE XREF: ObRegisterCallbacks+18F↑j
                mov     [r12], rsi

loc_1407C94CB:                          ; CODE XREF: ObRegisterCallbacks+9745B↓j
                mov     eax, ebx

loc_1407C94CD:                          ; CODE XREF: ObRegisterCallbacks+973A3↓j
                                        ; ObRegisterCallbacks+97476↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ObRegisterCallbacks endp
