ExReleasePushLockExclusiveEx proc near  ; DATA XREF: .rdata:0000000140056CC8↑o
                                        ; .rdata:0000000140056CDC↑o ...

var_38          = qword ptr -38h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 000000014041CF56 SIZE 00000043 BYTES

                push    rbx
                push    rbp
                push    rsi
                sub     rsp, 40h
                mov     ebx, edx
                mov     rsi, rcx
                test    edx, 0FFFFFFFCh
                jnz     loc_14041CF56
                mov     rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rcx], rax
                and     al, 6
                cmp     al, 2
                jz      loc_140245300

loc_14024512F:                          ; CODE XREF: ExReleasePushLockExclusiveEx+205↓j
                test    bl, 2
                jnz     loc_1402452C8
                mov     rbx, gs:188h
                xor     ebp, ebp
                mov     rcx, rsi
                mov     [rsp+58h+arg_10], ebp

loc_14024514A:                          ; DATA XREF: .rdata:0000000140056CC8↑o
                                        ; .rdata:0000000140056CDC↑o ...
                mov     [rsp+58h+var_28], r15
                call    sub_140245330
                cmp     eax, 1
                jz      loc_1402452D1
                mov     r9d, 0FFFFFFFFh

loc_140245163:                          ; CODE XREF: ExReleasePushLockExclusiveEx+1E0↓j
                dec     word ptr [rbx+1E6h]
                mov     [rsp+58h+arg_0], rdi
                mov     [rsp+58h+var_20], r14
                inc     byte ptr [rbx+31Ah]
                movsx   ecx, byte ptr [rbx+318h]
                mov     r8, rsi
                movsx   edx, byte ptr [rbx+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                movzx   r15d, byte ptr [rbx+31Ah]
                or      edx, ecx
                xor     edx, 3Fh
                and     r8, r10
                bsr     ecx, edx
                mov     [rsp+58h+arg_8], ecx
                jz      loc_1402452F2
                mov     r14d, 1

loc_1402451B8:                          ; CODE XREF: ExReleasePushLockExclusiveEx+1EC↓j
                lea     rdi, [rcx+rcx*2]
                mov     eax, r14d
                shl     rdi, 5
                add     rdi, [rbx+320h]
                shl     eax, cl
                not     eax
                and     edx, eax
                test    [rdi+1Ah], r14b
                jz      loc_1402452E5
                mov     eax, [rdi+20h]
                test    r14b, al
                jnz     loc_1402452E5
                mov     rax, [rdi+20h]
                and     rax, r10
                cmp     rax, r8
                jnz     loc_1402452E5
                cmp     [rdi+28h], r9d
                jnz     loc_1402452E5
                and     byte ptr [rdi+1Ah], 0FEh
                mov     rax, [rdi+20h]
                test    rax, rax
                jz      loc_1402452E5
                test    rdi, rdi
                jz      loc_1402452F2
                movzx   eax, byte ptr [rdi+20h]
                or      al, 2
                mov     [rdi+20h], al
                mov     rax, [rdi+20h]
                shr     rax, 3Fh
                test    al, al
                jnz     loc_14024530A

loc_140245233:                          ; CODE XREF: ExReleasePushLockExclusiveEx+212↓j
                mov     ecx, [rdi+58h]
                mov     eax, ecx
                and     eax, 1FFFFh
                and     ecx, 0FFFE0000h
                and     byte ptr [rdi+19h], 0FEh
                mov     [rsp+58h+arg_10], eax
                mov     [rdi+58h], ecx
                mov     [rdi+20h], rbp
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rdi, [rbx+320h]
                imul    rdi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r15b, r14b
                jnz     loc_14041CF71
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_14024528D:                          ; CODE XREF: ExReleasePushLockExclusiveEx+1F9↓j
                                        ; ExReleasePushLockExclusiveEx+1D7E7E↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+58h+arg_10]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     word ptr [rbx+1E6h], 1
                jnz     short loc_1402452B9
                add     rbx, 98h
                cmp     [rbx], rbx
                jnz     short loc_140245317

loc_1402452B9:                          ; CODE XREF: ExReleasePushLockExclusiveEx+1AB↑j
                                        ; ExReleasePushLockExclusiveEx+21C↓j
                mov     r14, [rsp+58h+var_20]
                mov     rdi, [rsp+58h+arg_0]
                mov     r15, [rsp+58h+var_28]

loc_1402452C8:                          ; CODE XREF: ExReleasePushLockExclusiveEx+32↑j
                                        ; DATA XREF: .pdata:00000001400CC210↑o ...
                add     rsp, 40h
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402452D1:                          ; CODE XREF: ExReleasePushLockExclusiveEx+57↑j
                                        ; DATA XREF: .pdata:00000001400CC21C↑o ...
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     r9d, eax
                jmp     loc_140245163
; ---------------------------------------------------------------------------

loc_1402452E5:                          ; CODE XREF: ExReleasePushLockExclusiveEx+D4↑j
                                        ; ExReleasePushLockExclusiveEx+E0↑j ...
                bsr     ecx, edx
                mov     [rsp+58h+arg_8], ecx
                jnz     loc_1402451B8

loc_1402452F2:                          ; CODE XREF: ExReleasePushLockExclusiveEx+AC↑j
                                        ; ExReleasePushLockExclusiveEx+114↑j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      short loc_14024528D
                jmp     loc_14041CF83
; ---------------------------------------------------------------------------

loc_140245300:                          ; CODE XREF: ExReleasePushLockExclusiveEx+29↑j
                                        ; DATA XREF: .pdata:00000001400CC234↑o ...
                call    ExfTryToWakePushLock
                jmp     loc_14024512F
; ---------------------------------------------------------------------------

loc_14024530A:                          ; CODE XREF: ExReleasePushLockExclusiveEx+12D↑j
                                        ; DATA XREF: .pdata:00000001400CC240↑o ...
                mov     rcx, rdi
                call    sub_14031EC80
                jmp     loc_140245233
; ---------------------------------------------------------------------------

loc_140245317:                          ; CODE XREF: ExReleasePushLockExclusiveEx+1B7↑j
                call    KiCheckForKernelApcDelivery
                jmp     short loc_1402452B9
ExReleasePushLockExclusiveEx endp
