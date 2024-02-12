MmAllocateNonCachedMemory proc near     ; DATA XREF: .pdata:000000014011E680↑o

var_40          = dword ptr -40h
var_38          = dword ptr -38h
var_30          = dword ptr -30h
var_28          = byte ptr -28h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rax, 100000000h
                mov     rdx, rcx
                cmp     rcx, rax
                jnb     loc_1408C7E9E
                test    rcx, 0FFFh
                mov     [rsp+68h+var_30], 4
                mov     rax, rcx
                mov     ebp, 0
                setnz   bpl
                lea     rcx, qword_140CFDCC0
                shr     rax, 0Ch
                xor     r9d, r9d
                add     rbp, rax
                or      r8, 0FFFFFFFFFFFFFFFFh
                mov     rax, gs:188h
                mov     eax, [rax+24Ch]
                mov     rax, [rcx+rax*8]
                mov     rcx, [rax+0C0h]
                movzx   eax, word ptr [rcx+92h]
                lea     rcx, unk_140C50C00
                mov     [rsp+68h+var_38], eax
                and     [rsp+68h+var_40], 0
                mov     [r11-48h], rdx
                xor     edx, edx
                call    sub_1403014F4
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1408C7E9E
                mov     edx, ebp
                lea     rcx, qword_140C4EDC0
                call    sub_1402583E0
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_1408C7EBF
                mov     rcx, rbx
                call    MmFreePagesFromMdl
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_1408C7E9E:                          ; CODE XREF: MmAllocateNonCachedMemory+2C↑j
                                        ; MmAllocateNonCachedMemory+A4↑j
                xor     eax, eax

loc_1408C7EA0:                          ; CODE XREF: MmAllocateNonCachedMemory+1DB↓j
                lea     r11, [rsp+68h+var_28]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1408C7EBF:                          ; CODE XREF: MmAllocateNonCachedMemory+BA↑j
                lea     r12, [rbx+30h]
                mov     rax, [r12]
                lea     rcx, [rax+rax*2]
                add     rcx, rcx
                mov     rax, 0FFFFFA8000000010h
                mov     r14, rsi
                mov     [rax+rcx*8], rbx
                shl     r14, 19h
                mov     rax, 0FFFFF68000000000h
                shl     rax, 19h
                xor     edx, edx
                sub     r14, rax
                mov     r8d, 0A000000Ch
                mov     rcx, rsi
                sar     r14, 10h
                call    sub_140280E60
                mov     rdi, rax
                sub     r12, rsi
                mov     r13, 8000000000000000h

loc_1408C7F18:                          ; CODE XREF: MmAllocateNonCachedMemory+1D2↓j
                mov     rax, [r12+rsi]
                mov     rcx, 0FFFFFFFFF000h
                shl     rax, 0Ch
                xor     r15d, r15d
                xor     rax, rdi
                and     rax, rcx
                mov     rcx, rsi
                xor     rdi, rax
                mov     rbx, rdi
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_1408C7F87
                call    sub_140349680
                test    eax, eax
                jz      short loc_1408C7F62
                cmp     byte ptr cs:word_140C4DE88+1, 0
                mov     r15d, 1
                jnz     short loc_1408C7F87
                test    r15b, dil
                jmp     short loc_1408C7F82
; ---------------------------------------------------------------------------

loc_1408C7F62:                          ; CODE XREF: MmAllocateNonCachedMemory+17C↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_1408C7F87
                test    dil, 1

loc_1408C7F82:                          ; CODE XREF: MmAllocateNonCachedMemory+190↑j
                jz      short loc_1408C7F87
                or      rbx, r13

loc_1408C7F87:                          ; CODE XREF: MmAllocateNonCachedMemory+173↑j
                                        ; MmAllocateNonCachedMemory+18B↑j ...
                mov     [rsi], rbx
                test    r15d, r15d
                jz      short loc_1408C7F9A
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_140349620

loc_1408C7F9A:                          ; CODE XREF: MmAllocateNonCachedMemory+1BD↑j
                add     rsi, 8
                sub     rbp, 1
                jnz     loc_1408C7F18
                mov     rax, r14
                jmp     loc_1408C7EA0
MmAllocateNonCachedMemory endp
