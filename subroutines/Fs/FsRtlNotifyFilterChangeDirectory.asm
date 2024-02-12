FsRtlNotifyFilterChangeDirectory proc near
                                        ; CODE XREF: FsRtlNotifyChangeDirectory+48↓p
                                        ; FsRtlNotifyFullChangeDirectory+51↓p
                                        ; DATA XREF: ...

var_58          = dword ptr -58h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = byte ptr  28h
arg_28          = byte ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h
arg_50          = qword ptr  58h

; FUNCTION CHUNK AT 00000001407E8016 SIZE 00000053 BYTES
; FUNCTION CHUNK AT 0000000140825AA2 SIZE 00000018 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_18], r9
                mov     [rsp+arg_10], r8
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     r12, r9
                mov     r9, r8
                mov     r13, rdx
                mov     r15, rcx
                mov     rdi, [rsp+78h+arg_38]
                xor     esi, esi
                cmp     [rdx], rdx
                jz      loc_1406F3BF5

loc_1406F38ED:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+348↓j
                mov     rbx, gs:188h
                cmp     rbx, [rcx+38h]
                jz      short loc_1406F390D
                call    ExAcquireFastMutexUnsafe
                mov     [r15+38h], rbx
                mov     r9, [rsp+78h+arg_10]

loc_1406F390D:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+4A↑j
                mov     r10d, 1
                add     [r15+40h], r10d

