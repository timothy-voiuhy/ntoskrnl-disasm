FsRtlGetNextFileLock proc near          ; DATA XREF: .pdata:00000001400F1368↑o

var_A0          = qword ptr -0A0h
var_90          = byte ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = byte ptr  20h
arg_18          = byte ptr  28h

                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 90h
                and     [rbp+57h+var_88], 0
                mov     sil, dl
                mov     rbx, [rcx+18h]
                mov     [rbp+57h+arg_10], 0
                test    rbx, rbx
                jz      loc_1404EFE35
                movups  xmm0, xmmword ptr [rcx+20h]
                mov     rdi, [rcx+50h]
                lea     rax, [rbx+18h]
                xor     r14b, r14b
                mov     [rbp+57h+var_80], rax
                movups  [rbp+57h+var_68], xmm0
                mov     [rbp+57h+var_90], r14b
                movups  xmm0, xmmword ptr [rcx+30h]
                movups  [rbp+57h+var_78], xmm0
                movups  [rbp+57h+var_58], xmm0
                movups  xmm0, xmmword ptr [rcx+40h]
                mov     rcx, rax
                movups  [rbp+57h+var_48], xmm0
                call    KeAcquireSpinLockRaiseToDpc
                mov     [rbp+57h+arg_18], al
                test    sil, sil
                jnz     loc_1404EFD41
                lea     rax, [rbp+57h+arg_10]
                lea     r9, [rbp+57h+var_88]
                mov     [rsp+0C0h+var_A0], rax
                lea     r8, [rbp+57h+var_48+8]
                lea     rdx, [rbp+57h+var_68]
                cmp     byte ptr [rbp+57h+var_78], r14b
                jz      loc_1404EFC70
                mov     rcx, [rbx+28h]
                call    sub_14032791C
                test    rax, rax
                jnz     short loc_1404EFBB1
                cmp     [rbp+57h+arg_10], r14b
                jz      short loc_1404EFBA6
                mov     rax, [rbp+57h+var_88]
                jmp     short loc_1404EFC0B
; ---------------------------------------------------------------------------

loc_1404EFBA6:                          ; CODE XREF: FsRtlGetNextFileLock+AE↑j
                mov     rcx, [rbp+57h+var_88]
                test    rcx, rcx
                jz      short loc_1404EFC10
                jmp     short loc_1404EFC06
; ---------------------------------------------------------------------------

loc_1404EFBB1:                          ; CODE XREF: FsRtlGetNextFileLock+A8↑j
                mov     r14, qword ptr [rbp+57h+var_48]
                mov     r15, qword ptr [rbp+57h+var_58+8]
                mov     r12d, dword ptr [rbp+57h+var_58+4]
                mov     rsi, qword ptr [rbp+57h+var_68+8]
                mov     r13, qword ptr [rbp+57h+var_68]

loc_1404EFBC5:                          ; CODE XREF: FsRtlGetNextFileLock+10F↓j
                cmp     rdi, rax
                jnz     short loc_1404EFBE8
                cmp     r13, [rax+18h]
                jnz     short loc_1404EFBE8
                cmp     rsi, [rax+20h]
                jnz     short loc_1404EFBE8
                cmp     r12d, [rax+2Ch]
                jnz     short loc_1404EFBE8
                cmp     r15, [rax+30h]
                jnz     short loc_1404EFBE8
                cmp     r14, [rax+38h]
                jz      short loc_1404EFC03

loc_1404EFBE8:                          ; CODE XREF: FsRtlGetNextFileLock+D8↑j
                                        ; FsRtlGetNextFileLock+DE↑j ...
                cmp     qword ptr [rax+20h], 0
                jnz     short loc_1404EFC0B
                test    rsi, rsi
                jnz     short loc_1404EFC0B
                mov     rcx, rax
                call    RtlRealSuccessor
                test    rax, rax
                jnz     short loc_1404EFBC5
                jmp     short loc_1404EFC10
; ---------------------------------------------------------------------------

loc_1404EFC03:                          ; CODE XREF: FsRtlGetNextFileLock+F6↑j
                mov     rcx, rax

loc_1404EFC06:                          ; CODE XREF: FsRtlGetNextFileLock+BF↑j
                call    RtlRealSuccessor

loc_1404EFC0B:                          ; CODE XREF: FsRtlGetNextFileLock+B4↑j
                                        ; FsRtlGetNextFileLock+FD↑j ...
                test    rax, rax
                jnz     short loc_1404EFC50

loc_1404EFC10:                          ; CODE XREF: FsRtlGetNextFileLock+BD↑j
                                        ; FsRtlGetNextFileLock+111↑j
                mov     rax, [rbx+20h]
                test    rax, rax
                jz      loc_1404EFD97
                mov     rcx, [rax+8]
                jmp     short loc_1404EFC2A
; ---------------------------------------------------------------------------

loc_1404EFC23:                          ; CODE XREF: FsRtlGetNextFileLock+13D↓j
                mov     rax, rcx
                mov     rcx, [rcx+8]

