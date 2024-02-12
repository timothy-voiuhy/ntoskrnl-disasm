ExReleaseDisownedFastResourceExclusive proc near
                                        ; DATA XREF: .pdata:00000001400F9EDC↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                test    byte ptr [rcx+1Ah], 1
                jnz     short loc_1405B4505
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                mov     r8, rcx
                mov     ecx, 1C6h
                lea     edx, [r9+3]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4505:                          ; CODE XREF: ExReleaseDisownedFastResourceExclusive+8↑j
                mov     rax, cr8
                mov     r8, gs:188h
                mov     r9d, 2
                cmp     al, r9b
                jbe     short loc_1405B4534
                and     [rsp+38h+var_18], 0
                xor     edx, edx
                movzx   r8d, al
                mov     ecx, 1C6h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4534:                          ; CODE XREF: ExReleaseDisownedFastResourceExclusive+3B↑j
                cmp     al, 1
                jnb     short loc_1405B4567
                test    dword ptr [r8+74h], 400h
                jnz     short loc_1405B4567
                cmp     dword ptr [r8+1E4h], 0
                jnz     short loc_1405B4567
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                xor     r8d, r8d
                mov     ecx, 1C6h
                lea     edx, [r9+7]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4567:                          ; CODE XREF: ExReleaseDisownedFastResourceExclusive+56↑j
                                        ; ExReleaseDisownedFastResourceExclusive+60↑j ...
                movzx   eax, byte ptr [rdx+11h]
                test    al, 4
                jnz     short loc_1405B4597
                and     [rsp+38h+var_18], 0
                mov     r9d, eax
                and     r9d, 4
                mov     r8, rdx
                shl     r9, 0Eh
                mov     edx, 0Bh
                or      r9, 1
                mov     ecx, 1C6h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4597:                          ; CODE XREF: ExReleaseDisownedFastResourceExclusive+8D↑j
                mov     r8, [rdx+18h]
                cmp     r8, rcx
                jz      short loc_1405B45BB
                mov     [rsp+38h+var_18], r8
                mov     r9, rdx
                mov     r8, rcx
                mov     edx, 0Ch
                mov     ecx, 1C6h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B45BB:                          ; CODE XREF: ExReleaseDisownedFastResourceExclusive+BE↑j
                test    al, 1
                jnz     short loc_1405B45DA
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                mov     r8, rdx
                mov     ecx, 1C6h
                lea     edx, [r9+0Dh]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B45DA:                          ; CODE XREF: ExReleaseDisownedFastResourceExclusive+DD↑j
                call    sub_1405B4D60
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExReleaseDisownedFastResourceExclusive endp
