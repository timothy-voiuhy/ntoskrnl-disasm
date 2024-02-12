NtFreeVirtualMemory proc near           ; CODE XREF: sub_140913234+6A↓p
                                        ; DATA XREF: .pdata:00000001400FFC24↑o ...

var_38          = byte ptr -38h
var_30          = dword ptr -30h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001407E6D60 SIZE 00000036 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 50h
                mov     rdi, r8
                mov     rbx, rdx
                mov     r10, rcx
                xor     r11d, r11d
                mov     [rsp+58h+var_18], r11
                mov     [rsp+58h+var_20], r11
                mov     rax, gs:188h
                movzx   edx, byte ptr [rax+232h]

loc_14065B3D0:                          ; DATA XREF: .rdata:000000014005CBA8↑o
;   __try { // __except at loc_14065B418
                test    dl, dl
                jz      short loc_14065B406
                mov     rcx, rbx
                mov     r8, 7FFFFFFF0000h
                cmp     rbx, r8
                jnb     short loc_14065B3FC

loc_14065B3E6:                          ; CODE XREF: NtFreeVirtualMemory+5F↓j
                mov     rax, [rcx]
                mov     [rcx], rax
                mov     rcx, rdi
                cmp     rdi, r8
                jnb     short loc_14065B401

loc_14065B3F4:                          ; CODE XREF: NtFreeVirtualMemory+64↓j
                mov     rax, [rcx]
                mov     [rcx], rax
                jmp     short loc_14065B406
; ---------------------------------------------------------------------------

loc_14065B3FC:                          ; CODE XREF: NtFreeVirtualMemory+44↑j
                mov     rcx, r8
                jmp     short loc_14065B3E6
; ---------------------------------------------------------------------------

loc_14065B401:                          ; CODE XREF: NtFreeVirtualMemory+52↑j
                mov     rcx, r8
                jmp     short loc_14065B3F4
; ---------------------------------------------------------------------------

loc_14065B406:                          ; CODE XREF: NtFreeVirtualMemory+32↑j
                                        ; NtFreeVirtualMemory+5A↑j
                mov     rax, [rbx]
                mov     [rsp+58h+var_18], rax
                mov     rax, [rdi]
                mov     [rsp+58h+var_20], rax
                jmp     short loc_14065B41A
;   } // starts at 14065B3D0
; ---------------------------------------------------------------------------

loc_14065B418:                          ; DATA XREF: .rdata:000000014005CBA8↑o
;   __except(loc_1407E6D60) // owned by 14065B3D0
                jmp     short loc_14065B457
; ---------------------------------------------------------------------------

loc_14065B41A:                          ; CODE XREF: NtFreeVirtualMemory+76↑j
                mov     [rsp+58h+var_30], r11d
                mov     [rsp+58h+var_38], dl
                lea     r8, [rsp+58h+var_20]
                lea     rdx, [rsp+58h+var_18]
                mov     rcx, r10
                call    sub_14065B470
                mov     ecx, eax
                mov     [rsp+58h+var_24], eax
                test    eax, eax
                js      short loc_14065B457

loc_14065B43F:                          ; DATA XREF: .rdata:000000014005CBB8↑o
;   __try { // __except at loc_14065B451
                mov     rax, [rsp+58h+var_20]
                mov     [rdi], rax
                mov     rax, [rsp+58h+var_18]
                mov     [rbx], rax
                jmp     short loc_14065B455
;   } // starts at 14065B43F
; ---------------------------------------------------------------------------

loc_14065B451:                          ; DATA XREF: .rdata:000000014005CBB8↑o
;   __except(1) // owned by 14065B43F
                mov     ecx, [rsp+58h+var_24]

loc_14065B455:                          ; CODE XREF: NtFreeVirtualMemory+AF↑j
                mov     eax, ecx

loc_14065B457:                          ; CODE XREF: NtFreeVirtualMemory:loc_14065B418↑j
                                        ; NtFreeVirtualMemory+9D↑j
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 50h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14065B3A0
NtFreeVirtualMemory endp
