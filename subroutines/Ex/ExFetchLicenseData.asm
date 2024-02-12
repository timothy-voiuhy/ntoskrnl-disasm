ExFetchLicenseData proc near            ; DATA XREF: .pdata:00000001401243B0↑o

var_38          = qword ptr -38h
arg_0           = qword ptr  8
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r15, r8
                mov     r14d, edx
                mov     rdi, rcx
                xor     r12d, r12d
                mov     [rsp+58h+arg_10], r12d
                call    sub_1402B95B0
                mov     rsi, [rax+388h]
                mov     [rsp+58h+arg_18], rsi
                test    r15, r15
                jnz     short loc_14094E7C0
                mov     eax, 0C000000Dh

loc_14094E7AD:                          ; CODE XREF: ExFetchLicenseData+103↓j
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_14094E7C0:                          ; CODE XREF: ExFetchLicenseData+36↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                lea     rbx, [rsi+0B6F8h]
                xor     edx, edx
                mov     rcx, rbx
                call    ExAcquirePushLockSharedEx
                nop

loc_14094E7E2:                          ; DATA XREF: .rdata:00000001400C4CBC↑o
;   __try { // __finally(loc_14094E878)
                cmp     [rsi+0B790h], r12b
                jz      short loc_14094E7F5

loc_14094E7EB:                          ; CODE XREF: ExFetchLicenseData+9E↓j
                mov     [rsp+58h+arg_10], 0C00000E5h
                jmp     short loc_14094E845
; ---------------------------------------------------------------------------

loc_14094E7F5:                          ; CODE XREF: ExFetchLicenseData+79↑j
                mov     rdx, [rsi+0B6F0h]
                mov     rax, [rsi]
                test    rax, rax
                cmovnz  rdx, rax
                mov     [rsp+58h+var_38], rdx
                test    rdx, rdx
                jz      short loc_14094E7EB
                mov     eax, [rdx]
                mov     [r15], eax
                test    rdi, rdi
                jz      short loc_14094E83D
                test    r14d, r14d
                jz      short loc_14094E83D
                mov     eax, [rdx]
                cmp     r14d, eax
                jb      short loc_14094E83D
                mov     r8d, eax
                mov     rcx, rdi
                call    memmove
                cmp     r14d, 14h
                jb      short loc_14094E845
                and     dword ptr [rdi+0Ch], 0FFFFFFFEh
                jmp     short loc_14094E845
; ---------------------------------------------------------------------------

loc_14094E83D:                          ; CODE XREF: ExFetchLicenseData+A8↑j
                                        ; ExFetchLicenseData+AD↑j ...
                mov     [rsp+58h+arg_10], 0C0000023h
;   } // starts at 14094E7E2

loc_14094E845:                          ; CODE XREF: ExFetchLicenseData+83↑j
                                        ; ExFetchLicenseData+C5↑j ...
                mov     eax, 11h
                lock cmpxchg [rbx], r12
                jz      short loc_14094E859
                mov     rcx, rbx
                call    ExfReleasePushLockShared

loc_14094E859:                          ; CODE XREF: ExFetchLicenseData+DF↑j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     eax, [rsp+58h+arg_10]
                jmp     loc_14094E7AD
; } // starts at 14094E770
; ---------------------------------------------------------------------------

loc_14094E878:                          ; DATA XREF: .rdata:00000001400C4CBC↑o
                                        ; .pdata:00000001401243B0↑o ...
;   __finally // owned by 14094E7E2
                push    rbx
                push    rbp
                sub     rsp, 28h
                mov     rbp, rdx
                mov     rbx, [rbp+78h]
                xor     ecx, ecx
                lea     eax, [rcx+11h]
                lock cmpxchg [rbx+0B6F8h], rcx
                jz      short loc_14094E8A3
                lea     rcx, [rbx+0B6F8h]
                call    ExfReleasePushLockShared
                nop

loc_14094E8A3:                          ; CODE XREF: ExFetchLicenseData+124↑j
                lea     rcx, [rbx+0B6F8h]
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                nop
                add     rsp, 28h
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExFetchLicenseData endp
