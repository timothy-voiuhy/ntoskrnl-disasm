ExTryAcquirePushLockSharedEx proc near  ; DATA XREF: .rdata:000000014007886C↑o
                                        ; .rdata:0000000140078884↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014041DE0A SIZE 0000003B BYTES

                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 30h
                xor     edi, edi
                mov     rsi, rcx
                test    edx, 0FFFFFFFCh
                jnz     loc_14041DE0A
                test    dl, 2
                jnz     loc_14031A1B4
                mov     [rsp+38h+arg_10], edi

loc_14031A0C8:                          ; DATA XREF: .rdata:000000014007886C↑o
                                        ; .rdata:0000000140078884↑o ...
                mov     [rsp+38h+arg_0], rbx
                mov     rbx, gs:188h
                dec     word ptr [rbx+1E6h]
                inc     byte ptr [rbx+31Ah]
                cmp     byte ptr [rbx+31Ah], 1
                jnz     loc_14031A17D
                movzx   eax, byte ptr [rbx+318h]
                mov     [rsp+38h+arg_8], edi
                test    al, al
                jz      loc_14031A203

loc_14031A103:                          ; CODE XREF: ExTryAcquirePushLockSharedEx+1A4↓j
                movzx   ecx, al
                bsf     eax, ecx
                btr     ecx, eax
                mov     [rsp+38h+arg_8], eax
                mov     [rbx+318h], cl
                lea     rdi, [rax+rax*2]
                shl     rdi, 5
                add     rdi, [rbx+320h]

loc_14031A125:                          ; CODE XREF: ExTryAcquirePushLockSharedEx+176↓j
                                        ; ExTryAcquirePushLockSharedEx+103D8E↓j
                test    rdi, rdi
                jz      loc_14031A221
                mov     rax, 0FFFF800000000000h
                cmp     rsi, rax
                jb      short loc_14031A15F
                mov     rax, rsi
                lea     rcx, unk_140C4F848
                shr     rax, 27h
                and     eax, 1FFh
                sub     eax, 100h
                cmp     byte ptr [rax+rcx], 1
                jz      loc_14041DE33

loc_14031A15F:                          ; CODE XREF: ExTryAcquirePushLockSharedEx+9B↑j
                mov     eax, 0FFFFFFFFh

loc_14031A164:                          ; CODE XREF: ExTryAcquirePushLockSharedEx+103DA0↓j
                mov     [rdi+28h], eax
                mov     rax, rsi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rdi+20h], rax
                jmp     short loc_14031A183
; ---------------------------------------------------------------------------

loc_14031A17D:                          ; CODE XREF: ExTryAcquirePushLockSharedEx+4A↑j
                lock bts dword ptr [rbx+78h], 10h

loc_14031A183:                          ; CODE XREF: ExTryAcquirePushLockSharedEx+DB↑j
                                        ; ExTryAcquirePushLockSharedEx+187↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+38h+arg_10]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     word ptr [rbx+1E6h], 1
                jnz     short loc_14031A1AF
                add     rbx, 98h
                cmp     [rbx], rbx
                jnz     short loc_14031A22C

loc_14031A1AF:                          ; CODE XREF: ExTryAcquirePushLockSharedEx+101↑j
                                        ; ExTryAcquirePushLockSharedEx+191↓j
                mov     rbx, [rsp+38h+arg_0]

loc_14031A1B4:                          ; CODE XREF: ExTryAcquirePushLockSharedEx+1E↑j
                                        ; DATA XREF: .pdata:00000001400D50CC↑o ...
                mov     ecx, 11h
                xor     eax, eax
                lock cmpxchg [rsi], rcx
                jnz     short loc_14031A1D9

loc_14031A1C2:                          ; CODE XREF: ExTryAcquirePushLockSharedEx+143↓j
                test    rdi, rdi
                jz      short loc_14031A1CB
                or      byte ptr [rdi+1Ah], 1

loc_14031A1CB:                          ; CODE XREF: ExTryAcquirePushLockSharedEx+125↑j
                mov     al, 1
                mov     rsi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14031A1D9:                          ; CODE XREF: ExTryAcquirePushLockSharedEx+120↑j
                mov     rcx, rsi
                call    ExfTryAcquirePushLockShared
                test    al, al
                jnz     short loc_14031A1C2
                test    rdi, rdi
                jz      short loc_14031A1F5
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_14031D1B0

loc_14031A1F5:                          ; CODE XREF: ExTryAcquirePushLockSharedEx+148↑j
                mov     rsi, [rsp+38h+arg_18]
                xor     al, al
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14031A203:                          ; CODE XREF: ExTryAcquirePushLockSharedEx+5D↑j
                                        ; DATA XREF: .pdata:00000001400D50D8↑o ...
                cmp     [rbx+366h], dil
                jnz     short loc_14031A236
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jz      loc_14031A125
                jmp     loc_14041DE22
; ---------------------------------------------------------------------------

loc_14031A221:                          ; CODE XREF: ExTryAcquirePushLockSharedEx+88↑j
                lock bts dword ptr [rbx+78h], 10h
                jmp     loc_14031A183
; ---------------------------------------------------------------------------

loc_14031A22C:                          ; CODE XREF: ExTryAcquirePushLockSharedEx+10D↑j
                call    KiCheckForKernelApcDelivery
                jmp     loc_14031A1AF
; ---------------------------------------------------------------------------

loc_14031A236:                          ; CODE XREF: ExTryAcquirePushLockSharedEx+16A↑j
                mov     eax, edi
                xchg    al, [rbx+366h]
                or      al, [rbx+318h]
                jmp     loc_14031A103
ExTryAcquirePushLockSharedEx endp
