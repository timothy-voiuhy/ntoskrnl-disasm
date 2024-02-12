FsRtlInsertPerFileObjectContext proc near
                                        ; DATA XREF: .rdata:000000014007D7BC↑o
                                        ; .pdata:00000001400D6644↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140477A44 SIZE 0000004B BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 20h
                and     qword ptr [rax+8], 0
                mov     rsi, rdx
                mov     rdi, rcx
                test    rcx, rcx
                jz      loc_140477A44
                mov     r8b, 1
                lea     rdx, [rax+8]
                call    sub_14033148C
                test    eax, eax
                js      loc_140331473
                cmp     [rsp+28h+arg_0], 0
                jnz     short loc_14033141B
                mov     edx, 18h
                mov     ecx, 200h
                mov     r8d, 58434F46h
                call    ExAllocatePoolWithTag
                mov     [rsp+28h+arg_0], rax
                mov     rbx, rax
                test    rax, rax
                jz      loc_140477A4E
                and     qword ptr [rax], 0
                mov     r8b, 1
                add     rax, 8
                mov     rdx, rbx
                mov     rcx, rdi
                mov     [rax+8], rax
                mov     [rax], rax
                call    sub_1403314FC
                test    eax, eax
                js      loc_140477A58

loc_14033141B:                          ; CODE XREF: FsRtlInsertPerFileObjectContext+3E↑j
                                        ; FsRtlInsertPerFileObjectContext+1466E8↓j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rbx, [rsp+28h+arg_0]
                xor     edx, edx
                mov     rcx, rbx
                call    ExAcquirePushLockExclusiveEx
                lea     rax, [rbx+8]
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     loc_140477A88
                mov     [rsi], rcx
                xor     edx, edx
                mov     [rsi+8], rax
                mov     [rcx+8], rsi
                mov     rcx, rbx
                mov     [rax], rsi
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                xor     eax, eax

loc_140331473:                          ; CODE XREF: FsRtlInsertPerFileObjectContext+32↑j
                                        ; FsRtlInsertPerFileObjectContext+1466B9↓j ...
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlInsertPerFileObjectContext endp
