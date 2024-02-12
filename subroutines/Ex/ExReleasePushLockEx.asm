ExReleasePushLockEx proc near           ; CODE XREF: sub_14021542C+3C↑p
                                        ; sub_140216274+D↑p ...

var_38          = qword ptr -38h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 000000014041D024 SIZE 00000075 BYTES

                push    rbx
                push    rbp
                push    r14
                sub     rsp, 40h
                xor     ebp, ebp
                mov     ebx, edx
                mov     r14, rcx
                test    edx, 0FFFFFFFCh
                jnz     loc_14041D024
                prefetchw byte ptr [rcx]
                mov     rax, [rcx]
                mov     rcx, rax
                and     rcx, 0FFFFFFFFFFFFFFF0h
                cmp     rcx, 10h
                lea     rdx, [rax-10h]
                cmovbe  rdx, rbp
                test    al, 2
                jnz     loc_140245AA0
                lock cmpxchg [r14], rdx
                jnz     loc_140245AA0

loc_1402458B8:                          ; CODE XREF: ExReleasePushLockEx+238↓j
                test    bl, 2
                jnz     loc_140245A67

loc_1402458C1:                          ; DATA XREF: .rdata:0000000140056EA0↑o
                                        ; .rdata:0000000140056EB4↑o ...
                mov     [rsp+58h+var_20], rdi
                mov     rax, 0FFFF800000000000h
                mov     rdi, gs:188h
                mov     ebx, ebp
                mov     [rsp+58h+var_28], r15
                mov     [rsp+58h+arg_10], ebx
                cmp     r14, rax
                jb      short loc_14024590B
                mov     rax, r14
                lea     rcx, unk_140C4F848
                shr     rax, 27h
                and     eax, 1FFh
                sub     eax, 100h
                cmp     byte ptr [rax+rcx], 1
                jz      loc_140245AED

loc_14024590B:                          ; CODE XREF: ExReleasePushLockEx+77↑j
                mov     r8d, 0FFFFFFFFh

