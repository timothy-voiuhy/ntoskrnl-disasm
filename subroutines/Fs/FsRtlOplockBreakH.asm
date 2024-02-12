FsRtlOplockBreakH proc near             ; DATA XREF: .pdata:0000000140105018↑o

var_98          = dword ptr -98h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = dword ptr -48h
var_40          = qword ptr -40h
arg_0           = byte ptr  8
arg_8           = byte ptr  10h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001407E8228 SIZE 0000002A BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                mov     r14d, r8d
                mov     r15, rdx
                mov     rdi, [rcx]
                mov     [rsp+0B8h+var_40], rdi
                mov     rsi, [rdx+0B8h]
                mov     byte ptr [rax+8], 0
                xor     ebx, ebx
                mov     [rax+10h], bl
                test    rdi, rdi
                jnz     short loc_1406F88D2

loc_1406F88BC:                          ; CODE XREF: FsRtlOplockBreakH+142↓j
                                        ; FsRtlOplockBreakH+154↓j
                mov     eax, ebx
                add     rsp, 80h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406F88D2:                          ; CODE XREF: FsRtlOplockBreakH+3A↑j
                                        ; DATA XREF: .rdata:0000000140080A40↑o
;   __try { // __finally(loc_1407E8228)
                mov     rcx, r15
                call    sub_1403426F8
                mov     ebx, eax
                mov     [rsp+0B8h+var_48], eax
                test    eax, eax
                jnz     loc_1406F89BA
                cmp     [rsi], al
                jnz     short loc_1406F890B
                mov     rax, [rsi+8]
                test    dword ptr [rax+10h], 0FFEFFE7Fh
                jz      loc_1406F89B4
                test    dword ptr [rsi+10h], 10000h
                jz      short loc_1406F890B
                bts     r14d, 1Ch

loc_1406F890B:                          ; CODE XREF: FsRtlOplockBreakH+6A↑j
                                        ; FsRtlOplockBreakH+84↑j
                mov     r12, [rsp+0B8h+arg_28]
                mov     r13, [rsp+0B8h+arg_20]

loc_1406F891B:                          ; CODE XREF: FsRtlOplockBreakH+12C↓j
                xor     ebx, ebx
                mov     [rsp+0B8h+arg_8], bl
                cmp     [rsp+0B8h+arg_0], bl
                jnz     short loc_1406F8941
                mov     rcx, [rdi+98h]
                call    ExAcquireFastMutexUnsafe
                mov     [rsp+0B8h+arg_0], 1

loc_1406F8941:                          ; CODE XREF: FsRtlOplockBreakH+AB↑j
                lea     rax, [rsp+0B8h+arg_8]
                mov     [rsp+0B8h+var_50], rax
                lea     rax, [rsp+0B8h+arg_0]
                mov     [rsp+0B8h+var_58], rax
                mov     [rsp+0B8h+var_60], rbx
                mov     [rsp+0B8h+var_68], rbx
                mov     [rsp+0B8h+var_70], rbx
                mov     [rsp+0B8h+var_78], r12
                mov     [rsp+0B8h+var_80], r13
                mov     rax, [rsp+0B8h+arg_18]
                mov     [rsp+0B8h+var_88], rax
                mov     [rsp+0B8h+var_90], 2000h
                mov     [rsp+0B8h+var_98], ebx
                mov     r9d, r14d
                mov     r8, r15
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_14024DBF0
                mov     ebx, eax
                mov     [rsp+0B8h+var_48], eax
                cmp     [rsp+0B8h+arg_8], 0
                jnz     loc_1406F891B
                jmp     short loc_1406F89BA
; ---------------------------------------------------------------------------

loc_1406F89B4:                          ; CODE XREF: FsRtlOplockBreakH+77↑j
                xor     ebx, ebx
                mov     [rsp+0B8h+var_48], ebx
;   } // starts at 1406F88D2

loc_1406F89BA:                          ; CODE XREF: FsRtlOplockBreakH+62↑j
                                        ; FsRtlOplockBreakH+132↑j
                                        ; DATA XREF: ...
                cmp     [rsp+0B8h+arg_0], 0
                jz      loc_1406F88BC
                mov     rcx, [rdi+98h]
                call    ExReleaseFastMutexUnsafe
                jmp     loc_1406F88BC
; } // starts at 1406F8880
FsRtlOplockBreakH endp
