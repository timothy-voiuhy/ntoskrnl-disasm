ExAcquireCacheAwarePushLockSharedEx proc near
                                        ; DATA XREF: .rdata:0000000140056BE0↑o
                                        ; .rdata:0000000140056BF0↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140431BA4 SIZE 00000046 BYTES

                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 30h
                xor     edi, edi
                mov     rsi, rcx
                test    edx, 0FFFFFFFCh
                jnz     loc_140431BA4

loc_140244DEB:                          ; DATA XREF: .rdata:0000000140056BE0↑o
                                        ; .rdata:0000000140056BF0↑o ...
                mov     [rsp+38h+arg_0], rbx
                test    dl, 2
                jnz     loc_140244EC8
                mov     [rsp+38h+arg_10], edi
                mov     rbx, gs:188h
                dec     word ptr [rbx+1E6h]
                inc     byte ptr [rbx+31Ah]
                cmp     byte ptr [rbx+31Ah], 1
                jnz     loc_140244F02
                movzx   eax, byte ptr [rbx+318h]
                mov     [rsp+38h+arg_8], edi
                test    al, al
                jz      loc_140244F4D

loc_140244E33:                          ; CODE XREF: ExAcquireCacheAwarePushLockSharedEx+1AF↓j
                movzx   ecx, al
                bsf     eax, ecx
                btr     ecx, eax
                mov     [rsp+38h+arg_8], eax
                mov     [rbx+318h], cl
                lea     rdi, [rax+rax*2]
                shl     rdi, 5
                add     rdi, [rbx+320h]
                jz      loc_140244F66
                mov     rax, 0FFFF800000000000h
                cmp     rsi, rax
                jb      short loc_140244E8C
                mov     rax, rsi
                lea     rcx, unk_140C4F848
                shr     rax, 27h
                and     eax, 1FFh
                sub     eax, 100h
                cmp     byte ptr [rax+rcx], 1
                jz      loc_140431BCD

loc_140244E8C:                          ; CODE XREF: ExAcquireCacheAwarePushLockSharedEx+98↑j
                mov     eax, 0FFFFFFFFh

loc_140244E91:                          ; CODE XREF: ExAcquireCacheAwarePushLockSharedEx+1ECE0A↓j
                mov     [rdi+28h], eax
                mov     rax, rsi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rdi+20h], rax

loc_140244EA8:                          ; CODE XREF: ExAcquireCacheAwarePushLockSharedEx+19C↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+38h+arg_10]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     word ptr [rbx+1E6h], 1
                jz      short loc_140244F20

loc_140244EC8:                          ; CODE XREF: ExAcquireCacheAwarePushLockSharedEx+23↑j
                                        ; ExAcquireCacheAwarePushLockSharedEx+15A↓j ...
                mov     eax, gs:1A4h
                mov     ecx, 11h
                and     eax, 1Fh
                mov     rbx, [rsi+rax*8]
                xor     eax, eax
                lock cmpxchg [rbx], rcx
                jnz     short loc_140244F31

loc_140244EE5:                          ; CODE XREF: ExAcquireCacheAwarePushLockSharedEx+16B↓j
                                        ; ExAcquireCacheAwarePushLockSharedEx+17B↓j
                test    rdi, rdi
                jz      short loc_140244EEE
                or      byte ptr [rdi+1Ah], 1

loc_140244EEE:                          ; CODE XREF: ExAcquireCacheAwarePushLockSharedEx+118↑j
                mov     rsi, [rsp+38h+arg_18]
                mov     rax, rbx
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
algn_140244F01:                         ; DATA XREF: .pdata:00000001400CC1B0↑o
                                        ; .pdata:00000001400CC1BC↑o
                align 2

loc_140244F02:                          ; CODE XREF: ExAcquireCacheAwarePushLockSharedEx+4A↑j
                                        ; DATA XREF: .pdata:00000001400CC1BC↑o ...
                mov     rax, cr8
                movzx   r9d, al
                mov     r8, rsi
                mov     rdx, rbx
                mov     [rsp+38h+var_18], rdi
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140244F20:                          ; CODE XREF: ExAcquireCacheAwarePushLockSharedEx+F6↑j
                add     rbx, 98h
                cmp     [rbx], rbx
                jz      short loc_140244EC8
                jmp     loc_140431BDF
; ---------------------------------------------------------------------------

loc_140244F31:                          ; CODE XREF: ExAcquireCacheAwarePushLockSharedEx+113↑j
                mov     rcx, rbx
                call    ExfTryAcquirePushLockShared
                test    al, al
                jnz     short loc_140244EE5
                mov     r8, rsi
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402F6140
                jmp     short loc_140244EE5
; ---------------------------------------------------------------------------

loc_140244F4D:                          ; CODE XREF: ExAcquireCacheAwarePushLockSharedEx+5D↑j
                cmp     [rbx+366h], dil
                jnz     short loc_140244F71
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jnz     loc_140431BBC

loc_140244F66:                          ; CODE XREF: ExAcquireCacheAwarePushLockSharedEx+85↑j
                                        ; ExAcquireCacheAwarePushLockSharedEx+1ECDF8↓j
                lock bts dword ptr [rbx+78h], 10h
                jmp     loc_140244EA8
; ---------------------------------------------------------------------------

loc_140244F71:                          ; CODE XREF: ExAcquireCacheAwarePushLockSharedEx+184↑j
                mov     eax, edi
                xchg    al, [rbx+366h]
                or      al, [rbx+318h]
                jmp     loc_140244E33
ExAcquireCacheAwarePushLockSharedEx endp
