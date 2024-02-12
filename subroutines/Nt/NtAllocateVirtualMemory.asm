NtAllocateVirtualMemory proc near       ; DATA XREF: .rdata:0000000140053CF0↑o
                                        ; .pdata:00000001400FEDE4↑o ...

var_188         = qword ptr -188h
var_180         = dword ptr -180h
var_178         = qword ptr -178h
var_170         = byte ptr -170h
var_168         = dword ptr -168h
var_160         = dword ptr -160h
var_158         = qword ptr -158h
var_150         = qword ptr -150h
var_148         = qword ptr -148h
var_138         = byte ptr -138h
var_134         = dword ptr -134h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_F8          = byte ptr -0F8h
var_E0          = qword ptr -0E0h
var_D8          = dword ptr -0D8h
var_C8          = byte ptr -0C8h
var_A8          = qword ptr -0A8h
var_90          = qword ptr -90h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h

; FUNCTION CHUNK AT 00000001407E6700 SIZE 00000078 BYTES
; FUNCTION CHUNK AT 000000014080566C SIZE 00000089 BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+20h], rsi
                mov     [rax+18h], r8
                mov     [rax+8], rcx
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 180h
                mov     r13, r9
                mov     r12, rdx
                xor     r14d, r14d
                mov     [rax-120h], r14
                mov     [rax-118h], r14
                xor     edx, edx
                lea     r8d, [r14+48h]
                lea     rcx, [rax-0F8h]
                call    memset
                mov     rax, gs:188h
                movzx   ebx, byte ptr [rax+232h]
                mov     [rsp+1A8h+var_138], bl

loc_14063ECE0:                          ; DATA XREF: .rdata:0000000140053CCC↑o
;   __try { // __except at loc_14063ED30
                test    bl, bl
                jz      short loc_14063ED16
                mov     rcx, r12
                mov     rdx, 7FFFFFFF0000h
                cmp     r12, rdx
                jnb     short loc_14063ED0C

loc_14063ECF6:                          ; CODE XREF: NtAllocateVirtualMemory+8F↓j
                mov     rax, [rcx]
                mov     [rcx], rax
                mov     rcx, r13
                cmp     r13, rdx
                jnb     short loc_14063ED11

loc_14063ED04:                          ; CODE XREF: NtAllocateVirtualMemory+94↓j
                mov     rax, [rcx]
                mov     [rcx], rax
                jmp     short loc_14063ED16
; ---------------------------------------------------------------------------

loc_14063ED0C:                          ; CODE XREF: NtAllocateVirtualMemory+74↑j
                mov     rcx, rdx
                jmp     short loc_14063ECF6
; ---------------------------------------------------------------------------

loc_14063ED11:                          ; CODE XREF: NtAllocateVirtualMemory+82↑j
                mov     rcx, rdx
                jmp     short loc_14063ED04
; ---------------------------------------------------------------------------

loc_14063ED16:                          ; CODE XREF: NtAllocateVirtualMemory+62↑j
                                        ; NtAllocateVirtualMemory+8A↑j
                mov     rdi, [r12]
                mov     [rsp+1A8h+var_120], rdi
                mov     rsi, [r13+0]
                mov     [rsp+1A8h+var_118], rsi
                jmp     short loc_14063ED35
;   } // starts at 14063ECE0
; ---------------------------------------------------------------------------

loc_14063ED30:                          ; DATA XREF: .rdata:0000000140053CCC↑o
;   __except(loc_1407E6700) // owned by 14063ECE0
                jmp     loc_14063EE84
; ---------------------------------------------------------------------------

loc_14063ED35:                          ; CODE XREF: NtAllocateVirtualMemory+AE↑j
                mov     r15d, [rsp+1A8h+arg_20]
                mov     eax, r15d
                and     eax, 7Fh
                mov     [rsp+1A8h+var_D8], eax
                and     r15d, 0FFFFFF80h
                test    r15d, 44000h
                jnz     loc_14063EEC5
                xor     edx, edx
                mov     r8d, 80h
                lea     rcx, [rsp+1A8h+var_A8]
                call    memset
                mov     [rsp+1A8h+var_128], r14
                mov     [rsp+1A8h+var_110], r14
                mov     [rsp+1A8h+var_130], r14
                lea     rax, [rsp+1A8h+var_110]
                mov     [rsp+1A8h+var_148], rax
                lea     rax, [rsp+1A8h+var_A8]
                mov     [rsp+1A8h+var_150], rax
                mov     [rsp+1A8h+var_158], r14
                mov     [rsp+1A8h+var_160], r14d
                mov     [rsp+1A8h+var_168], r14d
                mov     [rsp+1A8h+var_170], bl
                lea     rax, [rsp+1A8h+var_F8]
                mov     [rsp+1A8h+var_178], rax
                mov     eax, [rsp+1A8h+arg_28]
                mov     [rsp+1A8h+var_180], eax
                mov     dword ptr [rsp+1A8h+var_188], r15d
                mov     r9, rsi
                mov     r8, [rsp+1A8h+arg_10]
                mov     rdx, rdi
                mov     rcx, [rsp+1A8h+arg_0]
                call    sub_14063DF30
                mov     ebx, eax
                mov     [rsp+1A8h+var_134], eax
                test    eax, eax
                js      short loc_14063EE55
                mov     rcx, [rsp+1A8h+var_E0]
                test    rcx, rcx
                jnz     loc_14080566C

loc_14063EE05:                          ; CODE XREF: NtAllocateVirtualMemory+1C69FD↓j
                                        ; NtAllocateVirtualMemory+1C6A35↓j
                cmp     [rsp+1A8h+var_C8], 1
                jz      loc_1408056BA

loc_14063EE13:                          ; CODE XREF: NtAllocateVirtualMemory+1C6A48↓j
                lea     r8, [rsp+1A8h+var_128]
                mov     rdx, r14
                lea     rcx, [rsp+1A8h+var_A8]
                call    sub_14063CB90
                mov     ebx, eax
                mov     [rsp+1A8h+var_134], eax
                test    eax, eax
                js      short loc_14063EE55
                mov     rdi, [rsp+1A8h+var_128]
                mov     [rsp+1A8h+var_120], rdi
                mov     rsi, [rsp+1A8h+var_90]
                mov     [rsp+1A8h+var_118], rsi

loc_14063EE55:                          ; CODE XREF: NtAllocateVirtualMemory+172↑j
                                        ; NtAllocateVirtualMemory+1B3↑j ...
                test    ebx, ebx
                js      short loc_14063EEAE

loc_14063EE59:                          ; CODE XREF: NtAllocateVirtualMemory+243↓j
                                        ; NtAllocateVirtualMemory+1C6A62↓j
                cmp     r14, 2
                jnb     loc_1408056E7

loc_14063EE63:                          ; CODE XREF: NtAllocateVirtualMemory+1C6A70↓j
                mov     rcx, [rsp+1A8h+var_110]
                test    rcx, rcx
                jnz     short loc_14063EEA2

loc_14063EE70:                          ; CODE XREF: NtAllocateVirtualMemory+22C↓j
                test    ebx, ebx
                js      short loc_14063EE82

loc_14063EE74:                          ; DATA XREF: .rdata:0000000140053CDC↑o
;   __try { // __except at loc_14063EE7E
                mov     [r12], rdi
                mov     [r13+0], rsi
                jmp     short loc_14063EE82
;   } // starts at 14063EE74
; ---------------------------------------------------------------------------

loc_14063EE7E:                          ; DATA XREF: .rdata:0000000140053CDC↑o
;   __except(loc_1407E673C) // owned by 14063EE74
                mov     ebx, [rsp+1A8h+var_134]

loc_14063EE82:                          ; CODE XREF: NtAllocateVirtualMemory+1F2↑j
                                        ; NtAllocateVirtualMemory+1FC↑j
                mov     eax, ebx

loc_14063EE84:                          ; CODE XREF: NtAllocateVirtualMemory:loc_14063ED30↑j
                                        ; NtAllocateVirtualMemory+24A↓j
                lea     r11, [rsp+1A8h+var_28]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14063EEA2:                          ; CODE XREF: NtAllocateVirtualMemory+1EE↑j
                mov     edx, 6D566D4Dh
                call    ObfDereferenceObjectWithTag
                jmp     short loc_14063EE70
; ---------------------------------------------------------------------------

loc_14063EEAE:                          ; CODE XREF: NtAllocateVirtualMemory+1D7↑j
                                        ; NtAllocateVirtualMemory+1C6A57↓j
                cmp     [rsp+1A8h+var_A8], 0
                jz      loc_1408056DC
                inc     cs:dword_140C4E66C
                jmp     short loc_14063EE59
; ---------------------------------------------------------------------------

loc_14063EEC5:                          ; CODE XREF: NtAllocateVirtualMemory+D5↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14063EE84
; } // starts at 14063EC80
NtAllocateVirtualMemory endp
