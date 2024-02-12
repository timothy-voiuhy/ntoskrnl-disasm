PoUnregisterPowerSettingCallback proc near
                                        ; CODE XREF: sub_1408FD1C4+B↓p
                                        ; sub_1408FFBDC+C1↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140849060 SIZE 00000070 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                xor     edi, edi
                mov     rbx, rcx
                test    rcx, rcx
                jz      short loc_140771352
                cmp     dword ptr [rcx+10h], 74655350h
                jnz     short loc_140771352
                lea     rcx, dword_140C24280
                call    ExAcquireFastMutex
                mov     al, [rbx+21h]
                test    al, al
                jnz     short loc_14077134B
                mov     al, [rbx+20h]
                test    al, al
                jnz     short loc_14077134B
                cmp     [rbx], rbx
                jz      short loc_14077134B
                mov     rax, [rbx+18h]
                test    rax, rax
                jnz     loc_140849060

loc_140771329:                          ; CODE XREF: PoUnregisterPowerSettingCallback+D7DEB↓j
                mov     rcx, rbx
                call    sub_140380BAC

loc_140771331:                          ; CODE XREF: PoUnregisterPowerSettingCallback+70↓j
                                        ; PoUnregisterPowerSettingCallback+D7D96↓j
                lea     rcx, dword_140C24280
                call    KeReleaseGuardedMutex
                mov     eax, edi

loc_14077133F:                          ; CODE XREF: PoUnregisterPowerSettingCallback+77↓j
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14077134B:                          ; CODE XREF: PoUnregisterPowerSettingCallback+2E↑j
                                        ; PoUnregisterPowerSettingCallback+35↑j ...
                mov     edi, 0C000000Dh
                jmp     short loc_140771331
; ---------------------------------------------------------------------------

loc_140771352:                          ; CODE XREF: PoUnregisterPowerSettingCallback+12↑j
                                        ; PoUnregisterPowerSettingCallback+1B↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14077133F
PoUnregisterPowerSettingCallback endp
