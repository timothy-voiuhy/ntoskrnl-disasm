ExReleaseDisownedFastResourceShared proc near
                                        ; DATA XREF: .pdata:00000001400F9EE8↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                movzx   r9d, word ptr [rcx+1Ah]
                mov     r10b, 1
                test    r10b, r9b
                jnz     short loc_1405B461C
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                mov     r8, rcx
                mov     ecx, 1C6h
                lea     edx, [r9+3]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B461C:                          ; CODE XREF: ExReleaseDisownedFastResourceShared+F↑j
                mov     rax, cr8
                mov     r8, gs:188h
                cmp     al, 2
                jbe     short loc_1405B4648
                and     [rsp+38h+var_18], 0
                xor     edx, edx
                movzx   r8d, al
                mov     ecx, 1C6h
                lea     r9d, [rdx+2]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4648:                          ; CODE XREF: ExReleaseDisownedFastResourceShared+3B↑j
                cmp     al, r10b
                jnb     short loc_1405B467C
                test    dword ptr [r8+74h], 400h
                jnz     short loc_1405B467C
                cmp     dword ptr [r8+1E4h], 0
                jnz     short loc_1405B467C
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                mov     ecx, 1C6h
                lea     edx, [r9+7]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B467C:                          ; CODE XREF: ExReleaseDisownedFastResourceShared+5B↑j
                                        ; ExReleaseDisownedFastResourceShared+65↑j ...
                movzx   eax, byte ptr [rdx+11h]
                test    al, 4
                jz      short loc_1405B46A8
                and     [rsp+38h+var_18], 0
                mov     r9d, eax
                and     r9d, 4
                mov     r8, rdx
                shl     r9, 0Eh
                mov     edx, 0Bh
                mov     ecx, 1C6h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B46A8:                          ; CODE XREF: ExReleaseDisownedFastResourceShared+92↑j
                mov     r8, [rdx+18h]
                cmp     r8, rcx
                jz      short loc_1405B46CC
                mov     [rsp+38h+var_18], r8
                mov     r9, rdx
                mov     r8, rcx
                mov     edx, 0Ch
                mov     ecx, 1C6h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B46CC:                          ; CODE XREF: ExReleaseDisownedFastResourceShared+BF↑j
                test    r10b, al
                jnz     short loc_1405B46EC
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                mov     r8, rdx
                mov     ecx, 1C6h
                lea     edx, [r9+0Dh]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B46EC:                          ; CODE XREF: ExReleaseDisownedFastResourceShared+DF↑j
                test    r9b, r9b
                jns     short loc_1405B46F8
                call    sub_1405B4D60
                jmp     short loc_1405B46FD
; ---------------------------------------------------------------------------

loc_1405B46F8:                          ; CODE XREF: ExReleaseDisownedFastResourceShared+FF↑j
                call    sub_14038E4CC

loc_1405B46FD:                          ; CODE XREF: ExReleaseDisownedFastResourceShared+106↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExReleaseDisownedFastResourceShared endp
