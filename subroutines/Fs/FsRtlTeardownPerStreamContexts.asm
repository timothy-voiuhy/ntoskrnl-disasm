FsRtlTeardownPerStreamContexts proc near
                                        ; CODE XREF: sub_1406EB3F4+2E↑p
                                        ; DATA XREF: .rdata:000000014007CE3C↑o ...

var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407E7EE0 SIZE 00000049 BYTES
; FUNCTION CHUNK AT 000000014082429A SIZE 0000001E BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                mov     [rsp+arg_0], rcx
                push    r14
                sub     rsp, 30h
                mov     rdi, rcx
                lea     rbx, [rcx+38h]
                cmp     [rbx], rbx
                jnz     short loc_1406EB4AD

loc_1406EB496:                          ; CODE XREF: FsRtlTeardownPerStreamContexts+13C↓j
                                        ; FsRtlTeardownPerStreamContexts+138E43↓j
                mov     rbx, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406EB4AD:                          ; CODE XREF: FsRtlTeardownPerStreamContexts+24↑j
                movzx   eax, byte ptr [rcx+7]
                and     al, 0F0h
                cmp     al, 10h
                jb      loc_14082429A
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                add     rcx, 48h ; 'H'
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx

loc_1406EB4D6:                          ; CODE XREF: FsRtlTeardownPerStreamContexts+138E34↓j
                mov     [rsp+38h+var_18], 1

loc_1406EB4DB:                          ; CODE XREF: FsRtlTeardownPerStreamContexts+F3↓j
                                        ; DATA XREF: .rdata:000000014007CE28↑o
;   __try { // __finally(loc_1407E7EE0)
                mov     rsi, [rbx]
                cmp     rsi, rbx
                jz      loc_1406EB585
                mov     rax, [rsi]
                cmp     [rsi+8], rbx
                jnz     loc_1406EB57E
                cmp     [rax+8], rsi
                jnz     loc_1406EB57E
                mov     [rbx], rax
                mov     [rax+8], rbx
                movzx   eax, byte ptr [rdi+7]
                and     al, 0F0h
                cmp     al, 10h
                jb      short loc_1406EB568
                xor     edx, edx
                lea     rcx, [rdi+48h]
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_1406EB528:                          ; CODE XREF: FsRtlTeardownPerStreamContexts+101↓j
                mov     [rsp+38h+var_18], 0
                mov     rax, [rsi+20h]
                mov     rcx, rsi
                call    sub_1404079D0
                movzx   eax, byte ptr [rdi+7]
                and     al, 0F0h
                cmp     al, 10h
                jb      short loc_1406EB573
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                xor     edx, edx
                lea     rcx, [rdi+48h]
                call    ExAcquirePushLockExclusiveEx

loc_1406EB55E:                          ; CODE XREF: FsRtlTeardownPerStreamContexts+10C↓j
                mov     [rsp+38h+var_18], 1
                jmp     loc_1406EB4DB
; ---------------------------------------------------------------------------

loc_1406EB568:                          ; CODE XREF: FsRtlTeardownPerStreamContexts+9D↑j
                mov     rcx, [rdi+30h]
                call    KeReleaseGuardedMutex
                jmp     short loc_1406EB528
; ---------------------------------------------------------------------------

loc_1406EB573:                          ; CODE XREF: FsRtlTeardownPerStreamContexts+D1↑j
                mov     rcx, [rdi+30h]
                call    ExAcquireFastMutex
                jmp     short loc_1406EB55E
; ---------------------------------------------------------------------------

loc_1406EB57E:                          ; CODE XREF: FsRtlTeardownPerStreamContexts+7E↑j
                                        ; FsRtlTeardownPerStreamContexts+88↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
;   } // starts at 1406EB4DB
; ---------------------------------------------------------------------------

loc_1406EB585:                          ; CODE XREF: FsRtlTeardownPerStreamContexts+71↑j
                                        ; DATA XREF: .rdata:000000014007CE28↑o
                movzx   eax, byte ptr [rdi+7]
                and     al, 0F0h
                cmp     al, 10h
                jb      loc_1408242A9
                lea     rcx, [rdi+48h]
                xor     edx, edx
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                jmp     loc_1406EB496
; } // starts at 1406EB470
FsRtlTeardownPerStreamContexts endp
