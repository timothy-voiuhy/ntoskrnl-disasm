PsUnregisterSiloMonitor proc near       ; DATA XREF: .pdata:00000001401219B0↑o

var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_18], rax
                xorps   xmm0, xmm0
                or      rbx, 0FFFFFFFFFFFFFFFFh
                movups  [rsp+68h+var_48], xmm0
                mov     rdi, rcx
                movups  [rsp+68h+var_38], xmm0
                movups  [rsp+68h+var_28], xmm0
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                xor     edx, edx
                lea     rcx, qword_140C1DEB0
                call    ExAcquirePushLockExclusiveEx
                mov     rax, [rdi]
                test    rax, rax
                jnz     short loc_14090CC37
                cmp     [rdi+8], rax
                jz      loc_14090CCD1

loc_14090CC37:                          ; CODE XREF: PsUnregisterSiloMonitor+5B↑j
                cmp     qword ptr [rdi+20h], 0
                jz      short loc_14090CCAA
                mov     rcx, cs:PsInitialSystemProcess
                lea     r8, [rsp+68h+var_48]
                xor     edx, edx
                call    sub_1402D3C90
                xor     ecx, ecx
                jmp     short loc_14090CC75
; ---------------------------------------------------------------------------

loc_14090CC55:                          ; CODE XREF: PsUnregisterSiloMonitor+B2↓j
                mov     rcx, rsi
                call    sub_140581268
                mov     ecx, [rax]
                dec     ecx
                cmp     ecx, 2
                ja      short loc_14090CC72
                mov     rax, [rdi+20h]
                mov     rcx, rsi
                call    sub_1404079D0

loc_14090CC72:                          ; CODE XREF: PsUnregisterSiloMonitor+94↑j
                mov     rcx, rsi

loc_14090CC75:                          ; CODE XREF: PsUnregisterSiloMonitor+83↑j
                mov     dl, 1
                call    sub_1406048A0
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_14090CC55
                cmp     byte ptr [rdi+10h], 0
                jz      short loc_14090CC9B
                call    PsGetHostSilo
                mov     rcx, rax
                mov     rax, [rdi+20h]
                call    sub_1404079D0

loc_14090CC9B:                          ; CODE XREF: PsUnregisterSiloMonitor+B8↑j
                xor     edx, edx
                lea     rcx, [rsp+68h+var_48]
                call    sub_14021E230
                mov     rax, [rdi]

loc_14090CCAA:                          ; CODE XREF: PsUnregisterSiloMonitor+6C↑j
                cmp     [rax+8], rdi
                jnz     loc_14090CD88
                mov     rcx, [rdi+8]
                cmp     [rcx], rdi
                jnz     loc_14090CD88
                mov     [rcx], rax
                mov     [rax+8], rcx
                and     qword ptr [rdi], 0
                and     qword ptr [rdi+8], 0

loc_14090CCD1:                          ; CODE XREF: PsUnregisterSiloMonitor+61↑j
                lock xadd cs:qword_140C1DEB0, rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_14090CCEE
                lea     rcx, qword_140C1DEB0
                call    ExfTryToWakePushLock

loc_14090CCEE:                          ; CODE XREF: PsUnregisterSiloMonitor+110↑j
                lea     rcx, qword_140C1DEB0
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                cmp     byte ptr [rdi+10h], 0
                jz      short loc_14090CD53
                mov     rcx, cs:PsInitialSystemProcess
                lea     r8, [rsp+68h+var_48]
                xor     edx, edx
                call    sub_1402D3C90
                call    sub_140581258
                mov     edx, [rdi+14h]
                mov     rcx, rax
                xor     r9d, r9d
                mov     r8b, 1
                call    sub_1409106CC
                xor     edx, edx
                lea     rcx, [rsp+68h+var_48]
                mov     ebx, eax
                call    sub_14021E230
                test    ebx, ebx
                jz      short loc_14090CD53
                cmp     ebx, 0C0000225h
                jz      short loc_14090CD53
                int     2Ch             ; Windows NT - assertion failure

loc_14090CD53:                          ; CODE XREF: PsUnregisterSiloMonitor+13C↑j
                                        ; PsUnregisterSiloMonitor+177↑j ...
                mov     ecx, [rdi+14h]
                call    sub_140910634
                mov     edx, 4D6C6953h
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     rcx, [rsp+68h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+68h+var_8]
                mov     rbx, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14090CD88:                          ; CODE XREF: PsUnregisterSiloMonitor+DE↑j
                                        ; PsUnregisterSiloMonitor+EB↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; } // starts at 14090CBD0
PsUnregisterSiloMonitor endp
