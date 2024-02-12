FsRtlMdlReadDev proc near               ; DATA XREF: .pdata:000000014011C220↑o

var_58          = qword ptr -58h
var_50          = byte ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

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
                mov     r13d, r9d
                mov     esi, r8d
                mov     r12, rdx
                mov     r15, rcx
                mov     r14b, 1
                call    IoGetTopLevelIrp
                test    rax, rax
                jnz     loc_14088C999
                test    esi, esi
                jnz     short loc_14088C855
                mov     rax, [rsp+78h+arg_28]
                and     [rax], esi
                and     qword ptr [rax+8], 0

loc_14088C84D:                          ; CODE XREF: FsRtlMdlReadDev+128↓j
                mov     al, r14b
                jmp     loc_14088C99B
; ---------------------------------------------------------------------------

loc_14088C855:                          ; CODE XREF: FsRtlMdlReadDev+3C↑j
                mov     rbx, rsi
                add     rbx, [r12]
                mov     rdi, [r15+18h]
                mov     [rsp+78h+var_28], rdi
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                inc     dword ptr gs:8104h
                mov     dl, r14b
                mov     rcx, [rdi+8]
                call    ExAcquireResourceSharedLite
                cmp     qword ptr [r15+30h], 0
                jz      loc_14088C97A
                mov     al, [rdi+5]
                test    al, al
                jz      loc_14088C97A
                cmp     al, 2
                jnz     short loc_14088C8EF
                mov     rdx, [rsp+78h+arg_30]
                mov     rax, [rdx+8]
                mov     rcx, [rax+50h]
                mov     r10, [rcx+8]
                mov     [rsp+78h+var_40], rdx
                mov     rax, [rsp+78h+arg_28]
                mov     [rsp+78h+var_48], rax
                mov     [rsp+78h+var_50], r14b
                mov     dword ptr [rsp+78h+var_58], r13d
                mov     r9b, r14b
                mov     r8d, esi
                mov     rdx, r12
                mov     rcx, r15
                mov     rax, r10
                call    sub_1404079D0
                test    al, al
                jz      loc_14088C97A

loc_14088C8EF:                          ; CODE XREF: FsRtlMdlReadDev+A1↑j
                mov     rax, [rdi+20h]
                cmp     rbx, rax
                jle     short loc_14088C933
                cmp     [r12], rax
                jl      short loc_14088C92D
                mov     rax, [rsp+78h+arg_28]
                mov     dword ptr [rax], 0C0000011h
                and     qword ptr [rax+8], 0

loc_14088C911:                          ; CODE XREF: FsRtlMdlReadDev+178↓j
                mov     rcx, [rdi+8]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                jmp     loc_14088C84D
; ---------------------------------------------------------------------------

loc_14088C92D:                          ; CODE XREF: FsRtlMdlReadDev+FC↑j
                mov     esi, eax
                sub     esi, [r12]

loc_14088C933:                          ; CODE XREF: FsRtlMdlReadDev+F6↑j
                mov     ecx, 4
                call    IoSetTopLevelIrp
                nop

loc_14088C93E:                          ; DATA XREF: .rdata:00000001400B53CC↑o
;   __try { // __except at loc_14088C969
                mov     rax, [rsp+78h+arg_28]
                mov     [rsp+78h+var_58], rax
                mov     r9, [rsp+78h+arg_20]
                mov     r8d, esi
                mov     rdx, r12
                mov     rcx, r15
                call    CcMdlRead
                bts     dword ptr [r15+50h], 13h
                jmp     short loc_14088C971
;   } // starts at 14088C93E
; ---------------------------------------------------------------------------

loc_14088C969:                          ; DATA XREF: .rdata:00000001400B53CC↑o
;   __except(loc_14088C9BB) // owned by 14088C93E
                xor     r14b, r14b
                mov     rdi, [rsp+78h+var_28]

loc_14088C971:                          ; CODE XREF: FsRtlMdlReadDev+167↑j
                xor     ecx, ecx
                call    IoSetTopLevelIrp
                jmp     short loc_14088C911
; ---------------------------------------------------------------------------

loc_14088C97A:                          ; CODE XREF: FsRtlMdlReadDev+8E↑j
                                        ; FsRtlMdlReadDev+99↑j ...
                mov     rcx, [rdi+8]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                inc     dword ptr gs:8108h

loc_14088C999:                          ; CODE XREF: FsRtlMdlReadDev+34↑j
                xor     al, al

loc_14088C99B:                          ; CODE XREF: FsRtlMdlReadDev+50↑j
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
                db 0CCh
; } // starts at 14088C800
; ---------------------------------------------------------------------------

loc_14088C9BB:                          ; DATA XREF: .rdata:00000001400B53CC↑o
                                        ; .pdata:000000014011C220↑o ...
;   __except filter // owned by 14088C93E
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
FsRtlMdlReadDev endp
