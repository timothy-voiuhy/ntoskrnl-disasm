RtlEmptyAtomTable proc near             ; DATA XREF: .pdata:0000000140121FA4↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r12b, dl
                mov     rdi, rcx
                call    sub_140663974
                test    al, al
                jnz     short loc_1409148C6
                mov     eax, 0C000000Dh
                jmp     loc_140914969
; ---------------------------------------------------------------------------

loc_1409148C6:                          ; CODE XREF: RtlEmptyAtomTable+2A↑j
                xor     ebp, ebp
                lea     r15, [rdi+20h]
                cmp     [rdi+1Ch], ebp
                jbe     short loc_14091493F

loc_1409148D1:                          ; CODE XREF: RtlEmptyAtomTable+AD↓j
                mov     rsi, r15
                add     r15, 8
                jmp     short loc_140914930
; ---------------------------------------------------------------------------

loc_1409148DA:                          ; CODE XREF: RtlEmptyAtomTable+A6↓j
                test    r12b, r12b
                jnz     short loc_1409148EA
                test    byte ptr [rbx+26h], 1
                jz      short loc_1409148EA
                mov     rsi, rbx
                jmp     short loc_140914930
; ---------------------------------------------------------------------------

loc_1409148EA:                          ; CODE XREF: RtlEmptyAtomTable+4D↑j
                                        ; RtlEmptyAtomTable+53↑j
                mov     rax, [rbx]
                mov     rdx, rbx
                mov     [rsi], rax
                mov     rcx, rdi
                and     qword ptr [rbx], 0
                call    sub_140701A4C
                lea     r14, [rbx+10h]

loc_140914903:                          ; CODE XREF: RtlEmptyAtomTable+96↓j
                mov     rcx, [r14]
                cmp     rcx, r14
                jz      short loc_140914928
                cmp     [rcx+8], r14
                jnz     short loc_140914989
                mov     rax, [rcx]
                cmp     [rax+8], rcx
                jnz     short loc_140914989
                mov     [r14], rax
                mov     [rax+8], r14
                call    sub_140701A1C
                jmp     short loc_140914903
; ---------------------------------------------------------------------------

loc_140914928:                          ; CODE XREF: RtlEmptyAtomTable+79↑j
                mov     rcx, rbx
                call    sub_140701A1C

loc_140914930:                          ; CODE XREF: RtlEmptyAtomTable+48↑j
                                        ; RtlEmptyAtomTable+58↑j
                mov     rbx, [rsi]
                test    rbx, rbx
                jnz     short loc_1409148DA
                inc     ebp
                cmp     ebp, [rdi+1Ch]
                jb      short loc_1409148D1

loc_14091493F:                          ; CODE XREF: RtlEmptyAtomTable+3F↑j
                lea     rbx, [rdi+8]
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbx], rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_14091495A
                mov     rcx, rbx
                call    ExfTryToWakePushLock

loc_14091495A:                          ; CODE XREF: RtlEmptyAtomTable+C0↑j
                mov     rcx, rbx
                call    sub_140243660
                call    KeLeaveCriticalRegion
                xor     eax, eax

loc_140914969:                          ; CODE XREF: RtlEmptyAtomTable+31↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140914989:                          ; CODE XREF: RtlEmptyAtomTable+7F↑j
                                        ; RtlEmptyAtomTable+88↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
RtlEmptyAtomTable endp
