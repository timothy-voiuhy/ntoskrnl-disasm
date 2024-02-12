CmUnRegisterCallback proc near          ; CODE XREF: sub_140883F0C+38↓p
                                        ; sub_14093D0C0+93↓p
                                        ; DATA XREF: ...

var_98          = qword ptr -98h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
arg_8           = byte ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; __unwind { // __C_specific_handler
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                mov     rbx, rcx
                mov     esi, 0C000000Dh
                mov     [rsp+0B8h+arg_18], esi
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+0B8h+var_50], xmm0
                mov     [rsp+0B8h+var_40], rax
                movups  [rsp+0B8h+var_60], xmm0
                and     [rsp+0B8h+var_80], rax
                mov     rax, gs:188h
                or      r12d, 0FFFFFFFFh
                add     [rax+1E4h], r12w
                xor     edx, edx
                lea     r14, qword_140C48358
                mov     rcx, r14
                call    ExAcquirePushLockExclusiveEx
                mov     r15d, 80000000h

loc_14086B4D7:                          ; CODE XREF: CmUnRegisterCallback+90↓j
                                        ; CmUnRegisterCallback+A7↓j
                xor     r8d, r8d
                lea     rdx, [rsp+0B8h+var_80]
                lea     rcx, qword_140C48360
                call    sub_1406E3344
                mov     rdi, rax
                mov     [rsp+0B8h+var_78], rax
                test    rax, rax
                jz      loc_14086B5CB
                cmp     [rax+18h], rbx
                jnz     short loc_14086B4D7
                mov     eax, [rax+10h]
                mov     [rsp+0B8h+arg_10], eax
                test    eax, eax
                jz      loc_14086B5EC
                test    r15d, eax
                jnz     short loc_14086B4D7
                lock or dword ptr [rdi+10h], 80000000h
                xor     edx, edx
                mov     rcx, r14
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_14086B539:                          ; CODE XREF: CmUnRegisterCallback+FC↓j
                mov     eax, [rdi+10h]
                mov     [rsp+0B8h+arg_10], eax
                cmp     eax, r15d
                jz      short loc_14086B56E
                and     [rsp+0B8h+var_98], 0
                mov     r9d, 4
                lea     r8, [rsp+0B8h+arg_10]
                lea     rdx, [rdi+10h]
                lea     rcx, qword_140C48378
                call    ExBlockOnAddressPushLock
                jmp     short loc_14086B539
; ---------------------------------------------------------------------------

loc_14086B56E:                          ; CODE XREF: CmUnRegisterCallback+D6↑j
                mov     rax, gs:188h
                add     [rax+1E4h], r12w
                xor     edx, edx
                mov     rcx, r14
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, [rdi]
                mov     rax, [rdi+8]
                cmp     [rcx+8], rdi
                jnz     loc_14086B7ED
                cmp     [rax], rdi
                jnz     loc_14086B7ED
                mov     [rax], rcx
                mov     [rcx+8], rax
                xor     edx, edx
                mov     rcx, r14
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                xor     esi, esi
                mov     [rsp+0B8h+arg_18], esi

loc_14086B5CB:                          ; CODE XREF: CmUnRegisterCallback+86↑j
                test    esi, esi
                jns     short loc_14086B62E
                xor     edx, edx
                mov     rcx, r14
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                jmp     loc_14086B8B7
; ---------------------------------------------------------------------------

loc_14086B5EC:                          ; CODE XREF: CmUnRegisterCallback+9E↑j
                mov     rdx, [rdi]
                mov     rax, [rdi+8]
                cmp     [rdx+8], rdi
                jnz     loc_14086B7ED
                cmp     [rax], rdi
                jnz     loc_14086B7ED
                mov     [rax], rdx
                mov     [rdx+8], rax
                xor     edx, edx
                mov     rcx, r14
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                xor     esi, esi
                mov     [rsp+0B8h+arg_18], esi

