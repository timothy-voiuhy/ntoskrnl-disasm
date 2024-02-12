ObUnRegisterCallbacks proc near         ; DATA XREF: .pdata:000000014011F400↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                xor     esi, esi
                mov     rbx, rcx
                cmp     si, [rcx+2]
                jnb     short loc_1408DF3B5

loc_1408DF33A:                          ; CODE XREF: ObUnRegisterCallbacks+93↓j
                mov     eax, esi
                lea     rdi, [rbx+20h]
                shl     rax, 6
                add     rdi, rax
                lea     rcx, [rdi+38h]
                call    ExWaitForRundownProtectionRelease
                mov     rax, gs:188h
                dec     word ptr [rax+1E6h]
                mov     rcx, [rdi+20h]
                xor     edx, edx
                add     rcx, 0B8h
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, [rdi]
                cmp     [rcx+8], rdi
                jnz     short loc_1408DF3D3
                mov     rax, [rdi+8]
                cmp     [rax], rdi
                jnz     short loc_1408DF3D3
                mov     [rax], rcx
                xor     edx, edx
                mov     [rcx+8], rax
                mov     rcx, [rdi+20h]
                add     rcx, 0B8h
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_140245770
                movzx   eax, word ptr [rbx+2]
                inc     esi
                cmp     esi, eax
                jb      short loc_1408DF33A

loc_1408DF3B5:                          ; CODE XREF: ObUnRegisterCallbacks+18↑j
                mov     edx, 6C46624Fh
                mov     rcx, rbx
                call    ExFreePoolWithTag
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1408DF3D3:                          ; CODE XREF: ObUnRegisterCallbacks+59↑j
                                        ; ObUnRegisterCallbacks+62↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
ObUnRegisterCallbacks endp
