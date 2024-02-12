FsRtlCopyRead   proc near               ; DATA XREF: .pdata:000000014011C1D8↑o

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_28          = byte ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     r13b, r9b
                mov     r14d, r8d
                mov     r12, rdx
                mov     r15, rcx
                call    IoGetTopLevelIrp
                xor     esi, esi
                test    rax, rax
                jz      short loc_14088BDFC

loc_14088BDF5:                          ; CODE XREF: FsRtlCopyRead+6D↓j
                                        ; FsRtlCopyRead+D7↓j ...
                xor     al, al
                jmp     loc_14088BFF2
; ---------------------------------------------------------------------------

loc_14088BDFC:                          ; CODE XREF: FsRtlCopyRead+33↑j
                test    r14d, r14d
                jz      loc_14088BFE2
                mov     rcx, [r12]
                mov     rax, 7FFFFFFFFFFFFFFFh
                sub     rax, rcx
                cmp     rax, r14
                jge     short loc_14088BE2F
                mov     rax, [rsp+78h+arg_30]
                mov     dword ptr [rax], 0C000000Dh
                mov     [rax+8], rsi
                jmp     short loc_14088BDF5
; ---------------------------------------------------------------------------

loc_14088BE2F:                          ; CODE XREF: FsRtlCopyRead+59↑j
                lea     rbx, [r14+rcx]
                mov     rdi, [r15+18h]
                mov     [rsp+78h+var_20], rdi
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                test    r13b, r13b
                jz      short loc_14088BE6A
                inc     dword ptr gs:2EC8h
                mov     sil, 1
                mov     dl, sil
                mov     rcx, [rdi+8]
                call    ExAcquireResourceSharedLite
                jmp     short loc_14088BE9F
; ---------------------------------------------------------------------------

loc_14088BE6A:                          ; CODE XREF: FsRtlCopyRead+8F↑j
                inc     dword ptr gs:2EC4h
                xor     edx, edx
                mov     rcx, [rdi+8]
                call    ExAcquireResourceSharedLite
                test    al, al
                jnz     short loc_14088BE9C
                mov     rcx, gs:188h
                call    sub_14021E1F0
                inc     dword ptr gs:8140h
                jmp     loc_14088BDF5
; ---------------------------------------------------------------------------

loc_14088BE9C:                          ; CODE XREF: FsRtlCopyRead+BF↑j
                mov     sil, 1

loc_14088BE9F:                          ; CODE XREF: FsRtlCopyRead+A8↑j
                cmp     qword ptr [r15+30h], 0
                jz      loc_14088BFBE
                mov     al, [rdi+5]
                test    al, al
                jz      loc_14088BFBE
                cmp     al, 2
                jnz     short loc_14088BF08
                mov     rdx, [rsp+78h+arg_38]
                mov     rax, [rdx+8]
                mov     rcx, [rax+50h]
                mov     rax, [rcx+8]
                mov     [rsp+78h+var_40], rdx
                mov     rcx, [rsp+78h+arg_30]
                mov     [rsp+78h+var_48], rcx
                mov     byte ptr [rsp+78h+var_50], sil
                mov     ecx, [rsp+78h+arg_20]
                mov     dword ptr [rsp+78h+var_58], ecx
                mov     r9b, r13b
                mov     r8d, r14d
                mov     rdx, r12
                mov     rcx, r15
                call    sub_1404079D0
                test    al, al
                jz      loc_14088BFBE

loc_14088BF08:                          ; CODE XREF: FsRtlCopyRead+F7↑j
                mov     rax, [rdi+20h]
                cmp     rbx, rax
                jle     short loc_14088BF33
                cmp     [r12], rax
                jl      short loc_14088BF2C
                mov     rbx, [rsp+78h+arg_30]
                mov     dword ptr [rbx], 0C0000011h
                and     qword ptr [rbx+8], 0
                jmp     short loc_14088BFA2
; ---------------------------------------------------------------------------

loc_14088BF2C:                          ; CODE XREF: FsRtlCopyRead+155↑j
                mov     r14d, eax
                sub     r14d, [r12]

loc_14088BF33:                          ; CODE XREF: FsRtlCopyRead+14F↑j
                mov     ecx, 4
                call    IoSetTopLevelIrp
                nop

loc_14088BF3E:                          ; DATA XREF: .rdata:00000001400B5450↑o
;   __try { // __except at loc_14088BF8E
                and     [rsp+78h+var_48], 0
                mov     rbx, [rsp+78h+arg_30]
                mov     [rsp+78h+var_50], rbx
                mov     rax, [rsp+78h+arg_28]
                mov     [rsp+78h+var_58], rax
                mov     r9b, r13b
                mov     r8d, r14d
                mov     rdx, r12
                mov     rcx, r15
                call    CcCopyReadEx
                mov     sil, al
                mov     [rsp+78h+var_28], al
                bts     dword ptr [r15+50h], 13h
                test    al, al
                jz      short loc_14088BF8C
                mov     rcx, [rbx+8]
                add     rcx, [r12]
                mov     [r15+68h], rcx

loc_14088BF8C:                          ; CODE XREF: FsRtlCopyRead+1BE↑j
                jmp     short loc_14088BF9B
;   } // starts at 14088BF3E
; ---------------------------------------------------------------------------

loc_14088BF8E:                          ; DATA XREF: .rdata:00000001400B5450↑o
;   __except(loc_14088C012) // owned by 14088BF3E
                xor     sil, sil
                mov     [rsp+78h+var_28], sil
                mov     rdi, [rsp+78h+var_20]

loc_14088BF9B:                          ; CODE XREF: FsRtlCopyRead:loc_14088BF8C↑j
                xor     ecx, ecx
                call    IoSetTopLevelIrp

loc_14088BFA2:                          ; CODE XREF: FsRtlCopyRead+16A↑j
                mov     rcx, [rdi+8]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     al, sil
                jmp     short loc_14088BFF2
; ---------------------------------------------------------------------------

loc_14088BFBE:                          ; CODE XREF: FsRtlCopyRead+E4↑j
                                        ; FsRtlCopyRead+EF↑j ...
                mov     rcx, [rdi+8]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                inc     dword ptr gs:2ECCh
                jmp     loc_14088BDF5
; ---------------------------------------------------------------------------

loc_14088BFE2:                          ; CODE XREF: FsRtlCopyRead+3F↑j
                mov     rax, [rsp+78h+arg_30]
                mov     [rax], esi
                mov     [rax+8], rsi
                mov     al, 1

loc_14088BFF2:                          ; CODE XREF: FsRtlCopyRead+37↑j
                                        ; FsRtlCopyRead+1FC↑j
                lea     r11, [rsp+78h+var_18]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     r12, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                align 2
; } // starts at 14088BDC0

loc_14088C012:                          ; DATA XREF: .rdata:00000001400B5450↑o
                                        ; .pdata:000000014011C1D8↑o ...
;   __except filter // owned by 14088BF3E
                push    rbp
                sub     rsp, 50h
                mov     rbp, rdx
                mov     rax, [rcx]
                mov     ecx, [rax]
                call    FsRtlIsNtstatusExpected
                xor     ecx, ecx
                test    al, al
                setnz   cl
                mov     eax, ecx
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlCopyRead   endp

algn_14088C035:                         ; DATA XREF: .pdata:000000014011C1E4↑o
                align 20h
; Exported entry 409. FsRtlCopyWrite

; =============== S U B R O U T I N E =======================================


