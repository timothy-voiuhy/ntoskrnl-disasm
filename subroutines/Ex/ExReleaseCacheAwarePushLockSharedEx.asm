ExReleaseCacheAwarePushLockSharedEx proc near
                                        ; DATA XREF: .rdata:0000000140056C4C↑o
                                        ; .rdata:0000000140056C60↑o ...

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140431BEA SIZE 0000005B BYTES

                push    rbx
                push    rbp
                push    rdi
                sub     rsp, 30h
                xor     ebp, ebp
                mov     edi, edx
                mov     rbx, rcx
                test    edx, 0FFFFFFFCh
                jnz     loc_140431BEA
                mov     eax, 11h
                lock cmpxchg [rcx], rbp
                jnz     loc_1402450C8

loc_140244FBB:                          ; CODE XREF: ExReleaseCacheAwarePushLockSharedEx+13D↓j
                test    dil, 2
                jnz     loc_1402450BF

loc_140244FC5:                          ; DATA XREF: .rdata:0000000140056C4C↑o
                                        ; .rdata:0000000140056C60↑o ...
                mov     [rsp+48h+arg_0], rsi
                mov     rsi, [rbx+10h]
                mov     rbx, gs:188h
                mov     rcx, rsi
                mov     [rsp+48h+arg_18], r14
                mov     [rsp+48h+arg_8], ebp
                call    sub_140245330
                cmp     eax, 1
                jz      loc_140431C03
                mov     r8d, 0FFFFFFFFh

loc_140244FF7:                          ; CODE XREF: ExReleaseCacheAwarePushLockSharedEx+1ECC82↓j
                dec     word ptr [rbx+1E6h]
                inc     byte ptr [rbx+31Ah]
                movzx   r14d, byte ptr [rbx+31Ah]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402457A0
                mov     rdi, rax
                test    rax, rax
                jz      loc_1402450DF
                movzx   eax, byte ptr [rax+20h]
                or      al, 2
                mov     [rdi+20h], al
                mov     rax, [rdi+20h]
                shr     rax, 3Fh
                test    al, al
                jnz     loc_1402450D2

loc_14024503C:                          ; CODE XREF: ExReleaseCacheAwarePushLockSharedEx+14A↓j
                mov     ecx, [rdi+58h]
                mov     eax, ecx
                and     eax, 1FFFFh
                and     ecx, 0FFFE0000h
                and     byte ptr [rdi+19h], 0FEh
                mov     [rsp+48h+arg_8], eax
                mov     [rdi+58h], ecx
                mov     [rdi+20h], rbp
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rdi, [rbx+320h]
                imul    rdi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r14b, 1
                jnz     loc_140431C30
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_140245097:                          ; CODE XREF: ExReleaseCacheAwarePushLockSharedEx+156↓j
                                        ; ExReleaseCacheAwarePushLockSharedEx+1ECCB0↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+48h+arg_8]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                mov     rcx, rbx
                call    sub_140245770
                mov     rsi, [rsp+48h+arg_0]
                mov     r14, [rsp+48h+arg_18]

loc_1402450BF:                          ; CODE XREF: ExReleaseCacheAwarePushLockSharedEx+2F↑j
                                        ; DATA XREF: .pdata:00000001400CC1E0↑o ...
                add     rsp, 30h
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1402450C8:                          ; CODE XREF: ExReleaseCacheAwarePushLockSharedEx+25↑j
                call    ExfReleasePushLockShared
                jmp     loc_140244FBB
; ---------------------------------------------------------------------------

loc_1402450D2:                          ; CODE XREF: ExReleaseCacheAwarePushLockSharedEx+A6↑j
                                        ; DATA XREF: .pdata:00000001400CC1EC↑o ...
                mov     rcx, rdi
                call    sub_14031EC80
                jmp     loc_14024503C
; ---------------------------------------------------------------------------

loc_1402450DF:                          ; CODE XREF: ExReleaseCacheAwarePushLockSharedEx+8D↑j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      short loc_140245097
                jmp     loc_140431C17
ExReleaseCacheAwarePushLockSharedEx endp
