PsRegisterAltSystemCallHandler proc near
                                        ; DATA XREF: .pdata:0000000140121A10↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rdi
                push    r14
                sub     rsp, 30h
                movsxd  rbx, edx
                mov     edx, 2
                mov     rdi, rcx
                test    rcx, rcx
                jz      loc_14090D2AF
                cmp     ebx, edx
                jnb     loc_14090D2AF
                test    ebx, ebx
                jnz     short loc_14090D22A
                and     [rsp+38h+var_18], 0
                lea     edx, [rbx+3]
                xor     r9d, r9d
                xor     r8d, r8d
                mov     ecx, 1E0h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14090D22A:                          ; CODE XREF: PsRegisterAltSystemCallHandler+2E↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                lea     rcx, qword_140C1DE98
                call    ExAcquirePushLockExclusiveEx
                xor     edx, edx
                lea     r14, qword_140CFC798
                lea     rcx, qword_140C1DE98
                cmp     [r14+rbx*8], rdx
                jz      short loc_14090D284
                call    ExReleasePushLockEx
                call    KeLeaveCriticalRegion
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                mov     r8, [r14+rbx*8]
                mov     ecx, 1E0h
                lea     edx, [r9+1]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14090D284:                          ; CODE XREF: PsRegisterAltSystemCallHandler+7C↑j
                mov     [r14+rbx*8], rdi
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rbx, [rsp+38h+arg_0]
                xor     eax, eax
                mov     rdi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14090D2AF:                          ; CODE XREF: PsRegisterAltSystemCallHandler+1E↑j
                                        ; PsRegisterAltSystemCallHandler+26↑j
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                mov     ecx, 1E0h
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
PsRegisterAltSystemCallHandler endp
