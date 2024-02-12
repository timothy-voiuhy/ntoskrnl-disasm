FsRtlAddBaseMcbEntryEx proc near        ; CODE XREF: FsRtlAddLargeMcbEntry+3B↑p
                                        ; FsRtlAddBaseMcbEntry+4↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404763FA SIZE 000000FB BYTES

                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     ebp, [rcx+4]
                xor     r15d, r15d
                mov     r12, r9
                mov     r13, r8
                mov     rsi, rdx
                mov     rdi, rcx
                mov     r11d, r15d
                lea     r10d, [rbp-1]
                test    r10d, r10d
                js      short loc_14032D1A7

loc_14032D172:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+65↓j
                mov     r14, [rdi+10h]
                lea     eax, [r10+r11]
                cdq
                sub     eax, edx
                sar     eax, 1
                mov     ebx, eax
                jz      short loc_14032D191
                movsxd  rax, ebx
                cmp     esi, [r14+rax*8-8]
                jb      loc_14032D25E

loc_14032D191:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+41↑j
                movsxd  rax, ebx
                mov     ecx, [r14+rax*8]
                dec     ecx
                cmp     esi, ecx
                jbe     short loc_14032D213
                lea     r11d, [rbx+1]

loc_14032D1A2:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+122↓j
                cmp     r11d, r10d
                jle     short loc_14032D172

loc_14032D1A7:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+30↑j
                                        ; FsRtlAddBaseMcbEntryEx+35D↓j ...
                mov     ebx, ebp
                mov     dword ptr [rsp+58h+arg_0], ebx
                test    ebp, ebp
                jnz     loc_14032D267

loc_14032D1B5:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+132↓j
                                        ; FsRtlAddBaseMcbEntryEx+14939E↓j
                test    ebx, ebx
                jnz     loc_14032D43F

loc_14032D1BD:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+30D↓j
                                        ; FsRtlAddBaseMcbEntryEx+339↓j
                test    esi, esi
                jnz     loc_14032D3EA

loc_14032D1C5:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+2BC↓j
                mov     r8d, 1
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_14032D694
                test    al, al
                jz      loc_1404764EB
                mov     eax, ebx

loc_14032D1DF:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+2FA↓j
                lea     rdx, ds:0[rax*8]
                mov     rax, [rdi+10h]
                lea     ecx, [r12+rsi]
                mov     [rax+rdx+4], r13d
                mov     rax, [rdi+10h]
                mov     [rdx+rax], ecx

loc_14032D1FB:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+117↓j
                                        ; FsRtlAddBaseMcbEntryEx+299↓j ...
                xor     eax, eax

loc_14032D1FD:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+149316↓j
                                        ; FsRtlAddBaseMcbEntryEx+1493B0↓j
                mov     rbx, [rsp+58h+arg_10]
                add     rsp, 20h
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
; ---------------------------------------------------------------------------

loc_14032D213:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+5C↑j
                mov     r8d, [r14+rbx*8+4]
                lea     r10d, [r9-1]
                lea     rdx, [r14+rbx*8]
                mov     dword ptr [rsp+58h+arg_0], r15d
                add     r10d, esi
                cmp     r8d, 0FFFFFFFFh
                jz      loc_14032D48B
                test    ebx, ebx
                jnz     loc_14032D3DE
                mov     ecx, r15d

loc_14032D23D:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+2A5↓j
                mov     eax, r8d
                sub     eax, ecx
                add     eax, esi
                cmp     r13d, eax
                jnz     loc_140476451
                mov     r9d, [rdx]
                lea     eax, [r9-1]
                cmp     r10d, eax
                jbe     short loc_14032D1FB
                jmp     loc_1404763FA
; ---------------------------------------------------------------------------

loc_14032D25E:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+4B↑j
                lea     r10d, [rbx-1]
                jmp     loc_14032D1A2
; ---------------------------------------------------------------------------

