KeResetEvent    proc near               ; CODE XREF: sub_14020ACA0+18D↑p
                                        ; sub_14020F78C+367↑p ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014041BFFE SIZE 000000A4 BYTES

                mov     [rsp+arg_8], rbx ; KeClearEvent
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rsi, cr8
                mov     eax, 2
                mov     cr8, rax
                lea     rbp, [rax-3]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041BFFE

loc_140215984:                          ; CODE XREF: KeResetEvent+2066B0↓j
                                        ; KeResetEvent+2066BA↓j ...
                xor     r14d, r14d
                mov     [rsp+38h+arg_0], r14d
                lock bts dword ptr [rbx], 7
                jb      short loc_1402159D0

loc_140215993:                          ; CODE XREF: KeResetEvent+95↓j
                mov     edi, [rbx+4]
                mov     [rbx+4], r14d
                lock and dword ptr [rbx], 0FFFFFF7Fh
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14041C03F

loc_1402159AF:                          ; CODE XREF: KeResetEvent+2066F1↓j
                                        ; KeResetEvent+2066FD↓j ...
                movzx   ecx, sil
                mov     cr8, rcx
                mov     rbx, [rsp+38h+arg_8]
                mov     eax, edi
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1402159D0:                          ; CODE XREF: KeResetEvent+41↑j
                                        ; KeResetEvent+8E↓j ...
                lea     rcx, [rsp+38h+arg_0]
                call    sub_1402C8C70
                mov     eax, [rbx]
                test    al, al
                js      short loc_1402159D0
                lock bts dword ptr [rbx], 7
                jnb     short loc_140215993
                jmp     short loc_1402159D0
KeResetEvent    endp

; ---------------------------------------------------------------------------
algn_1402159E9:                         ; DATA XREF: .rdata:000000014004AFAC↑o
                                        ; .pdata:00000001400CA20C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402159F0   proc near               ; CODE XREF: NtSetInformationFile+5A8↓p
                                        ; sub_14060B190+1F0↓p ...

; FUNCTION CHUNK AT 0000000140425D54 SIZE 00000054 BYTES

                sub     rsp, 28h
                cmp     cs:dword_140C1D15C, 0
                jnz     loc_140425D54

loc_140215A01:                          ; CODE XREF: sub_1402159F0+21037C↓j
                mov     ecx, 200h
                mov     r8d, 20206F49h
                call    ExAllocatePoolWithQuotaTag

loc_140215A11:                          ; CODE XREF: sub_1402159F0+2103A7↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402159F0   endp

algn_140215A17:                         ; DATA XREF: .rdata:000000014004AFC8↑o
                                        ; .pdata:00000001400CA218↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140215A20   proc near               ; CODE XREF: sub_1405FE2E0+219↓p
                                        ; sub_1406323F0+343↓p ...
                sub     rsp, 28h
                mov     ecx, 9
                call    ExAllocatePoolWithQuotaTag
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140215A20   endp

algn_140215A34:                         ; DATA XREF: .pdata:00000001400CA224↑o
                align 20h
; Exported entry 186. ExAllocatePoolWithQuotaTag

; =============== S U B R O U T I N E =======================================