loc_140245911:                          ; CODE XREF: ExReleasePushLockEx+28C↓j
                dec     word ptr [rdi+1E6h]
                mov     [rsp+58h+arg_0], rsi
                inc     byte ptr [rdi+31Ah]
                movsx   ecx, byte ptr [rdi+318h]
                mov     r9, r14
                movsx   edx, byte ptr [rdi+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                movzx   r15d, byte ptr [rdi+31Ah]
                or      edx, ecx
                xor     edx, 3Fh
                and     r9, r10
                bsr     ecx, edx
                mov     [rsp+58h+arg_8], ecx
                jz      loc_140245A7E

loc_14024595B:                          ; CODE XREF: ExReleasePushLockEx+208↓j
                lea     rsi, [rcx+rcx*2]
                mov     eax, 1
                shl     rsi, 5
                add     rsi, [rdi+320h]
                shl     eax, cl
                not     eax
                and     edx, eax
                test    byte ptr [rsi+1Ah], 1
                jz      loc_140245A71
                mov     eax, [rsi+20h]
                test    al, 1
                jnz     loc_140245A71
                mov     rax, [rsi+20h]
                and     rax, r10
                cmp     rax, r9
                jnz     loc_140245A71
                cmp     [rsi+28h], r8d
                jnz     loc_140245A71
                and     byte ptr [rsi+1Ah], 0FEh
                mov     rax, [rsi+20h]
                test    rax, rax
                jz      loc_140245A71
                test    rsi, rsi
                jz      loc_140245A7E
                movzx   eax, byte ptr [rsi+20h]
                or      al, 2
                mov     [rsi+20h], al
                mov     rax, [rsi+20h]
                shr     rax, 3Fh
                test    al, al
                jnz     loc_140245A8C

loc_1402459D7:                          ; CODE XREF: ExReleasePushLockEx+224↓j
                mov     eax, [rsi+58h]
                mov     ebx, eax
                and     ebx, 1FFFFh
                and     eax, 0FFFE0000h
                and     byte ptr [rsi+19h], 0FEh
                mov     [rsp+58h+arg_10], ebx
                mov     [rsi+58h], eax
                mov     [rsi+20h], rbp
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rsi, [rdi+320h]
                imul    rsi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r15b, 1
                jnz     loc_14041D03D
                movzx   eax, byte ptr [rdi+318h]
                bts     eax, edx
                mov     [rdi+318h], al

loc_140245A32:                          ; CODE XREF: ExReleasePushLockEx+215↓j
                                        ; ExReleasePushLockEx+1D77DD↓j
                dec     byte ptr [rdi+31Ah]
                mov     esi, ebx
                and     esi, 1FFFFh
                jnz     short loc_140245AAD

loc_140245A42:                          ; CODE XREF: ExReleasePushLockEx+272↓j
                                        ; ExReleasePushLockEx+1D7824↓j
                add     word ptr [rdi+1E6h], 1
                jnz     short loc_140245A58
                add     rdi, 98h
                cmp     [rdi], rdi
                jnz     short loc_140245A99

loc_140245A58:                          ; CODE XREF: ExReleasePushLockEx+1DA↑j
                                        ; ExReleasePushLockEx+22E↓j
                mov     rsi, [rsp+58h+arg_0]
                mov     rdi, [rsp+58h+var_20]
                mov     r15, [rsp+58h+var_28]

loc_140245A67:                          ; CODE XREF: ExReleasePushLockEx+4B↑j
                                        ; DATA XREF: .pdata:00000001400CC300↑o ...
                add     rsp, 40h
                pop     r14
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140245A71:                          ; CODE XREF: ExReleasePushLockEx+109↑j
                                        ; ExReleasePushLockEx+114↑j ...
                bsr     ecx, edx
                mov     [rsp+58h+arg_8], ecx
                jnz     loc_14024595B

loc_140245A7E:                          ; CODE XREF: ExReleasePushLockEx+E5↑j
                                        ; ExReleasePushLockEx+148↑j
                mov     eax, [rdi+78h]
                bt      eax, 10h
                jb      short loc_140245A32
                jmp     loc_14041D052
; ---------------------------------------------------------------------------

loc_140245A8C:                          ; CODE XREF: ExReleasePushLockEx+161↑j
                mov     rcx, rsi
                call    sub_14031EC80
                jmp     loc_1402459D7
; ---------------------------------------------------------------------------

loc_140245A99:                          ; CODE XREF: ExReleasePushLockEx+1E6↑j
                call    KiCheckForKernelApcDelivery
                jmp     short loc_140245A58
; ---------------------------------------------------------------------------

loc_140245AA0:                          ; CODE XREF: ExReleasePushLockEx+37↑j
                                        ; ExReleasePushLockEx+42↑j
                                        ; DATA XREF: ...
                mov     rcx, r14
                call    ExfReleasePushLock
                jmp     loc_1402458B8
; ---------------------------------------------------------------------------

loc_140245AAD:                          ; CODE XREF: ExReleasePushLockEx+1D0↑j
                                        ; DATA XREF: .pdata:00000001400CC324↑o ...
                mov     eax, 8000h
                test    ax, bx
                jnz     short loc_140245B01

loc_140245AB7:                          ; CODE XREF: ExReleasePushLockEx+29B↓j
                test    byte ptr [rsp+58h+arg_10+2], 1
                jnz     loc_14041D06B

loc_140245AC2:                          ; CODE XREF: ExReleasePushLockEx+1D7810↓j
                mov     eax, 7FFFh
                test    ax, bx
                jz      short loc_140245AD8
                and     ebx, eax
                mov     rcx, rdi
                mov     edx, ebx
                call    sub_140345C04

loc_140245AD8:                          ; CODE XREF: ExReleasePushLockEx+25A↑j
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jz      loc_140245A42
                jmp     loc_14041D085
; ---------------------------------------------------------------------------

loc_140245AED:                          ; CODE XREF: ExReleasePushLockEx+95↑j
                                        ; DATA XREF: .pdata:00000001400CC330↑o ...
                mov     rcx, [rdi+0B8h]
                call    sub_140245840
                mov     r8d, eax
                jmp     loc_140245911
; ---------------------------------------------------------------------------

loc_140245B01:                          ; CODE XREF: ExReleasePushLockEx+245↑j
                                        ; DATA XREF: .pdata:00000001400CC33C↑o ...
                xor     edx, edx
                mov     rcx, rdi
                call    sub_140361CC0
                jmp     short loc_140245AB7
ExReleasePushLockEx endp