loc_1404EFC2A:                          ; CODE XREF: FsRtlGetNextFileLock+131↑j
                test    rcx, rcx
                jnz     short loc_1404EFC23

loc_1404EFC2F:                          ; CODE XREF: FsRtlGetNextFileLock+2A2↓j
                mov     rdi, [rax-18h]
                movups  xmm0, xmmword ptr [rdi+8]
                movups  [rbp+57h+var_68], xmm0
                movups  xmm0, xmmword ptr [rdi+18h]
                movups  [rbp+57h+var_78], xmm0
                movups  [rbp+57h+var_58], xmm0
                movups  xmm0, xmmword ptr [rdi+28h]
                jmp     loc_1404EFD6E
; ---------------------------------------------------------------------------

loc_1404EFC50:                          ; CODE XREF: FsRtlGetNextFileLock+11E↑j
                movups  xmm0, xmmword ptr [rax+18h]
                mov     rdi, rax
                movups  [rbp+57h+var_68], xmm0
                movups  xmm0, xmmword ptr [rax+28h]
                movups  [rbp+57h+var_78], xmm0
                movups  [rbp+57h+var_58], xmm0
                movups  xmm0, xmmword ptr [rax+38h]
                jmp     loc_1404EFD6E
; ---------------------------------------------------------------------------

loc_1404EFC70:                          ; CODE XREF: FsRtlGetNextFileLock+96↑j
                mov     rcx, [rbx+20h]
                call    sub_140327424
                test    rax, rax
                jnz     short loc_1404EFCA7
                mov     rax, [rbp+57h+var_88]
                test    rax, rax
                jz      loc_1404EFD9B
                mov     rcx, rax
                cmp     [rbp+57h+arg_10], r14b
                jnz     short loc_1404EFCAA
                call    RtlRealSuccessor
                mov     rcx, rax
                test    rax, rax
                jz      loc_1404EFD9B
                jmp     short loc_1404EFCAA
; ---------------------------------------------------------------------------

loc_1404EFCA7:                          ; CODE XREF: FsRtlGetNextFileLock+18C↑j
                mov     rcx, rax

loc_1404EFCAA:                          ; CODE XREF: FsRtlGetNextFileLock+1A2↑j
                                        ; FsRtlGetNextFileLock+1B5↑j
                lea     rbx, [rcx-18h]
                test    rbx, rbx
                jz      loc_1404EFD9B
                mov     rbx, [rbx]
                test    rbx, rbx
                jz      short loc_1404EFD0E
                mov     rdx, qword ptr [rbp+57h+var_48]
                mov     r8, qword ptr [rbp+57h+var_58+8]
                mov     r9d, dword ptr [rbp+57h+var_58+4]
                mov     r10, qword ptr [rbp+57h+var_68+8]
                mov     rcx, qword ptr [rbp+57h+var_68]

loc_1404EFCD3:                          ; CODE XREF: FsRtlGetNextFileLock+212↓j
                cmp     rdi, rbx
                jnz     short loc_1404EFCF6
                cmp     rcx, [rbx+8]
                jnz     short loc_1404EFCFA
                cmp     r10, [rbx+10h]
                jnz     short loc_1404EFCF6
                cmp     r9d, [rbx+1Ch]
                jnz     short loc_1404EFCF6
                cmp     r8, [rbx+20h]
                jnz     short loc_1404EFCF6
                cmp     rdx, [rbx+28h]
                jz      short loc_1404EFD06

loc_1404EFCF6:                          ; CODE XREF: FsRtlGetNextFileLock+1E6↑j
                                        ; FsRtlGetNextFileLock+1F2↑j ...
                cmp     rcx, [rbx+8]

loc_1404EFCFA:                          ; CODE XREF: FsRtlGetNextFileLock+1EC↑j
                jb      short loc_1404EFD09
                mov     rbx, [rbx]
                test    rbx, rbx
                jnz     short loc_1404EFCD3
                jmp     short loc_1404EFD0E
; ---------------------------------------------------------------------------

loc_1404EFD06:                          ; CODE XREF: FsRtlGetNextFileLock+204↑j
                mov     rbx, [rbx]

loc_1404EFD09:                          ; CODE XREF: FsRtlGetNextFileLock:loc_1404EFCFA↑j
                test    rbx, rbx
                jnz     short loc_1404EFD24

loc_1404EFD0E:                          ; CODE XREF: FsRtlGetNextFileLock+1CD↑j
                                        ; FsRtlGetNextFileLock+214↑j
                mov     rcx, rax
                call    RtlRealSuccessor
                test    rax, rax
                jz      short loc_1404EFD1F
                mov     rbx, [rax-18h]

loc_1404EFD1F:                          ; CODE XREF: FsRtlGetNextFileLock+229↑j
                test    rbx, rbx
                jz      short loc_1404EFD9B

