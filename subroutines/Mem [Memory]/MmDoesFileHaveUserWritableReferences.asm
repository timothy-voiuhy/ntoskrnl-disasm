MmDoesFileHaveUserWritableReferences proc near
                                        ; CODE XREF: sub_14021A330+25B↑p
                                        ; sub_140374DD0+210↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140476706 SIZE 00000172 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r15
                sub     rsp, 20h
                mov     rsi, rcx

loc_14032DDF5:                          ; DATA XREF: .rdata:000000014007CE74↑o
                                        ; .rdata:000000014007CE84↑o ...
                mov     [rsp+38h+arg_0], r14
                mov     rbp, 0FFFFFFFFFFFFFFFFh
                mov     r15d, 2

loc_14032DE07:                          ; CODE XREF: MmDoesFileHaveUserWritableReferences+108↓j
                mov     rbx, cr8
                mov     cr8, r15
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140476706

loc_14032DE1D:                          ; CODE XREF: MmDoesFileHaveUserWritableReferences+148928↓j
                                        ; MmDoesFileHaveUserWritableReferences+148931↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                lea     rcx, dword_140C4C800
                movzx   edx, bl
                jnz     loc_140476745
                call    sub_140234420

loc_14032DE39:                          ; CODE XREF: MmDoesFileHaveUserWritableReferences+14896B↓j
                mov     rdi, [rsi]
                test    rdi, rdi
                jnz     short loc_14032DE7D
                lea     rcx, dword_140C4C800
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140476817

loc_14032DE5B:                          ; CODE XREF: MmDoesFileHaveUserWritableReferences+148A39↓j
                                        ; MmDoesFileHaveUserWritableReferences+148A45↓j ...
                movzx   eax, bl
                mov     cr8, rax
                xor     eax, eax

loc_14032DE64:                          ; CODE XREF: MmDoesFileHaveUserWritableReferences+EC↓j
                mov     r14, [rsp+38h+arg_0]
                mov     rbx, [rsp+38h+arg_8]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
byte_14032DE7C  db 0CCh                 ; DATA XREF: .pdata:00000001400D63B0↑o
                                        ; .pdata:00000001400D63BC↑o
; ---------------------------------------------------------------------------

loc_14032DE7D:                          ; CODE XREF: MmDoesFileHaveUserWritableReferences+5F↑j
                                        ; DATA XREF: .pdata:00000001400D63BC↑o ...
                lea     r14, [rdi+48h]
                mov     rcx, r14
                call    ExTryAcquireSpinLockExclusiveAtDpcLevel
                lea     rcx, dword_140C4C800
                test    eax, eax
                jz      short loc_14032DECE
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     rcx, rdi
                call    sub_14032DEF4
                xor     edi, edi
                mov     ecx, 1
                test    eax, eax
                cmovnz  edi, ecx
                mov     rcx, r14
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404767B5

loc_14032DEC3:                          ; CODE XREF: MmDoesFileHaveUserWritableReferences+1489D7↓j
                                        ; MmDoesFileHaveUserWritableReferences+1489E3↓j ...
                movzx   ecx, bl
                mov     cr8, rcx
                mov     eax, edi
                jmp     short loc_14032DE64
; ---------------------------------------------------------------------------

loc_14032DECE:                          ; CODE XREF: MmDoesFileHaveUserWritableReferences+B2↑j
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140476750

loc_14032DEE1:                          ; CODE XREF: MmDoesFileHaveUserWritableReferences+148972↓j
                                        ; MmDoesFileHaveUserWritableReferences+14897E↓j ...
                movzx   eax, bl
                mov     cr8, rax
                jmp     loc_14032DE07
MmDoesFileHaveUserWritableReferences endp
