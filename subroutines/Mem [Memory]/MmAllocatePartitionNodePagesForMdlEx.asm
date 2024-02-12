MmAllocatePartitionNodePagesForMdlEx proc near
                                        ; CODE XREF: MmAllocatePagesForMdlEx+48↑p
                                        ; MmAllocateNodePagesForMdlEx+25↓p ...

var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_48          = dword ptr -48h
var_40          = dword ptr -40h
var_38          = byte ptr -38h
var_28          = byte ptr -28h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 00000001404689E4 SIZE 0000007A BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     r12d, [rsp+78h+arg_28]
                mov     r13, r9
                mov     byte ptr [rax-38h], 0
                mov     rbx, r8
                movzx   eax, cs:word_140CFB000
                mov     rdi, rdx
                mov     rsi, rcx
                cmp     r12d, eax
                jnb     loc_1403014E9
                mov     r14d, [rsp+78h+arg_20]
                cmp     r14d, 0FFFFFFFFh
                jz      loc_1404689E4
                cmp     r14d, 2
                jg      loc_1404689E4

loc_140301450:                          ; CODE XREF: MmAllocatePartitionNodePagesForMdlEx+1675FA↓j
                mov     ebp, [rsp+78h+arg_30]
                test    ebp, 0FFFFF800h
                jnz     loc_1403014E9
                mov     eax, ebp
                and     al, 60h
                cmp     al, 20h ; ' '
                jz      loc_1404689EF

loc_14030146F:                          ; CODE XREF: MmAllocatePartitionNodePagesForMdlEx+16762E↓j
                                        ; MmAllocatePartitionNodePagesForMdlEx+16763C↓j
                bt      ebp, 8
                jb      loc_140468A31

loc_140301479:                          ; CODE XREF: MmAllocatePartitionNodePagesForMdlEx+167657↓j
                mov     rcx, [rsp+78h+arg_38]
                lea     r8, [rsp+78h+var_38]
                xor     edx, edx
                call    sub_140304080
                mov     r15, rax
                test    rax, rax
                jz      short loc_1403014E9
                mov     [rsp+78h+var_40], ebp
                mov     r9, rbx
                mov     [rsp+78h+var_48], r12d
                mov     r8, rdi
                mov     [rsp+78h+var_50], r14d
                mov     rdx, rsi
                mov     rcx, rax
                mov     [rsp+78h+var_58], r13
                call    sub_1403014F4
                cmp     [rsp+78h+var_38], 0
                mov     rbx, rax
                jnz     loc_140468A4C

loc_1403014C7:                          ; CODE XREF: MmAllocatePartitionNodePagesForMdlEx+167669↓j
                mov     rax, rbx

loc_1403014CA:                          ; CODE XREF: MmAllocatePartitionNodePagesForMdlEx+FB↓j
                lea     r11, [rsp+78h+var_28]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
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
; ---------------------------------------------------------------------------

loc_1403014E9:                          ; CODE XREF: MmAllocatePartitionNodePagesForMdlEx+3E↑j
                                        ; MmAllocatePartitionNodePagesForMdlEx+6D↑j ...
                xor     eax, eax
                jmp     short loc_1403014CA
MmAllocatePartitionNodePagesForMdlEx endp