loc_1404EFD24:                          ; CODE XREF: FsRtlGetNextFileLock+21C↑j
                movups  xmm0, xmmword ptr [rbx+8]
                mov     rdi, rbx
                movups  [rbp+57h+var_68], xmm0
                movups  xmm0, xmmword ptr [rbx+18h]
                movups  [rbp+57h+var_78], xmm0
                movups  [rbp+57h+var_58], xmm0
                movups  xmm0, xmmword ptr [rbx+28h]
                jmp     short loc_1404EFD6E
; ---------------------------------------------------------------------------

loc_1404EFD41:                          ; CODE XREF: FsRtlGetNextFileLock+77↑j
                mov     rax, [rbx+28h]
                test    rax, rax
                jz      short loc_1404EFD77

loc_1404EFD4A:                          ; CODE XREF: FsRtlGetNextFileLock+264↓j
                mov     rdi, rax
                mov     rax, [rax+8]
                test    rax, rax
                jnz     short loc_1404EFD4A
                movups  xmm0, xmmword ptr [rdi+18h]
                movups  [rbp+57h+var_68], xmm0
                movups  xmm0, xmmword ptr [rdi+28h]
                movups  [rbp+57h+var_78], xmm0
                movups  [rbp+57h+var_58], xmm0
                movups  xmm0, xmmword ptr [rdi+38h]

loc_1404EFD6E:                          ; CODE XREF: FsRtlGetNextFileLock+15B↑j
                                        ; FsRtlGetNextFileLock+17B↑j ...
                movups  [rbp+57h+var_48], xmm0
                mov     r14b, 1
                jmp     short loc_1404EFD9B
; ---------------------------------------------------------------------------

loc_1404EFD77:                          ; CODE XREF: FsRtlGetNextFileLock+258↑j
                mov     rax, [rbx+20h]
                test    rax, rax
                jz      short loc_1404EFD9B
                mov     rcx, [rax+8]
                jmp     short loc_1404EFD8D
; ---------------------------------------------------------------------------

loc_1404EFD86:                          ; CODE XREF: FsRtlGetNextFileLock+2A0↓j
                mov     rax, rcx
                mov     rcx, [rcx+8]

loc_1404EFD8D:                          ; CODE XREF: FsRtlGetNextFileLock+294↑j
                test    rcx, rcx
                jnz     short loc_1404EFD86
                jmp     loc_1404EFC2F
; ---------------------------------------------------------------------------

loc_1404EFD97:                          ; CODE XREF: FsRtlGetNextFileLock+127↑j
                mov     r14b, [rbp+57h+var_90]

loc_1404EFD9B:                          ; CODE XREF: FsRtlGetNextFileLock+195↑j
                                        ; FsRtlGetNextFileLock+1AF↑j ...
                mov     rcx, [rbp+57h+var_80]
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_1404EFE01
                test    al, 1
                jz      short loc_1404EFE01
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1404EFE01
                movzx   ebx, [rbp+57h+arg_18]
                cmp     bl, 0Fh
                ja      short loc_1404EFE04
                cmp     al, 2
                jb      short loc_1404EFE04
                mov     r10, gs:20h
                lea     ecx, [rbx+1]
                or      rdx, 0FFFFFFFFFFFFFFFFh
                shl     rdx, cl
                movzx   eax, dx
                mov     r9, [r10+84B8h]
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1404EFDFB
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1404EFDFB:                          ; CODE XREF: FsRtlGetNextFileLock+301↑j
                movups  xmm1, [rbp+57h+var_58]
                jmp     short loc_1404EFE08
; ---------------------------------------------------------------------------

loc_1404EFE01:                          ; CODE XREF: FsRtlGetNextFileLock+2BC↑j
                                        ; FsRtlGetNextFileLock+2C0↑j ...
                mov     bl, [rbp+57h+arg_18]

loc_1404EFE04:                          ; CODE XREF: FsRtlGetNextFileLock+2D1↑j
                                        ; FsRtlGetNextFileLock+2D5↑j
                movups  xmm1, [rbp+57h+var_78]

loc_1404EFE08:                          ; CODE XREF: FsRtlGetNextFileLock+30F↑j
                movzx   ecx, bl
                mov     cr8, rcx
                test    r14b, r14b
                jz      short loc_1404EFE35
                mov     rcx, [rbp+57h+arg_0]
                movups  xmm0, [rbp+57h+var_68]
                lea     rax, [rcx+20h]
                mov     [rcx+50h], rdi
                movups  xmmword ptr [rax], xmm0
                movups  xmm0, [rbp+57h+var_48]
                movups  xmmword ptr [rax+10h], xmm1
                movups  xmmword ptr [rax+20h], xmm0
                jmp     short loc_1404EFE37
; ---------------------------------------------------------------------------

loc_1404EFE35:                          ; CODE XREF: FsRtlGetNextFileLock+34↑j
                                        ; FsRtlGetNextFileLock+322↑j
                xor     eax, eax

loc_1404EFE37:                          ; CODE XREF: FsRtlGetNextFileLock+343↑j
                mov     rbx, [rsp+0C0h+arg_8]
                add     rsp, 90h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
FsRtlGetNextFileLock endp