loc_14032D267:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+6F↑j
                mov     r14, [rdi+10h]
                lea     eax, [rbp-1]
                cmp     [r14+rax*8], esi
                jbe     loc_14032D1B5
                lea     r8, [rsp+58h+arg_0]
                mov     edx, esi
                mov     rcx, rdi
                call    sub_14032D7CC
                test    al, al
                jz      loc_1404764DA
                mov     ebx, dword ptr [rsp+58h+arg_0]
                lea     eax, [r12+rsi]
                mov     [rsp+58h+arg_8], eax
                lea     r8d, [rax-1]
                lea     rax, ds:0[rbx*8]
                cmp     dword ptr [rax+r14+4], 0FFFFFFFFh
                lea     r9, [rax+r14]
                mov     [rsp+58h+arg_0], rax
                jnz     loc_140476451
                test    ebx, ebx
                jz      short loc_14032D2CD
                lea     eax, [rbx-1]
                cmp     [r14+rax*8], esi
                ja      loc_140476451

loc_14032D2CD:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+17E↑j
                mov     r10d, [r9]
                lea     edx, [r10-1]
                cmp     r8d, edx
                ja      loc_140476451
                test    ebx, ebx
                jz      loc_14032D567
                lea     eax, [rbx-1]
                mov     eax, [r14+rax*8]

loc_14032D2EC:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+42A↓j
                cmp     eax, esi
                jb      loc_14032D4B7

loc_14032D2F4:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+37A↓j
                test    ebx, ebx
                jz      loc_14032D56F
                lea     eax, [rbx-1]
                mov     eax, [r14+rax*8]

loc_14032D303:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+432↓j
                cmp     r8d, edx
                jb      loc_14032D50C

loc_14032D30C:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+3CE↓j
                test    ebx, ebx
                jz      loc_14032D577
                lea     eax, [rbx-1]
                mov     eax, [r14+rax*8]

loc_14032D31B:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+43A↓j
                cmp     eax, esi
                jb      loc_14032D590

loc_14032D323:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+453↓j
                test    ebx, ebx
                jz      loc_14032D588
                lea     ecx, [rbx-1]
                mov     edx, [r14+rcx*8+4]
                lea     r8, [r14+rcx*8]
                cmp     edx, 0FFFFFFFFh
                jz      loc_140476499
                test    ecx, ecx
                jnz     loc_14032D5CC
                mov     eax, r15d

loc_14032D34B:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+493↓j
                sub     edx, eax
                add     edx, [r8]

loc_14032D350:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+44B↓j
                                        ; FsRtlAddBaseMcbEntryEx+14935C↓j
                dec     ebp
                cmp     edx, r13d
                jnz     short loc_14032D373
                cmp     ebx, ebp
                jnb     loc_1404764A1
                lea     eax, [rbx+1]
                mov     ecx, [r14+rax*8+4]

loc_14032D367:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+149366↓j
                lea     eax, [r12+r13]
                cmp     ecx, eax
                jz      loc_14032D61A

loc_14032D373:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+215↑j
                cmp     ebx, ebp
                jnb     loc_1404764C3
                lea     eax, [rbx+1]
                mov     ecx, [r14+rax*8+4]

loc_14032D383:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+149388↓j
                lea     eax, [r12+r13]
                cmp     ecx, eax
                jz      loc_1404764CD
                test    ebx, ebx
                jz      loc_14032D57F
                lea     ecx, [rbx-1]
                mov     r8d, [r14+rcx*8+4]
                lea     rdx, [r14+rcx*8]
                cmp     r8d, 0FFFFFFFFh
                jz      short loc_14032D3BD
                test    ecx, ecx
                jnz     loc_14032D5D8
                mov     eax, r15d

loc_14032D3B4:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+49F↓j
                mov     r15d, r8d
                sub     r15d, eax
                add     r15d, [rdx]

loc_14032D3BD:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+267↑j
                cmp     r15d, r13d
                jnz     loc_14032D57F
                mov     [rdx], r10d

loc_14032D3C9:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+149395↓j
                mov     r8d, 1
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_14032D858
                jmp     loc_14032D1FB
; ---------------------------------------------------------------------------

