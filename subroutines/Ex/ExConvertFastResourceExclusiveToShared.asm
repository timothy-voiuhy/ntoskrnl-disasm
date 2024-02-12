ExConvertFastResourceExclusiveToShared proc near
                                        ; DATA XREF: .pdata:00000001400F9EC4↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                mov     r8, rdx
                mov     r11d, 1
                xor     edx, edx
                test    [rcx+1Ah], r11b
                jnz     short loc_1405B434F
                mov     [rsp+38h+var_18], rdx
                mov     r8, rcx
                lea     edx, [r11+2]
                mov     ecx, 1C6h
                xor     r9d, r9d
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B434F:                          ; CODE XREF: ExConvertFastResourceExclusiveToShared+13↑j
                mov     rax, cr8
                mov     r10, gs:188h
                cmp     al, r11b
                jbe     short loc_1405B4378
                movzx   r8d, al
                mov     r9, r11
                mov     ecx, 1C6h
                mov     [rsp+38h+var_18], rdx
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4378:                          ; CODE XREF: ExConvertFastResourceExclusiveToShared+3F↑j
                jnb     short loc_1405B43A7
                test    dword ptr [r10+74h], 400h
                jnz     short loc_1405B43A7
                cmp     [r10+1E4h], edx
                jnz     short loc_1405B43A7
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rdx
                xor     r8d, r8d
                mov     ecx, 1C6h
                lea     edx, [r9+7]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B43A7:                          ; CODE XREF: ExConvertFastResourceExclusiveToShared:loc_1405B4378↑j
                                        ; ExConvertFastResourceExclusiveToShared+62↑j ...
                mov     r9, [r8+20h]
                cmp     r9, r10
                jz      short loc_1405B43C5
                mov     [rsp+38h+var_18], rdx
                mov     ecx, 1C6h
                mov     edx, 9
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B43C5:                          ; CODE XREF: ExConvertFastResourceExclusiveToShared+8E↑j
                mov     rax, [r8+18h]
                cmp     rax, rcx
                jz      short loc_1405B43E9
                mov     r9, r8
                mov     [rsp+38h+var_18], rax
                mov     r8, rcx
                mov     edx, 8
                mov     ecx, 1C6h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B43E9:                          ; CODE XREF: ExConvertFastResourceExclusiveToShared+AC↑j
                movzx   eax, byte ptr [r8+11h]
                test    r11b, al
                jz      short loc_1405B440A
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rdx
                mov     ecx, 1C6h
                lea     edx, [r9+0Ah]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B440A:                          ; CODE XREF: ExConvertFastResourceExclusiveToShared+D1↑j
                test    al, 4
                jnz     short loc_1405B4431
                mov     r9, rax
                mov     [rsp+38h+var_18], rdx
                and     r9d, 4
                mov     edx, 0Bh
                shl     r9, 0Eh
                mov     ecx, 1C6h
                or      r9, r11
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4431:                          ; CODE XREF: ExConvertFastResourceExclusiveToShared+EC↑j
                cmp     [r8+12h], dl
                jz      short loc_1405B444E
                lea     rax, [r8+28h]
                cmp     [rax], rax
                jnz     short loc_1405B444E
                mov     rdx, r8
                call    sub_14038E280
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1405B444E:                          ; CODE XREF: ExConvertFastResourceExclusiveToShared+115↑j
                                        ; ExConvertFastResourceExclusiveToShared+11E↑j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rdx
                mov     r8, rcx
                mov     ecx, 1C6h
                lea     edx, [r9+13h]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
ExConvertFastResourceExclusiveToShared endp
