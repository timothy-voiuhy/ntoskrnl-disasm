KeReleaseGuardedMutex proc near         ; CODE XREF: sub_1402604A0+1A5↓p
                                        ; sub_1402604A0+294↓p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140431912 SIZE 00000067 BYTES

                mov     [rsp+arg_0], rbx ; ExReleaseFastMutex
                push    rdi
                sub     rsp, 20h
                movzx   edi, byte ptr [rcx+30h]
                mov     rbx, rcx
                mov     qword ptr [rcx+8], 0
                xor     eax, eax
                mov     ecx, 1
                lock cmpxchg [rbx], ecx
                jnz     short loc_14024364C

loc_140243626:                          ; CODE XREF: KeReleaseGuardedMutex+56↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140431912

loc_140243634:                          ; CODE XREF: KeReleaseGuardedMutex+1EE314↓j
                                        ; KeReleaseGuardedMutex+1EE320↓j ...
                mov     cr8, rdi
                mov     rcx, rbx
                call    sub_140243660
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14024364C:                          ; CODE XREF: KeReleaseGuardedMutex+24↑j
                mov     edx, eax
                mov     rcx, rbx
                call    sub_1402F424C
                jmp     short loc_140243626
KeReleaseGuardedMutex endp
