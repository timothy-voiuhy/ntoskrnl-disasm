ExReleaseFastResourceExclusive proc near
                                        ; DATA XREF: .pdata:00000001400F9EF4↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                mov     r8, rdx
                xor     edx, edx
                test    byte ptr [rcx+1Ah], 1
                jnz     short loc_1405B4739
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rdx
                mov     r8, rcx
                mov     ecx, 1C6h
                lea     edx, [r9+3]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4739:                          ; CODE XREF: ExReleaseFastResourceExclusive+D↑j
                mov     rax, cr8
                mov     r10, gs:188h
                mov     r9d, 2
                cmp     al, r9b
                jbe     short loc_1405B4765
                movzx   r8d, al
                mov     ecx, 1C6h
                mov     [rsp+38h+var_18], rdx
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4765:                          ; CODE XREF: ExReleaseFastResourceExclusive+3F↑j
                cmp     al, 1
                jnb     short loc_1405B4796
                test    dword ptr [r10+74h], 400h
                jnz     short loc_1405B4796
                cmp     [r10+1E4h], edx
                jnz     short loc_1405B4796
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rdx
                xor     r8d, r8d
                mov     ecx, 1C6h
                lea     edx, [r9+7]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4796:                          ; CODE XREF: ExReleaseFastResourceExclusive+57↑j
                                        ; ExReleaseFastResourceExclusive+61↑j ...
                mov     r9, [r8+20h]
                cmp     r9, r10
                jz      short loc_1405B47B4
                mov     [rsp+38h+var_18], rdx
                mov     ecx, 1C6h
                mov     edx, 9
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B47B4:                          ; CODE XREF: ExReleaseFastResourceExclusive+8D↑j
                mov     rax, [r8+18h]
                cmp     rax, rcx
                jz      short loc_1405B47D8
                mov     r9, r8
                mov     [rsp+38h+var_18], rax
                mov     r8, rcx
                mov     edx, 8
                mov     ecx, 1C6h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B47D8:                          ; CODE XREF: ExReleaseFastResourceExclusive+AB↑j
                movzx   eax, byte ptr [r8+11h]
                test    al, 1
                jz      short loc_1405B47F8
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rdx
                mov     ecx, 1C6h
                lea     edx, [r9+0Ah]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B47F8:                          ; CODE XREF: ExReleaseFastResourceExclusive+CF↑j
                test    al, 4
                jnz     short loc_1405B4820
                mov     r9, rax
                mov     [rsp+38h+var_18], rdx
                and     r9d, 4
                mov     edx, 0Bh
                shl     r9, 0Eh
                mov     ecx, 1C6h
                or      r9, 1
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4820:                          ; CODE XREF: ExReleaseFastResourceExclusive+EA↑j
                mov     rdx, r8
                call    sub_14038FB10
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExReleaseFastResourceExclusive endp
