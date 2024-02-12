FsRtlRegisterFileSystemFilterCallbacks proc near
                                        ; DATA XREF: .pdata:00000001400DCF44↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rdx
                test    rcx, rcx
                jz      short loc_14039AEF6
                test    rdx, rdx
                jz      short loc_14039AEF6
                mov     rsi, [rcx+30h]
                mov     r8d, 676D5346h
                mov     edx, [rdx]
                mov     ecx, 200h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      short loc_14039AEEF
                mov     r8d, [rbx]
                mov     rdx, rbx
                mov     rcx, rax
                call    memmove
                xor     eax, eax
                mov     [rsi+30h], rdi

loc_14039AEDE:                          ; CODE XREF: FsRtlRegisterFileSystemFilterCallbacks+64↓j
                                        ; FsRtlRegisterFileSystemFilterCallbacks+6B↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14039AEEF:                          ; CODE XREF: FsRtlRegisterFileSystemFilterCallbacks+38↑j
                mov     eax, 0C000009Ah
                jmp     short loc_14039AEDE
; ---------------------------------------------------------------------------

loc_14039AEF6:                          ; CODE XREF: FsRtlRegisterFileSystemFilterCallbacks+15↑j
                                        ; FsRtlRegisterFileSystemFilterCallbacks+1A↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14039AEDE
FsRtlRegisterFileSystemFilterCallbacks endp
