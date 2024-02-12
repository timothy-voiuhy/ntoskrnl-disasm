IoReadPartitionTable proc near          ; DATA XREF: .pdata:000000014011C4FC↑o
                                        ; .data:0000000140C00A90↓o

var_1A8         = qword ptr -1A8h
var_198         = qword ptr -198h
var_38          = qword ptr -38h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r14
                sub     rsp, 1B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+1C8h+var_28], rax
                mov     r10, rcx
                mov     rsi, r9
                lea     rcx, [rsp+1C8h+var_198]
                mov     r14b, r8b
                call    sub_1405C6E34
                and     [rsp+1C8h+var_38], 0
                lea     r12, off_140006098
                and     [rsp+1C8h+var_1A8], 0
                lea     rcx, [rsp+1C8h+var_198]
                and     qword ptr [r9], 0
                mov     rdx, r10
                mov     [rsp+1C8h+var_198], r12
                call    sub_14088F0B8
                mov     edi, eax
                test    eax, eax
                js      loc_14088F579
                lea     rdx, [rsp+1C8h+var_1A8]
                lea     rcx, [rsp+1C8h+var_198]
                call    sub_1405C7408
                mov     rbx, [rsp+1C8h+var_1A8]
                mov     edi, eax
                test    eax, eax
                js      loc_14088F56A
                cmp     dword ptr [rbx], 1
                jnz     short loc_14088F493
                mov     edi, 0C00000BBh
                jmp     loc_14088F56A
; ---------------------------------------------------------------------------

loc_14088F493:                          ; CODE XREF: IoReadPartitionTable+97↑j
                mov     eax, [rbx+4]
                mov     r8d, 54506F49h
                lea     ecx, [rax+rax*8]
                shl     ecx, 4
                add     ecx, 30h ; '0'
                mov     ebp, ecx
                mov     edx, ecx
                mov     ecx, 200h
                call    ExAllocatePoolWithTag
                mov     [rsi], rax
                test    rax, rax
                jnz     short loc_14088F4C5
                mov     edi, 0C000009Ah
                jmp     loc_14088F56A
; ---------------------------------------------------------------------------

loc_14088F4C5:                          ; CODE XREF: IoReadPartitionTable+C9↑j
                mov     r8, rbp
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     rcx, [rsi]
                xor     r8d, r8d
                mov     eax, [rbx+4]
                mov     [rcx], eax
                mov     rcx, [rsi]
                mov     eax, [rbx+8]
                mov     [rcx+4], eax
                cmp     [rbx+4], r8d
                jbe     short loc_14088F56A

loc_14088F4EC:                          ; CODE XREF: IoReadPartitionTable+178↓j
                mov     r9, [rsi]
                lea     rdx, [r8+r8*8]
                mov     ecx, r8d
                add     rdx, rdx
                shl     rcx, 5
                test    r14b, r14b
                jz      short loc_14088F517
                movzx   eax, byte ptr [rbx+rdx*8+50h]
                cmp     al, 0Fh
                ja      short loc_14088F517
                mov     r10d, 8021h
                bt      r10d, eax
                jb      short loc_14088F561

loc_14088F517:                          ; CODE XREF: IoReadPartitionTable+110↑j
                                        ; IoReadPartitionTable+119↑j
                mov     rax, [rbx+rdx*8+38h]
                mov     [rcx+r9+8], rax
                mov     rax, [rbx+rdx*8+40h]
                mov     [rcx+r9+10h], rax
                mov     eax, [rbx+rdx*8+54h]
                mov     [rcx+r9+18h], eax
                mov     eax, [rbx+rdx*8+48h]
                mov     [rcx+r9+1Ch], eax
                mov     al, [rbx+rdx*8+50h]
                mov     [rcx+r9+20h], al
                mov     al, [rbx+rdx*8+51h]
                mov     [rcx+r9+21h], al
                mov     al, [rbx+rdx*8+52h]
                mov     [rcx+r9+22h], al
                mov     al, [rbx+rdx*8+4Ch]
                mov     [rcx+r9+23h], al

loc_14088F561:                          ; CODE XREF: IoReadPartitionTable+125↑j
                inc     r8d
                cmp     r8d, [rbx+4]
                jb      short loc_14088F4EC

loc_14088F56A:                          ; CODE XREF: IoReadPartitionTable+8E↑j
                                        ; IoReadPartitionTable+9E↑j ...
                test    rbx, rbx
                jz      short loc_14088F579
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_14088F579:                          ; CODE XREF: IoReadPartitionTable+70↑j
                                        ; IoReadPartitionTable+17D↑j
                lea     rcx, [rsp+1C8h+var_198]
                mov     [rsp+1C8h+var_198], r12
                call    sub_1405C6F44
                mov     eax, edi
                mov     rcx, [rsp+1C8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+1C8h+var_18]
                mov     rbx, [r11+20h]
                mov     rbp, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rsp, r11
                pop     r14
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14088F3F0
IoReadPartitionTable endp
