MmAllocateContiguousMemorySpecifyCacheNode proc near
                                        ; CODE XREF: MmAllocateContiguousMemorySpecifyCache+14↑p
                                        ; sub_1404D5360+144↓p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h
var_10          = dword ptr -10h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

                sub     rsp, 38h
                cmp     [rsp+38h+arg_20], 1
                jz      short loc_1403CF417
                cmp     [rsp+38h+arg_20], 2
                mov     eax, 404h
                mov     r10d, 204h
                cmovz   r10d, eax

loc_1403CF3FF:                          ; CODE XREF: MmAllocateContiguousMemorySpecifyCacheNode+3D↓j
                mov     eax, [rsp+38h+arg_28]
                mov     [rsp+38h+var_10], eax
                mov     [rsp+38h+var_18], r10d
                call    MmAllocateContiguousNodeMemory
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403CF417:                          ; CODE XREF: MmAllocateContiguousMemorySpecifyCacheNode+9↑j
                mov     r10d, 40h ; '@'
                jmp     short loc_1403CF3FF
MmAllocateContiguousMemorySpecifyCacheNode endp
