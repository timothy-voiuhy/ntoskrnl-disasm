IoRegisterContainerNotification proc near
                                        ; DATA XREF: .pdata:000000014011CAFC↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                mov     [rax+10h], rdx
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                xor     ebx, ebx
                mov     r13, r8
                mov     r15, rdx
                cmp     ecx, 1
                jl      short loc_1408961F7
                mov     eax, 0C00000EFh
                jmp     loc_1408963D9
; ---------------------------------------------------------------------------

loc_1408961F7:                          ; CODE XREF: IoRegisterContainerNotification+2B↑j
                cmp     r9d, 20h ; ' '
                jnz     loc_1408963D4
                cmp     [r8], r9d
                jnz     loc_1408963D4
                mov     rax, gs:188h
                mov     rsi, [r8+8]
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                lea     rcx, qword_140C45870
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, cs:qword_140C45860
                lea     rdx, qword_140C45860
                jmp     short loc_140896248
; ---------------------------------------------------------------------------

loc_14089623C:                          ; CODE XREF: IoRegisterContainerNotification+8B↓j
                lea     rax, [rcx]
                mov     rcx, [rcx]
                cmp     [rax+28h], rsi
                jz      short loc_140896272

loc_140896248:                          ; CODE XREF: IoRegisterContainerNotification+7A↑j
                cmp     rcx, rdx
                jnz     short loc_14089623C
                mov     edx, 48h ; 'H'
                mov     r8d, 6E536F49h
                lea     ecx, [rdx-47h]
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_14089627C
                mov     ebx, 0C000009Ah
                jmp     loc_1408963B4
; ---------------------------------------------------------------------------

loc_140896272:                          ; CODE XREF: IoRegisterContainerNotification+86↑j
                mov     ebx, 0C0000021h
                jmp     loc_1408963B4
; ---------------------------------------------------------------------------

loc_14089627C:                          ; CODE XREF: IoRegisterContainerNotification+A6↑j
                mov     rcx, cs:qword_140C457B0
                lea     rdx, sub_1408964C0
                mov     r8, rdi
                call    ExRegisterCallback
                mov     rbp, rax
                test    rax, rax
                jnz     short loc_1408962A4
                mov     ebx, 0C000009Ah
                jmp     loc_14089639D
; ---------------------------------------------------------------------------

loc_1408962A4:                          ; CODE XREF: IoRegisterContainerNotification+D8↑j
                movsx   ecx, word ptr [rsi]
                xor     r12d, r12d
                sub     ecx, 3
                jz      short loc_1408962EC
                sub     ecx, 1
                jz      short loc_1408962E7
                cmp     ecx, 1
                jz      short loc_1408962C3
                mov     ebx, 0C00000F1h
                jmp     loc_14089639D
; ---------------------------------------------------------------------------

loc_1408962C3:                          ; CODE XREF: IoRegisterContainerNotification+F7↑j
                mov     rax, [rsi+8]
                mov     r8b, 1
                mov     edx, 2
                mov     rcx, rsi
                mov     r14, [rax+8]
                call    sub_1402B9640
                mov     ebx, eax
                test    eax, eax
                js      loc_14089639D
                jmp     short loc_14089633B
; ---------------------------------------------------------------------------

loc_1408962E7:                          ; CODE XREF: IoRegisterContainerNotification+F2↑j
                mov     r14, rsi
                jmp     short loc_14089633B
; ---------------------------------------------------------------------------

loc_1408962EC:                          ; CODE XREF: IoRegisterContainerNotification+ED↑j
                mov     rax, [rsi+138h]
                mov     r14, [rsi+8]
                test    dword ptr [rax+20h], 400h
                jz      short loc_14089632F
                mov     rcx, rsi
                call    sub_140349AB8
                mov     r15, rax
                test    rax, rax
                jz      short loc_14089632A
                mov     rcx, rax
                call    sub_14073DD20
                mov     ecx, eax
                call    sub_140201F98
                mov     rcx, r15
                mov     r12, rax
                call    PsDereferenceSiloContext

loc_14089632A:                          ; CODE XREF: IoRegisterContainerNotification+14E↑j
                mov     r15, [rsp+48h+arg_8]

loc_14089632F:                          ; CODE XREF: IoRegisterContainerNotification+13E↑j
                mov     rcx, [rsi+138h]
                bts     dword ptr [rcx+20h], 0Ch

loc_14089633B:                          ; CODE XREF: IoRegisterContainerNotification+125↑j
                                        ; IoRegisterContainerNotification+12A↑j
                mov     rcx, r14
                call    ObfReferenceObject
                mov     [rdi+28h], rsi
                lea     rdx, qword_140C45860
                mov     [rdi+10h], r14
                mov     [rdi+20h], rbp
                mov     rax, [r13+18h]
                mov     [rdi+40h], rax
                mov     eax, [r13+10h]
                mov     [rdi+38h], eax
                mov     rax, [rsp+48h+arg_20]
                mov     [rdi+18h], r15
                mov     [rdi+30h], r12
                mov     [rax], rbp
                mov     rax, cs:qword_140C45868
                cmp     [rax], rdx
                jz      short loc_140896388
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_140896388:                          ; CODE XREF: IoRegisterContainerNotification+1BF↑j
                mov     [rdi], rdx
                mov     [rdi+8], rax
                mov     [rax], rdi
                mov     cs:qword_140C45868, rdi
                test    ebx, ebx
                jns     short loc_1408963B4

loc_14089639D:                          ; CODE XREF: IoRegisterContainerNotification+DF↑j
                                        ; IoRegisterContainerNotification+FE↑j ...
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag
                test    rbp, rbp
                jz      short loc_1408963B4
                mov     rcx, rbp
                call    ExUnregisterCallback

loc_1408963B4:                          ; CODE XREF: IoRegisterContainerNotification+AD↑j
                                        ; IoRegisterContainerNotification+B7↑j ...
                xor     edx, edx
                lea     rcx, qword_140C45870
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     eax, ebx
                jmp     short loc_1408963D9
; ---------------------------------------------------------------------------

loc_1408963D4:                          ; CODE XREF: IoRegisterContainerNotification+3B↑j
                                        ; IoRegisterContainerNotification+44↑j
                mov     eax, 0C00000F2h

loc_1408963D9:                          ; CODE XREF: IoRegisterContainerNotification+32↑j
                                        ; IoRegisterContainerNotification+212↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoRegisterContainerNotification endp
