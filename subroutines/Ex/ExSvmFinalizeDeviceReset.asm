ExSvmFinalizeDeviceReset proc near      ; DATA XREF: .pdata:00000001400FA158↑o

var_58          = qword ptr -58h
var_48          = dword ptr -48h
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r15, gs:188h
                or      rax, 0FFFFFFFFFFFFFFFFh
                mov     r14, rcx
                add     [r15+1E6h], ax
                mov     rbx, gs:188h
                and     [rsp+78h+var_48], 0
                add     [rbx+1E6h], ax
                lea     r12d, [rax+2]
                add     [rbx+31Ah], r12b
                cmp     [rbx+31Ah], r12b
                jz      short loc_1405B8643
                mov     rax, cr8
                and     [rsp+78h+var_58], 0
                lea     r8, qword_140C16708
                movzx   r9d, al
                mov     rdx, rbx
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B8643:                          ; CODE XREF: ExSvmFinalizeDeviceReset+4E↑j
                and     [rsp+78h+arg_18], 0
                lea     rdi, qword_140C16708
                mov     cl, [rbx+318h]
                or      ebp, 0FFFFFFFFh
                test    cl, cl
                jnz     short loc_1405B8677
                cmp     [rbx+366h], cl
                jz      short loc_1405B86A6
                xor     eax, eax
                xchg    al, [rbx+366h]
                mov     cl, [rbx+318h]
                or      cl, al

loc_1405B8677:                          ; CODE XREF: ExSvmFinalizeDeviceReset+8D↑j
                movzx   ecx, cl
                bsf     eax, ecx
                btr     ecx, eax
                mov     [rsp+78h+arg_18], eax
                mov     [rbx+318h], cl
                lea     rsi, [rax+rax*2]
                shl     rsi, 5
                add     rsi, [rbx+320h]
                jnz     short loc_1405B86C1

loc_1405B869E:                          ; CODE XREF: ExSvmFinalizeDeviceReset+E2↓j
                                        ; ExSvmFinalizeDeviceReset+EF↓j
                lock bts dword ptr [rbx+78h], 10h
                jmp     short loc_1405B871C
; ---------------------------------------------------------------------------

loc_1405B86A6:                          ; CODE XREF: ExSvmFinalizeDeviceReset+95↑j
                xor     esi, esi
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jz      short loc_1405B869E
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1403F8778
                jmp     short loc_1405B869E
; ---------------------------------------------------------------------------

loc_1405B86C1:                          ; CODE XREF: ExSvmFinalizeDeviceReset+CC↑j
                lea     rdi, qword_140C16708
                mov     rax, 0FFFF800000000000h
                cmp     rdi, rax
                jb      short loc_1405B8703
                mov     rax, rdi
                lea     rcx, unk_140C4F848
                shr     rax, 27h
                and     eax, 1FFh
                sub     eax, 100h
                cmp     [rax+rcx], r12b
                jnz     short loc_1405B8703
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                jmp     short loc_1405B8705
; ---------------------------------------------------------------------------

loc_1405B8703:                          ; CODE XREF: ExSvmFinalizeDeviceReset+105↑j
                                        ; ExSvmFinalizeDeviceReset+123↑j
                mov     eax, ebp

loc_1405B8705:                          ; CODE XREF: ExSvmFinalizeDeviceReset+131↑j
                mov     [rsi+28h], eax
                mov     rax, rdi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rsi+20h], rax

loc_1405B871C:                          ; CODE XREF: ExSvmFinalizeDeviceReset+D4↑j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+78h+var_48]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402456E0
                add     [rbx+1E6h], r12w
                jnz     short loc_1405B874D
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jz      short loc_1405B874D
                call    KiCheckForKernelApcDelivery

loc_1405B874D:                          ; CODE XREF: ExSvmFinalizeDeviceReset+16A↑j
                                        ; ExSvmFinalizeDeviceReset+176↑j
                lock bts qword ptr [rdi], 0
                jnb     short loc_1405B8763
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1402F5F10

loc_1405B8763:                          ; CODE XREF: ExSvmFinalizeDeviceReset+183↑j
                test    rsi, rsi
                jz      short loc_1405B876C
                or      [rsi+1Ah], r12b

loc_1405B876C:                          ; CODE XREF: ExSvmFinalizeDeviceReset+196↑j
                mov     rax, cs:qword_140C16710
                lea     rdx, qword_140C16710
                cmp     rax, rdx
                jz      short loc_1405B87AC

loc_1405B877F:                          ; CODE XREF: ExSvmFinalizeDeviceReset+1BE↓j
                lea     rcx, [rax]
                cmp     [rax+10h], r14
                jz      short loc_1405B8790
                mov     rax, [rax]
                cmp     rax, rdx
                jnz     short loc_1405B877F

loc_1405B8790:                          ; CODE XREF: ExSvmFinalizeDeviceReset+1B6↑j
                mov     rax, cs:off_140C04F48
                mov     rcx, [rcx+78h]
                mov     rax, [rax+90h]
                call    sub_1404079D0
                mov     r14d, eax
                jmp     short loc_1405B87B2
