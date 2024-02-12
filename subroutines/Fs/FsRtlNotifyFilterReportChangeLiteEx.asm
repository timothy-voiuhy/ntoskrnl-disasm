FsRtlNotifyFilterReportChangeLiteEx proc near
                                        ; CODE XREF: FsRtlNotifyFilterReportChangeLite+45↓p
                                        ; DATA XREF: .rdata:000000014007FBD8↑o ...

var_B8          = dword ptr -0B8h
var_B0          = dword ptr -0B0h
var_A8          = byte ptr -0A8h
var_A7          = byte ptr -0A7h
var_A6          = byte ptr -0A6h
var_A4          = dword ptr -0A4h
var_A0          = dword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = byte ptr  48h
arg_48          = qword ptr  50h

; FUNCTION CHUNK AT 00000001407E806F SIZE 00000067 BYTES
; FUNCTION CHUNK AT 0000000140825ABA SIZE 00000031 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+20h], r9
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0A0h
                mov     r13, r9
                mov     rdi, rdx
                mov     r15, rcx
                xor     esi, esi
                mov     [rsp+0D8h+var_90], esi
                cmp     [rdx], rdx
                jnz     short loc_1406F3C5D

loc_1406F3C49:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+5D↓j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+567↓j ...
                add     rsp, 0A0h
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

loc_1406F3C5D:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+37↑j
                mov     rax, [rsp+0D8h+arg_48]
                test    rax, rax
                jz      short loc_1406F3C6F
                cmp     dword ptr [rax], 50h ; 'P'
                jb      short loc_1406F3C49

loc_1406F3C6F:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+58↑j
                cmp     [rcx], rsi
                jz      loc_140825ABA

loc_1406F3C78:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+131EC5↓j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+131ED6↓j
                mov     rbx, gs:188h
                mov     rax, [r15]
                cmp     rbx, [rax+38h]
                jz      short loc_1406F3C9C
                mov     rcx, rax
                call    ExAcquireFastMutexUnsafe
                mov     rax, [r15]
                mov     [rax+38h], rbx
                mov     rax, [r15]

loc_1406F3C9C:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+78↑j
                inc     dword ptr [rax+40h]

