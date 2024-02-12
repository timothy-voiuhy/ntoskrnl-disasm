IoInvalidateDeviceRelations proc near   ; CODE XREF: sub_140733CB0+49↓p
                                        ; sub_1407441FC+1C9↓p ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014048E888 SIZE 0000011D BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 40h
                xor     esi, esi
                mov     rbx, rcx
                mov     ebp, 2
                test    rcx, rcx
                jz      loc_14048E98C
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_14048E899
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_14048E899
                mov     ecx, edx
                test    edx, edx
                jz      short loc_14036E8A4
                sub     ecx, 1
                jz      short loc_14036E8E5
                sub     ecx, 1
                jz      short loc_14036E8DE
                sub     ecx, 3
                jnz     loc_14048E888

loc_14036E8A4:                          ; CODE XREF: IoInvalidateDeviceRelations+4F↑j
                neg     edx
                sbb     edx, edx
                add     edx, 9

loc_14036E8AB:                          ; CODE XREF: IoInvalidateDeviceRelations+A3↓j
                                        ; IoInvalidateDeviceRelations+AA↓j ...
                mov     [rsp+48h+var_18], rsi
                xor     r9d, r9d
                mov     [rsp+48h+var_20], rsi
                xor     r8d, r8d
                mov     rcx, rbx
                mov     [rsp+48h+var_28], rsi
                call    sub_14036E8F4

loc_14036E8C8:                          ; CODE XREF: IoInvalidateDeviceRelations+12004B↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14036E8DE:                          ; CODE XREF: IoInvalidateDeviceRelations+59↑j
                mov     edx, 5
                jmp     short loc_14036E8AB
; ---------------------------------------------------------------------------

loc_14036E8E5:                          ; CODE XREF: IoInvalidateDeviceRelations+54↑j
                mov     edx, 14h
                jmp     short loc_14036E8AB
IoInvalidateDeviceRelations endp
