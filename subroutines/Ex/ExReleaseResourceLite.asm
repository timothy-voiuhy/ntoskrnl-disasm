ExReleaseResourceLite proc near         ; CODE XREF: sub_140202824+4A↑p
                                        ; CMSPAddress::get_DynamicTerminalClasses(tagVARIANT *)+2BE↑p ...

var_38          = qword ptr -38h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140431E08 SIZE 000000E0 BYTES

                mov     [rsp+arg_10], rbx
                push    rbp
                sub     rsp, 50h
                movzx   eax, word ptr [rcx+1Ah]
                mov     rbx, rcx
                movzx   edx, al
                and     dl, 41h
                cmp     dl, 1
                jz      loc_140245F68
                and     ax, 1
                jnz     loc_140245F16

loc_140245E1A:                          ; CODE XREF: ExReleaseResourceLite+13F↓j
                                        ; ExReleaseResourceLite+14C↓j ...
                test    ax, ax
                jnz     loc_140245F54

loc_140245E23:                          ; DATA XREF: .rdata:0000000140057098↑o
                                        ; .rdata:00000001400570AC↑o ...
                mov     [rsp+58h+arg_0], rsi
                xor     eax, eax
                mov     rsi, gs:188h
                xorps   xmm0, xmm0
                movups  [rsp+58h+var_28], xmm0

loc_140245E3B:                          ; DATA XREF: .rdata:00000001400570AC↑o
                                        ; .rdata:00000001400570C0↑o ...
                mov     [rsp+58h+arg_8], rdi
                xor     ebp, ebp
                lea     rdi, [rbx+60h]
                mov     qword ptr [rsp+58h+var_28], rbp
                mov     qword ptr [rsp+58h+var_28+8], rdi
                mov     [rsp+58h+var_18], rax
                mov     r10, cr8
                mov     eax, 2
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140431E3F

loc_140245E70:                          ; CODE XREF: ExReleaseResourceLite+1EC051↓j
                                        ; ExReleaseResourceLite+1EC05B↓j ...
                mov     byte ptr [rsp+58h+var_18], r10b
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_140431E84

loc_140245E8E:                          ; CODE XREF: ExReleaseResourceLite+1EC098↓j
                                        ; ExReleaseResourceLite+1EC0A7↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_140431EA8
                lea     rdx, [rsp+58h+var_28]
                xchg    rdx, [rdi]
                test    rdx, rdx
                jnz     short loc_140245F0A

loc_140245EA8:                          ; CODE XREF: ExReleaseResourceLite+124↓j
                                        ; ExReleaseResourceLite+1EC0C6↓j
                mov     r8, gs:188h
                movzx   ecx, word ptr [rbx+1Ah]
                mov     rdi, [rsp+58h+arg_8]
                test    cl, 1
                jnz     loc_140431EBB

loc_140245EC3:                          ; DATA XREF: .pdata:00000001400CC3CC↑o
                                        ; .pdata:00000001400CC3D8↑o
                cmp     cs:dword_140C16948, ebp
                jnz     loc_140431EBB

loc_140245ECF:                          ; CODE XREF: ExReleaseResourceLite+1EC0D3↓j
                                        ; ExReleaseResourceLite+1EC0DC↓j
                test    cl, cl
                lea     r8, [rsp+58h+var_28]
                mov     rcx, rbx
                mov     rdx, rsi
                js      short loc_140245EF4
                call    sub_140245FC0
                mov     rsi, [rsp+58h+arg_0]
                mov     rbx, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
algn_140245EF3:                         ; DATA XREF: .pdata:00000001400CC3D8↑o
                                        ; .pdata:00000001400CC3E4↑o
                align 4

loc_140245EF4:                          ; CODE XREF: ExReleaseResourceLite+EC↑j
                                        ; DATA XREF: .pdata:00000001400CC3E4↑o ...
                call    sub_140247BC0
                mov     rsi, [rsp+58h+arg_0]
                mov     rbx, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
algn_140245F09:                         ; DATA XREF: .pdata:00000001400CC3F0↑o
                                        ; .pdata:00000001400CC3FC↑o
                align 2

loc_140245F0A:                          ; CODE XREF: ExReleaseResourceLite+B6↑j
                                        ; DATA XREF: .pdata:00000001400CC3FC↑o ...
                lea     rcx, [rsp+58h+var_28]
                call    sub_14025FC20
                jmp     short loc_140245EA8
; ---------------------------------------------------------------------------

loc_140245F16:                          ; CODE XREF: ExReleaseResourceLite+24↑j
                                        ; DATA XREF: .pdata:00000001400CC408↑o ...
                mov     rcx, cr8
                mov     rdx, gs:188h
                cmp     cl, 2
                ja      loc_140431E08
                cmp     cl, 1
                jnb     loc_140245E1A
                test    dword ptr [rdx+74h], 400h
                jnz     loc_140245E1A
                cmp     dword ptr [rdx+1E4h], 0
                jnz     loc_140245E1A
                jmp     loc_140431E24
; ---------------------------------------------------------------------------

loc_140245F54:                          ; CODE XREF: ExReleaseResourceLite+2D↑j
                mov     rcx, rbx
                call    sub_14038E39C
                mov     rbx, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140245F68:                          ; CODE XREF: ExReleaseResourceLite+1A↑j
                xor     ebp, ebp
                xor     r9d, r9d
                mov     r8, rbx
                mov     [rsp+58h+var_38], rbp
                mov     ecx, 1C6h
                lea     edx, [rbp+0Fh]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
ExReleaseResourceLite endp
