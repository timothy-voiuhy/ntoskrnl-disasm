ExUuidCreate    proc near               ; CODE XREF: sub_140682550+222↑p
                                        ; sub_1406D798C+C↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408207C4 SIZE 0000006B BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r14, gs:188h
                lea     r12, qword_140CEC940
                xor     esi, esi
                mov     r15, rcx
                or      rbx, 0FFFFFFFFFFFFFFFFh

loc_1406D79F6:                          ; CODE XREF: ExUuidCreate+6A↓j
                                        ; ExUuidCreate+149↓j
                mov     eax, cs:dword_140D2D2C4
                mov     rdi, cs:qword_140D2D2B8
                mov     cl, cs:byte_140D2D006
                mov     [r15+8], eax
                mov     eax, cs:dword_140D2D2C8
                mov     [r15+0Ch], eax
                mov     eax, ebx
                lock xadd cs:dword_140D2D2C0, eax
                add     eax, ebx
                cmp     rdi, cs:qword_140D2D2B8
                jnz     short loc_1406D79F6
                test    eax, eax
                js      short loc_1406D7A89
                cdqe
                sub     rdi, rax
                mov     rax, rdi
                mov     [r15], edi
                shr     rax, 20h
                mov     [r15+4], ax
                mov     eax, 0FFFh
                shr     rdi, 30h
                and     di, ax
                mov     eax, 1000h
                or      di, ax
                mov     eax, 40020056h
                test    cl, cl
                mov     [r15+6], di
                cmovz   esi, eax

loc_1406D7A67:                          ; CODE XREF: ExUuidCreate+148E6A↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+38h+arg_10]
                mov     rbp, [rsp+38h+arg_8]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406D7A89:                          ; CODE XREF: ExUuidCreate+6E↑j
                add     [r14+1E4h], bx
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r12
                call    sub_140244C10
                lock bts qword ptr [r12], 0
                mov     rbp, rax
                jb      loc_1408207C4

loc_1406D7AAE:                          ; CODE XREF: ExUuidCreate+148E13↓j
                test    rbp, rbp
                jz      short loc_1406D7AB7
                or      byte ptr [rbp+1Ah], 1

loc_1406D7AB7:                          ; CODE XREF: ExUuidCreate+F1↑j
                cmp     rdi, cs:qword_140D2D2B8
                jnz     loc_1408207D8
                lea     rcx, qword_140D2D2B8
                call    sub_1407D1F54
                mov     esi, eax
                test    eax, eax
                jnz     loc_140820800
                call    sub_14071A574
                mov     al, cs:byte_140D2D006
                mov     rax, rbx
                lock xadd cs:qword_140CEC940, rax
                test    al, 2
                jnz     loc_1408207EA

loc_1406D7AF9:                          ; CODE XREF: ExUuidCreate:loc_1408207EC↓j
                                        ; ExUuidCreate+148E3B↓j
                mov     rcx, r12
                call    sub_140243660
                mov     rcx, r14
                call    sub_14021E1F0
                jmp     loc_1406D79F6
ExUuidCreate    endp

; ---------------------------------------------------------------------------
byte_1406D7B0E  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140076B38↑o
                                        ; .pdata:0000000140103AA0↑o

; =============== S U B R O U T I N E =======================================


sub_1406D7B14   proc near               ; CODE XREF: sub_1402028C0+21C9E6↑p
                                        ; sub_140679960+42B↑p
                                        ; DATA XREF: ...

var_38          = qword ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140820830 SIZE 0000005B BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                xor     esi, esi
                mov     r14d, r8d
                and     [rax-38h], rsi
                xor     r12b, r12b
                mov     [rax+18h], sil
                mov     rbx, r9
                mov     r15, rdx
                mov     r13, rcx
                lea     edi, [rsi+1]
                test    r8d, r8d
                jz      short loc_1406D7BA7
                mov     edx, r14d
                mov     r8d, 63486553h
                shl     rdx, 3
                mov     ecx, edi
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jz      loc_140820830
                mov     r8, rax
                mov     rdx, rbx
                mov     ecx, r14d
                call    sub_1403114A8
                mov     ebp, eax
                test    eax, eax
                js      loc_1406D7C6A
                mov     r9, rsi
                mov     r8d, r14d
                mov     rdx, r15
                mov     rcx, r13
                mov     r12b, dil
                call    sub_1406D74D8
                mov     ebp, eax
                test    eax, eax
                js      loc_1406D7C6A

loc_1406D7BA7:                          ; CODE XREF: sub_1406D7B14+3B↑j
                mov     rdi, [r13+0D8h]
                or      rbx, 0FFFFFFFFFFFFFFFFh
                mov     rax, gs:188h
                add     rdi, 58h ; 'X'
                add     [rax+1E4h], bx
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockExclusiveEx
                lea     rcx, [rdi+8]
                cmp     qword ptr [rcx], 0
                jz      loc_1406D7CB6

loc_1406D7BDE:                          ; CODE XREF: sub_1406D7B14+1AE↓j
                lea     r9, [rsp+58h+var_38]
                mov     rdx, r15
                lea     r8, [rsp+58h+arg_10]
                mov     rcx, rdi
                call    sub_1406D7CD4
                mov     ebp, eax
                test    eax, eax
                jnz     loc_14082083F
                mov     ecx, [r15]
                xor     dl, dl
                test    ecx, ecx
                jnz     loc_14082084C
                mov     rcx, [rsp+58h+var_38]
                test    r14d, r14d
                jz      short loc_1406D7C22
                cmp     [rcx+38h], eax
                lea     r8d, [rax+1]
                movzx   edx, dl
                cmovz   edx, r8d

loc_1406D7C22:                          ; CODE XREF: sub_1406D7B14+FE↑j
                mov     [r13+440h], rcx

loc_1406D7C29:                          ; CODE XREF: sub_1406D7B14+148D5B↓j
                test    dl, dl
                jnz     short loc_1406D7CA9

loc_1406D7C2D:                          ; CODE XREF: sub_1406D7B14+19D↓j
                                        ; sub_1406D7B14+148D3B↓j
                xor     ecx, ecx
                movzx   eax, r12b
                test    dl, dl
                cmovz   ecx, eax
                xor     eax, eax
                test    dl, dl
                mov     r12b, cl
                cmovz   rax, rsi
                mov     rsi, rax
                lock xadd [rdi], rbx
                test    bl, 2
                jnz     loc_140820874

loc_1406D7C54:                          ; CODE XREF: sub_1406D7B14:loc_140820877↓j
                                        ; sub_1406D7B14+148D72↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_1406D7C6A:                          ; CODE XREF: sub_1406D7B14+6F↑j
                                        ; sub_1406D7B14+8D↑j
                test    rsi, rsi
                jz      short loc_1406D7C89
                test    r12b, r12b
                jz      short loc_1406D7C7F
                mov     rdx, rsi
                mov     ecx, r14d
                call    sub_14031186C

loc_1406D7C7F:                          ; CODE XREF: sub_1406D7B14+15E↑j
                xor     edx, edx
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_1406D7C89:                          ; CODE XREF: sub_1406D7B14+159↑j
                                        ; sub_1406D7B14+148D21↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     eax, ebp
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406D7CA9:                          ; CODE XREF: sub_1406D7B14+117↑j
                mov     [rcx+38h], r14d
                mov     [rcx+40h], rsi
                jmp     loc_1406D7C2D
; ---------------------------------------------------------------------------

loc_1406D7CB6:                          ; CODE XREF: sub_1406D7B14+C4↑j
                xor     r8d, r8d
                xor     edx, edx
                call    RtlCreateHashTable
                test    al, al
                jnz     loc_1406D7BDE
                jmp     loc_14082083A
sub_1406D7B14   endp

; ---------------------------------------------------------------------------
byte_1406D7CCD  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140076B68↑o
                                        ; .pdata:0000000140103AAC↑o

; =============== S U B R O U T I N E =======================================


sub_1406D7CD4   proc near               ; CODE XREF: sub_1406D7B14+DA↑p
                                        ; DATA XREF: .rdata:0000000140076B90↑o ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014082088C SIZE 00000045 BYTES

                mov     rax, rsp
                mov     [rax+20h], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rbp, [rcx+8]
                xor     ebx, ebx
                mov     ecx, [rdx]
                mov     r14, r9
                mov     [rax+10h], rbx
                mov     r15, r8
                mov     [rax+18h], rbx
                mov     rdi, rdx
                mov     [rax+8], ebx
                mov     esi, ebx
                test    ecx, ecx
                jnz     loc_14082088C
                mov     rcx, [rdx+8]
                movzx   eax, byte ptr [rcx+1]
                dec     eax
                mov     edx, [rcx+rax*4+8]
                test    edx, edx
                lea     rsi, [rdx+1]
                cmovnz  rsi, rdx

loc_1406D7D24:                          ; CODE XREF: sub_1406D7CD4+148BBB↓j
                                        ; sub_1406D7CD4+148BD8↓j
                lea     r9, [rsp+48h+arg_8]
                mov     [r15], bl
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rbp
                call    sub_1406D7DB8
                mov     rcx, [rsp+48h+arg_8]
                test    rcx, rcx
                jz      short loc_1406D7D7C
                mov     eax, 1
                lock xadd [rcx+18h], rax
                inc     rax
                cmp     rax, 1
                jle     loc_1408208B1

loc_1406D7D5C:                          ; CODE XREF: sub_1406D7CD4+148BE4↓j
                mov     rax, [rsp+48h+arg_8]
                mov     [r14], rax
                xor     eax, eax
                mov     byte ptr [r15], 1

loc_1406D7D6A:                          ; CODE XREF: sub_1406D7CD4+B7↓j
                                        ; sub_1406D7CD4+DC↓j
                mov     rbx, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406D7D7C:                          ; CODE XREF: sub_1406D7CD4+6E↑j
                lea     rdx, [rsp+48h+arg_10]
                mov     rcx, rdi
                call    sub_14071FFF0
                test    eax, eax
                js      short loc_1406D7D6A
                mov     rdi, [rsp+48h+arg_10]
                xor     r9d, r9d
                mov     rdx, rdi
                mov     r8, rsi
                mov     rcx, rbp
                call    RtlInsertEntryHashTable
                test    al, al
                jz      loc_1408208BD
                mov     [r14], rdi

loc_1406D7DAE:                          ; CODE XREF: sub_1406D7CD4+148BF8↓j
                mov     eax, ebx
                jmp     short loc_1406D7D6A
sub_1406D7CD4   endp

; ---------------------------------------------------------------------------
algn_1406D7DB2:                         ; DATA XREF: .rdata:0000000140076B90↑o
                                        ; .pdata:0000000140103AB8↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1406D7DB8   proc near               ; CODE XREF: sub_1406D7CD4+61↑p
                                        ; DATA XREF: .rdata:0000000140076BC0↑o ...

var_38          = xmmword ptr -38h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408208D2 SIZE 00000044 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                xorps   xmm0, xmm0
                mov     rsi, r8
                xor     eax, eax
                lea     r8, [r11-38h]
                movups  [rsp+58h+var_38], xmm0
                mov     [r11-28h], rax
                mov     r14, r9
                mov     r15, rcx
                xor     ebp, ebp
                xor     bl, bl
                call    RtlLookupEntryHashTable
                test    rax, rax
                jz      short loc_1406D7E36
                mov     edi, [rsi]
                lea     r12d, [rbp+1]

loc_1406D7E04:                          ; CODE XREF: sub_1406D7DB8+148B53↓j
                mov     rbp, rax
                cmp     edi, [rax+20h]
                jnz     loc_1408208FB
                test    edi, edi
                jnz     loc_1408208D2
                mov     rdx, [rax+28h]
                mov     rcx, [rsi+8]
                call    RtlEqualSid
                test    al, al
                movzx   ebx, bl
                cmovnz  ebx, r12d

loc_1406D7E2E:                          ; CODE XREF: sub_1406D7DB8+148B1D↓j
                                        ; sub_1406D7DB8+148B35↓j ...
                test    bl, bl
                jz      loc_1408208FB

loc_1406D7E36:                          ; CODE XREF: sub_1406D7DB8+44↑j
                                        ; sub_1406D7DB8+148B59↓j
                neg     bl
                sbb     rax, rax
                and     rax, rbp
                mov     [r14], rax
                xor     eax, eax
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                mov     rdi, [rsp+58h+arg_18]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406D7DB8   endp

byte_1406D7E63  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140076BC0↑o
                                        ; .pdata:0000000140103AC4↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1406D7E6C   proc near               ; CODE XREF: sub_140311538+F8↑p
                                        ; sub_140679960+3F7↑p ...

arg_0           = qword ptr  48h
arg_8           = qword ptr  50h
arg_10          = qword ptr  58h

; FUNCTION CHUNK AT 0000000140820916 SIZE 00000101 BYTES

                mov     [rsp-40h+arg_8], rdx
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 28h
                mov     esi, [rcx+78h]
                xor     eax, eax
                or      rbx, 0FFFFFFFFFFFFFFFFh
                mov     [rbp+arg_0], rax
                mov     [rbp+arg_10], rax
                mov     r14, rdx
                mov     r13, rcx
                mov     r15b, al
                mov     r12b, al
                mov     edi, eax
                cmp     esi, 5
                jnb     loc_140820916
                lea     rcx, [rsi+rsi*4]
                lea     rax, unk_140C25D40
                lea     rsi, [rax+rcx*8]
                xor     ecx, ecx
                mov     [rbp+arg_0], rsi

loc_1406D7EC1:                          ; CODE XREF: sub_1406D7E6C+148B54↓j
                cmp     [rsi+20h], cl
                jz      loc_1406D7F54

loc_1406D7ECA:                          ; CODE XREF: sub_1406D7E6C+138↓j
                test    edi, edi
                jnz     short loc_1406D7F2E
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                mov     rsi, [rbp+arg_0]
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockExclusiveEx
                lea     r8, [rbp+arg_10]
                mov     rdx, r14
                mov     rcx, rsi
                call    sub_1406D7FC8
                mov     edi, eax
                test    eax, eax
                jnz     short loc_1406D7F0C
                mov     rax, [rbp+arg_10]
                mov     [r13+438h], rax

loc_1406D7F0C:                          ; CODE XREF: sub_1406D7E6C+93↑j
                mov     rax, rbx
                lock xadd [rsi], rax
                and     al, 6
                cmp     al, 2
                jz      loc_1406D7FB4

loc_1406D7F1E:                          ; CODE XREF: sub_1406D7E6C+151↓j
                mov     rcx, [rbp+arg_0]
                call    sub_140243660
                call    KeLeaveCriticalRegion
                xor     ecx, ecx

loc_1406D7F2E:                          ; CODE XREF: sub_1406D7E6C+60↑j
                                        ; sub_1406D7E6C+148B4A↓j
                test    r12b, r12b
                jnz     loc_1408209C5
                test    r15b, r15b
                jnz     loc_1408209E4

loc_1406D7F40:                          ; CODE XREF: sub_1406D7E6C+148BA6↓j
                mov     eax, edi
                add     rsp, 28h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1406D7F54:                          ; CODE XREF: sub_1406D7E6C+58↑j
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                mov     r14, [rbp+arg_0]
                xor     edx, edx
                mov     rcx, r14
                call    ExAcquirePushLockExclusiveEx
                cmp     byte ptr [rsi+20h], 0
                jnz     short loc_1406D7F82
                mov     rcx, r14
                call    sub_14078D2E8
                mov     edi, eax

loc_1406D7F82:                          ; CODE XREF: sub_1406D7E6C+10A↑j
                mov     rax, rbx
                lock xadd [r14], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_1406D7FA9

loc_1406D7F90:                          ; CODE XREF: sub_1406D7E6C+146↓j
                mov     rcx, [rbp+arg_0]
                call    sub_140243660
                call    KeLeaveCriticalRegion
                mov     r14, [rbp+arg_8]
                xor     ecx, ecx
                jmp     loc_1406D7ECA
; ---------------------------------------------------------------------------

loc_1406D7FA9:                          ; CODE XREF: sub_1406D7E6C+122↑j
                mov     rcx, [rbp+arg_0]
                call    ExfTryToWakePushLock
                jmp     short loc_1406D7F90
; ---------------------------------------------------------------------------

loc_1406D7FB4:                          ; CODE XREF: sub_1406D7E6C+AC↑j
                mov     rcx, [rbp+arg_0]
                call    ExfTryToWakePushLock
                jmp     loc_1406D7F1E
sub_1406D7E6C   endp

; ---------------------------------------------------------------------------
algn_1406D7FC2:                         ; DATA XREF: .rdata:0000000140076BEC↑o
                                        ; .pdata:0000000140103AD0↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1406D7FC8   proc near               ; CODE XREF: sub_1406D7E6C+8A↑p
                                        ; DATA XREF: .rdata:0000000140076C18↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140820A18 SIZE 000000B9 BYTES

                mov     [rsp+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r13, [rcx+18h]
                lea     r14, [rcx+8]
                mov     r12, r8
                mov     [rsp+58h+arg_18], r13
                xor     edi, edi
                lea     r8, [rsp+58h+arg_0]
                mov     rcx, r13
                mov     [rsp+58h+arg_0], rdi
                mov     r15, rdx
                call    sub_1406D80F4
                mov     rcx, [rsp+58h+arg_0]
                lea     ebx, [rdi+1]
                test    rcx, rcx
                jz      short loc_1406D8045
                mov     eax, ebx
                lock xadd [rcx+18h], rax
                add     rax, rbx
                cmp     rax, rbx
                jle     loc_140820A18

loc_1406D8024:                          ; CODE XREF: sub_1406D7FC8+148A57↓j
                mov     rax, [rsp+58h+arg_0]
                mov     [r12], rax
                xor     eax, eax

loc_1406D802F:                          ; CODE XREF: sub_1406D7FC8+11E↓j
                                        ; sub_1406D7FC8+148A61↓j
                mov     rbx, [rsp+58h+arg_8]
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

loc_1406D8045:                          ; CODE XREF: sub_1406D7FC8+46↑j
                movzx   eax, byte ptr [r15+1]
                mov     r8d, 734C6553h
                mov     ecx, ebx
                lea     ebp, ds:43h[rax*4]
                and     ebp, 0FFFFFFFCh
                mov     edx, ebp
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jz      loc_140820A24
                lea     rdx, [rax+38h]
                mov     r8, r15
                lea     ecx, [rbp-38h]
                mov     [rax+20h], rdx
                call    RtlCopySid
                xor     r8d, r8d
                mov     edx, ebx
                mov     rcx, r14
                call    RtlFindClearBitsAndSet
                mov     ebp, eax
                cmp     eax, 0FFFFFFFFh
                jz      loc_140820A2E

loc_1406D809A:                          ; CODE XREF: sub_1406D7FC8+148AD7↓j
                cmp     ebp, 0FFFFh
                jz      loc_140820ABD
                lea     eax, [rbp+1]
                mov     [rsi+30h], rdi
                mov     [rsi+28h], eax
                mov     rcx, r13
                mov     [rsi+18h], rbx
                movzx   eax, byte ptr [r15+1]
                sub     eax, ebx
                mov     edx, [r15+rax*4+8]
                test    edx, edx
                lea     r8, [rdx+1]
                cmovnz  r8, rdx
                xor     r9d, r9d
                mov     rdx, rsi
                call    RtlInsertEntryHashTable
                test    al, al
                jz      loc_140820AA4
                mov     [r12], rsi

loc_1406D80E4:                          ; CODE XREF: sub_1406D7FC8+148B04↓j
                mov     eax, edi
                jmp     loc_1406D802F
sub_1406D7FC8   endp

; ---------------------------------------------------------------------------
byte_1406D80EB  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140076C18↑o
                                        ; .pdata:0000000140103ADC↑o

; =============== S U B R O U T I N E =======================================


sub_1406D80F4   proc near               ; CODE XREF: sub_1406D7FC8+36↑p
                                        ; DATA XREF: .rdata:0000000140076C44↑o ...

var_28          = xmmword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140820AD2 SIZE 00000013 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                mov     [r11+20h], rdi
                push    r14
                sub     rsp, 40h
                xor     eax, eax
                mov     r14, r8
                xor     ebx, ebx
                mov     rsi, rdx
                xorps   xmm0, xmm0
                mov     rbp, rcx
                movups  [rsp+48h+var_28], xmm0
                mov     [r11-18h], rax
                mov     edi, ebx
                movzx   eax, byte ptr [rdx+1]
                dec     eax
                mov     r8d, [rdx+rax*4+8]
                test    r8d, r8d
                lea     rdx, [r8+1]
                cmovnz  rdx, r8
                lea     r8, [r11-28h]
                call    RtlLookupEntryHashTable

loc_1406D8147:                          ; CODE XREF: sub_1406D80F4+1489EC↓j
                test    rax, rax
                jz      short loc_1406D8165
                mov     rdx, [rax+20h]
                mov     rcx, rsi
                mov     rdi, rax
                call    RtlEqualSid
                test    al, al
                jz      loc_140820AD2
                mov     bl, 1

loc_1406D8165:                          ; CODE XREF: sub_1406D80F4+56↑j
                neg     bl
                sbb     rax, rax
                and     rax, rdi
                mov     [r14], rax
                xor     eax, eax
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406D80F4   endp

byte_1406D818E  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140076C44↑o
                                        ; .pdata:0000000140103AE8↑o

; =============== S U B R O U T I N E =======================================


sub_1406D8194   proc near               ; CODE XREF: sub_1405980F4+B4↑p
                                        ; DATA XREF: .pdata:0000000140103AF4↑o
                movzx   eax, byte ptr [rcx+1]
                dec     eax
                mov     edx, [rcx+rax*4+8]
                test    edx, edx
                lea     rax, [rdx+1]
                cmovnz  rax, rdx
                retn
sub_1406D8194   endp

; ---------------------------------------------------------------------------
                align 2
algn_1406D81AA:                         ; DATA XREF: .pdata:0000000140103AF4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406D81B0   proc near               ; CODE XREF: sub_140311538+94↑p
                                        ; sub_14061E3A0+710↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rsi, rdx
                mov     rcx, [rcx+310h]
                test    rcx, rcx
                jnz     short loc_1406D8236

loc_1406D81D6:                          ; CODE XREF: sub_1406D81B0+8D↓j
                movzx   eax, byte ptr [rsi+1]
                mov     ecx, 1
                mov     r8d, 69536553h
                lea     ebp, ds:0Bh[rax*4]
                and     ebp, 0FFFFFFFCh
                mov     edx, ebp
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      short loc_1406D824F
                mov     r8, rsi
                mov     rdx, rax
                mov     ecx, ebp
                call    RtlCopySid
                mov     rcx, [rbx+310h]
                test    rcx, rcx
                jnz     short loc_1406D8246

loc_1406D8217:                          ; CODE XREF: sub_1406D81B0+9D↓j
                mov     [rbx+310h], rdi
                xor     eax, eax

loc_1406D8220:                          ; CODE XREF: sub_1406D81B0+94↓j
                                        ; sub_1406D81B0+A4↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406D8236:                          ; CODE XREF: sub_1406D81B0+24↑j
                call    sub_140679848
                test    al, al
                jnz     short loc_1406D81D6
                mov     eax, 0C0000022h
                jmp     short loc_1406D8220
; ---------------------------------------------------------------------------

loc_1406D8246:                          ; CODE XREF: sub_1406D81B0+65↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1406D8217
; ---------------------------------------------------------------------------

loc_1406D824F:                          ; CODE XREF: sub_1406D81B0+4C↑j
                mov     eax, 0C000009Ah
                jmp     short loc_1406D8220
sub_1406D81B0   endp

; ---------------------------------------------------------------------------
byte_1406D8256  db 6 dup(0CCh)          ; DATA XREF: .pdata:0000000140103B00↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1406D825C   proc near               ; CODE XREF: sub_14067EC44+1249↑p
                                        ; sub_1407BB590+6C↓p
                                        ; DATA XREF: ...

var_20          = xmmword ptr -20h
var_10          = xmmword ptr -10h
arg_0           = qword ptr  40h
arg_8           = byte ptr  48h
arg_10          = byte ptr  50h
arg_18          = byte ptr  58h

                mov     [rsp-38h+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 40h
                xor     edi, edi
                mov     rsi, rcx
                mov     [rdx], dil
                xorps   xmm0, xmm0
                mov     rax, gs:188h
                xorps   xmm1, xmm1
                mov     r14, rdx
                mov     [rbp+arg_10], dil
                movups  [rbp+var_20], xmm0
                mov     [rbp+arg_18], dil
                mov     rcx, [rax+0B8h]
                movups  [rbp+var_10], xmm1
                mov     [rbp+arg_8], dil
                call    PsReferencePrimaryToken
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_1406D82BF
                mov     eax, 0C0000001h
                jmp     loc_1406D83FA
; ---------------------------------------------------------------------------

loc_1406D82BF:                          ; CODE XREF: sub_1406D825C+57↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rcx, [rbx+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                lea     rdx, [rbp+var_10]
                mov     rcx, rbx
                call    sub_14021C07C
                mov     rcx, [rbx+30h]
                mov     r12, [rbx+450h]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rax, gs:188h
                mov     rdx, rbx
                mov     rcx, [rax+0B8h]
                add     rcx, 4B8h
                call    sub_14024C4A0
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rcx, [rsi+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                lea     rdx, [rbp+var_20]
                mov     rcx, rsi
                call    sub_14021C07C
                mov     rcx, [rsi+30h]
                mov     ebx, [rsi+0C0h]
                mov     r15d, [rsi+0C4h]
                mov     r13, [rsi+450h]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                cmp     ebx, 2
                jnz     short loc_1406D8386
                cmp     r15d, ebx
                jge     short loc_1406D8386
                mov     eax, 0C00000A5h
                jmp     short loc_1406D83FA
; ---------------------------------------------------------------------------

loc_1406D8386:                          ; CODE XREF: sub_1406D825C+11C↑j
                                        ; sub_1406D825C+121↑j
                mov     rdx, qword ptr [rbp+var_20]
                lea     r8, [rbp+arg_8]
                mov     rcx, qword ptr [rbp+var_10]
                call    sub_14021BF70
                test    eax, eax
                js      short loc_1406D83FA
                cmp     [rbp+arg_8], dil
                jz      short loc_1406D83E3
                lea     r8, [rbp+arg_8]
                mov     [rbp+arg_8], dil
                mov     rdx, r13
                mov     rcx, r12
                call    sub_140219E70
                test    eax, eax
                js      short loc_1406D83FA
                cmp     [rbp+arg_8], dil
                jz      short loc_1406D83E3
                lea     rdx, [rbp+arg_10]
                mov     rcx, rsi
                call    sub_1406D8510
                mov     bl, [rbp+arg_10]
                test    bl, bl
                jnz     short loc_1406D83E6
                test    eax, eax
                js      short loc_1406D83FA
                lea     rdx, [rbp+arg_18]
                mov     rcx, rsi
                call    sub_1406D841C
                jmp     short loc_1406D83E6
; ---------------------------------------------------------------------------

loc_1406D83E3:                          ; CODE XREF: sub_1406D825C+143↑j
                                        ; sub_1406D825C+160↑j
                mov     bl, [rbp+arg_10]

loc_1406D83E6:                          ; CODE XREF: sub_1406D825C+173↑j
                                        ; sub_1406D825C+185↑j
                test    eax, eax
                js      short loc_1406D83FA
                test    bl, bl
                jnz     short loc_1406D83F4
                cmp     [rbp+arg_18], dil
                jz      short loc_1406D83F7

loc_1406D83F4:                          ; CODE XREF: sub_1406D825C+190↑j
                mov     dil, 1

loc_1406D83F7:                          ; CODE XREF: sub_1406D825C+196↑j
                mov     [r14], dil

loc_1406D83FA:                          ; CODE XREF: sub_1406D825C+5E↑j
                                        ; sub_1406D825C+128↑j ...
                mov     rbx, [rsp+40h+arg_0]
                add     rsp, 40h
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
sub_1406D825C   endp

byte_1406D8413  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140103B0C↑o

; =============== S U B R O U T I N E =======================================


sub_1406D841C   proc near               ; CODE XREF: sub_1406D825C+180↑p
                                        ; DATA XREF: .rdata:0000000140076CF0↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140820AE6 SIZE 00000047 BYTES

                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     r14, rcx
                mov     r15, rdx
                mov     byte ptr [rdx], 0
                mov     rdi, [rax+0B8h]
                mov     rcx, rdi
                call    PsReferencePrimaryToken
                mov     rbp, rax
                test    rax, rax
                jz      loc_140820AE6
                mov     rbx, [rax+20h]
                lea     rcx, [rdi+4B8h]
                mov     rsi, [rax+18h]
                mov     rdx, rax
                mov     [rsp+48h+arg_8], rbx
                mov     [rsp+48h+arg_10], rsi
                call    sub_14024C4A0
                mov     rax, [r14+20h]
                mov     rdi, [r14+18h]
                mov     [rsp+48h+arg_18], rdi
                cmp     eax, ebx
                jnz     short loc_1406D84E4
                shr     rax, 20h
                cmp     eax, dword ptr [rsp+48h+arg_8+4]
                jnz     short loc_1406D84E4
                mov     ebx, dword ptr [rsp+48h+arg_10+4]
                cmp     edi, esi
                jz      short loc_1406D84F8

loc_1406D849D:                          ; CODE XREF: sub_1406D841C+E5↓j
                mov     rdx, r14
                mov     rcx, rbp
                call    sub_140311758
                mov     eax, [rbp+0C8h]
                test    al, 20h
                jnz     short loc_1406D84D9
                mov     eax, [r14+0C8h]
                test    al, 20h
                jnz     short loc_1406D84D9
                mov     rdx, [r14+0D8h]
                mov     rcx, [rbp+0D8h]
                mov     eax, [rdx+20h]
                and     eax, [rcx+20h]
                test    al, 40h
                jnz     loc_140820AF0

loc_1406D84D9:                          ; CODE XREF: sub_1406D841C+94↑j
                                        ; sub_1406D841C+9F↑j ...
                mov     rdx, r14
                mov     rcx, rbp
                call    sub_140311724

loc_1406D84E4:                          ; CODE XREF: sub_1406D841C+6D↑j
                                        ; sub_1406D841C+77↑j ...
                xor     eax, eax

loc_1406D84E6:                          ; CODE XREF: sub_1406D841C+1486CF↓j
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1406D84F8:                          ; CODE XREF: sub_1406D841C+7F↑j
                mov     rax, rdi
                shr     rax, 20h
                cmp     eax, ebx
                jnz     short loc_1406D849D
                mov     byte ptr [r15], 1
                jmp     short loc_1406D84E4
sub_1406D841C   endp

; ---------------------------------------------------------------------------
algn_1406D8509:                         ; DATA XREF: .rdata:0000000140076CF0↑o
                                        ; .pdata:0000000140103B18↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406D8510   proc near               ; CODE XREF: sub_1406D825C+169↑p
                                        ; DATA XREF: .rdata:0000000140076D18↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140820B2E SIZE 00000016 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     rbp, rcx
                mov     rdi, rdx
                mov     byte ptr [rdx], 0
                mov     rsi, [rax+0B8h]
                mov     rcx, rsi
                call    PsReferencePrimaryToken
                test    rax, rax
                jz      short loc_1406D8586
                mov     rbx, [rax+10h]
                lea     rcx, [rsi+4B8h]
                mov     rdx, rax
                mov     [rsp+28h+arg_8], rbx
                call    sub_14024C4A0
                mov     rax, [rbp+20h]
                cmp     eax, ebx
                jz      loc_140820B2E

loc_1406D856E:                          ; CODE XREF: sub_1406D8510+148626↓j
                                        ; sub_1406D8510+14862F↓j
                xor     eax, eax

loc_1406D8570:                          ; CODE XREF: sub_1406D8510+7B↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_10]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406D8586:                          ; CODE XREF: sub_1406D8510+38↑j
                mov     eax, 0C0000001h
                jmp     short loc_1406D8570
sub_1406D8510   endp

; ---------------------------------------------------------------------------
byte_1406D858D  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140076D18↑o
                                        ; .pdata:0000000140103B24↑o

; =============== S U B R O U T I N E =======================================


sub_1406D8594   proc near               ; CODE XREF: sub_1405F3CF0+64F↑p
                                        ; DATA XREF: .pdata:0000000140103B30↑o

var_18          = qword ptr -18h
var_10          = dword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                mov     r8d, [rdx]
                mov     rdi, rdx
                mov     rsi, rcx
                test    r8d, 0FFFFFFF3h
                jnz     short loc_1406D8625
                not     r8d
                test    [rdx+4], r8d
                jnz     short loc_1406D8625
                call    sub_1406D8634
                test    al, al
                jz      short loc_1406D861E
                mov     dl, 1
                lea     rcx, [rsi+38h]
                call    ExAcquireResourceExclusiveLite
                mov     rax, [rdi]
                lea     r9, sub_1407210D0
                mov     [rsp+38h+var_10], 5
                lea     rdx, sub_1407254A0
                xor     r8d, r8d
                mov     [rsi+628h], rax
                mov     rcx, rsi
                mov     [rsp+38h+var_18], rdi
                call    sub_140604DA0
                lea     rcx, [rsi+38h]
                call    ExReleaseResourceLite
                xor     eax, eax

loc_1406D860D:                          ; CODE XREF: sub_1406D8594+8F↓j
                                        ; sub_1406D8594+96↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406D861E:                          ; CODE XREF: sub_1406D8594+31↑j
                mov     eax, 0C0000022h
                jmp     short loc_1406D860D
; ---------------------------------------------------------------------------

loc_1406D8625:                          ; CODE XREF: sub_1406D8594+1F↑j
                                        ; sub_1406D8594+28↑j
                mov     eax, 0C000000Dh
                jmp     short loc_1406D860D
sub_1406D8594   endp

; ---------------------------------------------------------------------------
byte_1406D862C  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140103B30↑o

; =============== S U B R O U T I N E =======================================


sub_1406D8634   proc near               ; CODE XREF: sub_1405F3CF0:loc_1405F55F7↑p
                                        ; sub_14067A140:loc_14067A541↑p ...

var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h

                push    rbx
                sub     rsp, 40h
                xorps   xmm0, xmm0
                lea     rcx, [rsp+48h+var_28]
                movups  [rsp+48h+var_28], xmm0
                movups  [rsp+48h+var_18], xmm0
                call    SeCaptureSubjectContext
                lea     rcx, [rsp+48h+var_28]
                call    SeLockSubjectContext
                mov     rax, qword ptr [rsp+48h+var_28]
                mov     rcx, qword ptr [rsp+48h+var_18]
                test    rax, rax
                cmovnz  rcx, rax
                call    SeTokenIsAdmin
                lea     rcx, [rsp+48h+var_28]
                mov     bl, al
                call    SeUnlockSubjectContext
                lea     rcx, [rsp+48h+var_28]
                call    SeReleaseSubjectContext
                mov     al, bl
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406D8634   endp

algn_1406D8690:                         ; DATA XREF: .pdata:0000000140103B3C↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1406D86A0   proc near               ; DATA XREF: .pdata:0000000140103B48↑o
                                        ; PAGE:000000014098B708↓o

var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = byte ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
arg_8           = dword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r14
                lea     rbp, [rsp-37h]
                sub     rsp, 0A0h
                xor     r14d, r14d
                xorps   xmm0, xmm0
                movups  [rbp+57h+var_50], xmm0
                mov     [rbp+57h+var_80], r14
                mov     edx, 100h
                movups  [rbp+57h+var_40], xmm0
                mov     [rsp+0C0h+var_98], r14
                movups  [rbp+57h+var_30], xmm0
                mov     rax, gs:188h
                mov     r8, cs:PsThreadType
                mov     [rbp+57h+arg_18], r14
                mov     [rbp+57h+arg_8], r14d
                mov     r9b, [rax+232h]
                lea     rax, [rbp+57h+arg_10]
                mov     [rsp+0C0h+var_A0], rax
                movups  [rbp+57h+var_70], xmm0
                mov     [rbp+57h+var_78], r14
                movups  [rbp+57h+var_60], xmm0
                mov     [rbp+57h+arg_10], r14
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      loc_1406D8974
                lea     rcx, [rbp+57h+var_70]
                call    SeCaptureSubjectContext
                mov     rax, qword ptr [rbp+57h+var_70]
                lea     r8, [rbp+57h+arg_8]
                mov     rbx, qword ptr [rbp+57h+var_60]
                lea     rdx, aAnonymousappco ; "AnonymousAppContainerImpersonationLevel"...
                test    rax, rax
                mov     rdi, rbx
                cmovnz  rdi, rax
                call    sub_1406D898C
                mov     ecx, 4000h
                test    eax, eax
                js      short loc_1406D8752
                cmp     [rbp+57h+arg_8], r14d
                jnz     short loc_1406D8776

loc_1406D8752:                          ; CODE XREF: sub_1406D86A0+AA↑j
                cmp     dword ptr [rdi+0C0h], 1
                jz      short loc_1406D8776
                test    [rbx+0C8h], ecx
                jz      short loc_1406D8776
                cmp     dword ptr [rdi+0C4h], 2
                jge     short loc_1406D8776
                mov     ebx, 0C00000A5h
                jmp     loc_1406D893F
; ---------------------------------------------------------------------------

loc_1406D8776:                          ; CODE XREF: sub_1406D86A0+B0↑j
                                        ; sub_1406D86A0+B9↑j ...
                test    [rdi+0C8h], ecx
                jnz     loc_1406D8907
                lea     r8, [rbp+57h+arg_8]
                lea     rdx, aEveryoneinclud ; "EveryoneIncludesAnonymous"
                call    sub_1406D898C
                test    eax, eax
                js      short loc_1406D87A3
                cmp     [rbp+57h+arg_8], 1
                mov     rsi, cs:qword_140D2EB90
                jz      short loc_1406D87AA

loc_1406D87A3:                          ; CODE XREF: sub_1406D86A0+F4↑j
                mov     rsi, cs:qword_140D2E938

loc_1406D87AA:                          ; CODE XREF: sub_1406D86A0+101↑j
                call    PsIsCurrentThreadInServerSilo
                test    al, al
                jz      short loc_1406D87D4
                call    PsGetCurrentServerSilo
                mov     rcx, rax
                lea     rdx, [rbp+57h+arg_18]
                call    sub_14091DD10
                mov     ebx, eax
                test    eax, eax
                js      loc_1406D893F
                mov     rsi, [rbp+57h+arg_18]
                jmp     short loc_1406D884E
; ---------------------------------------------------------------------------

loc_1406D87D4:                          ; CODE XREF: sub_1406D86A0+111↑j
                test    dword ptr [rdi+0C8h], 380000h
                jz      short loc_1406D884E
                lea     rax, [rbp+57h+var_80]
                mov     dword ptr [rbp+57h+var_50], 30h ; '0'
                mov     [rsp+0C0h+var_88], rax
                lea     rdx, [rbp+57h+var_50]
                mov     [rsp+0C0h+var_90], 1
                xorps   xmm0, xmm0
                mov     byte ptr [rsp+0C0h+var_98], r14b
                mov     r9d, 2
                mov     r8b, 1
                mov     dword ptr [rsp+0C0h+var_A0], 2
                mov     rcx, rsi
                mov     qword ptr [rbp+57h+var_50+8], r14
                mov     dword ptr [rbp+57h+var_40+8], r14d
                mov     qword ptr [rbp+57h+var_40], r14
                movdqu  [rbp+57h+var_30], xmm0
                call    sub_14061E3A0
                mov     ebx, eax
                test    eax, eax
                js      loc_1406D893F
                mov     eax, [rdi+0C8h]
                mov     rcx, [rbp+57h+var_80]
                and     eax, 380000h
                or      [rcx+0C8h], eax
                mov     rsi, [rbp+57h+var_80]

loc_1406D884E:                          ; CODE XREF: sub_1406D86A0+132↑j
                                        ; sub_1406D86A0+13E↑j
                mov     rax, gs:188h
                mov     edx, 4
                mov     r8, cs:SeTokenObjectType
                mov     rcx, rsi
                mov     r9b, [rax+232h]
                call    ObReferenceObjectByPointer
                mov     ebx, eax
                test    eax, eax
                js      loc_1406D893F
                mov     rcx, rsi
                call    PsDereferenceSiloContext
                mov     rax, gs:188h
                mov     rdi, [rax+0B8h]
                mov     rcx, rdi
                call    PsReferencePrimaryToken
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_1406D88AE
                mov     ebx, 0C0000001h
                jmp     loc_1406D893F
; ---------------------------------------------------------------------------

loc_1406D88AE:                          ; CODE XREF: sub_1406D86A0+202↑j
                mov     rcx, rbx
                call    SeTokenIsRestricted
                test    al, al
                jz      short loc_1406D88D5
                mov     rcx, rbx
                call    SeTokenIsWriteRestricted
                test    al, al
                jnz     short loc_1406D88D5
                mov     rcx, rbx
                call    PsDereferenceSiloContext
                mov     ebx, 0C0000022h
                jmp     short loc_1406D893F
; ---------------------------------------------------------------------------

loc_1406D88D5:                          ; CODE XREF: sub_1406D86A0+218↑j
                                        ; sub_1406D86A0+224↑j
                lea     rcx, [rdi+4B8h]
                mov     rdx, rbx
                call    sub_14024C4A0
                cmp     [rbp+57h+arg_18], r14
                mov     rdx, rsi
                mov     rcx, [rbp+57h+arg_10]
                setz    r8b
                mov     dword ptr [rsp+0C0h+var_A0], 2
                xor     r9d, r9d
                call    PsImpersonateClient
                mov     ebx, eax
                jmp     short loc_1406D893F
; ---------------------------------------------------------------------------

loc_1406D8907:                          ; CODE XREF: sub_1406D86A0+DC↑j
                lea     rdx, [rbp+57h+var_78]
                mov     rcx, rdi
                call    sub_140311538
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406D893F
                mov     rdx, [rbp+57h+var_78]
                xor     r9d, r9d
                mov     rcx, [rbp+57h+arg_10]
                mov     r8b, 1
                mov     dword ptr [rsp+0C0h+var_A0], 2
                call    PsImpersonateClient
                mov     rcx, [rbp+57h+var_78]
                mov     ebx, eax
                call    PsDereferenceSiloContext

loc_1406D893F:                          ; CODE XREF: sub_1406D86A0+D1↑j
                                        ; sub_1406D86A0+128↑j ...
                lea     rcx, [rbp+57h+var_70]
                call    SeReleaseSubjectContext
                mov     rcx, [rbp+57h+arg_10]
                test    rcx, rcx
                jz      short loc_1406D8956
                call    PsDereferenceSiloContext

loc_1406D8956:                          ; CODE XREF: sub_1406D86A0+2AF↑j
                mov     rcx, [rbp+57h+arg_18]
                test    rcx, rcx
                jz      short loc_1406D8964
                call    PsDereferenceSiloContext

loc_1406D8964:                          ; CODE XREF: sub_1406D86A0+2BD↑j
                mov     rcx, [rbp+57h+var_80]
                test    rcx, rcx
                jz      short loc_1406D8972
                call    PsDereferenceSiloContext

loc_1406D8972:                          ; CODE XREF: sub_1406D86A0+2CB↑j
                mov     eax, ebx

loc_1406D8974:                          ; CODE XREF: sub_1406D86A0+72↑j
                add     rsp, 0A0h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406D86A0   endp

byte_1406D8983  db 9 dup(0CCh)          ; DATA XREF: .pdata:0000000140103B48↑o

; =============== S U B R O U T I N E =======================================


sub_1406D898C   proc near               ; CODE XREF: sub_1406D86A0+9E↑p
                                        ; sub_1406D86A0+ED↑p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+8], rcx
                push    rdi
                sub     rsp, 30h
                and     qword ptr [rax+8], 0
                lea     rcx, aRegistryMachin_33 ; "\\Registry\\Machine\\System\\CurrentCon"...
                mov     rdi, r8
                mov     rsi, rdx
                lea     r8, [rax+8]
                mov     edx, 201h
                call    sub_1406D8AF4
                mov     ebx, eax
                test    eax, eax
                js      short loc_1406D89ED
                mov     rcx, [rsp+38h+arg_0]
                mov     r8d, 4
                mov     r9d, r8d
                mov     [rsp+38h+var_18], rdi
                mov     rdx, rsi
                call    sub_1406D8A08
                mov     rcx, [rsp+38h+arg_0]
                mov     ebx, eax
                call    ZwClose

loc_1406D89ED:                          ; CODE XREF: sub_1406D898C+38↑j
                mov     rsi, [rsp+38h+arg_10]
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406D898C   endp

byte_1406D8A00  db 8 dup(0CCh)          ; DATA XREF: .pdata:0000000140103B54↑o

; =============== S U B R O U T I N E =======================================


sub_1406D8A08   proc near               ; CODE XREF: sub_1406D898C+50↑p
                                        ; sub_14079DEC4+3A↓p ...

var_A8          = dword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = dword ptr -98h
var_90          = xmmword ptr -90h
var_78          = byte ptr -78h
var_74          = dword ptr -74h
var_70          = dword ptr -70h
var_6C          = dword ptr -6Ch
var_28          = qword ptr -28h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 0B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0C8h+var_28], rax
                mov     r14, [rsp+0C8h+arg_20]
                mov     rbx, rcx
                and     [rsp+0C8h+var_98], 0
                lea     rcx, [rsp+0C8h+var_90]
                xorps   xmm0, xmm0
                mov     esi, r9d
                movups  [rsp+0C8h+var_90], xmm0
                mov     edi, r8d
                call    RtlInitUnicodeString
                lea     rax, [rsp+0C8h+var_98]
                mov     r8d, 2
                mov     [rsp+0C8h+var_A0], rax
                lea     r9, [rsp+0C8h+var_78]
                lea     rdx, [rsp+0C8h+var_90]
                mov     [rsp+0C8h+var_A8], 50h ; 'P'
                mov     rcx, rbx
                call    ZwQueryValueKey
                mov     ebx, eax
                test    eax, eax
                jns     short loc_1406D8AA9

loc_1406D8A82:                          ; CODE XREF: sub_1406D8A08+C3↓j
                                        ; sub_1406D8A08+D5↓j ...
                mov     eax, ebx
                mov     rcx, [rsp+0C8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0C8h+arg_10]
                add     rsp, 0B0h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406D8AA9:                          ; CODE XREF: sub_1406D8A08+78↑j
                cmp     [rsp+0C8h+var_74], edi
                jnz     short loc_1406D8AE6
                cmp     [rsp+0C8h+var_70], esi
                jnz     short loc_1406D8AE6
                sub     edi, 3
                jz      short loc_1406D8ACD
                cmp     edi, 1
                jnz     short loc_1406D8ADF
                cmp     esi, 4
                jb      short loc_1406D8ADF
                mov     eax, [rsp+0C8h+var_6C]
                mov     [r14], eax
                jmp     short loc_1406D8A82
; ---------------------------------------------------------------------------

loc_1406D8ACD:                          ; CODE XREF: sub_1406D8A08+B0↑j
                mov     r8, rsi
                lea     rdx, [rsp+0C8h+var_6C]
                mov     rcx, r14
                call    memmove
                jmp     short loc_1406D8A82
; ---------------------------------------------------------------------------

loc_1406D8ADF:                          ; CODE XREF: sub_1406D8A08+B5↑j
                                        ; sub_1406D8A08+BA↑j
                mov     ebx, 0C000000Dh
                jmp     short loc_1406D8A82
; ---------------------------------------------------------------------------

loc_1406D8AE6:                          ; CODE XREF: sub_1406D8A08+A5↑j
                                        ; sub_1406D8A08+AB↑j
                mov     ebx, 0C0000024h
                jmp     short loc_1406D8A82
; } // starts at 1406D8A08
sub_1406D8A08   endp

; ---------------------------------------------------------------------------
byte_1406D8AED  db 7 dup(0CCh)          ; DATA XREF: .pdata:0000000140103B60↑o

; =============== S U B R O U T I N E =======================================


sub_1406D8AF4   proc near               ; CODE XREF: sub_1403CB7BC+42↑p
                                        ; sub_1403CB7BC+5C↑p ...

var_48          = byte ptr -48h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = dword ptr -20h
var_18          = xmmword ptr -18h
arg_0           = qword ptr  8

                mov     rax, rsp
                mov     [rax+8], rbx
                push    rdi
                sub     rsp, 60h
                and     dword ptr [rax-34h], 0
                mov     ebx, edx
                and     dword ptr [rax-1Ch], 0
                mov     rdx, rcx
                xorps   xmm0, xmm0
                lea     rcx, [rax-48h]
                mov     rdi, r8
                movups  xmmword ptr [rax-48h], xmm0
                call    RtlInitUnicodeString
                and     [rsp+68h+var_30], 0
                lea     rax, [rsp+68h+var_48]
                and     qword ptr [rdi], 0
                lea     r8, [rsp+68h+var_38]
                xorps   xmm0, xmm0
                mov     [rsp+68h+var_28], rax
                mov     edx, ebx
                mov     [rsp+68h+var_38], 30h ; '0'
                mov     rcx, rdi
                mov     [rsp+68h+var_20], 240h
                movdqu  [rsp+68h+var_18], xmm0
                call    ZwOpenKey
                mov     rbx, [rsp+68h+arg_0]
                add     rsp, 60h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1406D8AF4   endp

algn_1406D8B68:                         ; DATA XREF: .pdata:0000000140103B6C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406D8B70   proc near               ; DATA XREF: .rdata:0000000140076DDC↑o
                                        ; .pdata:0000000140103B78↑o ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_10          = qword ptr  18h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 0000000140820B44 SIZE 000000C7 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], r8
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     r13, r8
                mov     r14, rdx
                mov     rdi, rcx
                xor     edx, edx
                mov     [rax-38h], rdx
                movzx   r12d, dl
                mov     [rsp+78h+arg_18], dl
                mov     [rax-48h], edx
                mov     [rax-44h], edx
                mov     rax, gs:188h
                mov     bl, [rax+232h]
                test    bl, bl
                jz      short loc_1406D8BDB

loc_1406D8BBF:                          ; DATA XREF: .rdata:0000000140076DB8↑o
;   __try { // __except at loc_1406D8BD6
                mov     rcx, 7FFFFFFF0000h
                cmp     r8, rcx
                cmovb   rcx, r8
                mov     al, [rcx]
                mov     [rcx], al
                jmp     short loc_1406D8BDB
;   } // starts at 1406D8BBF
; ---------------------------------------------------------------------------

loc_1406D8BD6:                          ; DATA XREF: .rdata:0000000140076DB8↑o
;   __except(1) // owned by 1406D8BBF
                jmp     loc_1406D8E0F
; ---------------------------------------------------------------------------

loc_1406D8BDB:                          ; CODE XREF: sub_1406D8B70+4D↑j
                                        ; sub_1406D8B70+64↑j
                mov     r8, cs:SeTokenObjectType
                mov     [rsp+78h+var_40], rdx
                mov     [rsp+78h+var_50], rdx
                lea     rax, [rsp+78h+var_40]
                mov     [rsp+78h+var_58], rax
                mov     r9b, bl
                mov     edx, 8
                mov     rcx, rdi
                call    ObReferenceObjectByHandle
                mov     r15d, eax
                mov     rsi, [rsp+78h+var_40]
                test    eax, eax
                js      loc_140820B44
                cmp     rdi, r14
                jz      loc_140820B48
                mov     r8, cs:SeTokenObjectType
                and     [rsp+78h+var_30], 0
                and     [rsp+78h+var_50], 0
                lea     rax, [rsp+78h+var_30]
                mov     [rsp+78h+var_58], rax
                mov     r9b, bl
                mov     edx, 8
                mov     rcx, r14
                call    ObReferenceObjectByHandle
                mov     r15d, eax
                mov     rdi, [rsp+78h+var_30]
                test    eax, eax
                js      loc_140820B58
                cmp     rsi, rdi
                jz      loc_140820B5F
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_140311758
                mov     r14d, 1
                mov     [rsp+78h+arg_18], r14b
                mov     rbx, [rdi+98h]
                mov     r13, [rsi+98h]
                mov     rdx, [rbx]
                mov     rcx, [r13+0]
                call    RtlEqualSid
                test    al, al
                jz      loc_1406D8DCB
                mov     ecx, [r13+8]
                xor     ecx, [rbx+8]
                test    cl, 14h
                jnz     loc_1406D8DCB
                lea     r8, [rsp+78h+var_48]
                lea     ebx, [r14+1Ch]
                mov     edx, ebx
                mov     rcx, rsi
                call    SeQueryInformationToken
                mov     r15d, eax
                test    eax, eax
                js      loc_1406D8DCB
                lea     r8, [rsp+78h+var_44]
                mov     edx, ebx
                mov     rcx, rdi
                call    SeQueryInformationToken
                mov     r15d, eax
                test    eax, eax
                js      loc_1406D8DCB
                mov     eax, [rsp+78h+var_48]
                cmp     eax, [rsp+78h+var_44]
                jnz     loc_1406D8DCB
                test    eax, eax
                jnz     loc_140820B6A