loc_14086B62E:                          ; CODE XREF: CmUnRegisterCallback+15D↑j
                lea     rax, [rsp+0B8h+var_60]
                mov     qword ptr [rsp+0B8h+var_60+8], rax
                lea     rax, [rsp+0B8h+var_60]
                mov     qword ptr [rsp+0B8h+var_60], rax
                xor     r15b, r15b
                mov     [rsp+0B8h+arg_8], r15b
                mov     rax, gs:188h
                add     [rax+1E4h], r12w
                xor     edx, edx
                lea     rcx, qword_140C48370
                call    ExAcquirePushLockExclusiveEx
                lea     r13, [rdi+40h]
                mov     rax, [r13+0]
                mov     rbx, rax
                mov     [rsp+0B8h+var_68], r13

loc_14086B67C:                          ; CODE XREF: CmUnRegisterCallback+2B2↓j
                mov     [rsp+0B8h+var_88], rax
                cmp     rbx, r13
                jz      loc_14086B727
                mov     r13, [rax]
                lea     r14, [rax-10h]
                mov     rcx, [r14+30h]
                call    ObReferenceObjectSafe
                test    al, al
                jz      short loc_14086B70D
                lea     rax, [r14+10h]
                mov     rdx, [rax]
                mov     rcx, [rax+8]
                cmp     [rdx+8], rax
                jnz     loc_14086B7ED
                cmp     [rcx], rax
                jnz     loc_14086B7ED
                mov     [rcx], rdx
                mov     [rdx+8], rcx
                mov     rcx, [r14]
                mov     rax, [r14+8]
                cmp     [rcx+8], r14
                jnz     loc_14086B7ED
                cmp     [rax], r14
                jnz     loc_14086B7ED
                mov     [rax], rcx
                mov     [rcx+8], rax
                mov     rax, qword ptr [rsp+0B8h+var_60+8]
                lea     rcx, [rsp+0B8h+var_60]
                cmp     [rax], rcx
                jnz     loc_14086B7ED
                lea     rcx, [rsp+0B8h+var_60]
                mov     [rbx], rcx
                mov     [rbx+8], rax
                mov     [rax], rbx
                mov     qword ptr [rsp+0B8h+var_60+8], rbx
                jmp     short loc_14086B718
; ---------------------------------------------------------------------------

loc_14086B70D:                          ; CODE XREF: CmUnRegisterCallback+22C↑j
                mov     r15b, 1
                mov     [rsp+0B8h+arg_8], r15b

loc_14086B718:                          ; CODE XREF: CmUnRegisterCallback+29B↑j
                mov     rax, r13
                mov     rbx, r13
                lea     r13, [rdi+40h]
                jmp     loc_14086B67C
; ---------------------------------------------------------------------------

loc_14086B727:                          ; CODE XREF: CmUnRegisterCallback+214↑j
                xor     edx, edx
                lea     rcx, qword_140C48370
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0

loc_14086B743:                          ; CODE XREF: CmUnRegisterCallback+378↓j
                lea     rcx, [rsp+0B8h+var_60]
                mov     rax, qword ptr [rsp+0B8h+var_60]
                cmp     rax, rcx
                jz      loc_14086B7F4
                mov     rcx, [rax]
                lea     rdx, [rsp+0B8h+var_60]
                cmp     [rax+8], rdx
                jnz     loc_14086B7ED
                cmp     [rcx+8], rax
                jnz     short loc_14086B7ED
                mov     qword ptr [rsp+0B8h+var_60], rcx
                lea     rdx, [rsp+0B8h+var_60]
                mov     [rcx+8], rdx
                lea     rbx, [rax-10h]
                mov     [rsp+0B8h+var_70], rbx
                mov     rax, [rbx+30h]
                mov     qword ptr [rsp+0B8h+var_50], rax
                mov     rax, [rbx+38h]
                mov     qword ptr [rsp+0B8h+var_50+8], rax

loc_14086B797:                          ; DATA XREF: .rdata:00000001400B3BC8↑o
;   __try { // __except at loc_14086B7B0
                mov     rax, [rdi+28h]
                lea     r8, [rsp+0B8h+var_50]
                mov     edx, 28h ; '('
                mov     rcx, [rdi+20h]
                call    sub_1404079D0
                jmp     short loc_14086B7D2
;   } // starts at 14086B797
; ---------------------------------------------------------------------------

loc_14086B7B0:                          ; DATA XREF: .rdata:00000001400B3BC8↑o
;   __except(1) // owned by 14086B797
                or      r12d, 0FFFFFFFFh
                mov     rdi, [rsp+0B8h+var_78]
                mov     esi, [rsp+0B8h+arg_18]
                mov     rbx, [rsp+0B8h+var_70]
                mov     r15b, [rsp+0B8h+arg_8]
                mov     r13, [rsp+0B8h+var_68]

loc_14086B7D2:                          ; CODE XREF: CmUnRegisterCallback+33E↑j
                mov     rcx, [rbx+30h]
                call    PsDereferenceSiloContext
                mov     edx, 63634D43h
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     loc_14086B743
; ---------------------------------------------------------------------------

loc_14086B7ED:                          ; CODE XREF: CmUnRegisterCallback+124↑j
                                        ; CmUnRegisterCallback+12D↑j ...
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_14086B7F4:                          ; CODE XREF: CmUnRegisterCallback+2E0↑j
                                        ; CmUnRegisterCallback+3F3↓j ...
                test    r15b, r15b
                jz      short loc_14086B86A
                mov     rax, gs:188h
                add     [rax+1E4h], r12w
                xor     edx, edx
                lea     rcx, qword_140C48370
                call    ExAcquirePushLockExclusiveEx
                mov     rbx, [rdi+40h]
                mov     [rsp+0B8h+var_88], rbx
                xor     edx, edx
                lea     rcx, qword_140C48370
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                cmp     rbx, r13
                jz      short loc_14086B865
                and     [rsp+0B8h+var_98], 0
                mov     r9d, 8
                lea     r8, [rsp+0B8h+var_88]
                lea     rdx, [rdi+40h]
                lea     rcx, qword_140C48378
                call    ExBlockOnAddressPushLock
                jmp     short loc_14086B7F4
; ---------------------------------------------------------------------------

loc_14086B865:                          ; CODE XREF: CmUnRegisterCallback+3D0↑j
                xor     r15b, r15b
                jmp     short loc_14086B7F4
; ---------------------------------------------------------------------------

loc_14086B86A:                          ; CODE XREF: CmUnRegisterCallback+387↑j
                mov     eax, r12d
                lock xadd cs:dword_140C5097C, eax
                add     eax, r12d
                jnz     short loc_14086B89D
                lea     rcx, xmmword_140CDB650
                call    ExpInterlockedFlushSList
                mov     rbx, rax

loc_14086B889:                          ; CODE XREF: CmUnRegisterCallback+42B↓j
                test    rbx, rbx
                jz      short loc_14086B89D
                mov     rcx, rbx
                mov     rbx, [rbx]
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_14086B889
; ---------------------------------------------------------------------------

loc_14086B89D:                          ; CODE XREF: CmUnRegisterCallback+408↑j
                                        ; CmUnRegisterCallback+41C↑j
                mov     rcx, [rdi+38h]
                test    rcx, rcx
                jz      short loc_14086B8AD
                xor     edx, edx
                call    ExFreePoolWithTag

loc_14086B8AD:                          ; CODE XREF: CmUnRegisterCallback+434↑j
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_14086B8B7:                          ; CODE XREF: CmUnRegisterCallback+177↑j
                mov     eax, esi
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
; } // starts at 14086B470
CmUnRegisterCallback endp
