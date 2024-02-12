MmCommitSessionMappedView proc near     ; DATA XREF: .rdata:000000014007C6EC↑o
                                        ; .pdata:0000000140104748↑o

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140823FB0 SIZE 000000A5 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     rbx, rdx
                mov     rdi, rcx
                call    sub_140245330
                cmp     eax, 1
                jnz     loc_140823FB0
                lea     rax, [rdi+rbx]
                cmp     rax, rdi
                jbe     loc_14082404B
                lea     rbx, [rax-1]
                mov     rcx, rbx
                call    sub_140245330
                cmp     eax, 1
                jnz     loc_14082404B
                mov     rsi, gs:188h
                mov     rbp, [rsi+0B8h]
                test    dword ptr [rbp+464h], 10000h
                jz      loc_140823FBA
                mov     rbp, [rbp+558h]
                or      rbx, 0FFFh
                mov     r15, 0FFFFFFFFFFFFF000h
                mov     rcx, rbx
                and     rdi, r15
                call    sub_14026B560
                mov     rcx, rdi
                mov     r14, rax
                call    sub_14026B560
                sub     r14, rax
                or      rbx, 0FFFFFFFFFFFFFFFFh
                sar     r14, 3
                inc     r14
                add     [rsi+1E6h], bx
                mov     rcx, [rbp+0C8h]
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                mov     rdx, [rbp+0D0h]
                jmp     short loc_1406EA159
; ---------------------------------------------------------------------------

loc_1406EA155:                          ; CODE XREF: MmCommitSessionMappedView+E2↓j
                mov     rdx, [rdx+8]

loc_1406EA159:                          ; CODE XREF: MmCommitSessionMappedView+C3↑j
                                        ; MmCommitSessionMappedView+EC↓j
                test    rdx, rdx
                jz      short loc_1406EA17E
                mov     r9, [rdx+58h]
                mov     rcx, [rdx+20h]
                mov     r8, r9
                and     r8, r15
                add     rcx, r8
                cmp     rdi, rcx
                jnb     short loc_1406EA155
                cmp     rdi, r8
                jnb     short loc_1406EA199
                mov     rdx, [rdx]
                jmp     short loc_1406EA159
; ---------------------------------------------------------------------------

loc_1406EA17E:                          ; CODE XREF: MmCommitSessionMappedView+CC↑j
                                        ; MmCommitSessionMappedView+10C↓j
                and     [rsp+48h+var_28], 0
                xor     r9d, r9d
                mov     rdx, rdi
                mov     ecx, 0D7h
                lea     r8d, [r9+2]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1406EA199:                          ; CODE XREF: MmCommitSessionMappedView+E7↑j
                test    rdx, rdx
                jz      short loc_1406EA17E
                mov     rax, [rdx+30h]
                mov     rcx, [rax]
                cmp     qword ptr [rcx+40h], 0
                jnz     loc_140823FC4
                and     r9, r15
                sub     rcx, 0FFFFFFFFFFFFFF80h
                sub     rdi, r9
                shr     rdi, 0Ch
                add     rdi, [rdx+18h]
                lea     rdx, [rsp+48h+arg_10]
                mov     [rsp+48h+arg_10], rdi
                call    sub_140266D6C
                mov     r9, rax
                test    rax, rax
                jz      loc_140824013
                mov     rcx, [rsp+48h+arg_10]
                mov     rdx, r9
                mov     rax, [rax+8]
                mov     r8d, [r9+2Ch]
                lea     r10, [rax+rcx*8]
                add     rcx, r14
                mov     [rsp+48h+arg_10], rcx
                cmp     rcx, r8
                ja      loc_140823FEF

loc_1406EA202:                          ; CODE XREF: MmCommitSessionMappedView+139F7E↓j
                mov     r8, r14
                mov     rdx, r10
                mov     rcx, r9
                call    sub_1406EA3A0
                mov     rdi, [rbp+0C8h]
                mov     r14d, eax
                lock xadd [rdi], rbx
                and     bl, 6
                cmp     bl, 2
                jz      short loc_1406EA25D

loc_1406EA227:                          ; CODE XREF: MmCommitSessionMappedView+1D5↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, rsi
                call    sub_140245770
                neg     r14d
                sbb     eax, eax
                not     eax
                and     eax, 0C000012Dh

loc_1406EA243:                          ; CODE XREF: MmCommitSessionMappedView+139F25↓j
                                        ; MmCommitSessionMappedView+139F2F↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406EA25D:                          ; CODE XREF: MmCommitSessionMappedView+195↑j
                mov     rcx, rdi
                call    ExfTryToWakePushLock
                jmp     short loc_1406EA227
MmCommitSessionMappedView endp
