IoSetPartitionInformation proc near     ; DATA XREF: .pdata:000000014011C514↑o
                                        ; .data:0000000140C00A98↓o

var_210         = dword ptr -210h
var_20C         = dword ptr -20Ch
var_208         = byte ptr -208h
var_207         = byte ptr -207h
var_190         = qword ptr -190h
var_30          = qword ptr -30h
var_20          = qword ptr -20h
var_10          = byte ptr -10h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_0], rbx
                mov     [rsp-8+arg_8], rsi
                push    rbp
                push    rdi
                push    r14
                lea     rbp, [rsp-120h]
                sub     rsp, 220h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+130h+var_20], rax
                mov     rbx, rcx
                mov     edi, r9d
                lea     rcx, [rbp+130h+var_190]
                mov     esi, r8d
                call    sub_1405C6E34
                and     [rbp+130h+var_30], 0
                lea     r14, off_140006098
                xor     eax, eax
                mov     [rbp+130h+var_190], r14
                xor     edx, edx
                mov     [rsp+230h+var_20C], eax
                lea     rcx, [rsp+230h+var_207]
                lea     r8d, [rax+6Fh]
                call    memset
                and     [rsp+230h+var_210], 0
                lea     rcx, [rbp+130h+var_190]
                mov     rdx, rbx
                mov     [rsp+230h+var_208], dil
                call    sub_14088F0B8
                mov     ebx, eax
                test    eax, eax
                js      short loc_14088F707
                lea     r8, [rsp+230h+var_210]
                mov     edx, esi
                lea     rcx, [rbp+130h+var_190]
                call    sub_1405C763C
                mov     ebx, eax

loc_14088F707:                          ; CODE XREF: IoSetPartitionInformation+83↑j
                lea     rcx, [rbp+130h+var_190]
                mov     [rbp+130h+var_190], r14
                call    sub_1405C6F44
                mov     eax, ebx
                mov     rcx, [rbp+130h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+230h+var_10]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14088F670
IoSetPartitionInformation endp
