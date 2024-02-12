RtlTraceDatabaseCreate proc near        ; DATA XREF: .pdata:00000001400F8118↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     esi, ecx
                mov     ebp, r9d
                mov     r14d, r8d
                mov     r15, rdx
                cmp     ecx, 100000h
                ja      loc_14058ECC8
                lea     rcx, ds:1110h[rsi*8]
                mov     r8d, r9d
                and     rcx, 0FFFFFFFFFFFFF000h
                mov     edx, 6
                call    sub_14058EF40
                mov     rbx, rax
                test    rax, rax
                jz      loc_14058ECC8
                and     qword ptr [rax+30h], 0
                lea     rcx, [rax+98h]
                and     qword ptr [rax+90h], 0
                lea     rdi, [rax+0D8h]
                and     qword ptr [rax+88h], 0
                xor     edx, edx
                mov     [rax+8], ebp
                or      r14d, 2
                mov     ebp, 1000h
                mov     dword ptr [rax], 0ABCDCCCCh
                mov     [rax+4], r14d
                lea     r8d, [rdx+40h]
                mov     [rax+18h], r15
                mov     [rax+20h], rbp
                call    memset
                mov     eax, [rbx+4]
                test    al, 4
                jz      short loc_14058EC31
                and     qword ptr [rbx+38h], 0
                jmp     short loc_14058EC5A
; ---------------------------------------------------------------------------

loc_14058EC31:                          ; CODE XREF: RtlTraceDatabaseCreate+A8↑j
                and     qword ptr [rbx+40h], 0
                lea     rax, [rbx+58h]
                and     dword ptr [rbx+48h], 0
                mov     dword ptr [rbx+38h], 1
                and     dword ptr [rbx+54h], 0
                mov     [rax+8], rax
                mov     [rax], rax
                mov     word ptr [rbx+50h], 1
                mov     byte ptr [rbx+52h], 6

loc_14058EC5A:                          ; CODE XREF: RtlTraceDatabaseCreate+AF↑j
                cmp     [rsp+38h+arg_20], 0
                lea     rcx, [rdi+38h]
                mov     [rbx+70h], esi
                lea     rax, sub_1403F7F20
                cmovnz  rax, [rsp+38h+arg_20]
                xor     edx, edx
                mov     [rbx+80h], rax
                and     qword ptr [rdi+10h], 0
                mov     dword ptr [rdi], 0ABCDBBBBh
                mov     [rdi+8], rbx
                mov     [rdi+18h], rbp
                mov     r8d, [rbx+70h]
                shl     r8, 3
                mov     [rbx+10h], rdi
                mov     [rbx+78h], rcx
                call    memset
                lea     rax, [rbx+1000h]
                mov     [rdi+20h], rbx
                mov     [rdi+28h], rax
                mov     eax, [rbx+70h]
                add     rax, 7
                lea     rcx, [rdi+rax*8]
                mov     rax, rbx
                mov     [rdi+30h], rcx
                jmp     short loc_14058ECCA
; ---------------------------------------------------------------------------

loc_14058ECC8:                          ; CODE XREF: RtlTraceDatabaseCreate+29↑j
                                        ; RtlTraceDatabaseCreate+51↑j
                xor     eax, eax

loc_14058ECCA:                          ; CODE XREF: RtlTraceDatabaseCreate+146↑j
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
RtlTraceDatabaseCreate endp