loc_14032D3DE:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+F4↑j
                lea     eax, [rbx-1]
                mov     ecx, [r14+rax*8]
                jmp     loc_14032D23D
; ---------------------------------------------------------------------------

loc_14032D3EA:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+7F↑j
                test    ebx, ebx
                jz      short loc_14032D3F9
                mov     rax, [rdi+10h]
                lea     ecx, [rbx-1]
                mov     r15d, [rax+rcx*8]

loc_14032D3F9:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+2AC↑j
                cmp     r15d, esi
                jz      loc_14032D1C5
                mov     r8d, 2
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_14032D694
                test    al, al
                jz      loc_1404764EB
                mov     eax, ebx
                lea     rcx, ds:0[rax*8]
                mov     rax, [rdi+10h]
                mov     dword ptr [rax+rcx+4], 0FFFFFFFFh
                mov     rax, [rdi+10h]
                mov     [rcx+rax], esi
                lea     eax, [rbx+1]
                jmp     loc_14032D1DF
; ---------------------------------------------------------------------------

loc_14032D43F:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+77↑j
                mov     rdx, [rdi+10h]
                lea     ecx, [rbx-1]
                mov     r8d, [rdx+rcx*8]
                cmp     r8d, esi
                jnz     loc_14032D1BD
                mov     r9d, [rdx+rcx*8+4]
                cmp     r9d, 0FFFFFFFFh
                jz      loc_1404764E3
                test    ecx, ecx
                jz      loc_14032D55F
                lea     eax, [rbx-2]
                mov     eax, [rdx+rax*8]

loc_14032D470:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+422↓j
                sub     r9d, eax
                add     r9d, r8d

loc_14032D476:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+1493A6↓j
                cmp     r9d, r13d
                jnz     loc_14032D1BD
                lea     eax, [rbp-1]
                add     [rdx+rax*8], r12d
                jmp     loc_14032D1FB
; ---------------------------------------------------------------------------

loc_14032D48B:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+EC↑j
                lea     r8, [rsp+58h+arg_0]
                mov     edx, r10d
                mov     rcx, rdi
                call    sub_14032D7CC
                test    al, al
                jz      loc_14032D1A7
                mov     ecx, dword ptr [rsp+58h+arg_0]
                lea     eax, [rcx-1]
                cmp     ebx, eax
                jnz     loc_14032D1A7
                jmp     loc_140476431
; ---------------------------------------------------------------------------

loc_14032D4B7:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+1AE↑j
                cmp     r8d, edx
                jnb     loc_14032D2F4
                mov     r8d, 2
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_14032D694
                test    al, al
                jz      loc_1404764EB
                mov     rax, [rdi+10h]
                mov     rcx, [rsp+58h+arg_0]
                mov     edx, [rsp+58h+arg_8]
                mov     dword ptr [rax+rcx+4], 0FFFFFFFFh
                mov     rax, [rdi+10h]
                mov     [rcx+rax], esi
                lea     ecx, [rbx+1]
                mov     rax, [rdi+10h]
                mov     [rax+rcx*8+4], r13d
                mov     rax, [rdi+10h]
                mov     [rax+rcx*8], edx
                jmp     loc_14032D1FB
; ---------------------------------------------------------------------------

loc_14032D50C:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+1C6↑j
                cmp     eax, esi
                jnz     loc_14032D30C
                test    ebx, ebx
                jz      short loc_14032D542
                lea     ecx, [rbx-1]
                mov     r8d, [r14+rcx*8+4]
                lea     rdx, [r14+rcx*8]
                cmp     r8d, 0FFFFFFFFh
                jz      short loc_14032D542
                test    ecx, ecx
                jz      loc_14032D686
                lea     eax, [rbx-2]
                mov     eax, [r14+rax*8]

loc_14032D539:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+549↓j
                mov     r15d, r8d
                sub     r15d, eax
                add     r15d, [rdx]

