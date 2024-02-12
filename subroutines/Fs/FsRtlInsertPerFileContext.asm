FsRtlInsertPerFileContext proc near     ; DATA XREF: .rdata:0000000140084570↑o
                                        ; .pdata:00000001400D8384↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140484774 SIZE 00000030 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     ebp, ebp
                mov     rsi, rdx
                mov     rdi, rcx
                test    rcx, rcx
                jz      loc_140484774
                xor     eax, eax
                lock cmpxchg [rcx], rbp
                mov     rbx, rax
                jnz     short loc_1403526B2
                lea     edx, [rbp+20h]
                mov     ecx, 200h
                mov     r8d, 63665346h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_14048477E
                mov     [rax], rbp
                add     rax, 8
                mov     [rbx+18h], rbp
                mov     [rax+8], rax
                mov     [rax], rax
                xor     eax, eax
                lock cmpxchg [rdi], rbx
                mov     rdi, rax
                jnz     loc_140484788

loc_1403526B2:                          ; CODE XREF: FsRtlInsertPerFileContext+2F↑j
                                        ; FsRtlInsertPerFileContext+132158↓j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                mov     rcx, rbx
                call    ExAcquirePushLockExclusiveEx
                lea     rax, [rbx+8]
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     loc_14048479D
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

loc_140352705:                          ; CODE XREF: FsRtlInsertPerFileContext+132139↓j
                                        ; FsRtlInsertPerFileContext+132143↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlInsertPerFileContext endp
