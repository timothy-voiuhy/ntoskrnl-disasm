ExEnterCriticalRegionAndAcquireResourceExclusive proc near
                                        ; DATA XREF: .rdata:00000001400572F4↑o
                                        ; .pdata:00000001400CC4C8↑o

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014043252C SIZE 00000065 BYTES

                sub     rsp, 38h
                mov     rax, gs:188h
                mov     r8, rcx
                dec     word ptr [rax+1E4h]
                movzx   eax, word ptr [rcx+1Ah]
                movzx   edx, al
                and     dl, 41h
                cmp     dl, 1
                jz      short loc_140246934
                and     ax, 1
                jnz     short loc_1402468F2

loc_1402468CC:                          ; CODE XREF: ExEnterCriticalRegionAndAcquireResourceExclusive+79↓j
                                        ; ExEnterCriticalRegionAndAcquireResourceExclusive+83↓j ...
                mov     dl, 1
                test    ax, ax
                jnz     loc_140432586
                call    sub_1402473B0

loc_1402468DC:                          ; CODE XREF: ExEnterCriticalRegionAndAcquireResourceExclusive+1EBCEC↓j
                mov     rax, gs:188h
                mov     rax, [rax+1C8h]
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402468F2:                          ; CODE XREF: ExEnterCriticalRegionAndAcquireResourceExclusive+2A↑j
                mov     rdx, cr8
                mov     r9, gs:188h
                cmp     dl, 1
                ja      loc_14043252C
                test    byte ptr [r9+0C0h], 2
                jnz     loc_14043254A
                cmp     dl, 1
                jnb     short loc_1402468CC
                test    dword ptr [r9+74h], 400h
                jnz     short loc_1402468CC
                cmp     dword ptr [r9+1E4h], 0
                jnz     short loc_1402468CC
                jmp     loc_140432568
; ---------------------------------------------------------------------------

loc_140246934:                          ; CODE XREF: ExEnterCriticalRegionAndAcquireResourceExclusive+24↑j
                xor     r9d, r9d
                mov     [rsp+38h+var_18], 0
                mov     ecx, 1C6h
                lea     edx, [r9+0Fh]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
ExEnterCriticalRegionAndAcquireResourceExclusive endp
