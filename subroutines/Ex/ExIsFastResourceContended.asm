ExIsFastResourceContended proc near     ; DATA XREF: .pdata:00000001400F9ED0↑o

var_18          = qword ptr -18h

                sub     rsp, 38h
                test    byte ptr [rcx+1Ah], 1
                jnz     short loc_1405B4495
                and     [rsp+38h+var_18], 0
                xor     r9d, r9d
                mov     r8, rcx
                mov     ecx, 1C6h
                lea     edx, [r9+3]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4495:                          ; CODE XREF: ExIsFastResourceContended+8↑j
                mov     rax, cr8
                mov     r9d, 2
                cmp     al, r9b
                jbe     short loc_1405B44BB
                and     [rsp+38h+var_18], 0
                xor     edx, edx
                movzx   r8d, al
                mov     ecx, 1C6h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B44BB:                          ; CODE XREF: ExIsFastResourceContended+32↑j
                cmp     dword ptr [rcx+48h], 0
                jnz     short loc_1405B44CB
                cmp     dword ptr [rcx+4Ch], 0
                jnz     short loc_1405B44CB
                xor     al, al
                jmp     short loc_1405B44CD
; ---------------------------------------------------------------------------

loc_1405B44CB:                          ; CODE XREF: ExIsFastResourceContended+4F↑j
                                        ; ExIsFastResourceContended+55↑j
                mov     al, 1

loc_1405B44CD:                          ; CODE XREF: ExIsFastResourceContended+59↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExIsFastResourceContended endp
