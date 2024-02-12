MmChangeImageProtection proc near       ; DATA XREF: .pdata:0000000140104D84↑o

var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = dword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+20h], r9d
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                lea     eax, [r9-1]
                mov     edi, 1
                mov     rbx, r8
                mov     r13, rdx
                mov     rsi, rcx
                cmp     eax, edi
                ja      loc_1406F513A
                mov     al, [rcx+0Ah]
                and     al, 7
                cmp     al, 2
                jnz     loc_1406F513A
                cmp     dword ptr [rcx+2Ch], 0
                jnz     loc_1406F513A
                mov     r14d, [rcx+28h]
                test    r14d, 0FFFh
                jnz     loc_1406F513A
                shr     r14d, 0Ch
                call    sub_1406F51C0
                mov     rbp, rax
                dec     word ptr [rax+1E4h]
                dec     word ptr [rax+1E4h]
                mov     dl, dil
                lea     rcx, PsLoadedModuleResource
                call    ExAcquireResourceExclusiveLite
                mov     rcx, [rsi+20h]
                xor     edx, edx
                call    sub_14033EE44
                mov     rdi, rax
                mov     r12d, 0C0000018h
                test    rax, rax
                jz      short loc_1406F4F31
                mov     r15, [rax+30h]
                lea     rdx, [rbx+r13]
                mov     eax, [rax+40h]
                mov     ecx, [rsi+28h]
                add     rax, r15
                add     rcx, [rsi+20h]
                cmp     rcx, rax
                ja      short loc_1406F4F2C
                cmp     r13, r15
                jb      short loc_1406F4F2C
                cmp     rdx, rax
                ja      short loc_1406F4F2C
                lea     rax, [rdx-1]
                cmp     rax, r13
                jb      short loc_1406F4F2C
                mov     eax, [rdi+68h]
                mov     ecx, 80000h
                test    ecx, eax
                jz      short loc_1406F4F06
                lea     ebx, [r12+2Bh]
                jmp     short loc_1406F4F36
; ---------------------------------------------------------------------------

loc_1406F4F06:                          ; CODE XREF: MmChangeImageProtection+DD↑j
                or      eax, ecx
                xor     ebx, ebx
                mov     rcx, r15
                mov     [rdi+68h], eax
                call    sub_140245330
                lea     ecx, [rbx+1]
                cmp     eax, ecx
                jnz     short loc_1406F4F26
                mov     rcx, r15
                call    sub_1403A7964
                jmp     short loc_1406F4F36
; ---------------------------------------------------------------------------

loc_1406F4F26:                          ; CODE XREF: MmChangeImageProtection+FA↑j
                add     [rdi+6Ch], cx
                jmp     short loc_1406F4F36
; ---------------------------------------------------------------------------

loc_1406F4F2C:                          ; CODE XREF: MmChangeImageProtection+BE↑j
                                        ; MmChangeImageProtection+C3↑j ...
                mov     ebx, r12d
                jmp     short loc_1406F4F36
; ---------------------------------------------------------------------------

loc_1406F4F31:                          ; CODE XREF: MmChangeImageProtection+A4↑j
                mov     ebx, 0C0000225h

loc_1406F4F36:                          ; CODE XREF: MmChangeImageProtection+E4↑j
                                        ; MmChangeImageProtection+104↑j ...
                lea     rcx, PsLoadedModuleResource
                call    ExReleaseResourceLite
                mov     rcx, rbp
                call    sub_14021E1F0
                mov     rcx, rbp
                call    sub_1406F5160
                test    ebx, ebx
                js      loc_1406F512E
                mov     rcx, [rdi+30h]
                call    sub_140260090
                test    eax, eax
                jz      short loc_1406F4F75
                mov     ebx, r12d

loc_1406F4F6A:                          ; CODE XREF: MmChangeImageProtection+20B↓j
                                        ; MmChangeImageProtection+215↓j
                mov     r12d, 1
                jmp     loc_1406F50E7
; ---------------------------------------------------------------------------

loc_1406F4F75:                          ; CODE XREF: MmChangeImageProtection+145↑j
                xor     r12d, r12d
                mov     rdx, 0FFFFFA8000000000h
                lea     r15, [rsi+30h]
                test    r14d, r14d
                jz      short loc_1406F4FD6
                mov     r13, r15

loc_1406F4F8E:                          ; CODE XREF: MmChangeImageProtection+1AF↓j
                mov     rax, [r13+0]
                lea     rcx, [rax+rax*2]
                shl     rcx, 4
                mov     rax, rdx
                add     rcx, rax
                call    sub_1403F41D8
                test    eax, eax
                jnz     loc_1406F5030
                xor     r8d, r8d
                xor     edx, edx
                call    sub_14027B160
                test    al, 40h
                jnz     short loc_1406F5026
                inc     r12d
                mov     rdx, 0FFFFFA8000000000h
                add     r13, 8
                cmp     r12d, r14d
                jb      short loc_1406F4F8E
                mov     r13, [rsp+68h+arg_8]

loc_1406F4FD6:                          ; CODE XREF: MmChangeImageProtection+169↑j
                mov     r8d, [rsi+28h]
                mov     r12d, 1
                mov     rdx, [rsi+20h]
                mov     r9d, r12d
                mov     rcx, rdi
                call    sub_14033EDF4
                cmp     [rsp+68h+arg_18], r12d
                jnz     loc_1406F50A8
                mov     rcx, [rdi+70h]
                test    rcx, rcx
                jz      short loc_1406F503A
                call    sub_140267410
                mov     rcx, [rax+60h]
                mov     rcx, [rcx+28h]
                mov     rax, rcx
                and     rax, 0FFFFFFFFFFFFFFF8h
                cmp     rax, 8
                jbe     short loc_1406F503A
                and     rcx, 0FFFFFFFFFFFFFFF8h
                jmp     short loc_1406F503C
; ---------------------------------------------------------------------------

loc_1406F5026:                          ; CODE XREF: MmChangeImageProtection+199↑j
                mov     ebx, 0C0000045h
                jmp     loc_1406F4F6A
; ---------------------------------------------------------------------------

loc_1406F5030:                          ; CODE XREF: MmChangeImageProtection+187↑j
                mov     ebx, 0C0000018h
                jmp     loc_1406F4F6A
; ---------------------------------------------------------------------------

loc_1406F503A:                          ; CODE XREF: MmChangeImageProtection+1E4↑j
                                        ; MmChangeImageProtection+1FE↑j
                xor     ecx, ecx

loc_1406F503C:                          ; CODE XREF: MmChangeImageProtection+204↑j
                mov     rax, cs:qword_140C1D970
                test    rax, rax
                jnz     short loc_1406F5052
                mov     ebx, 0C0000002h
                jmp     loc_1406F50E7
; ---------------------------------------------------------------------------

loc_1406F5052:                          ; CODE XREF: MmChangeImageProtection+226↑j
                mov     r9, [rsp+68h+arg_10]
                mov     rdx, r13
                sub     rdx, [rdi+30h]
                mov     r8, r13
                mov     [rsp+68h+var_48], rdx
                mov     rdx, rsi
                call    sub_1404079D0
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406F50E7
                test    byte ptr cs:dword_140CFC400+2, r12b
                mov     r9d, 3
                jz      short loc_1406F5094
                cmp     ebx, 12Ch
                lea     eax, [r9+10h]
                cmovz   r9d, eax

loc_1406F5094:                          ; CODE XREF: MmChangeImageProtection+264↑j
                mov     r8d, [rsi+28h]
                mov     rcx, rdi
                mov     rdx, [rsi+20h]
                call    sub_14033EDF4
                xor     ebx, ebx
                jmp     short loc_1406F50E7
; ---------------------------------------------------------------------------

loc_1406F50A8:                          ; CODE XREF: MmChangeImageProtection+1D7↑j
                test    byte ptr cs:dword_140CFC400+2, r12b
                jz      short loc_1406F50E7
                test    r14d, r14d
                jz      short loc_1406F50E7
                mov     esi, r14d
                mov     r14, 0FFFFFA8000000000h

loc_1406F50C3:                          ; CODE XREF: MmChangeImageProtection+2C5↓j
                mov     rax, [r15]
                lea     rcx, [rax+rax*2]
                shl     rcx, 4
                mov     rax, r14
                add     rcx, rax
                mov     edx, 18h
                call    sub_1402D69E8
                lea     r15, [r15+8]
                sub     rsi, r12
                jnz     short loc_1406F50C3

loc_1406F50E7:                          ; CODE XREF: MmChangeImageProtection+150↑j
                                        ; MmChangeImageProtection+22D↑j ...
                call    sub_1406F51C0
                dec     word ptr [rbp+1E4h]
                mov     dl, r12b
                lea     rcx, PsLoadedModuleResource
                call    ExAcquireResourceExclusiveLite
                btr     dword ptr [rdi+68h], 13h
                lea     rcx, PsLoadedModuleResource
                call    ExReleaseResourceLite
                mov     rcx, rbp
                call    sub_14021E1F0
                or      edx, 0FFFFFFFFh
                mov     rcx, rdi
                call    sub_1406F5218
                mov     rcx, rbp
                call    sub_1406F5160

loc_1406F512E:                          ; CODE XREF: MmChangeImageProtection+134↑j
                mov     rcx, rbp
                call    sub_14021E1F0
                mov     eax, ebx
                jmp     short loc_1406F513F
; ---------------------------------------------------------------------------

loc_1406F513A:                          ; CODE XREF: MmChangeImageProtection+36↑j
                                        ; MmChangeImageProtection+43↑j ...
                mov     eax, 0C000000Dh

loc_1406F513F:                          ; CODE XREF: MmChangeImageProtection+318↑j
                mov     rbx, [rsp+68h+arg_0]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmChangeImageProtection endp
