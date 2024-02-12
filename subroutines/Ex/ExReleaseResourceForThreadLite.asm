ExReleaseResourceForThreadLite proc near
                                        ; CODE XREF: CcUnpinDataForThread+4C↓p
                                        ; DATA XREF: .rdata:000000014007B3E0↑o ...

var_38          = qword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404742EA SIZE 00000117 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                sub     rsp, 50h
                movzx   eax, word ptr [rcx+1Ah]
                mov     rbp, rdx
                movzx   r8d, al
                mov     rbx, rcx
                and     r8b, 41h
                cmp     r8b, 1
                jz      loc_140328471
                and     ax, 1
                jnz     loc_140328433

loc_140328345:                          ; CODE XREF: ExReleaseResourceForThreadLite+13C↓j
                                        ; ExReleaseResourceForThreadLite+149↓j ...
                test    ax, ax
                jnz     loc_140474321
                xor     eax, eax

loc_140328350:                          ; DATA XREF: .rdata:000000014007B3E0↑o
                                        ; .rdata:000000014007B3F8↑o ...
                mov     [rsp+58h+arg_0], rdi
                xorps   xmm0, xmm0
                mov     [rsp+58h+var_18], rax
                movups  [rsp+58h+var_28], xmm0
                xor     esi, esi
                lea     rdi, [rbx+60h]
                mov     qword ptr [rsp+58h+var_28], rsi
                mov     qword ptr [rsp+58h+var_28+8], rdi
                mov     r10, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140474358

loc_14032838D:                          ; CODE XREF: ExReleaseResourceForThreadLite+14C04A↓j
                                        ; ExReleaseResourceForThreadLite+14C054↓j ...
                mov     byte ptr [rsp+58h+var_18], r10b
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14047439D

loc_1403283AB:                          ; CODE XREF: ExReleaseResourceForThreadLite+14C091↓j
                                        ; ExReleaseResourceForThreadLite+14C0A0↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_1404743C1
                lea     rdx, [rsp+58h+var_28]
                xchg    rdx, [rdi]
                test    rdx, rdx
                jnz     short loc_140328427

loc_1403283C5:                          ; CODE XREF: ExReleaseResourceForThreadLite+121↓j
                                        ; ExReleaseResourceForThreadLite+14C0BF↓j
                mov     r8, gs:188h
                movzx   ecx, word ptr [rbx+1Ah]
                mov     rdi, [rsp+58h+arg_0]
                test    cl, 1
                jnz     loc_1404743D4

loc_1403283E0:                          ; DATA XREF: .pdata:00000001400D5DD4↑o
                                        ; .pdata:00000001400D5DE0↑o
                cmp     cs:dword_140C16948, esi
                jnz     loc_1404743D4

loc_1403283EC:                          ; CODE XREF: ExReleaseResourceForThreadLite+14C0CC↓j
                                        ; ExReleaseResourceForThreadLite+14C0D5↓j
                test    cl, cl
                lea     r8, [rsp+58h+var_28]
                mov     rcx, rbx
                mov     rdx, rbp
                js      short loc_140328411
                call    sub_140245FC0

loc_140328400:                          ; CODE XREF: ExReleaseResourceForThreadLite+14C043↓j
                mov     rbx, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140328411:                          ; CODE XREF: ExReleaseResourceForThreadLite+E9↑j
                call    sub_140247BC0
                mov     rbx, [rsp+58h+arg_8]
                mov     rbp, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140328427:                          ; CODE XREF: ExReleaseResourceForThreadLite+B3↑j
                                        ; DATA XREF: .pdata:00000001400D5DE0↑o ...
                lea     rcx, [rsp+58h+var_28]
                call    sub_14025FC20
                jmp     short loc_1403283C5
; ---------------------------------------------------------------------------

loc_140328433:                          ; CODE XREF: ExReleaseResourceForThreadLite+2F↑j
                                        ; DATA XREF: .pdata:00000001400D5DEC↑o ...
                mov     rcx, cr8
                mov     rdx, gs:188h
                cmp     cl, 2
                ja      loc_1404742EA
                cmp     cl, 1
                jnb     loc_140328345
                test    dword ptr [rdx+74h], 400h
                jnz     loc_140328345
                cmp     dword ptr [rdx+1E4h], 0
                jnz     loc_140328345
                jmp     loc_140474306
; ---------------------------------------------------------------------------

loc_140328471:                          ; CODE XREF: ExReleaseResourceForThreadLite+25↑j
                xor     esi, esi
                xor     r9d, r9d
                mov     r8, rbx
                mov     [rsp+58h+var_38], rsi
                mov     ecx, 1C6h
                lea     edx, [rsi+0Fh]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
ExReleaseResourceForThreadLite endp