loc_1406F3C9F:                          ; DATA XREF: .rdata:000000014007FBC4↑o
;   __try { // __finally(loc_1407E80A2)
                mov     r12, [rdi]

loc_1406F3CA2:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+EB↓j
                mov     [rsp+0D8h+var_68], r12
                mov     [rsp+0D8h+var_88], r12
                cmp     r12, rdi
                jz      loc_1406F416B
                lea     rdi, [r12-20h]
                mov     [rsp+0D8h+var_70], rdi
                mov     [rsp+0D8h+var_50], rdi
                lea     rbx, [rdi+48h]
                movzx   ecx, word ptr [rbx]
                mov     r14b, cl
                shr     r14b, 7
                and     r14b, 1
                mov     [rsp+0D8h+var_A7], r14b
                mov     [rsp+0D8h+var_A6], r14b
                mov     eax, [rdi+4Ch]
                test    [rsp+0D8h+arg_20], eax
                jnz     short loc_1406F3CFD

loc_1406F3CEF:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+FA↓j
                                        ; FsRtlNotifyFilterReportChangeLiteEx:loc_1406F402D↓j ...
                mov     r12, [r12]
                mov     rdi, [rsp+0D8h+arg_8]
                jmp     short loc_1406F3CA2
; ---------------------------------------------------------------------------

loc_1406F3CFD:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+DD↑j
                test    [rsp+0D8h+arg_40], 1
                jnz     short loc_1406F3D19
                test    cl, 1
                jz      short loc_1406F3CEF
                mov     rax, [rdi+10h]
                test    rax, rax
                jnz     loc_1406F40D7

loc_1406F3D19:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+F5↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+4E4↓j
                mov     rax, [rdi+40h]
                test    rax, rax
                jz      short loc_1406F3D33
                mov     rdx, [rsp+0D8h+arg_38]
                test    rdx, rdx
                jnz     loc_1406F40F9

loc_1406F3D33:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+110↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+4FA↓j
                movzx   ecx, word ptr [rbx]
                mov     edx, 2
                test    dl, cl
                jnz     loc_1406F3FFE
                mov     r12d, [rdi+60h]
                test    r12d, r12d
                jz      loc_1406F4161
                mov     [rsp+0D8h+var_A4], esi
                mov     rdx, rsi
                mov     [rsp+0D8h+var_58], rdx
                mov     eax, [rdi+64h]
                test    eax, eax
                jnz     loc_1406F4086
                lea     rax, [rdi+30h]
                mov     r8, [rax]
                cmp     r8, rax
                jz      short loc_1406F3D90
                lea     rdx, [r8-0A8h]
                mov     [rsp+0D8h+var_58], rdx
                mov     rax, [rdx+0B8h]
                mov     r12d, [rax+8]

loc_1406F3D90:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+164↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+479↓j
                mov     [rsp+0D8h+var_A4], r12d
                mov     al, r14b
                neg     al
                sbb     r14d, r14d
                and     r14d, 48h
                add     r14d, 0Ch
                mov     [rsp+0D8h+var_A0], r14d
                mov     rax, [rsp+0D8h+arg_10]
                movzx   eax, word ptr [rax]
                add     r14d, eax
                mov     [rsp+0D8h+var_A0], r14d
                test    r13, r13
                jnz     loc_1406F410F

loc_1406F3DC6:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+510↓j
                mov     r13d, [rdi+68h]
                add     r13d, 3
                and     r13d, 0FFFFFFFCh
                mov     [rsp+0D8h+var_80], r13d
                cmp     r14d, r12d
                ja      loc_1406F4032
                lea     eax, [r14+r13]
                cmp     eax, r12d
                ja      loc_1406F4032
                mov     rbx, rsi
                mov     [rsp+0D8h+var_98], rbx
                mov     rax, [rdi+58h]
                test    rax, rax
                jnz     loc_1406F408E
                test    rdx, rdx
                jz      short loc_1406F3E21
                mov     rax, [rdx+18h]
                test    rax, rax
                jnz     loc_1406F40C2
                mov     rcx, [rdx+8]
                test    rcx, rcx
                jnz     loc_1406F4125

loc_1406F3E21:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+1F5↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+4A1↓j ...
                cmp     [rdi+58h], rsi
                jnz     loc_1406F407C
                mov     [rsp+0D8h+var_A8], sil

loc_1406F3E30:                          ; DATA XREF: .rdata:000000014007FBA4↑o
;     __try { // __except at loc_1406F3E75
                mov     r8d, r12d
                mov     edx, 1
                mov     rcx, [rdi+78h]
                call    PsChargePoolQuota
                mov     [rsp+0D8h+var_A8], 1
                mov     r8d, 4E725346h
                mov     edx, r12d
                mov     ecx, 11h
                call    ExAllocatePoolWithTag
                mov     [rdi+58h], rax
                mov     [rdi+50h], rax
                mov     [rdi+64h], r12d
                mov     rbx, [rdi+58h]
                mov     [rsp+0D8h+var_98], rbx
                mov     r12, [rsp+0D8h+var_88]
                jmp     short loc_1406F3EB9
;     } // starts at 1406F3E30
; ---------------------------------------------------------------------------

loc_1406F3E75:                          ; DATA XREF: .rdata:000000014007FBA4↑o
;   __except(loc_1407E806F) // owned by 1406F3E30
                mov     rdi, [rsp+0D8h+var_70]
                cmp     [rsp+0D8h+var_A8], 0
                jz      short loc_1406F3E8E
                mov     edx, [rsp+0D8h+var_A4]
                mov     rcx, [rdi+78h]
                call    PsReturnProcessPagedPoolQuota

loc_1406F3E8E:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+26F↑j
                or      word ptr [rdi+48h], 2
                xor     esi, esi
                mov     r15, [rsp+0D8h+arg_0]
                mov     r12, [rsp+0D8h+var_68]
                mov     r14d, [rsp+0D8h+var_A0]
                mov     r13d, [rsp+0D8h+var_80]
                mov     al, [rsp+0D8h+var_A6]
                mov     [rsp+0D8h+var_A7], al
                mov     rbx, [rsp+0D8h+var_98]

loc_1406F3EB9:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+263↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+471↓j
                                        ; DATA XREF: ...
;     __try { // __except at loc_1406F3FC7
                test    rbx, rbx
                jz      loc_1406F3FC0
                mov     ecx, [rdi+68h]
                cmp     r13d, ecx
                ja      short loc_1406F3F1D

loc_1406F3ECA:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+31E↓j
                mov     [rbx], esi
                mov     eax, [rsp+0D8h+arg_28]
                mov     [rbx+4], eax
                cmp     [rsp+0D8h+var_A7], sil
                jnz     short loc_1406F3F30
                lea     eax, [r14-0Ch]
                mov     [rbx+8], eax
                add     rbx, 0Ch

loc_1406F3EE8:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+37F↓j
                mov     rax, [rsp+0D8h+arg_10]
                movzx   r8d, word ptr [rax]
                mov     rdx, [rax+8]
                mov     rcx, rbx
                call    memmove
                mov     rdx, [rsp+0D8h+arg_18]
                test    rdx, rdx
                jnz     loc_1406F3F94

loc_1406F3F11:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+3AB↓j
                lea     eax, [r14+r13]
                mov     [rdi+68h], eax
                jmp     loc_1406F3FC0
; ---------------------------------------------------------------------------

loc_1406F3F1D:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+2B8↑j
                mov     r8d, r13d
                sub     r8d, ecx
                add     rcx, [rdi+58h]
                xor     edx, edx
                call    memset
                jmp     short loc_1406F3ECA
; ---------------------------------------------------------------------------

loc_1406F3F30:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+2CB↑j
                mov     rcx, [rsp+0D8h+arg_48]
                mov     rax, [rcx+8]
                mov     [rbx+8], rax
                mov     rax, [rcx+10h]
                mov     [rbx+10h], rax
                mov     rax, [rcx+18h]
                mov     [rbx+18h], rax
                mov     rax, [rcx+20h]
                mov     [rbx+20h], rax
                mov     rax, [rcx+28h]
                mov     [rbx+28h], rax
                mov     rax, [rcx+30h]
                mov     [rbx+30h], rax
                mov     eax, [rcx+38h]
                mov     [rbx+38h], eax
                mov     eax, [rcx+3Ch]
                mov     [rbx+3Ch], eax
                mov     rax, [rcx+40h]
                mov     [rbx+40h], rax
                mov     rax, [rcx+48h]
                mov     [rbx+48h], rax
                lea     eax, [r14-54h]
                mov     [rbx+50h], eax
                add     rbx, 54h ; 'T'
                jmp     loc_1406F3EE8
; ---------------------------------------------------------------------------

loc_1406F3F94:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+2FB↑j
                mov     rax, [rsp+0D8h+arg_10]
                movzx   eax, word ptr [rax]
                add     rbx, rax
                mov     eax, 3Ah ; ':'
                mov     [rbx], ax
                lea     rcx, [rbx+2]
                movzx   r8d, word ptr [rdx]
                mov     rdx, [rdx+8]
                call    memmove
                jmp     loc_1406F3F11
; ---------------------------------------------------------------------------

loc_1406F3FC0:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+2AC↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+308↑j
                mov     edx, 2
                jmp     short loc_1406F3FE3
;     } // starts at 1406F3EB9
; ---------------------------------------------------------------------------

loc_1406F3FC7:                          ; DATA XREF: .rdata:000000014007FBB4↑o
;   __except(1) // owned by 1406F3EB9
                mov     rdi, [rsp+0D8h+var_70]
                or      word ptr [rdi+48h], 2
                xor     esi, esi
                lea     edx, [rsi+2]
                mov     r15, [rsp+0D8h+arg_0]
                mov     r12, [rsp+0D8h+var_68]

loc_1406F3FE3:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+3B5↑j
                mov     rbx, [rsp+0D8h+var_50]
                add     rbx, 48h ; 'H'
                movzx   ecx, word ptr [rbx]

loc_1406F3FF2:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+432↓j
                test    dl, cl
                jnz     short loc_1406F4044

loc_1406F3FF6:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+438↓j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+467↓j
                mov     r13, [rsp+0D8h+arg_18]

loc_1406F3FFE:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+12D↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+556↓j
                movzx   eax, word ptr [rbx]
                cmp     [rsp+0D8h+arg_28], 4
                jz      loc_1406F40B6
                mov     ecx, 0FFF7h
                and     ax, cx
                mov     [rbx], ax
                lea     rax, [rdi+30h]
                cmp     [rax], rax
                jz      short loc_1406F402D
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1406F4194

loc_1406F402D:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+411↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+4AD↓j
                jmp     loc_1406F3CEF
; ---------------------------------------------------------------------------

loc_1406F4032:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+1CA↑j
                                        ; FsRtlNotifyFilterReportChangeLiteEx+1D7↑j
                mov     edx, 2
                or      cx, dx
                mov     [rbx], cx
                mov     r12, [rsp+0D8h+var_88]
                jmp     short loc_1406F3FF2
; ---------------------------------------------------------------------------

loc_1406F4044:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+3E4↑j
                cmp     [rdi+58h], rsi
                jz      short loc_1406F3FF6
                cmp     [rdi+50h], rsi
                jz      short loc_1406F4067
                mov     edx, [rdi+64h]
                mov     rcx, [rdi+78h]
                call    PsReturnProcessPagedPoolQuota
                xor     edx, edx
                mov     rcx, [rdi+50h]
                call    ExFreePoolWithTag

loc_1406F4067:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+43E↑j
                mov     [rdi+58h], rsi
                mov     [rdi+50h], rsi
                and     qword ptr [rdi+68h], 0
                mov     [rdi+64h], esi
                jmp     loc_1406F3FF6
; ---------------------------------------------------------------------------

loc_1406F407C:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+215↑j
                mov     r12, [rsp+0D8h+var_88]
                jmp     loc_1406F3EB9
; ---------------------------------------------------------------------------

loc_1406F4086:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+154↑j
                mov     r12d, eax
                jmp     loc_1406F3D90
; ---------------------------------------------------------------------------

loc_1406F408E:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+1EC↑j
                mov     ecx, [rdi+6Ch]
                lea     rdx, [rax+rcx]
                mov     [rsp+0D8h+var_98], rdx
                mov     eax, r13d
                sub     eax, ecx
                mov     [rdx], eax
                mov     [rdi+6Ch], r13d
                mov     ebx, r13d
                add     rbx, [rdi+58h]
                mov     [rsp+0D8h+var_98], rbx
                jmp     loc_1406F3E21
; ---------------------------------------------------------------------------

loc_1406F40B6:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+3F9↑j
                or      ax, 8
                mov     [rbx], ax
                jmp     loc_1406F402D
; ---------------------------------------------------------------------------

loc_1406F40C2:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+1FE↑j
                mov     rbx, rax
                mov     [rsp+0D8h+var_98], rax
                mov     [rdi+58h], rax

loc_1406F40CE:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+54C↓j
                mov     [rdi+64h], r12d
                jmp     loc_1406F3E21
; ---------------------------------------------------------------------------

loc_1406F40D7:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+103↑j
                mov     r8, [rdi+18h]
                mov     rdx, [rsp+0D8h+arg_30]
                mov     rcx, [rdi+8]
                call    sub_1404079D0
                test    al, al
                jz      loc_1406F3CEF
                jmp     loc_1406F3D19
; ---------------------------------------------------------------------------

loc_1406F40F9:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+11D↑j
                mov     rcx, [rdi+8]
                call    sub_1404079D0
                test    al, al
                jz      loc_1406F3CEF
                jmp     loc_1406F3D33
; ---------------------------------------------------------------------------

loc_1406F410F:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+1B0↑j
                movzx   eax, word ptr [r13+0]
                add     r14d, 2
                add     r14d, eax
                mov     [rsp+0D8h+var_A0], r14d
                jmp     loc_1406F3DC6
; ---------------------------------------------------------------------------

loc_1406F4125:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+20B↑j
                test    byte ptr [rcx+0Ah], 5
                jz      short loc_1406F4136
                mov     rbx, [rcx+18h]
                mov     [rsp+0D8h+var_98], rbx
                jmp     short loc_1406F4158
; ---------------------------------------------------------------------------

loc_1406F4136:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+519↑j
                mov     [rsp+0D8h+var_B0], 40000010h
                mov     [rsp+0D8h+var_B8], esi
                xor     r9d, r9d
                xor     edx, edx
                lea     r8d, [r9+1]
                call    MmMapLockedPagesSpecifyCache
                mov     rbx, rax
                mov     [rsp+0D8h+var_98], rax

loc_1406F4158:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+524↑j
                mov     [rdi+58h], rbx
                jmp     loc_1406F40CE
; ---------------------------------------------------------------------------

loc_1406F4161:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+13A↑j
                mov     r12, [rsp+0D8h+var_88]
                jmp     loc_1406F3FFE
;   } // starts at 1406F3C9F
; ---------------------------------------------------------------------------

loc_1406F416B:                          ; CODE XREF: FsRtlNotifyFilterReportChangeLiteEx+9F↑j
                                        ; DATA XREF: .rdata:000000014007FBC4↑o
                mov     rax, [r15]
                dec     dword ptr [rax+40h]
                mov     rax, [r15]
                cmp     [rax+40h], esi
                jnz     loc_1406F3C49
                mov     [rax+38h], rsi
                mov     rcx, [r15]
                call    ExReleaseFastMutexUnsafe
                jmp     loc_1406F3C49
; } // starts at 1406F3C10
FsRtlNotifyFilterReportChangeLiteEx endp
