ExTryToAcquireResourceExclusiveLite proc near
                                        ; DATA XREF: .pdata:00000001400F9F9C↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                movzx   r8d, word ptr [rcx+1Ah]
                xor     edx, edx
                mov     al, r8b
                and     al, 41h
                cmp     al, 1
                jnz     short loc_1405B581E
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rdx
                mov     r8, rcx
                mov     ecx, 1C6h
                lea     edx, [r9+0Fh]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B581E:                          ; CODE XREF: ExTryToAcquireResourceExclusiveLite+12↑j
                and     r8w, 1
                jz      loc_1405B58D6
                mov     r10, cr8
                mov     r11, gs:188h
                mov     r9d, 2
                cmp     r10b, r9b
                jbe     short loc_1405B5855
                movzx   r8d, r10b
                mov     ecx, 1C6h
                mov     [rsp+38h+var_18], rdx
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B5855:                          ; CODE XREF: ExTryToAcquireResourceExclusiveLite+4F↑j
                jb      short loc_1405B5880
                mov     eax, gs:32ACh
                test    eax, 10001h
                jz      short loc_1405B5880
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rdx
                xor     r8d, r8d
                mov     ecx, 1C6h
                lea     edx, [r9+5]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B5880:                          ; CODE XREF: ExTryToAcquireResourceExclusiveLite:loc_1405B5855↑j
                                        ; ExTryToAcquireResourceExclusiveLite+74↑j
                test    [r11+0C0h], r9b
                jz      short loc_1405B58A3
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rdx
                xor     r8d, r8d
                mov     ecx, 1C6h
                lea     edx, [r9+6]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B58A3:                          ; CODE XREF: ExTryToAcquireResourceExclusiveLite+97↑j
                cmp     r10b, 1
                jnb     short loc_1405B58D6
                test    dword ptr [r11+74h], 400h
                jnz     short loc_1405B58D6
                cmp     [r11+1E4h], edx
                jnz     short loc_1405B58D6
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rdx
                xor     r8d, r8d
                mov     ecx, 1C6h
                lea     edx, [r9+7]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B58D6:                          ; CODE XREF: ExTryToAcquireResourceExclusiveLite+33↑j
                                        ; ExTryToAcquireResourceExclusiveLite+B7↑j ...
                test    r8w, r8w
                jz      short loc_1405B58E3
                call    sub_14038E344
                jmp     short loc_1405B58E8
; ---------------------------------------------------------------------------

loc_1405B58E3:                          ; CODE XREF: ExTryToAcquireResourceExclusiveLite+EA↑j
                call    sub_1405B5BCC

loc_1405B58E8:                          ; CODE XREF: ExTryToAcquireResourceExclusiveLite+F1↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExTryToAcquireResourceExclusiveLite endp
