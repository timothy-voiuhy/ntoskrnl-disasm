FsRtlPrepareMdlWriteDev proc near       ; DATA XREF: .pdata:000000014011C244↑o

var_98          = qword ptr -98h
var_90          = byte ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_68          = byte ptr -68h
var_67          = byte ptr -67h
var_66          = byte ptr -66h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9d
                mov     [rax+18h], r8d
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                mov     r15d, r8d
                mov     r13, rcx
                xor     r12d, r12d
                mov     esi, r12d
                mov     [rax-50h], r12
                mov     r14d, r12d
                mov     [rax-48h], r12
                mov     byte ptr [rax-68h], 1
                mov     [rsp+0B8h+var_67], r12b
                or      ebx, 0FFFFFFFFh
                cmp     dword ptr [rdx], 0FFFFFFFFh
                jnz     short loc_14088CAB5
                cmp     [rdx+4], ebx
                mov     dil, 1
                jz      short loc_14088CAB8

loc_14088CAB5:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+4B↑j
                mov     dil, r12b

loc_14088CAB8:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+53↑j
                mov     [rsp+0B8h+var_66], dil
                call    IoGetTopLevelIrp
                test    rax, rax
                jnz     loc_14088CE13
                xor     r9d, r9d
                mov     r8b, 1
                mov     edx, r15d
                mov     rcx, r13
                call    CcCanIWrite
                test    al, al
                jz      loc_14088CE13
                mov     ecx, [r13+50h]
                test    cl, 10h
                jnz     loc_14088CE13
                mov     rax, [rsp+0B8h+arg_28]
                mov     [rax], r12d
                test    r15d, r15d
                jnz     short loc_14088CB08
                mov     al, 1
                jmp     loc_14088CE15
; ---------------------------------------------------------------------------

loc_14088CB08:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+9F↑j
                mov     r15, [r13+18h]
                mov     [rsp+0B8h+var_40], r15
                mov     rax, gs:188h
                add     [rax+1E4h], bx
                mov     ebx, [rsp+0B8h+arg_10]
                test    dil, dil
                jnz     short loc_14088CB51
                mov     rax, [rsp+0B8h+arg_8]
                mov     rcx, [rax]
                add     rcx, rbx
                cmp     rcx, [r15+28h]
                jg      short loc_14088CB51
                mov     dl, 1
                mov     rcx, [r15+8]
                call    ExAcquireResourceSharedLite
                mov     r9b, 1
                jmp     short loc_14088CB5F
; ---------------------------------------------------------------------------

loc_14088CB51:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+CB↑j
                                        ; FsRtlPrepareMdlWriteDev+DF↑j
                mov     dl, 1
                mov     rcx, [r15+8]
                call    ExAcquireResourceExclusiveLite
                mov     r9b, sil

loc_14088CB5F:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+EF↑j
                test    dil, dil
                jz      short loc_14088CB6A
                mov     rdi, [r15+20h]
                jmp     short loc_14088CB75
; ---------------------------------------------------------------------------

loc_14088CB6A:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+102↑j
                mov     rax, [rsp+0B8h+arg_8]
                mov     rdi, [rax]

loc_14088CB75:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+108↑j
                add     rbx, rdi
                mov     [rsp+0B8h+var_60], rbx
                mov     [rsp+0B8h+var_58], rdi
                cmp     [r13+30h], r12
                jz      loc_14088CDFC
                mov     cl, [r15+5]
                test    cl, cl
                jz      loc_14088CDFC
                mov     rax, 7FFFFFFFFFFFFFFFh
                sub     rax, rdi
                mov     r8d, [rsp+0B8h+arg_10]
                cmp     rax, r8
                jl      loc_14088CDFC
                cmp     rbx, [r15+18h]
                jg      loc_14088CDFC
                test    r9b, r9b
                jz      short loc_14088CC2A
                cmp     rbx, [r15+28h]
                jle     short loc_14088CC2A
                mov     rcx, [r15+8]
                call    ExReleaseResourceLite
                mov     dl, 1
                mov     rcx, [r15+8]
                call    ExAcquireResourceExclusiveLite
                cmp     [rsp+0B8h+var_66], r12b
                jz      short loc_14088CC02
                mov     rdi, [r15+20h]
                mov     [rsp+0B8h+var_58], rdi
                mov     r8d, [rsp+0B8h+arg_10]
                lea     rbx, [rdi+r8]
                mov     [rsp+0B8h+var_60], rbx
                jmp     short loc_14088CC0A
; ---------------------------------------------------------------------------

loc_14088CC02:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+184↑j
                mov     r8d, [rsp+0B8h+arg_10]

loc_14088CC0A:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+1A0↑j
                cmp     [r13+30h], r12
                jz      loc_14088CDFC
                mov     cl, [r15+5]
                test    cl, cl
                jz      loc_14088CDFC
                cmp     rbx, [r15+18h]
                jg      loc_14088CDFC

loc_14088CC2A:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+163↑j
                                        ; FsRtlPrepareMdlWriteDev+169↑j
                cmp     cl, 2
                jnz     short loc_14088CC80
                mov     rdx, [rsp+0B8h+arg_30]
                mov     rax, [rdx+8]
                mov     rcx, [rax+50h]
                mov     rax, [rcx+8]
                mov     [rsp+0B8h+var_80], rdx
                mov     rcx, [rsp+0B8h+arg_28]
                mov     [rsp+0B8h+var_88], rcx
                mov     [rsp+0B8h+var_90], r12b
                mov     ecx, [rsp+0B8h+arg_18]
                mov     dword ptr [rsp+0B8h+var_98], ecx
                mov     r9b, 1
                mov     rdx, [rsp+0B8h+arg_8]
                mov     rcx, r13
                call    sub_1404079D0
                test    al, al
                jz      loc_14088CDFC

loc_14088CC80:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+1CD↑j
                mov     rax, [r15+20h]
                cmp     rbx, rax
                jle     short loc_14088CCCC
                mov     [rsp+0B8h+var_67], 1
                mov     rsi, rax
                mov     [rsp+0B8h+var_50], rax
                mov     r14, [r15+28h]
                mov     [rsp+0B8h+var_48], r14
                mov     eax, dword ptr [rsp+0B8h+var_60+4]
                cmp     [r15+24h], eax
                jz      short loc_14088CCC8
                mov     rcx, [r15+10h]
                test    rcx, rcx
                jz      short loc_14088CCC8
                mov     dl, 1
                call    ExAcquireResourceExclusiveLite
                mov     [r15+20h], rbx
                mov     rcx, [r15+10h]
                call    ExReleaseResourceLite
                jmp     short loc_14088CCCC
; ---------------------------------------------------------------------------

loc_14088CCC8:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+247↑j
                                        ; FsRtlPrepareMdlWriteDev+250↑j
                mov     [r15+20h], rbx

loc_14088CCCC:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+227↑j
                                        ; FsRtlPrepareMdlWriteDev+266↑j
                mov     ecx, 4
                call    IoSetTopLevelIrp
                nop

loc_14088CCD7:                          ; DATA XREF: .rdata:00000001400B5388↑o
;   __try { // __except at loc_14088CD27
                lea     rdx, [r15+28h]
                cmp     rdi, [rdx]
                jle     short loc_14088CCF4
                mov     r9b, 1
                lea     r8, [rsp+0B8h+var_58]
                mov     rcx, r13
                call    CcZeroData
                mov     [rsp+0B8h+var_68], al

loc_14088CCF4:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+27E↑j
                cmp     [rsp+0B8h+var_68], r12b
                jz      short loc_14088CD25
                mov     rax, [rsp+0B8h+arg_28]
                mov     [rsp+0B8h+var_98], rax
                mov     r9, [rsp+0B8h+arg_20]
                mov     r8d, [rsp+0B8h+arg_10]
                lea     rdx, [rsp+0B8h+var_58]
                mov     rcx, r13
                call    CcPrepareMdlWrite

loc_14088CD25:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+299↑j
                jmp     short loc_14088CD4B
;   } // starts at 14088CCD7
; ---------------------------------------------------------------------------

loc_14088CD27:                          ; DATA XREF: .rdata:00000001400B5388↑o
;   __except(loc_14088CE29) // owned by 14088CCD7
                mov     [rsp+0B8h+var_68], 0
                xor     r12d, r12d
                mov     r13, [rsp+0B8h+arg_0]
                mov     r15, [rsp+0B8h+var_40]
                mov     rbx, [rsp+0B8h+var_60]
                mov     rsi, [rsp+0B8h+var_50]
                mov     r14, [rsp+0B8h+var_48]

loc_14088CD4B:                          ; CODE XREF: FsRtlPrepareMdlWriteDev:loc_14088CD25↑j
                xor     ecx, ecx
                call    IoSetTopLevelIrp
                cmp     [rsp+0B8h+var_68], r12b
                jz      short loc_14088CDAD
                cmp     rbx, [r15+28h]
                jle     short loc_14088CD8C
                mov     eax, dword ptr [rsp+0B8h+var_60+4]
                cmp     [r15+2Ch], eax
                jz      short loc_14088CD88
                mov     rcx, [r15+10h]
                test    rcx, rcx
                jz      short loc_14088CD88
                mov     dl, 1
                call    ExAcquireResourceExclusiveLite
                mov     [r15+28h], rbx
                mov     rcx, [r15+10h]
                call    ExReleaseResourceLite
                jmp     short loc_14088CD8C
; ---------------------------------------------------------------------------

loc_14088CD88:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+307↑j
                                        ; FsRtlPrepareMdlWriteDev+310↑j
                mov     [r15+28h], rbx

loc_14088CD8C:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+2FD↑j
                                        ; FsRtlPrepareMdlWriteDev+326↑j
                bts     dword ptr [r13+50h], 0Ch
                cmp     [rsp+0B8h+var_67], r12b
                jz      short loc_14088CDDF
                mov     rax, [r13+28h]
                mov     rcx, [rax+8]
                mov     [rcx+8], rbx
                bts     dword ptr [r13+50h], 0Dh
                jmp     short loc_14088CDDF
; ---------------------------------------------------------------------------

loc_14088CDAD:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+2F7↑j
                cmp     [rsp+0B8h+var_67], r12b
                jz      short loc_14088CDDF
                mov     rcx, [r15+10h]
                test    rcx, rcx
                jz      short loc_14088CDD7
                mov     dl, 1
                call    ExAcquireResourceExclusiveLite
                mov     [r15+20h], rsi
                mov     [r15+28h], r14
                mov     rcx, [r15+10h]
                call    ExReleaseResourceLite
                jmp     short loc_14088CDDF
; ---------------------------------------------------------------------------

loc_14088CDD7:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+35B↑j
                mov     [r15+20h], rsi
                mov     [r15+28h], r14

loc_14088CDDF:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+337↑j
                                        ; FsRtlPrepareMdlWriteDev+34B↑j ...
                mov     rcx, [r15+8]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     al, [rsp+0B8h+var_68]
                jmp     short loc_14088CE15
; ---------------------------------------------------------------------------

loc_14088CDFC:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+126↑j
                                        ; FsRtlPrepareMdlWriteDev+132↑j ...
                mov     rcx, [r15+8]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_14088CE13:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+65↑j
                                        ; FsRtlPrepareMdlWriteDev+7E↑j ...
                xor     al, al

loc_14088CE15:                          ; CODE XREF: FsRtlPrepareMdlWriteDev+A3↑j
                                        ; FsRtlPrepareMdlWriteDev+39A↑j
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
                db 0CCh
; } // starts at 14088CA60
; ---------------------------------------------------------------------------

loc_14088CE29:                          ; DATA XREF: .rdata:00000001400B5388↑o
                                        ; .pdata:000000014011C244↑o ...
;   __except filter // owned by 14088CCD7
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
FsRtlPrepareMdlWriteDev endp
