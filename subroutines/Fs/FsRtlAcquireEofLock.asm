FsRtlAcquireEofLock proc near           ; DATA XREF: .rdata:0000000140079B40↑o
                                        ; .rdata:0000000140079B58↑o ...

var_48          = qword ptr -48h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404724D4 SIZE 000000C5 BYTES

                mov     r11, rsp
                mov     [r11+10h], rdx
                push    rbx
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r15, gs:188h
                xor     r12d, r12d
                mov     [r11+18h], r12d
                mov     rax, rdx
                mov     rax, [rcx+18h]
                mov     r14, rcx
                mov     rbx, gs:188h
                mov     [rsp+68h+arg_18], rdx
                mov     rdi, [rax+30h]
                dec     word ptr [rbx+1E6h]
                inc     byte ptr [rbx+31Ah]
                cmp     byte ptr [rbx+31Ah], 1
                jnz     loc_1403226E9
                movzx   ecx, byte ptr [rbx+318h]

loc_140322573:                          ; DATA XREF: .rdata:0000000140079B40↑o
                                        ; .rdata:0000000140079B58↑o ...
                mov     [r11-30h], rbp
                mov     [r11-38h], rsi
                mov     [r11+8], r12d
                test    cl, cl
                jz      loc_1404724D4

loc_140322587:                          ; CODE XREF: FsRtlAcquireEofLock+14FFDF↓j
                movzx   edx, cl
                mov     ebp, 1
                bsf     ecx, edx
                mov     eax, ebp
                shl     al, cl
                not     al
                mov     [rsp+68h+arg_0], ecx
                and     al, dl
                lea     rsi, [rcx+rcx*2]
                mov     [rbx+318h], al
                shl     rsi, 5
                add     rsi, [rbx+320h]
                jz      loc_140472513
                mov     rcx, rdi
                call    sub_140245330
                cmp     eax, ebp
                jz      loc_14047251E
                mov     eax, 0FFFFFFFFh

loc_1403225CE:                          ; CODE XREF: FsRtlAcquireEofLock+15001B↓j
                mov     [rsi+28h], eax
                mov     rax, rdi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rsi+20h], rax

loc_1403225E5:                          ; CODE XREF: FsRtlAcquireEofLock+150009↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+68h+arg_10]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402456E0
                add     word ptr [rbx+1E6h], 1
                jnz     short loc_140322618
                add     rbx, 98h
                cmp     [rbx], rbx
                jnz     loc_14032271C

loc_140322618:                          ; CODE XREF: FsRtlAcquireEofLock+F6↑j
                                        ; FsRtlAcquireEofLock+211↓j
                mov     rbx, cr8
                mov     cr8, rbp
                lock btr dword ptr [rdi], 0
                jnb     loc_140322726

loc_14032262B:                          ; CODE XREF: FsRtlAcquireEofLock+221↓j
                test    rsi, rsi
                jz      short loc_140322634
                or      byte ptr [rsi+1Ah], 1

loc_140322634:                          ; CODE XREF: FsRtlAcquireEofLock+11E↑j
                mov     rax, gs:188h
                mov     [rdi+8], rax
                movzx   eax, bl
                mov     [rdi+30h], eax
                mov     rax, [rsp+68h+arg_18]
                test    rax, rax
                jz      short loc_14032265F
                mov     rax, [rsp+68h+arg_18]
                lock inc dword ptr [rax]

loc_14032265F:                          ; CODE XREF: FsRtlAcquireEofLock+142↑j
                mov     rax, [r14]
                mov     rsi, 0FFFFFFFFFFFFFFFFh
                cmp     rax, r15
                jz      loc_140472530
                test    rax, rax
                jnz     loc_140322707
                mov     [r14], r15
                mov     [r14+26h], bp

loc_140322683:                          ; CODE XREF: FsRtlAcquireEofLock+207↓j
                                        ; FsRtlAcquireEofLock+150025↓j
                mov     rax, [rsp+68h+arg_8]
                mov     [rsp+68h+arg_8], rax
                mov     rax, [rsp+68h+arg_8]
                test    rax, rax
                jz      short loc_14032269F
                mov     rax, [rsp+68h+arg_8]
                lock inc dword ptr [rax]

loc_14032269F:                          ; CODE XREF: FsRtlAcquireEofLock+185↑j
                mov     rax, [r14+18h]
                mov     rbx, [rax+30h]
                xor     eax, eax
                movzx   edi, byte ptr [rbx+30h]
                mov     [rbx+8], r12
                lock cmpxchg [rbx], ebp
                mov     rbp, [rsp+68h+var_30]
                jnz     short loc_140322736

loc_1403226BC:                          ; CODE XREF: FsRtlAcquireEofLock+230↓j
                                        ; DATA XREF: .pdata:00000001400D57E0↑o ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14047253A

loc_1403226CA:                          ; CODE XREF: FsRtlAcquireEofLock+15002C↓j
                                        ; FsRtlAcquireEofLock+150038↓j ...
                mov     cr8, rdi
                mov     rcx, rbx
                call    sub_140243660
                mov     rsi, [rsp+68h+var_38]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_1403226E8  db 0CCh                 ; DATA XREF: .pdata:00000001400D57EC↑o
                                        ; .pdata:00000001400D57F8↑o
; ---------------------------------------------------------------------------

loc_1403226E9:                          ; CODE XREF: FsRtlAcquireEofLock+56↑j
                mov     rax, cr8
                movzx   r9d, al
                mov     r8, rdi
                mov     rdx, rbx
                mov     [rsp+68h+var_48], r12
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140322707:                          ; CODE XREF: FsRtlAcquireEofLock+165↑j
                                        ; DATA XREF: .pdata:00000001400D57F8↑o ...
                mov     rdx, [rsp+68h+arg_8]
                mov     r8, rsi
                mov     rcx, r14
                call    sub_14032274C
                jmp     loc_140322683
; ---------------------------------------------------------------------------

loc_14032271C:                          ; CODE XREF: FsRtlAcquireEofLock+102↑j
                call    KiCheckForKernelApcDelivery
                jmp     loc_140322618
; ---------------------------------------------------------------------------

loc_140322726:                          ; CODE XREF: FsRtlAcquireEofLock+115↑j
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1402F5E40
                jmp     loc_14032262B
; ---------------------------------------------------------------------------

loc_140322736:                          ; CODE XREF: FsRtlAcquireEofLock+1AA↑j
                                        ; DATA XREF: .pdata:00000001400D5804↑o ...
                mov     edx, eax
                mov     rcx, rbx
                call    sub_1402F424C
                jmp     loc_1403226BC
FsRtlAcquireEofLock endp
