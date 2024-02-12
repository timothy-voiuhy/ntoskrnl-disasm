NtOpenProcessTokenEx proc near          ; CODE XREF: NtOpenProcessToken+A↑p
                                        ; sub_140917668+5E↓p
                                        ; DATA XREF: ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                mov     [rsp+arg_18], r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 60h
                mov     r14, r9
                mov     r13d, edx
                xor     r10d, r10d
                mov     [rsp+78h+var_30], r10
                mov     rax, gs:188h
                movzx   r15d, byte ptr [rax+232h]
                mov     ebx, 11FF2h
                mov     eax, 1DF2h
                test    r15b, r15b
                cmovnz  ebx, eax
                and     ebx, r8d
                test    r15b, r15b
                jz      short loc_14061CD47

loc_14061CD25:                          ; DATA XREF: .rdata:000000014004E31C↑o
;   __try { // __except at loc_14061CD42
                mov     rdx, r9
                mov     rax, 7FFFFFFF0000h
                cmp     r9, rax
                jb      short loc_14061CD3A
                mov     rdx, rax

loc_14061CD3A:                          ; CODE XREF: NtOpenProcessTokenEx+65↑j
                mov     rax, [rdx]
                mov     [rdx], rax
                jmp     short loc_14061CD47
;   } // starts at 14061CD25
; ---------------------------------------------------------------------------

loc_14061CD42:                          ; DATA XREF: .rdata:000000014004E31C↑o
;   __except(1) // owned by 14061CD25
                jmp     loc_14061CDFE
; ---------------------------------------------------------------------------

loc_14061CD47:                          ; CODE XREF: NtOpenProcessTokenEx+53↑j
                                        ; NtOpenProcessTokenEx+70↑j
                mov     [rsp+78h+var_38], r10
                mov     rax, gs:188h
                movzx   r9d, byte ptr [rax+232h]
                mov     r8, cs:PsProcessType
                mov     [rsp+78h+var_40], r10
                mov     [rsp+78h+var_48], r10
                lea     rax, [rsp+78h+var_38]
                mov     [rsp+78h+var_50], rax
                mov     dword ptr [rsp+78h+var_58], 65537350h
                mov     edx, 1000h
                call    sub_140645090
                test    eax, eax
                js      short loc_14061CDFE
                mov     rsi, [rsp+78h+var_38]
                lea     r12, [rsi+4B8h]
                mov     rcx, r12
                call    sub_14024C570
                mov     rdi, rax
                test    rax, rax
                jz      short loc_14061CE1E

loc_14061CDAA:                          ; CODE XREF: NtOpenProcessTokenEx+1A9↓j
                mov     edx, 65537350h
                mov     rcx, rsi
                call    ObfDereferenceObjectWithTag
                lea     rax, [rsp+78h+var_30]
                mov     [rsp+78h+var_48], rax
                mov     byte ptr [rsp+78h+var_50], r15b
                mov     rax, cs:SeTokenObjectType
                mov     [rsp+78h+var_58], rax
                mov     r9d, r13d
                xor     r8d, r8d
                mov     edx, ebx
                mov     rcx, rdi
                call    ObOpenObjectByPointer
                mov     ebx, eax
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                test    ebx, ebx
                js      short loc_14061CDFC

loc_14061CDF0:                          ; DATA XREF: .rdata:000000014004E32C↑o
;   __try { // __except at loc_14061CDFA
                mov     rcx, [rsp+78h+var_30]
                mov     [r14], rcx
                jmp     short loc_14061CDFC
;   } // starts at 14061CDF0
; ---------------------------------------------------------------------------

loc_14061CDFA:                          ; DATA XREF: .rdata:000000014004E32C↑o
;   __except(1) // owned by 14061CDF0
                jmp     short loc_14061CDFE
; ---------------------------------------------------------------------------

loc_14061CDFC:                          ; CODE XREF: NtOpenProcessTokenEx+11E↑j
                                        ; NtOpenProcessTokenEx+128↑j
                mov     eax, ebx

loc_14061CDFE:                          ; CODE XREF: NtOpenProcessTokenEx:loc_14061CD42↑j
                                        ; NtOpenProcessTokenEx+BC↑j ...
                lea     r11, [rsp+78h+var_18]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     r12, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14061CE1E:                          ; CODE XREF: NtOpenProcessTokenEx+D8↑j
                mov     rax, gs:188h
                mov     [rsp+78h+var_28], rax
                dec     word ptr [rax+1E4h]
                mov     rsi, [rsp+78h+var_38]
                add     rsi, 438h
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockSharedEx
                mov     rcx, r12
                call    sub_14021AEA8
                mov     rdi, rax
                mov     eax, 11h
                xor     ecx, ecx
                lock cmpxchg [rsi], rcx
                jnz     short loc_14061CE7E

loc_14061CE62:                          ; CODE XREF: NtOpenProcessTokenEx+1B6↓j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, [rsp+78h+var_28]
                call    sub_14021E1F0
                mov     rsi, [rsp+78h+var_38]
                jmp     loc_14061CDAA
; ---------------------------------------------------------------------------

loc_14061CE7E:                          ; CODE XREF: NtOpenProcessTokenEx+190↑j
                mov     rcx, rsi
                call    ExfReleasePushLockShared
                jmp     short loc_14061CE62
; } // starts at 14061CCD0
NtOpenProcessTokenEx endp
