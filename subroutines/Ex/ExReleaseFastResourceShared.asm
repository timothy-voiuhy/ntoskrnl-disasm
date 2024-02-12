ExReleaseFastResourceShared proc near   ; DATA XREF: .pdata:00000001400F9F00↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                movzx   r11d, word ptr [rcx+1Ah]
                xor     r10d, r10d
                test    r11b, 1
                jnz     short loc_1405B486C
                mov     r8, rcx
                mov     [rsp+38h+var_18], r10
                mov     ecx, 1C6h
                lea     edx, [r10+3]
                xor     r9d, r9d
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B486C:                          ; CODE XREF: ExReleaseFastResourceShared+10↑j
                mov     rax, cr8
                mov     r8, gs:188h
                mov     r9d, 2
                cmp     al, r9b
                jbe     short loc_1405B489A
                movzx   r8d, al
                xor     edx, edx
                mov     ecx, 1C6h
                mov     [rsp+38h+var_18], r10
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B489A:                          ; CODE XREF: ExReleaseFastResourceShared+42↑j
                cmp     al, 1
                jnb     short loc_1405B48CB
                test    dword ptr [r8+74h], 400h
                jnz     short loc_1405B48CB
                cmp     [r8+1E4h], r10d
                jnz     short loc_1405B48CB
                xor     r9d, r9d
                mov     [rsp+38h+var_18], r10
                xor     r8d, r8d
                mov     ecx, 1C6h
                lea     edx, [r9+7]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B48CB:                          ; CODE XREF: ExReleaseFastResourceShared+5C↑j
                                        ; ExReleaseFastResourceShared+66↑j ...
                mov     r9, [rdx+20h]
                cmp     r9, r8
                jz      short loc_1405B48EC
                mov     r8, rdx
                mov     [rsp+38h+var_18], r10
                mov     edx, 9
                mov     ecx, 1C6h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B48EC:                          ; CODE XREF: ExReleaseFastResourceShared+92↑j
                mov     rax, [rdx+18h]
                cmp     rax, rcx
                jz      short loc_1405B4910
                mov     r9, rdx
                mov     [rsp+38h+var_18], rax
                mov     r8, rcx
                mov     edx, 8
                mov     ecx, 1C6h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4910:                          ; CODE XREF: ExReleaseFastResourceShared+B3↑j
                movzx   eax, byte ptr [rdx+11h]
                test    al, 1
                jz      short loc_1405B4932
                xor     r9d, r9d
                mov     [rsp+38h+var_18], r10
                mov     r8, rdx
                mov     ecx, 1C6h
                lea     edx, [r9+0Ah]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4932:                          ; CODE XREF: ExReleaseFastResourceShared+D6↑j
                test    al, 4
                jz      short loc_1405B4959
                mov     r9, rax
                mov     [rsp+38h+var_18], r10
                and     r9d, 4
                mov     r8, rdx
                shl     r9, 0Eh
                mov     edx, 0Bh
                mov     ecx, 1C6h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4959:                          ; CODE XREF: ExReleaseFastResourceShared+F4↑j
                test    r11b, r11b
                js      short loc_1405B4965
                call    sub_14038E860
                jmp     short loc_1405B496A
; ---------------------------------------------------------------------------

loc_1405B4965:                          ; CODE XREF: ExReleaseFastResourceShared+11C↑j
                call    sub_14038FB10

loc_1405B496A:                          ; CODE XREF: ExReleaseFastResourceShared+123↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExReleaseFastResourceShared endp
