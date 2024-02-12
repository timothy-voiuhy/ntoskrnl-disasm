RtlFindExportedRoutineByName proc near  ; CODE XREF: MmGetSystemRoutineAddress+35↓p
                                        ; MmGetSystemRoutineAddress+73↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r15, rdx
                lea     r9, [rax+18h]
                xor     r12d, r12d
                mov     dl, 1
                xor     r8d, r8d
                mov     [rax+18h], r12d
                mov     rbx, rcx
                call    RtlImageDirectoryEntryToData
                mov     r9, rax
                mov     r8d, r12d
                test    rax, rax
                jz      short loc_1405F23C3
                mov     ebp, [rax+20h]
                mov     r10d, r12d
                mov     esi, [rax+24h]
                add     rbp, rbx
                mov     ecx, [rax+18h]
                add     rsi, rbx
                sub     ecx, 1
                js      short loc_1405F23C3

loc_1405F2364:                          ; CODE XREF: RtlFindExportedRoutineByName+8C↓j
                lea     edx, [r10+rcx]
                mov     rax, r15
                sar     edx, 1
                movsxd  r14, edx
                mov     edi, [rbp+r14*4+0]
                add     rdi, rbx
                sub     rdi, r15

loc_1405F237B:                          ; CODE XREF: RtlFindExportedRoutineByName+7A↓j
                mov     r11b, [rax]
                cmp     r11b, [rax+rdi]
                jnz     short loc_1405F23E7
                inc     rax
                test    r11b, r11b
                jnz     short loc_1405F237B
                mov     eax, r12d

loc_1405F238F:                          ; CODE XREF: RtlFindExportedRoutineByName+DC↓j
                test    eax, eax
                js      short loc_1405F23DE
                jle     short loc_1405F239E
                lea     r10d, [rdx+1]

loc_1405F2399:                          ; CODE XREF: RtlFindExportedRoutineByName+D5↓j
                cmp     ecx, r10d
                jge     short loc_1405F2364

loc_1405F239E:                          ; CODE XREF: RtlFindExportedRoutineByName+83↑j
                cmp     ecx, r10d
                jl      short loc_1405F23C3
                movzx   ecx, word ptr [rsi+r14*2]
                cmp     ecx, [r9+14h]
                jnb     short loc_1405F23C3
                mov     edx, ecx
                mov     ecx, [r9+1Ch]
                add     rcx, rbx
                mov     r8d, [rcx+rdx*4]
                add     r8, rbx
                cmp     r8, r9
                ja      short loc_1405F23EE

loc_1405F23C3:                          ; CODE XREF: RtlFindExportedRoutineByName+3B↑j
                                        ; RtlFindExportedRoutineByName+52↑j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rax, r8
                mov     rbp, [rsp+48h+arg_8]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405F23DE:                          ; CODE XREF: RtlFindExportedRoutineByName+81↑j
                test    edx, edx
                jz      short loc_1405F23C3
                lea     ecx, [rdx-1]
                jmp     short loc_1405F2399
; ---------------------------------------------------------------------------

loc_1405F23E7:                          ; CODE XREF: RtlFindExportedRoutineByName+72↑j
                sbb     eax, eax
                or      eax, 1
                jmp     short loc_1405F238F
; ---------------------------------------------------------------------------

loc_1405F23EE:                          ; CODE XREF: RtlFindExportedRoutineByName+B1↑j
                mov     ecx, [rsp+48h+arg_10]
                add     rcx, r9
                cmp     r8, rcx
                cmovb   r8, r12
                jmp     short loc_1405F23C3
RtlFindExportedRoutineByName endp
