KeQueryTotalCycleTimeThread proc near   ; CODE XREF: NtQueryInformationThread+242↓p
                                        ; DATA XREF: .rdata:000000014004DC3C↑o ...

var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = dword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_E8          = dword ptr -0E8h
var_E4          = byte ptr -0E4h
var_38          = qword ptr -38h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404274DE SIZE 0000026E BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 110h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+138h+var_38], rax
                mov     rsi, rdx
                mov     rbx, rcx
                xor     edx, edx
                lea     rcx, [rsp+138h+var_E8]
                mov     r8d, 0A8h
                call    memset
                mov     rax, gs:188h
                xor     r15d, r15d
                mov     [rsp+138h+var_F8], r15
                mov     [rsp+138h+var_100], r15
                cmp     rbx, rax
                jnz     loc_1404274DE
                cli
                mov     rdi, gs:20h
                mov     byte ptr [rdi+20h], 1
                rdtsc
                mov     r14, [rbx+48h]
                mov     ecx, 0FFFFFFFFh
                shl     rdx, 20h
                or      rax, rdx
                mov     r8, rax
                mov     rbp, rax
                sub     r8, [rdi+7EC0h]
                mov     eax, [rbx+50h]
                add     r14, r8
                add     rax, r8
                mov     [rbx+48h], r14
                cmp     rax, rcx
                ja      short loc_14021A218

loc_14021A1BB:                          ; CODE XREF: KeQueryTotalCycleTimeThread+FB↓j
                mov     [rdi+7EC0h], rbp
                test    byte ptr [rbx+2], 3Eh
                mov     [rbx+50h], eax
                jz      short loc_14021A1D6
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14028E100

loc_14021A1D6:                          ; CODE XREF: KeQueryTotalCycleTimeThread+A9↑j
                test    rsi, rsi
                jz      short loc_14021A1DE
                mov     [rsi], rbp

loc_14021A1DE:                          ; CODE XREF: KeQueryTotalCycleTimeThread+B9↑j
                xor     r8d, r8d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_14028DFE0
                sti
                mov     rax, r14

loc_14021A1F0:                          ; CODE XREF: KeQueryTotalCycleTimeThread+20D627↓j
                mov     rcx, [rsp+138h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+138h+arg_10]
                add     rsp, 110h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14021A218:                          ; CODE XREF: KeQueryTotalCycleTimeThread+99↑j
                mov     rax, rcx
                jmp     short loc_14021A1BB
; } // starts at 14021A120
KeQueryTotalCycleTimeThread endp
