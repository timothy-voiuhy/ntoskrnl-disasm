RtlCreateAtomTableEx proc near          ; CODE XREF: RtlCreateAtomTable+9↓p
                                        ; DATA XREF: .rdata:0000000140083690↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404830DA SIZE 00000010 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+20h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                and     qword ptr [rax+18h], 0
                xor     edi, edi
                mov     r14, r8
                mov     r15d, edx
                cmp     [r8], rdi
                jnz     short loc_14034EDE5
                cmp     ecx, 1
                lea     ebp, [rdi+25h]
                lea     r8, [rax+18h]
                cmova   ebp, ecx
                lea     ecx, [rdi+30h]
                lea     edx, [rbp-1]
                call    sub_140206038
                test    eax, eax
                js      short loc_14034EDE7
                mov     rax, [rsp+38h+arg_10]
                lea     rsi, [rax+28h]
                cmp     rsi, rax
                jb      short loc_14034EE08
                mov     edx, 546D7441h
                mov     rcx, rsi
                call    sub_140704B04
                mov     rbx, rax
                test    rax, rax
                jz      short loc_14034EE01
                mov     r8, rsi
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     rcx, rbx
                mov     [rbx+1Ch], ebp
                call    sub_140704A6C
                mov     rcx, rbx
                test    al, al
                jz      loc_1404830DA
                call    sub_140704A5C
                mov     dword ptr [rbx], 6D6F7441h
                mov     dword ptr [rbx+4], 1
                mov     [rbx+18h], r15d
                mov     [r14], rbx

loc_14034EDE5:                          ; CODE XREF: RtlCreateAtomTableEx+28↑j
                                        ; RtlCreateAtomTableEx+C6↓j ...
                mov     eax, edi

loc_14034EDE7:                          ; CODE XREF: RtlCreateAtomTableEx+44↑j
                                        ; RtlCreateAtomTableEx+CD↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14034EE01:                          ; CODE XREF: RtlCreateAtomTableEx+67↑j
                mov     edi, 0C0000017h
                jmp     short loc_14034EDE5
; ---------------------------------------------------------------------------

loc_14034EE08:                          ; CODE XREF: RtlCreateAtomTableEx+52↑j
                mov     eax, 0C0000095h
                jmp     short loc_14034EDE7
RtlCreateAtomTableEx endp
