EtwWriteStartScenario proc near         ; CODE XREF: sub_1403CF6FC+27↑p
                                        ; sub_140772CF4+8D↑p ...

var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140852222 SIZE 00000014 BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+88h+var_40], rax
                mov     r15, [rsp+88h+arg_20]
                xor     r12d, r12d
                mov     [rsp+88h+var_58], r12d
                xorps   xmm0, xmm0
                mov     r14d, r9d
                mov     rbx, r8
                mov     rbp, rdx
                mov     rsi, rcx
                movups  [rsp+88h+var_50], xmm0
                test    rdx, rdx
                jz      loc_140852222
                test    rbx, rbx
                jz      loc_140852222
                call    EtwEventEnabled
                test    al, al
                jz      loc_14085222C
                lea     r8, [rsp+88h+var_50]
                xor     edx, edx
                mov     rcx, rsi
                call    sub_14039FC98
                mov     edi, eax
                test    eax, eax
                js      short loc_1407872C9
                cmp     [rbx], r12d
                jz      short loc_1407872E8

loc_14078729B:                          ; CODE XREF: EtwWriteStartScenario+CD↓j
                                        ; EtwWriteStartScenario+D4↓j ...
                mov     r9d, r14d
                mov     [rsp+88h+var_68], r15
                mov     r8, rbx
                mov     rdx, rbp
                mov     rcx, rsi
                call    EtwWrite
                mov     r9d, 0Ah
                lea     rcx, [rsp+88h+var_50]
                mov     r8, rbp
                mov     rdx, rbx
                mov     edi, eax
                call    sub_1407882FC

loc_1407872C9:                          ; CODE XREF: EtwWriteStartScenario+74↑j
                                        ; EtwWriteStartScenario+13A↓j ...
                mov     eax, edi
                mov     rcx, [rsp+88h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1407872E8:                          ; CODE XREF: EtwWriteStartScenario+79↑j
                cmp     [rbx+4], r12w
                jnz     short loc_14078729B
                cmp     [rbx+6], r12w
                jnz     short loc_14078729B
                cmp     [rbx+8], r12b
                jnz     short loc_14078729B
                cmp     [rbx+9], r12b
                jnz     short loc_14078729B
                cmp     [rbx+0Ah], r12b
                jnz     short loc_14078729B
                cmp     [rbx+0Bh], r12b
                jnz     short loc_14078729B
                cmp     [rbx+0Ch], r12b
                jnz     short loc_14078729B
                cmp     [rbx+0Dh], r12b
                jnz     short loc_14078729B
                cmp     [rbx+0Eh], r12b
                jnz     loc_14078729B
                cmp     [rbx+0Fh], r12b
                jnz     loc_14078729B
                xor     edx, edx
                lea     rax, [rsp+88h+var_58]
                mov     [rsp+88h+var_60], rax
                mov     r9, rbx
                xor     r8d, r8d
                mov     dword ptr [rsp+88h+var_68], 10h
                lea     ecx, [rdx+0Ch]
                call    ZwTraceControl
                mov     edi, eax
                test    eax, eax
                jns     loc_14078729B
                jmp     loc_1407872C9
; } // starts at 140787220
EtwWriteStartScenario endp
