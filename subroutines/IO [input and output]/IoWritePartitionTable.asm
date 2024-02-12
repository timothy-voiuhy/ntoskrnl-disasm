IoWritePartitionTable proc near         ; DATA XREF: .pdata:000000014011C538↑o
                                        ; .data:0000000140C00AA0↓o

var_188         = qword ptr -188h
var_28          = qword ptr -28h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 1A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+1A8h+var_18], rax
                mov     rdi, [rsp+1A8h+arg_20]
                mov     rsi, rcx
                lea     rcx, [rsp+1A8h+var_188]
                call    sub_1405C6E34
                mov     eax, [rdi]
                lea     r14, off_140006098
                and     [rsp+1A8h+var_28], 0
                mov     ecx, 200h
                mov     r8d, 54506F49h
                mov     [rsp+1A8h+var_188], r14
                lea     edx, [rax+rax*8]
                shl     edx, 4
                add     edx, 30h ; '0'
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_14088F941
                mov     edi, 0C000009Ah
                jmp     loc_14088F9E2
; ---------------------------------------------------------------------------

loc_14088F941:                          ; CODE XREF: IoWritePartitionTable+75↑j
                and     dword ptr [rax], 0
                xor     r8d, r8d
                mov     eax, [rdi]
                mov     [rbx+4], eax
                mov     eax, [rdi+4]
                mov     [rbx+8], eax
                cmp     [rdi], r8d
                jbe     short loc_14088F9B6

loc_14088F957:                          ; CODE XREF: IoWritePartitionTable+F4↓j
                lea     rcx, [r8+r8*8]
                mov     edx, r8d
                add     rcx, rcx
                shl     rdx, 5
                inc     r8d
                and     dword ptr [rbx+rcx*8+30h], 0
                mov     rax, [rdx+rdi+8]
                mov     [rbx+rcx*8+38h], rax
                mov     rax, [rdx+rdi+10h]
                mov     [rbx+rcx*8+40h], rax
                mov     eax, [rdx+rdi+1Ch]
                mov     [rbx+rcx*8+48h], eax
                mov     al, [rdx+rdi+23h]
                mov     [rbx+rcx*8+4Ch], al
                mov     al, [rdx+rdi+20h]
                mov     [rbx+rcx*8+50h], al
                mov     al, [rdx+rdi+21h]
                mov     [rbx+rcx*8+51h], al
                mov     al, [rdx+rdi+22h]
                mov     [rbx+rcx*8+52h], al
                mov     eax, [rdx+rdi+18h]
                mov     [rbx+rcx*8+54h], eax
                cmp     r8d, [rdi]
                jb      short loc_14088F957

loc_14088F9B6:                          ; CODE XREF: IoWritePartitionTable+95↑j
                mov     rdx, rsi
                lea     rcx, [rsp+1A8h+var_188]
                call    sub_14088F0B8
                mov     edi, eax
                test    eax, eax
                js      short loc_14088F9D8
                mov     rdx, rbx
                lea     rcx, [rsp+1A8h+var_188]
                call    sub_1405C76E4
                mov     edi, eax

loc_14088F9D8:                          ; CODE XREF: IoWritePartitionTable+107↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_14088F9E2:                          ; CODE XREF: IoWritePartitionTable+7C↑j
                lea     rcx, [rsp+1A8h+var_188]
                mov     [rsp+1A8h+var_188], r14
                call    sub_1405C6F44
                mov     eax, edi
                mov     rcx, [rsp+1A8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+1A8h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14088F8C0
IoWritePartitionTable endp
