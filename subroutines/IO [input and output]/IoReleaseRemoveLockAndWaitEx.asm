IoReleaseRemoveLockAndWaitEx proc near  ; CODE XREF: sub_14057E448+66↓p
                                        ; sub_1407B3DCC+16C↓p ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404A1526 SIZE 00000075 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                mov     byte ptr [rcx], 1
                mov     esi, r8d
                lock dec dword ptr [rcx+4]
                mov     rdi, rdx
                or      eax, 0FFFFFFFFh
                mov     rbx, rcx
                lock xadd [rcx+4], eax
                sub     eax, 1
                jg      loc_1404A1526

loc_14039AE50:                          ; CODE XREF: IoReleaseRemoveLockAndWaitEx+10671E↓j
                cmp     esi, 78h ; 'x'
                jz      loc_1404A1543

loc_14039AE59:                          ; CODE XREF: IoReleaseRemoveLockAndWaitEx+10672E↓j
                                        ; IoReleaseRemoveLockAndWaitEx+106776↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoReleaseRemoveLockAndWaitEx endp