loc_14032D542:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+3D6↑j
                                        ; FsRtlAddBaseMcbEntryEx+3E8↑j
                cmp     r15d, r13d
                jnz     loc_14032D5E4
                test    ebx, ebx
                jz      loc_140476469
                lea     eax, [rbx-1]
                add     [r14+rax*8], r12d
                jmp     loc_14032D1FB
; ---------------------------------------------------------------------------

loc_14032D55F:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+324↑j
                mov     eax, r15d
                jmp     loc_14032D470
; ---------------------------------------------------------------------------

loc_14032D567:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+19F↑j
                mov     eax, r15d
                jmp     loc_14032D2EC
; ---------------------------------------------------------------------------

loc_14032D56F:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+1B6↑j
                mov     eax, r15d
                jmp     loc_14032D303
; ---------------------------------------------------------------------------

loc_14032D577:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+1CE↑j
                mov     eax, r15d
                jmp     loc_14032D31B
; ---------------------------------------------------------------------------

loc_14032D57F:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+251↑j
                                        ; FsRtlAddBaseMcbEntryEx+280↑j
                mov     [r9+4], r13d
                jmp     loc_14032D1FB
; ---------------------------------------------------------------------------

loc_14032D588:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+1E5↑j
                mov     edx, r15d
                jmp     loc_14032D350
; ---------------------------------------------------------------------------

loc_14032D590:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+1DD↑j
                cmp     r8d, edx
                jnz     loc_14032D323
                lea     eax, [rbp-1]
                cmp     ebx, eax
                jnb     loc_14047648F
                lea     eax, [rbx+1]
                mov     ecx, [r14+rax*8+4]

loc_14032D5AC:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+149354↓j
                lea     eax, [r12+r13]
                cmp     ecx, eax
                jnz     loc_14032D645
                mov     [r9], esi
                lea     ecx, [rbx+1]
                mov     rax, [rdi+10h]
                mov     [rax+rcx*8+4], r13d
                jmp     loc_14032D1FB
; ---------------------------------------------------------------------------

loc_14032D5CC:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+202↑j
                lea     eax, [rbx-2]
                mov     eax, [r14+rax*8]
                jmp     loc_14032D34B
; ---------------------------------------------------------------------------

loc_14032D5D8:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+26B↑j
                lea     eax, [rbx-2]
                mov     eax, [r14+rax*8]
                jmp     loc_14032D3B4
; ---------------------------------------------------------------------------

loc_14032D5E4:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+405↑j
                mov     r8d, 1
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_14032D694
                test    al, al
                jz      loc_1404764EB
                mov     rax, [rdi+10h]
                mov     rcx, [rsp+58h+arg_0]
                mov     edx, [rsp+58h+arg_8]
                mov     [rax+rcx+4], r13d
                mov     rax, [rdi+10h]
                mov     [rcx+rax], edx
                jmp     loc_14032D1FB
; ---------------------------------------------------------------------------

loc_14032D61A:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+22D↑j
                test    ebx, ebx
                jz      loc_1404764AB
                lea     eax, [rbx+1]
                mov     r8d, 2
                mov     eax, [r14+rax*8]
                lea     ecx, [rbx-1]
                mov     [r14+rcx*8], eax
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_14032D858
                jmp     loc_14032D1FB
; ---------------------------------------------------------------------------

loc_14032D645:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+472↑j
                mov     r8d, 1
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_14032D694
                test    al, al
                jz      loc_1404764EB
                mov     rax, [rdi+10h]
                mov     rcx, [rsp+58h+arg_0]
                mov     dword ptr [rax+rcx+4], 0FFFFFFFFh
                mov     rax, [rdi+10h]
                mov     [rcx+rax], esi
                lea     ecx, [rbx+1]
                mov     rax, [rdi+10h]
                mov     [rax+rcx*8+4], r13d
                jmp     loc_14032D1FB
; ---------------------------------------------------------------------------

loc_14032D686:                          ; CODE XREF: FsRtlAddBaseMcbEntryEx+3EC↑j
                mov     eax, r15d
                jmp     loc_14032D539
FsRtlAddBaseMcbEntryEx endp