; ---------------------------------------------------------------------------

loc_1405B87AC:                          ; CODE XREF: ExSvmFinalizeDeviceReset+1AD↑j
                mov     r14d, 0C000000Eh

loc_1405B87B2:                          ; CODE XREF: ExSvmFinalizeDeviceReset+1DA↑j
                or      rsi, 0FFFFFFFFFFFFFFFFh
                mov     rax, rsi
                lock xadd cs:qword_140C16708, rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_1405B87D0
                mov     rcx, rdi
                call    ExfTryToWakePushLock

loc_1405B87D0:                          ; CODE XREF: ExSvmFinalizeDeviceReset+1F6↑j
                and     [rsp+78h+arg_10], 0
                mov     rcx, rdi
                mov     rbx, gs:188h
                call    sub_140245330
                cmp     eax, r12d
                jnz     short loc_1405B87FC
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     ebp, eax

loc_1405B87FC:                          ; CODE XREF: ExSvmFinalizeDeviceReset+21C↑j
                add     [rbx+1E6h], si
                add     [rbx+31Ah], r12b
                movsx   ecx, byte ptr [rbx+318h]
                mov     r8, rdi
                movsx   edx, byte ptr [rbx+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                mov     r12b, [rbx+31Ah]
                or      edx, ecx
                xor     edx, 3Fh
                and     r8, r10
                bsr     ecx, edx
                mov     [rsp+78h+arg_8], ecx
                jz      short loc_1405B8896
                mov     r9d, 1

loc_1405B8846:                          ; CODE XREF: ExSvmFinalizeDeviceReset+2C4↓j
                lea     rsi, [rcx+rcx*2]
                mov     eax, r9d
                shl     rsi, 5
                add     rsi, [rbx+320h]
                shl     eax, cl
                not     eax
                and     edx, eax
                test    [rsi+1Ah], r9b
                jz      short loc_1405B888A
                mov     eax, [rsi+20h]
                test    r9b, al
                jnz     short loc_1405B888A
                mov     rax, [rsi+20h]
                and     rax, r10
                cmp     rax, r8
                jnz     short loc_1405B888A
                cmp     [rsi+28h], ebp
                jnz     short loc_1405B888A
                and     byte ptr [rsi+1Ah], 0FEh
                mov     rax, [rsi+20h]
                test    rax, rax
                jnz     short loc_1405B88BD

loc_1405B888A:                          ; CODE XREF: ExSvmFinalizeDeviceReset+292↑j
                                        ; ExSvmFinalizeDeviceReset+29A↑j ...
                bsr     ecx, edx
                mov     [rsp+78h+arg_8], ecx
                jnz     short loc_1405B8846

loc_1405B8896:                          ; CODE XREF: ExSvmFinalizeDeviceReset+26E↑j
                                        ; ExSvmFinalizeDeviceReset+2F0↓j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      loc_1405B8941
                and     [rsp+78h+var_58], 0
                mov     r8, rdi
                mov     r9d, ebp
                mov     rdx, rbx
                mov     ecx, 162h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B88BD:                          ; CODE XREF: ExSvmFinalizeDeviceReset+2B8↑j
                test    rsi, rsi
                jz      short loc_1405B8896
                mov     al, [rsi+20h]
                or      al, 2
                mov     [rsi+20h], al
                mov     rax, [rsi+20h]
                shr     rax, 3Fh
                test    al, al
                jz      short loc_1405B88E4
                mov     rcx, rsi
                call    sub_14031EC80
                mov     r9d, 1

loc_1405B88E4:                          ; CODE XREF: ExSvmFinalizeDeviceReset+304↑j
                mov     ecx, [rsi+58h]
                mov     eax, ecx
                and     eax, 1FFFFh
                and     ecx, 0FFFE0000h
                and     byte ptr [rsi+19h], 0FEh
                mov     [rsp+78h+arg_10], eax
                mov     [rsi+58h], ecx
                mov     qword ptr [rsi+20h], 0
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rsi, [rbx+320h]
                imul    rsi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r12b, r9b
                jnz     short loc_1405B8994
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_1405B8941:                          ; CODE XREF: ExSvmFinalizeDeviceReset+2CD↑j
                                        ; ExSvmFinalizeDeviceReset+3D2↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+78h+arg_10]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402456E0
                mov     eax, 1
                add     [rbx+1E6h], ax
                jnz     short loc_1405B8979
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jz      short loc_1405B8979
                call    KiCheckForKernelApcDelivery

loc_1405B8979:                          ; CODE XREF: ExSvmFinalizeDeviceReset+396↑j
                                        ; ExSvmFinalizeDeviceReset+3A2↑j
                mov     rcx, r15
                call    sub_140245770
                mov     eax, r14d
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1405B8994:                          ; CODE XREF: ExSvmFinalizeDeviceReset+35F↑j
                mov     ecx, edx
                mov     eax, r9d
                shl     al, cl
                lock or [rbx+366h], al
                jmp     short loc_1405B8941
ExSvmFinalizeDeviceReset endp
