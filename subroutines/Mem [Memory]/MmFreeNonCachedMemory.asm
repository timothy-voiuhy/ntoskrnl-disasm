MmFreeNonCachedMemory proc near         ; DATA XREF: .pdata:000000014011E68C↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                test    rdx, 0FFFh
                mov     edi, 0
                setnz   dil
                shr     rdx, 0Ch
                add     rdi, rdx
                call    sub_14026B560
                mov     rcx, rax
                mov     rsi, rax
                call    sub_1402805F0
                lea     rcx, [rsp+28h+arg_8]
                mov     [rsp+28h+arg_8], rax
                mov     rbx, rax
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_1408C801C
                mov     rdx, rbx
                lea     rcx, [rsp+28h+arg_8]
                call    sub_1402A8730
                mov     rbx, rax

loc_1408C801C:                          ; CODE XREF: MmFreeNonCachedMemory+4A↑j
                shr     rbx, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rbx, rax
                lea     r9, [rbx+rbx*2]
                shl     r9, 4
                mov     rax, 0FFFFFA8000000000h
                add     r9, rax
                mov     ecx, 4
                mov     rbx, [r9+10h]
                call    sub_14027C6A0
                mov     rdx, rax
                mov     rcx, r9
                call    sub_14054F5EC
                mov     rcx, rbx
                call    MmFreePagesFromMdl
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                mov     r8d, edi
                lea     rcx, qword_140C4EDC0
                mov     rdx, rsi
                call    sub_14025EFB0
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmFreeNonCachedMemory endp
