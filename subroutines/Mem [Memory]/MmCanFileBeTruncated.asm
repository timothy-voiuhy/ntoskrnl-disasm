MmCanFileBeTruncated proc near          ; CODE XREF: CcPurgeCacheSection+25C↑p
                                        ; DATA XREF: .rdata:000000014007C3CC↑o ...

var_18          = qword ptr -18h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140475470 SIZE 00000068 BYTES

                push    rbx
                sub     rsp, 30h
                and     [rsp+38h+arg_8], 0
                mov     [rsp+38h+arg_0], 0
                test    rdx, rdx
                jz      short loc_14032B7F3
                mov     rax, [rdx]
                lea     rdx, [rsp+38h+arg_8]
                mov     [rsp+38h+arg_8], rax

loc_14032B7F3:                          ; CODE XREF: MmCanFileBeTruncated+14↑j
                lea     rax, [rsp+38h+arg_0]
                xor     r9d, r9d
                xor     r8d, r8d
                mov     [rsp+38h+var_18], rax
                call    sub_14032B84C
                mov     bl, [rsp+38h+arg_0]
                cmp     bl, 11h
                jz      short loc_14032B83F
                test    rax, rax
                jnz     short loc_14032B81F

loc_14032B816:                          ; CODE XREF: MmCanFileBeTruncated+6D↓j
                mov     al, 1

loc_14032B818:                          ; CODE XREF: MmCanFileBeTruncated+71↓j
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14032B81F:                          ; CODE XREF: MmCanFileBeTruncated+44↑j
                lea     rcx, [rax+48h]
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140475470

loc_14032B836:                          ; CODE XREF: MmCanFileBeTruncated+149CA2↓j
                                        ; MmCanFileBeTruncated+149CAE↓j ...
                movzx   ecx, bl
                mov     cr8, rcx
                jmp     short loc_14032B816
; ---------------------------------------------------------------------------

loc_14032B83F:                          ; CODE XREF: MmCanFileBeTruncated+3F↑j
                xor     al, al
                jmp     short loc_14032B818
MmCanFileBeTruncated endp
