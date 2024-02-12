RtlIsSandboxedToken proc near           ; CODE XREF: NtSetInformationFile+194↑p
                                        ; sub_140341EC0+66↑p ...

var_88          = dword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = byte ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_48          = byte ptr -48h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = byte ptr  18h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 00000001407FEA04 SIZE 00000039 BYTES

                mov     rax, rsp
                sub     rsp, 0A8h

loc_14061DE5A:                          ; DATA XREF: .rdata:000000014004E648↑o
                                        ; .rdata:000000014004E668↑o ...
                mov     [rax+8], rbx
                xorps   xmm0, xmm0

loc_14061DE61:                          ; DATA XREF: .rdata:000000014004E668↑o
                                        ; .rdata:000000014004E67C↑o ...
                mov     [rax-8], rbp
                movzx   ebp, dl
                mov     [rax-10h], rsi
                xor     sil, sil
                mov     [rax-18h], rdi
                mov     rdi, rcx
                mov     [rax-28h], r15
                xor     r15d, r15d
                mov     [rax+10h], r15d
                mov     ebx, r15d
                mov     [rax+20h], r15d
                mov     [rax+18h], r15d
                movups  xmmword ptr [rax-48h], xmm0
                movups  xmmword ptr [rax-38h], xmm0
                test    dl, dl
                jz      loc_14061DF6A

loc_14061DE9C:                          ; DATA XREF: .rdata:000000014004E67C↑o
                                        ; .rdata:000000014004E68C↑o ...
                mov     [rax-20h], r14
                test    rcx, rcx
                jz      loc_14061DF73

loc_14061DEA9:                          ; CODE XREF: RtlIsSandboxedToken+12D↓j
                mov     rcx, cs:qword_140D2E820
                lea     rax, [rsp+0A8h+arg_10]
                mov     [rsp+0A8h+var_58], rax
                lea     r14, [rsp+0A8h+var_48]
                lea     rax, [rsp+0A8h+arg_18]
                test    rdi, rdi
                mov     [rsp+0A8h+var_60], rax
                lea     rax, qword_14000A7F8
                cmovnz  r14, rdi
                mov     [rsp+0A8h+var_68], bpl
                mov     [rsp+0A8h+var_70], rax
                xor     r9d, r9d
                mov     [rsp+0A8h+var_78], r15
                mov     r8, r14
                mov     [rsp+0A8h+var_80], r15d
                mov     rbx, r14
                mov     [rsp+0A8h+var_88], 20000h
                lea     edx, [r9+8]
                call    SeAccessCheckWithHint
                cmp     al, 1
                jnz     short loc_14061DF1F
                call    sub_14021B5A0
                test    al, al
                jnz     loc_1407FEA04

loc_14061DF1C:                          ; CODE XREF: RtlIsSandboxedToken+1E0BE8↓j
                mov     sil, 1

loc_14061DF1F:                          ; CODE XREF: RtlIsSandboxedToken+BD↑j
                                        ; RtlIsSandboxedToken+1E0BD4↓j ...
                mov     r14, [rsp+0A8h+var_20]

loc_14061DF27:                          ; CODE XREF: RtlIsSandboxedToken+11D↓j
                                        ; DATA XREF: .pdata:00000001400FDA64↑o ...
                mov     r15, [rsp+0A8h+var_28]
                lea     rax, [rsp+0A8h+var_48]
                mov     rdi, [rsp+0A8h+var_18]
                mov     rbp, [rsp+0A8h+var_8]
                cmp     rbx, rax
                jz      short loc_14061DF82

loc_14061DF49:                          ; CODE XREF: RtlIsSandboxedToken+13A↓j
                                        ; DATA XREF: .pdata:00000001400FDA70↑o ...
                mov     rbx, [rsp+0A8h+arg_0]
                cmp     sil, 1
                mov     rsi, [rsp+0A8h+var_10]
                jnz     short loc_14061DF6F

loc_14061DF5F:                          ; DATA XREF: .pdata:00000001400FDA7C↑o
                                        ; .pdata:00000001400FDA88↑o
                xor     al, al

loc_14061DF61:                          ; CODE XREF: RtlIsSandboxedToken+121↓j
                add     rsp, 0A8h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14061DF6A:                          ; CODE XREF: RtlIsSandboxedToken+46↑j
                                        ; DATA XREF: .pdata:00000001400FDA88↑o ...
                mov     sil, 1
                jmp     short loc_14061DF27
; ---------------------------------------------------------------------------

loc_14061DF6F:                          ; CODE XREF: RtlIsSandboxedToken+10D↑j
                                        ; DATA XREF: .pdata:00000001400FDA94↑o ...
                mov     al, 1
                jmp     short loc_14061DF61
; ---------------------------------------------------------------------------

loc_14061DF73:                          ; CODE XREF: RtlIsSandboxedToken+53↑j
                                        ; DATA XREF: .pdata:00000001400FDAA0↑o ...
                lea     rcx, [rsp+0A8h+var_48]
                call    SeCaptureSubjectContext
                jmp     loc_14061DEA9
; ---------------------------------------------------------------------------

loc_14061DF82:                          ; CODE XREF: RtlIsSandboxedToken+F7↑j
                                        ; DATA XREF: .pdata:00000001400FDAAC↑o ...
                mov     rcx, rbx
                call    SeReleaseSubjectContext
                jmp     short loc_14061DF49
RtlIsSandboxedToken endp
