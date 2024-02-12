FsRtlOplockBreakToNoneEx proc near      ; CODE XREF: FsRtlOplockBreakToNone+4B↑p
                                        ; DATA XREF: .pdata:00000001400F13E0↑o

var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = byte ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_0           = byte ptr  8
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                mov     r13, r9
                mov     edi, r8d
                mov     r14, rdx
                mov     rbx, [rcx]
                mov     [rsp+0A8h+var_30], rbx
                xor     ecx, ecx
                mov     [rax+8], cl
                mov     [rax-38h], cl

loc_1404F03D4:                          ; DATA XREF: .rdata:00000001400B57D0↑o
;   __try { // __finally(loc_1404F0505)
                test    dil, 10h
                jz      short loc_1404F03E4
                mov     esi, 0C000000Dh
                jmp     loc_1404F04D0
; ---------------------------------------------------------------------------

loc_1404F03E4:                          ; CODE XREF: FsRtlOplockBreakToNoneEx+38↑j
                or      edi, 8
                mov     r15, [rsp+0A8h+arg_28]
                mov     r12, [rsp+0A8h+arg_20]

loc_1404F03F7:                          ; CODE XREF: FsRtlOplockBreakToNoneEx+12A↓j
                mov     [rsp+0A8h+var_38], cl
                cmp     [rsp+0A8h+arg_0], cl
                jnz     short loc_1404F041A
                mov     rcx, [rbx+98h]
                call    ExAcquireFastMutexUnsafe
                mov     [rsp+0A8h+arg_0], 1
                xor     ecx, ecx

loc_1404F041A:                          ; CODE XREF: FsRtlOplockBreakToNoneEx+62↑j
                mov     rdx, [r14+0B8h]
                lea     rax, [rsp+0A8h+var_38]
                mov     [rsp+0A8h+var_48], rax
                lea     rax, [rsp+0A8h+arg_0]
                mov     [rsp+0A8h+var_50], rax
                mov     [rsp+0A8h+var_58], rcx
                mov     [rsp+0A8h+var_60], rcx
                mov     [rsp+0A8h+var_68], rcx
                mov     [rsp+0A8h+var_70], r15
                mov     [rsp+0A8h+var_78], r12
                mov     [rsp+0A8h+var_80], r13
                mov     r9d, edi
                mov     r8, r14
                mov     rcx, rbx
                call    sub_14036D0E8
                mov     esi, eax
                xor     ecx, ecx
                test    eax, eax
                jnz     short loc_1404F04C6
                mov     rdx, [r14+0B8h]
                lea     rax, [rsp+0A8h+var_38]
                mov     [rsp+0A8h+var_40], rax
                lea     rax, [rsp+0A8h+arg_0]
                mov     [rsp+0A8h+var_48], rax
                mov     [rsp+0A8h+var_50], rcx
                mov     [rsp+0A8h+var_58], rcx
                mov     [rsp+0A8h+var_60], rcx
                mov     [rsp+0A8h+var_68], r15
                mov     [rsp+0A8h+var_70], r12
                mov     [rsp+0A8h+var_78], r13
                mov     dword ptr [rsp+0A8h+var_80], 7000h
                mov     [rsp+0A8h+var_88], ecx
                mov     r9d, edi
                mov     r8, r14
                mov     rcx, rbx
                call    sub_14024DBF0
                mov     esi, eax
                xor     ecx, ecx

loc_1404F04C6:                          ; CODE XREF: FsRtlOplockBreakToNoneEx+CA↑j
                cmp     [rsp+0A8h+var_38], cl
                jnz     loc_1404F03F7
;   } // starts at 1404F03D4

loc_1404F04D0:                          ; CODE XREF: FsRtlOplockBreakToNoneEx+3F↑j
                                        ; DATA XREF: .rdata:00000001400B57D0↑o
                cmp     [rsp+0A8h+arg_0], cl
                jz      short loc_1404F04E5
                mov     rcx, [rbx+98h]
                call    ExReleaseFastMutexUnsafe

loc_1404F04E5:                          ; CODE XREF: FsRtlOplockBreakToNoneEx+137↑j
                mov     eax, esi
                lea     r11, [rsp+0A8h+var_28]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404F03A0
; ---------------------------------------------------------------------------

loc_1404F0505:                          ; DATA XREF: .rdata:00000001400B57D0↑o
                                        ; .pdata:00000001400F13E0↑o ...
;   __finally // owned by 1404F03D4
                push    rbp
                sub     rsp, 70h
                mov     rbp, rdx
                cmp     byte ptr [rbp+0B0h], 0
                jz      short loc_1404F0528
                mov     rcx, [rbp+78h]
                mov     rcx, [rcx+98h]
                call    ExReleaseFastMutexUnsafe
                nop

loc_1404F0528:                          ; CODE XREF: FsRtlOplockBreakToNoneEx+175↑j
                add     rsp, 70h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlOplockBreakToNoneEx endp
