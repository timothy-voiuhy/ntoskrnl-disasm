SeEtwWriteKMCveEvent proc near          ; DATA XREF: .pdata:00000001400F9798↑o

var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = dword ptr -70h
var_68          = qword ptr -68h
var_60          = word ptr -60h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h

; __unwind { // __GSHandlerCheck
                push    rbp
                lea     rbp, [rsp-57h]
                sub     rsp, 0A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_10], rax
                xor     r9d, r9d
                xorps   xmm0, xmm0
                movdqa  [rbp+57h+var_30], xmm0
                xorps   xmm1, xmm1
                movdqa  [rbp+57h+var_20], xmm1
                mov     [rbp+57h+var_60], r9w
                test    rcx, rcx
                jnz     short loc_1405AA793
                mov     eax, 0C000000Dh
                jmp     loc_1405AA81A
; ---------------------------------------------------------------------------

loc_1405AA793:                          ; CODE XREF: SeEtwWriteKMCveEvent+37↑j
                mov     rax, [rcx+8]
                mov     r10d, 2
                mov     [rbp+57h+var_50], rax
                mov     r8d, r10d
                movzx   eax, word ptr [rcx]
                mov     dword ptr [rbp+57h+var_48], eax
                lea     rax, [rbp+57h+var_60]
                mov     [rbp+57h+var_40], rax
                mov     dword ptr [rbp+57h+var_48+4], r9d
                mov     [rbp+57h+var_38], r10
                test    rdx, rdx
                jz      short loc_1405AA7D5
                mov     rax, [rdx+8]
                lea     r8d, [r10+1]
                mov     qword ptr [rbp+57h+var_30], rax
                movzx   eax, word ptr [rdx]
                mov     dword ptr [rbp+57h+var_30+8], eax
                mov     dword ptr [rbp+57h+var_30+0Ch], r9d

loc_1405AA7D5:                          ; CODE XREF: SeEtwWriteKMCveEvent+6D↑j
                mov     eax, r8d
                lea     rcx, [rbp+57h+var_60]
                add     rax, rax
                lea     rdx, [rbp+57h+var_50]
                mov     [rsp+0A0h+var_68], rdx
                lea     rdx, qword_14002FF98
                mov     [rbp+rax*8+57h+var_50], rcx
                mov     rcx, cs:qword_140C19980
                mov     [rbp+rax*8+57h+var_48], r10
                lea     eax, [r8+1]
                mov     [rsp+0A0h+var_70], eax
                xor     r8d, r8d
                mov     [rsp+0A0h+var_78], r9
                mov     [rsp+0A0h+var_80], r9
                call    EtwWriteEx

loc_1405AA81A:                          ; CODE XREF: SeEtwWriteKMCveEvent+3E↑j
                mov     rcx, [rbp+57h+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0A0h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405AA750
SeEtwWriteKMCveEvent endp
