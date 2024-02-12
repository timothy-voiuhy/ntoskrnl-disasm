ExSvmBeginDeviceReset proc near         ; DATA XREF: .pdata:00000001400FA140↑o

var_48          = qword ptr -48h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r12, gs:188h
                or      rax, 0FFFFFFFFFFFFFFFFh
                mov     r15, rdx
                mov     rbp, rcx
                add     [r12+1E6h], ax
                mov     rbx, gs:188h
                and     [rsp+68h+var_34], 0
                add     [rbx+1E6h], ax
                lea     edx, [rax+2]
                add     [rbx+31Ah], dl
                cmp     [rbx+31Ah], dl
                jz      short loc_1405B821B
                mov     rax, cr8
                and     [rsp+68h+var_48], 0
                lea     r8, qword_140C16708
                movzx   r9d, al
                mov     rdx, rbx
                mov     ecx, 192h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B821B:                          ; CODE XREF: ExSvmBeginDeviceReset+56↑j
                and     [rsp+68h+var_38], 0
                lea     rdi, qword_140C16708
                mov     cl, [rbx+318h]
                or      r14d, 0FFFFFFFFh
                test    cl, cl
                jnz     short loc_1405B824D
                cmp     [rbx+366h], cl
                jz      short loc_1405B8279
                xor     eax, eax
                xchg    al, [rbx+366h]
                mov     cl, [rbx+318h]
                or      cl, al

loc_1405B824D:                          ; CODE XREF: ExSvmBeginDeviceReset+93↑j
                movzx   ecx, cl
                bsf     eax, ecx
                btr     ecx, eax
                mov     [rsp+68h+var_38], eax
                mov     [rbx+318h], cl
                lea     rsi, [rax+rax*2]
                shl     rsi, 5
                add     rsi, [rbx+320h]
                jnz     short loc_1405B8294

loc_1405B8271:                          ; CODE XREF: ExSvmBeginDeviceReset+E5↓j
                                        ; ExSvmBeginDeviceReset+F2↓j
                lock bts dword ptr [rbx+78h], 10h
                jmp     short loc_1405B82EF
; ---------------------------------------------------------------------------

loc_1405B8279:                          ; CODE XREF: ExSvmBeginDeviceReset+9B↑j
                xor     esi, esi
                test    dword ptr cs:xmmword_140CFC480+4, 200h
                jz      short loc_1405B8271
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1403F8778
                jmp     short loc_1405B8271
; ---------------------------------------------------------------------------

loc_1405B8294:                          ; CODE XREF: ExSvmBeginDeviceReset+CF↑j
                lea     rdi, qword_140C16708
                mov     rax, 0FFFF800000000000h
                cmp     rdi, rax
                jb      short loc_1405B82D5
                mov     rax, rdi
                lea     rcx, unk_140C4F848
                shr     rax, 27h
                and     eax, 1FFh
                sub     eax, 100h
                cmp     [rax+rcx], dl
                jnz     short loc_1405B82D5
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                jmp     short loc_1405B82D8
; ---------------------------------------------------------------------------

loc_1405B82D5:                          ; CODE XREF: ExSvmBeginDeviceReset+108↑j
                                        ; ExSvmBeginDeviceReset+125↑j
                mov     eax, r14d

loc_1405B82D8:                          ; CODE XREF: ExSvmBeginDeviceReset+133↑j
                mov     [rsi+28h], eax
                mov     rax, rdi
                mov     rcx, 7FFFFFFFFFFFFFFCh
                and     rax, rcx
                mov     [rsi+20h], rax

loc_1405B82EF:                          ; CODE XREF: ExSvmBeginDeviceReset+D7↑j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+68h+var_34]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402456E0
                mov     eax, 1
                add     [rbx+1E6h], ax
                jnz     short loc_1405B8324
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jz      short loc_1405B8324
                call    KiCheckForKernelApcDelivery

loc_1405B8324:                          ; CODE XREF: ExSvmBeginDeviceReset+171↑j
                                        ; ExSvmBeginDeviceReset+17D↑j
                lock bts qword ptr [rdi], 0
                jnb     short loc_1405B833A
                mov     r8, rdi
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1402F5F10

loc_1405B833A:                          ; CODE XREF: ExSvmBeginDeviceReset+18A↑j
                test    rsi, rsi
                jz      short loc_1405B8347
                mov     eax, 1
                or      [rsi+1Ah], al

loc_1405B8347:                          ; CODE XREF: ExSvmBeginDeviceReset+19D↑j
                mov     rax, cs:qword_140C16710
                lea     rdx, qword_140C16710
                cmp     rax, rdx
                jz      short loc_1405B8389

loc_1405B835A:                          ; CODE XREF: ExSvmBeginDeviceReset+1C9↓j
                lea     rcx, [rax]
                cmp     [rax+10h], rbp
                jz      short loc_1405B836B
                mov     rax, [rax]
                cmp     rax, rdx
                jnz     short loc_1405B835A

loc_1405B836B:                          ; CODE XREF: ExSvmBeginDeviceReset+1C1↑j
                mov     rax, cs:off_140C04F48
                mov     rdx, r15
                mov     rcx, [rcx+78h]
                mov     rax, [rax+88h]
                call    sub_1404079D0
                mov     ebp, eax
                jmp     short loc_1405B838E
