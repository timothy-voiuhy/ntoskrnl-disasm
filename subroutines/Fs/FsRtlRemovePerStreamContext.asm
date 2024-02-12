FsRtlRemovePerStreamContext proc near   ; DATA XREF: .pdata:00000001400F14E8↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbp, r8
                mov     rsi, rdx
                mov     rdi, rcx
                test    rcx, rcx
                jz      loc_1404F16E7
                test    byte ptr [rcx+6], 2
                jz      loc_1404F16E7
                mov     al, [rcx+7]
                and     al, 0F0h
                cmp     al, 10h
                jb      short loc_1404F1646
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                add     rcx, 48h ; 'H'
                xor     edx, edx
                call    ExAcquirePushLockExclusiveEx
                jmp     short loc_1404F164F
; ---------------------------------------------------------------------------

loc_1404F1646:                          ; CODE XREF: FsRtlRemovePerStreamContext+37↑j
                mov     rcx, [rcx+30h]
                call    ExAcquireFastMutex

loc_1404F164F:                          ; CODE XREF: FsRtlRemovePerStreamContext+54↑j
                xor     ebx, ebx
                lea     rcx, [rdi+38h]
                mov     rax, [rcx]
                test    rbp, rbp
                jnz     short loc_1404F16BB
                test    rsi, rsi
                jnz     short loc_1404F16CB
                cmp     rax, rcx
                jz      short loc_1404F1688

loc_1404F1667:                          ; CODE XREF: FsRtlRemovePerStreamContext+C6↓j
                                        ; FsRtlRemovePerStreamContext+D6↓j
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1404F1688
                mov     rax, [rax]
                cmp     [rax+8], rbx
                jnz     short loc_1404F16D2
                mov     rcx, [rbx+8]
                cmp     [rcx], rbx
                jnz     short loc_1404F16D2
                mov     [rcx], rax
                mov     [rax+8], rcx

loc_1404F1688:                          ; CODE XREF: FsRtlRemovePerStreamContext+75↑j
                                        ; FsRtlRemovePerStreamContext+7D↑j ...
                mov     al, [rdi+7]
                and     al, 0F0h
                cmp     al, 10h
                jb      short loc_1404F16D9
                lea     rcx, [rdi+48h]
                xor     edx, edx
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                jmp     short loc_1404F16E2
; ---------------------------------------------------------------------------

loc_1404F16AC:                          ; CODE XREF: FsRtlRemovePerStreamContext+CE↓j
                cmp     [rax+10h], rsi
                jnz     short loc_1404F16B8
                cmp     [rax+18h], rbp
                jz      short loc_1404F1667

loc_1404F16B8:                          ; CODE XREF: FsRtlRemovePerStreamContext+C0↑j
                mov     rax, [rax]

loc_1404F16BB:                          ; CODE XREF: FsRtlRemovePerStreamContext+6B↑j
                cmp     rax, rcx
                jnz     short loc_1404F16AC
                jmp     short loc_1404F1688
; ---------------------------------------------------------------------------

loc_1404F16C2:                          ; CODE XREF: FsRtlRemovePerStreamContext+DE↓j
                cmp     [rax+10h], rsi
                jz      short loc_1404F1667
                mov     rax, [rax]

loc_1404F16CB:                          ; CODE XREF: FsRtlRemovePerStreamContext+70↑j
                cmp     rax, rcx
                jnz     short loc_1404F16C2
                jmp     short loc_1404F1688
; ---------------------------------------------------------------------------

loc_1404F16D2:                          ; CODE XREF: FsRtlRemovePerStreamContext+86↑j
                                        ; FsRtlRemovePerStreamContext+8F↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_1404F16D9:                          ; CODE XREF: FsRtlRemovePerStreamContext+9F↑j
                mov     rcx, [rdi+30h]
                call    KeReleaseGuardedMutex

loc_1404F16E2:                          ; CODE XREF: FsRtlRemovePerStreamContext+BA↑j
                mov     rax, rbx
                jmp     short loc_1404F16E9
; ---------------------------------------------------------------------------

loc_1404F16E7:                          ; CODE XREF: FsRtlRemovePerStreamContext+20↑j
                                        ; FsRtlRemovePerStreamContext+2A↑j
                xor     eax, eax

loc_1404F16E9:                          ; CODE XREF: FsRtlRemovePerStreamContext+F5↑j
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlRemovePerStreamContext endp
