RtlAllocateHeap proc near               ; DATA XREF: .rdata:0000000140077F40↑o
                                        ; .pdata:00000001400D4D78↑o

var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014046FBA0 SIZE 00000022 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                mov     rdi, r8
                mov     esi, edx
                mov     rbx, rcx
                test    rcx, rcx
                jz      loc_14046FBA0

loc_140316800:                          ; CODE XREF: RtlAllocateHeap+1593DD↓j
                cmp     dword ptr [rbx+10h], 0DDEEDDEEh
                mov     r8d, esi
                mov     rdx, rdi
                mov     rcx, rbx
                jz      short loc_140316828
                call    sub_140316838

loc_140316817:                          ; CODE XREF: RtlAllocateHeap+4D↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140316828:                          ; CODE XREF: RtlAllocateHeap+30↑j
                call    sub_1405869DC
                jmp     short loc_140316817
RtlAllocateHeap endp
