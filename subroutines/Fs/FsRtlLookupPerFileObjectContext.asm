FsRtlLookupPerFileObjectContext proc near
                                        ; DATA XREF: .rdata:000000014007A8F8↑o
                                        ; .rdata:000000014007A908↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140472FA2 SIZE 00000038 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, r8
                mov     rbx, rdx
                test    rcx, rcx
                jz      short loc_140325126
                mov     rax, [rcx+0D0h]
                test    rax, rax
                jnz     short loc_140325139

loc_140325126:                          ; CODE XREF: FsRtlLookupPerFileObjectContext+18↑j
                                        ; FsRtlLookupPerFileObjectContext+40↓j ...
                xor     eax, eax
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140325139:                          ; CODE XREF: FsRtlLookupPerFileObjectContext+24↑j
                cmp     rax, cs:off_140C04810
                jz      short loc_140325126
                mov     rsi, [rax+20h]
                test    rsi, rsi
                jz      short loc_140325126
                mov     rax, gs:188h

loc_140325154:                          ; DATA XREF: .rdata:000000014007A8F8↑o
                                        ; .rdata:000000014007A908↑o ...
                mov     [rsp+28h+arg_0], rbp
                xor     ebp, ebp
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockSharedEx
                lea     rcx, [rsi+8]
                test    rdi, rdi
                jnz     loc_140472FA2
                test    rbx, rbx
                jz      loc_140472FCB
                mov     rax, [rcx]
                cmp     rax, rcx
                jz      short loc_140325193

loc_14032518A:                          ; CODE XREF: FsRtlLookupPerFileObjectContext+CC↓j
                cmp     [rax+10h], rbx
                jnz     short loc_1403251C4

loc_140325190:                          ; CODE XREF: FsRtlLookupPerFileObjectContext+14DEB8↓j
                mov     rbp, rax

loc_140325193:                          ; CODE XREF: FsRtlLookupPerFileObjectContext+88↑j
                                        ; FsRtlLookupPerFileObjectContext+CA↓j ...
                xor     edx, edx
                mov     rcx, rsi
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rbx, [rsp+28h+arg_8]
                mov     rax, rbp
                mov     rbp, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
algn_1403251C3:                         ; DATA XREF: .pdata:00000001400D5A5C↑o
                                        ; .pdata:00000001400D5A68↑o
                align 4

loc_1403251C4:                          ; CODE XREF: FsRtlLookupPerFileObjectContext+8E↑j
                                        ; DATA XREF: .pdata:00000001400D5A68↑o ...
                mov     rax, [rax]
                cmp     rax, rcx
                jz      short loc_140325193
                jmp     short loc_14032518A
FsRtlLookupPerFileObjectContext endp
