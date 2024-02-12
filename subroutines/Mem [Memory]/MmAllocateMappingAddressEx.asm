MmAllocateMappingAddressEx proc near    ; CODE XREF: MmAllocateMappingAddress+7↑p
                                        ; sub_1408AF2D4+29↓p ...

var_98          = qword ptr -98h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014082A05C SIZE 000000E0 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_48], rax
                mov     r15d, edx
                mov     ebx, r8d
                test    r8d, 0FFFFFFFEh
                jnz     loc_14070DB1F
                lea     rdi, [rcx+0FFFh]
                shr     rdi, 0Ch
                test    rdi, rdi
                jz      loc_14082A05C
                test    edx, edx
                jz      loc_14070DB1F
                mov     rax, 100000000h
                cmp     rdi, rax
                jnb     loc_14070DB1F
                mov     edx, 30h ; '0'
                mov     r8d, 6D72694Dh
                lea     ecx, [rdx+10h]
                call    sub_140268720
                mov     [rsp+0B8h+var_88], rax
                mov     rsi, rax
                test    rax, rax
                jz      loc_14070DB1F
                mov     edx, edi
                lea     rcx, qword_140C4EDC0
                call    sub_1402583E0
                mov     r14, rax
                test    rax, rax
                jz      loc_14082A07D
                mov     rbp, rax
                shl     rbp, 19h
                mov     rax, 0FFFFF68000000000h
                shl     rax, 19h
                xor     r12d, r12d
                sub     rbp, rax
                mov     [rsi+20h], rdi
                sar     rbp, 10h
                mov     [rsi+18h], rbp
                mov     [rsi+28h], r15d
                mov     [rsi+2Ch], ebx
                test    rdi, rdi
                jz      short loc_14070DADD
                mov     rsi, 8000000000000000h

loc_14070DAA3:                          ; CODE XREF: MmAllocateMappingAddressEx+116↓j
                mov     rbx, cs:qword_14001D278
                mov     rcx, r14
                xor     r13d, r13d
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_14082A08D

loc_14070DABD:                          ; CODE XREF: MmAllocateMappingAddressEx+11C6E3↓j
                                        ; MmAllocateMappingAddressEx+11C708↓j ...
                mov     [r14], rbx
                test    r13d, r13d
                jnz     loc_14082A0DF

loc_14070DAC9:                          ; CODE XREF: MmAllocateMappingAddressEx+11C72B↓j
                inc     r12d
                add     r14, 8
                mov     eax, r12d
                cmp     rax, rdi
                jb      short loc_14070DAA3
                mov     rsi, [rsp+0B8h+var_88]

loc_14070DADD:                          ; CODE XREF: MmAllocateMappingAddressEx+D7↑j
                mov     eax, cs:dword_140CFB17C
                test    al, 1
                jnz     loc_14082A0F0

loc_14070DAEB:                          ; CODE XREF: MmAllocateMappingAddressEx+11C777↓j
                mov     rcx, rsi
                call    sub_1403559D8
                mov     rax, rbp

loc_14070DAF6:                          ; CODE XREF: MmAllocateMappingAddressEx+161↓j
                mov     rcx, [rsp+0B8h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0B8h+arg_10]
                add     rsp, 80h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14070DB1F:                          ; CODE XREF: MmAllocateMappingAddressEx+33↑j
                                        ; MmAllocateMappingAddressEx+4F↑j ...
                xor     eax, eax
                jmp     short loc_14070DAF6
; } // starts at 14070D9C0
MmAllocateMappingAddressEx endp
