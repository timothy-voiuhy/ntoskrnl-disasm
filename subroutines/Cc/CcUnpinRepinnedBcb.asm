CcUnpinRepinnedBcb proc near            ; DATA XREF: .pdata:00000001400F0ED0↑o

var_28          = qword ptr -28h
var_20          = dword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     eax, 2FDh
                mov     rsi, r8
                mov     r14b, dl
                mov     rbx, rcx
                cmp     [rcx], ax
                jnz     loc_1404EAC95
                mov     rdi, [rcx+0B0h]
                mov     rcx, rdi
                call    sub_140265960
                and     dword ptr [rsi], 0
                mov     rbp, rax
                test    r14b, r14b
                jz      loc_1404EAC83
                test    dword ptr [rdi+98h], 200h
                jz      short loc_1404EAB94
                lea     rcx, [rbx+48h]
                mov     dl, 1
                call    ExAcquireResourceExclusiveLite

loc_1404EAB94:                          ; CODE XREF: CcUnpinRepinnedBcb+57↑j
                cmp     byte ptr [rbx+2], 0
                jz      loc_1404EAC74
                mov     edx, [rbx+4]
                mov     rcx, [rbx+0B8h]
                call    sub_1402A6470
                mov     r8d, 2
                mov     dl, 1
                mov     rcx, rbx
                call    sub_1402F78B0
                mov     rcx, rdi
                call    sub_1402F8A50
                test    dword ptr cs:xmmword_140CFC490, 20000h
                lea     r14, [rbx+8]
                mov     r15, rax
                jz      short loc_1404EABF1
                mov     r9d, [rbx+4]
                mov     r8, r14
                mov     rdx, rdi
                mov     dword ptr [rsp+48h+var_28], 1
                xor     ecx, ecx
                call    sub_1403BD0EC

loc_1404EABF1:                          ; CODE XREF: CcUnpinRepinnedBcb+A6↑j
                mov     r8d, [rbx+4]
                mov     rdx, r14
                mov     rcx, [r15+28h]
                mov     [rsp+48h+var_20], 1
                mov     [rsp+48h+var_28], rsi
                call    sub_1402D4688
                mov     rdx, r15
                mov     rcx, rdi
                call    sub_1402F8A04
                mov     edx, [rsi]
                test    edx, edx
                jns     short loc_1404EAC39
                mov     rcx, [rbx+0B0h]
                call    sub_14033AD88
                test    al, al
                jnz     short loc_1404EAC39
                xor     edx, edx
                mov     rcx, rbx
                call    CcSetDirtyPinnedData

loc_1404EAC39:                          ; CODE XREF: CcUnpinRepinnedBcb+ED↑j
                                        ; CcUnpinRepinnedBcb+FD↑j
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1402F78B0
                lea     rax, [rbp+310h]
                cmp     [rax], rax
                jz      short loc_1404EAC5A
                mov     rcx, rbp
                call    sub_1404EA6C0

loc_1404EAC5A:                          ; CODE XREF: CcUnpinRepinnedBcb+120↑j
                                        ; CcUnpinRepinnedBcb+151↓j ...
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1404EAC74:                          ; CODE XREF: CcUnpinRepinnedBcb+68↑j
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1402F78B0
                jmp     short loc_1404EAC5A
; ---------------------------------------------------------------------------

loc_1404EAC83:                          ; CODE XREF: CcUnpinRepinnedBcb+47↑j
                xor     r8d, r8d
                mov     dl, 1
                mov     rcx, rbx
                call    sub_1402F78B0
                and     dword ptr [rsi], 0
                jmp     short loc_1404EAC5A
; ---------------------------------------------------------------------------

loc_1404EAC95:                          ; CODE XREF: CcUnpinRepinnedBcb+29↑j
                and     [rsp+48h+var_28], 0
                xor     r9d, r9d
                mov     edx, 20B4h
                mov     r8, 0FFFFFFFFC0000420h
                lea     ecx, [r9+34h]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
CcUnpinRepinnedBcb endp