; ---------------------------------------------------------------------------

loc_1405B8389:                          ; CODE XREF: ExSvmBeginDeviceReset+1B8↑j
                mov     ebp, 0C000000Eh

loc_1405B838E:                          ; CODE XREF: ExSvmBeginDeviceReset+1E7↑j
                or      rsi, 0FFFFFFFFFFFFFFFFh
                mov     rax, rsi
                lock xadd cs:qword_140C16708, rax
                and     al, 6
                cmp     al, 2
                jnz     short loc_1405B83AC
                mov     rcx, rdi
                call    ExfTryToWakePushLock

loc_1405B83AC:                          ; CODE XREF: ExSvmBeginDeviceReset+202↑j
                and     [rsp+68h+arg_18], 0
                mov     rcx, rdi
                mov     rbx, gs:188h
                call    sub_140245330
                mov     r9d, 1
                cmp     eax, r9d
                jnz     short loc_1405B83E5
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     r14d, eax
                mov     r9d, 1

loc_1405B83E5:                          ; CODE XREF: ExSvmBeginDeviceReset+22E↑j
                add     [rbx+1E6h], si
                add     [rbx+31Ah], r9b
                movsx   ecx, byte ptr [rbx+318h]
                mov     r8, rdi
                movsx   edx, byte ptr [rbx+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                mov     r15b, [rbx+31Ah]
                or      edx, ecx
                and     r8, r10
                xor     edx, 3Fh
                jmp     short loc_1405B8464
; ---------------------------------------------------------------------------

loc_1405B841F:                          ; CODE XREF: ExSvmBeginDeviceReset+2CE↓j
                lea     rsi, [rcx+rcx*2]
                mov     eax, r9d
                shl     rsi, 5
                add     rsi, [rbx+320h]
                shl     eax, cl
                not     eax
                and     edx, eax
                test    [rsi+1Ah], r9b
                jz      short loc_1405B8464
                mov     eax, [rsi+20h]
                test    r9b, al
                jnz     short loc_1405B8464
                mov     rax, [rsi+20h]
                and     rax, r10
                cmp     rax, r8
                jnz     short loc_1405B8464
                cmp     [rsi+28h], r14d
                jnz     short loc_1405B8464
                and     byte ptr [rsi+1Ah], 0FEh
                mov     rax, [rsi+20h]
                test    rax, rax
                jnz     short loc_1405B8497

loc_1405B8464:                          ; CODE XREF: ExSvmBeginDeviceReset+27D↑j
                                        ; ExSvmBeginDeviceReset+29B↑j ...
                bsr     ecx, edx
                mov     [rsp+68h+arg_10], ecx
                jnz     short loc_1405B841F

loc_1405B8470:                          ; CODE XREF: ExSvmBeginDeviceReset+2FA↓j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      loc_1405B851B
                and     [rsp+68h+var_48], 0
                mov     r8, rdi
                mov     r9d, r14d
                mov     rdx, rbx
                mov     ecx, 162h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B8497:                          ; CODE XREF: ExSvmBeginDeviceReset+2C2↑j
                test    rsi, rsi
                jz      short loc_1405B8470
                mov     al, [rsi+20h]
                or      al, 2
                mov     [rsi+20h], al
                mov     rax, [rsi+20h]
                shr     rax, 3Fh
                test    al, al
                jz      short loc_1405B84BE
                mov     rcx, rsi
                call    sub_14031EC80
                mov     r9d, 1

loc_1405B84BE:                          ; CODE XREF: ExSvmBeginDeviceReset+30E↑j
                mov     ecx, [rsi+58h]
                mov     eax, ecx
                and     eax, 1FFFFh
                and     ecx, 0FFFE0000h
                and     byte ptr [rsi+19h], 0FEh
                mov     [rsp+68h+arg_18], eax
                mov     [rsi+58h], ecx
                mov     qword ptr [rsi+20h], 0
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rsi, [rbx+320h]
                imul    rsi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r15b, r9b
                jnz     short loc_1405B8575
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_1405B851B:                          ; CODE XREF: ExSvmBeginDeviceReset+2D7↑j
                                        ; ExSvmBeginDeviceReset+3E3↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+68h+arg_18]
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402456E0
                mov     eax, 1
                add     [rbx+1E6h], ax
                jnz     short loc_1405B8553
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jz      short loc_1405B8553
                call    KiCheckForKernelApcDelivery

loc_1405B8553:                          ; CODE XREF: ExSvmBeginDeviceReset+3A0↑j
                                        ; ExSvmBeginDeviceReset+3AC↑j
                mov     rcx, r12
                call    sub_140245770
                mov     rbx, [rsp+68h+arg_0]
                mov     eax, ebp
                mov     rbp, [rsp+68h+arg_8]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405B8575:                          ; CODE XREF: ExSvmBeginDeviceReset+369↑j
                mov     ecx, edx
                mov     eax, r9d
                shl     al, cl
                lock or [rbx+366h], al
                jmp     short loc_1405B851B
ExSvmBeginDeviceReset endp