loc_1406D8CFE:                          ; CODE XREF: sub_1406D8B70+14803D↓j
                mov     rcx, [rsi+450h]
                mov     rdx, [rdi+450h]
                test    rdx, rdx
                setnz   r8b
                test    rcx, rcx
                setnz   al
                cmp     al, r8b
                jnz     loc_1406D8DCB
                test    rcx, rcx
                jnz     loc_140820BB2

loc_1406D8D2B:                          ; CODE XREF: sub_1406D8B70+14804F↓j
                mov     rcx, rsi
                call    SeTokenIsRestricted
                mov     bl, al
                mov     rcx, rdi
                call    SeTokenIsRestricted
                cmp     bl, al
                jnz     loc_1406D8DCB
                test    bl, bl
                jnz     loc_140820BC4

loc_1406D8D4D:                          ; CODE XREF: sub_1406D8B70+148096↓j
                mov     rax, [rdi+48h]
                cmp     [rsi+48h], rax
                jnz     short loc_1406D8DCB
                mov     rax, [rdi+40h]
                cmp     [rsi+40h], rax
                jnz     short loc_1406D8DCB
                mov     eax, [rdi+0D4h]
                cmp     [rsi+0D4h], eax
                jnz     short loc_1406D8DCB
                mov     r9d, [rdi+7Ch]
                sub     r9d, r14d
                mov     r8, [rdi+98h]
                add     r8, 10h
                mov     edx, [rsi+7Ch]
                sub     edx, r14d
                mov     rcx, [rsi+98h]
                add     rcx, 10h
                call    sub_1406D9288
                test    al, al
                jz      short loc_1406D8DCB
                mov     rdx, [rdi+448h]
                mov     rcx, [rsi+448h]
                call    sub_1406D9230
                test    al, al
                jz      short loc_1406D8DCB
                mov     rdx, [rdi+308h]
                mov     rcx, [rsi+308h]
                call    sub_1406D9084
                test    al, al
                cmovnz  r12d, r14d

loc_1406D8DCB:                          ; CODE XREF: sub_1406D8B70+12A↑j
                                        ; sub_1406D8B70+13A↑j ...
                mov     r13, [rsp+78h+arg_10]

loc_1406D8DD3:                          ; CODE XREF: sub_1406D8B70+147FE3↓j
                                        ; sub_1406D8B70+147FEA↓j ...
                cmp     [rsp+78h+arg_18], 0
                jz      short loc_1406D8DE8
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_140311724

loc_1406D8DE8:                          ; CODE XREF: sub_1406D8B70+26B↑j
                test    rsi, rsi
                jz      short loc_1406D8DF5
                mov     rcx, rsi
                call    PsDereferenceSiloContext

loc_1406D8DF5:                          ; CODE XREF: sub_1406D8B70+27B↑j
                test    rdi, rdi
                jz      short loc_1406D8E03
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                nop

loc_1406D8E03:                          ; CODE XREF: sub_1406D8B70+288↑j
                                        ; DATA XREF: .rdata:0000000140076DC8↑o
;   __try { // __except at loc_1406D8E09
                mov     [r13+0], r12b
                jmp     short loc_1406D8E0C
;   } // starts at 1406D8E03
; ---------------------------------------------------------------------------

loc_1406D8E09:                          ; DATA XREF: .rdata:0000000140076DC8↑o
;   __except(1) // owned by 1406D8E03
                mov     r15d, eax

loc_1406D8E0C:                          ; CODE XREF: sub_1406D8B70+297↑j
                mov     eax, r15d

loc_1406D8E0F:                          ; CODE XREF: sub_1406D8B70:loc_1406D8BD6↑j
                lea     r11, [rsp+78h+var_28]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406D8B70
sub_1406D8B70   endp

algn_1406D8E2A:                         ; DATA XREF: .rdata:0000000140076DDC↑o
                                        ; .pdata:0000000140103B78↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406D8E30   proc near               ; CODE XREF: sub_1406587E0+B3A↑p
                                        ; DATA XREF: .pdata:0000000140103B84↑o

arg_0           = qword ptr  8

                mov     rax, rsp
                mov     [rax+8], rbx
                push    rdi
                sub     rsp, 30h
                xor     ebx, ebx
                lea     r9, [rax+18h]
                lea     r8, [rax+10h]
                mov     [rax+10h], bl
                lea     rdx, [rax+20h]
                mov     [rax-18h], rbx
                call    sub_14061A080
                mov     rcx, rax
                mov     rdi, rax
                call    SeTokenIsAdmin
                test    al, al
                jz      short loc_1406D8E80

loc_1406D8E65:                          ; CODE XREF: sub_1406D8E30+62↓j
                mov     ebx, 1

loc_1406D8E6A:                          ; CODE XREF: sub_1406D8E30+60↓j
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, ebx
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1406D8E80:                          ; CODE XREF: sub_1406D8E30+33↑j
                mov     rcx, cs:qword_140D2E710
                mov     dl, 1
                call    SeSinglePrivilegeCheck
                test    al, al
                jz      short loc_1406D8E6A
                jmp     short loc_1406D8E65
sub_1406D8E30   endp

; ---------------------------------------------------------------------------
algn_1406D8E94:                         ; DATA XREF: .pdata:0000000140103B84↑o
                align 20h
; Exported entry 2575. SeTokenIsAdmin

; =============== S U B R O U T I N E =======================================