loc_1406F3917:                          ; DATA XREF: .rdata:000000014007FB50↑o
;   __try { // __finally(loc_1407E8016)
                test    rdi, rdi
                jz      loc_1406F3AE3
                mov     r14, [rdi+0B8h]
                mov     [rsp+78h+arg_8], r14
                mov     [rdi+30h], esi
                mov     [rdi+38h], rsi
                mov     rax, [r14+30h]
                test    dword ptr [rax+50h], 4000h
                jnz     loc_1406F3AF3
                mov     rdx, r9
                mov     rcx, r13
                call    sub_1406F4754
                mov     rbx, rax
                mov     [rsp+78h+var_48], rax
                test    rax, rax
                jz      short loc_1406F39D5
                movzx   eax, word ptr [rax+48h]
                test    al, 4
                jnz     loc_1406F3AF3
                test    al, 20h
                jnz     loc_1406F3B77
                movzx   edx, ax
                and     dx, 8
                lea     ecx, [r10+1]
                test    cl, al
                jnz     loc_1406F3B84

loc_1406F3986:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+2D7↓j
                mov     r8d, [rbx+68h]
                test    r8d, r8d
                jnz     loc_1406F3B92

loc_1406F3993:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+22E↓j
                                        ; FsRtlNotifyFilterChangeDirectory+2E5↓j
                mov     [rdi+38h], rbx
                or      [r14+3], r10b
                lea     rax, [rdi+0A8h]
                lea     rcx, [rbx+30h]
                mov     rdx, [rcx+8]
                cmp     [rdx], rcx
                jnz     loc_1406F3BB4
                mov     [rax], rcx
                mov     [rax+8], rdx
                mov     [rdx], rax
                mov     [rcx+8], rax
                lock add [rbx+70h], r10d
                xor     edx, edx
                mov     rcx, rdi
                call    sub_14033E2D8
                jmp     loc_1406F3BBB
; ---------------------------------------------------------------------------

loc_1406F39D5:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+AD↑j
                mov     edx, 98h
                mov     ecx, 11h
                mov     r8d, 4E725346h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                mov     [rsp+78h+var_48], rax
                xor     edx, edx
                mov     r8d, 98h
                mov     rcx, rax
                call    memset
                mov     [rbx], r15
                mov     rax, [rsp+78h+arg_10]
                mov     [rbx+8], rax
                mov     rax, [r14+30h]
                mov     rcx, [rax+18h]
                mov     [rbx+80h], rcx
                mov     rax, [rsp+78h+arg_40]
                mov     [rbx+10h], rax
                mov     rax, [rsp+78h+arg_48]
                mov     [rbx+18h], rax
                mov     [rsp+78h+arg_48], rsi
                mov     rax, [rsp+78h+arg_50]
                mov     [rbx+40h], rax
                mov     [rbx+88h], r12
                lea     rax, [rbx+30h]
                mov     [rax+8], rax
                mov     [rax], rax
                mov     r10d, 1
                cmp     [rsp+78h+arg_20], sil
                jnz     loc_1406F3B2E

loc_1406F3A72:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+283↓j
                test    r12, r12
                jnz     loc_1406F3B38
                mov     [rbx+90h], r10b

loc_1406F3A82:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+2B7↓j
                                        ; FsRtlNotifyFilterChangeDirectory+2C2↓j
                mov     eax, [rsp+78h+arg_30]
                mov     [rbx+4Ch], eax
                cmp     [rsp+78h+arg_28], sil
                jnz     short loc_1406F3A9D
                mov     eax, [r14+8]
                mov     [rbx+60h], eax

loc_1406F3A9D:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+1E4↑j
                mov     rax, [rdi+98h]
                mov     [rsp+78h+var_40], rax
                mov     rax, [rax+220h]
                mov     [rbx+78h], rax
                lea     rax, [rbx+20h]
                mov     rcx, [r13+8]
                cmp     [rcx], r13
                jnz     loc_1406F3BB4
                mov     [rax], r13
                mov     [rax+8], rcx
                mov     [rcx], rax
                mov     [r13+8], rax
                mov     [rbx+70h], r10d
                mov     r14, [rdi+0B8h]
                jmp     loc_1406F3993
; ---------------------------------------------------------------------------

loc_1406F3AE3:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+6A↑j
                mov     rdx, r9
                mov     rcx, r13
                call    sub_14088EBE0
                jmp     loc_1406F3BBB
; ---------------------------------------------------------------------------

loc_1406F3AF3:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+91↑j
                                        ; FsRtlNotifyFilterChangeDirectory+B5↑j
                or      [r14+3], r10b
                mov     dword ptr [rdi+30h], 10Bh
                jmp     short loc_1406F3B1E
; ---------------------------------------------------------------------------

loc_1406F3B00:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+2DD↓j
                mov     ecx, 0FFFDh
                and     ax, cx
                mov     [rbx+48h], ax
                mov     rax, [rdi+0B8h]
                or      [rax+3], r10b
                mov     dword ptr [rdi+30h], 10Ch

loc_1406F3B1E:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+24E↑j
                                        ; FsRtlNotifyFilterChangeDirectory+2D2↓j
                mov     dl, r10b
                mov     rcx, rdi
                call    IofCompleteRequest
                jmp     loc_1406F3BBB
; ---------------------------------------------------------------------------

loc_1406F3B2E:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+1BC↑j
                or      [rbx+48h], r10w
                jmp     loc_1406F3A72
; ---------------------------------------------------------------------------

loc_1406F3B38:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+1C5↑j
                mov     ecx, 2
                cmp     [r12], cx
                jb      short loc_1406F3B57
                mov     rax, [r12+8]
                cmp     [rax+1], sil
                jnz     short loc_1406F3B57
                mov     [rbx+90h], cl
                jmp     short loc_1406F3B62
; ---------------------------------------------------------------------------

loc_1406F3B57:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+292↑j
                                        ; FsRtlNotifyFilterChangeDirectory+29D↑j
                mov     [rbx+90h], r10b
                movzx   ecx, r10w

loc_1406F3B62:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+2A5↑j
                cmp     [r12], cx
                jnz     loc_1406F3A82
                or      word ptr [rbx+48h], 10h
                jmp     loc_1406F3A82
; ---------------------------------------------------------------------------

loc_1406F3B77:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+BD↑j
                or      [r14+3], r10b
                mov     dword ptr [rdi+30h], 0C0000056h
                jmp     short loc_1406F3B1E
; ---------------------------------------------------------------------------

loc_1406F3B84:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+D0↑j
                test    dx, dx
                jnz     loc_1406F3986
                jmp     loc_1406F3B00
; ---------------------------------------------------------------------------

loc_1406F3B92:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+DD↑j
                test    dx, dx
                jnz     loc_1406F3993
                and     qword ptr [rbx+68h], 0
                mov     [rsp+78h+var_58], esi
                xor     r9d, r9d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1406F4230
                jmp     short loc_1406F3BBB
; ---------------------------------------------------------------------------

loc_1406F3BB4:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+FD↑j
                                        ; FsRtlNotifyFilterChangeDirectory+20F↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
;   } // starts at 1406F3917
; ---------------------------------------------------------------------------

loc_1406F3BBB:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+120↑j
                                        ; FsRtlNotifyFilterChangeDirectory+23E↑j ...
                add     dword ptr [r15+40h], 0FFFFFFFFh
                jnz     short loc_1406F3BCE
                mov     [r15+38h], rsi
                mov     rcx, r15
                call    ExReleaseFastMutexUnsafe

loc_1406F3BCE:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+310↑j
                mov     rbx, [rsp+78h+arg_48]
                test    rbx, rbx
                jz      short loc_1406F3BE4
                test    r12, r12
                jnz     loc_140825AA2

loc_1406F3BE4:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+329↑j
                                        ; FsRtlNotifyFilterChangeDirectory+34E↓j ...
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406F3BF5:                          ; CODE XREF: FsRtlNotifyFilterChangeDirectory+37↑j
                test    rdi, rdi
                jnz     loc_1406F38ED
                jmp     short loc_1406F3BE4
; } // starts at 1406F38B0
FsRtlNotifyFilterChangeDirectory endp
