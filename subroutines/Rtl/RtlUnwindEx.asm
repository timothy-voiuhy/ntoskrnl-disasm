RtlUnwindEx     proc near               ; CODE XREF: RtlUnwind+9F↓p
                                        ; __C_specific_handler+E0↓p ...

var_1F0         = qword ptr -1F0h
var_1E8         = qword ptr -1E8h
var_1E0         = qword ptr -1E0h
var_1D8         = qword ptr -1D8h
var_1D0         = qword ptr -1D0h
var_1C8         = qword ptr -1C8h
var_1C0         = dword ptr -1C0h
var_1BC         = dword ptr -1BCh
var_1B8         = qword ptr -1B8h
var_1B0         = qword ptr -1B0h
var_1A8         = qword ptr -1A8h
var_1A0         = qword ptr -1A0h
var_198         = qword ptr -198h
var_190         = qword ptr -190h
var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = qword ptr -178h
var_170         = qword ptr -170h
var_168         = qword ptr -168h
var_160         = qword ptr -160h
var_150         = qword ptr -150h
var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = qword ptr -130h
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_108         = dword ptr -108h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = xmmword ptr -0F0h
var_E0          = dword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = dword ptr -0C8h
var_40          = qword ptr -40h
arg_0           = qword ptr  10h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h

; FUNCTION CHUNK AT 000000014044CD16 SIZE 000000DC BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 1E0h
                lea     rbp, [rsp+50h]
                mov     [rbp+1C0h+arg_0], rbx
                mov     rax, cs:__security_cookie
                xor     rax, rbp
                mov     [rbp+1C0h+var_40], rax
                mov     r14, [rbp+1C0h+arg_20]
                mov     r15, r8
                mov     rbx, [rbp+1C0h+arg_28]
                mov     rsi, rcx
                mov     [rbp+1C0h+var_160], rdx
                lea     rcx, [rbp+1C0h+var_150]
                xor     edx, edx
                mov     [rbp+1C0h+var_180], r8
                mov     [rbp+1C0h+var_168], r9
                mov     [rbp+1C0h+var_170], r14
                mov     [rbp+1C0h+var_178], rbx
                lea     r8d, [rdx+50h]
                call    memset
                xor     edx, edx
                lea     rcx, [rbp+1C0h+var_E0]
                mov     r8d, 98h
                call    memset
                xor     eax, eax
                lea     r8, [rbp+1C0h+var_1A0]
                lea     rdx, [rbp+1C0h+var_1A8]
                mov     [rbp+1C0h+var_188], rax
                lea     rcx, [rbp+1C0h+var_1C0]
                mov     [rbp+1C0h+var_1A0], rax
                mov     [rbp+1C0h+var_190], rax
                xor     dil, dil
                mov     [rbp+1C0h+var_1BC], eax
                mov     [rbp+1C0h+var_1A8], rax
                mov     [rbp+1C0h+var_1C0], eax
                call    sub_1402AA0F0
                cmp     [rbp+1C0h+var_1C0], 0Ah
                lea     rdx, [rbp+1C0h+var_1A0]
                mov     eax, 1
                movzx   edi, dil
                lea     rcx, [rbp+1C0h+var_1A8]
                cmovz   edi, eax
                call    sub_14024AED0
                test    al, al
                jz      loc_14044CDE7
                xor     r8d, r8d
                lea     rdx, [rbp+1C0h+var_1BC]
                mov     ecx, 10000Bh
                call    sub_1402AA320
                mov     eax, [rbp+1C0h+var_1BC]
                lea     rcx, [rax+0Fh]
                cmp     rcx, rax
                ja      short loc_1402AB523
                mov     rcx, 0FFFFFFFFFFFFFF0h

loc_1402AB523:                          ; CODE XREF: RtlUnwindEx+E7↑j
                and     rcx, 0FFFFFFFFFFFFFFF0h
                mov     rax, rcx
                call    __chkstk
                sub     rsp, rcx
                lea     r8, [rbp+1C0h+var_1B0]
                xor     r9d, r9d
                mov     edx, 10000Bh
                lea     r12, [rsp+210h+var_1C0]
                mov     rcx, r12
                mov     [rbp+1C0h+var_100], r12
                call    sub_1402AAD20
                mov     rcx, r14
                mov     [rbp+1C0h+var_1B0], r12
                mov     r13, r12
                mov     r12, r14
                call    sub_140406FD0
                test    rbx, rbx
                jz      short loc_1402AB56D
                mov     byte ptr [rbx+6], 1

loc_1402AB56D:                          ; CODE XREF: RtlUnwindEx+137↑j
                xor     ecx, ecx
                test    r15, r15
                jz      loc_1402AB8FC

loc_1402AB578:                          ; CODE XREF: RtlUnwindEx+4FD↓j
                mov     [rbp+1C0h+var_1C0], 2
                test    rsi, rsi
                jz      loc_14044CD16

loc_1402AB588:                          ; CODE XREF: RtlUnwindEx+1A18EE↓j
                mov     [rbp+1C0h+var_1B8], rcx
                nop     dword ptr [rax+00h]

loc_1402AB590:                          ; CODE XREF: RtlUnwindEx+35E↓j
                mov     r12, [r14+0F8h]
                lea     rdx, [rbp+1C0h+var_190]
                mov     rcx, r12
                mov     r8, rbx
                call    RtlLookupFunctionEntry
                mov     r15, rax
                test    rax, rax
                jz      loc_14044CD59
                mov     rdx, r14
                mov     rcx, r13
                call    sub_1402AB940
                mov     rdx, [rbp+1C0h+var_190]
                lea     rax, [rbp+1C0h+var_F8]
                mov     [rsp+210h+var_1C8], rax
                xor     ecx, ecx
                lea     rax, [rbp+1C0h+var_198]
                mov     [rbp+1C0h+var_198], rcx
                mov     [rsp+210h+var_1D0], rax
                xorps   xmm0, xmm0
                lea     rax, [rbp+1C0h+var_1B8]
                mov     [rbp+1C0h+var_F8], rcx
                mov     [rsp+210h+var_1D8], rax
                mov     r9, r15
                lea     rax, [rbp+1C0h+var_188]
                mov     r8, r12
                mov     [rsp+210h+var_1E0], rax
                mov     [rsp+210h+var_1E8], rcx
                mov     ecx, 2
                movdqu  [rbp+1C0h+var_F0], xmm0
                mov     [rsp+210h+var_1F0], r13
                call    sub_1402ACC00
                mov     rbx, [rbp+1C0h+var_1B8]
                mov     r13, [rbp+1C0h+var_198]
                test    bl, 7
                jnz     loc_1402AB7E9
                cmp     rbx, [rbp+1C0h+var_1A8]
                jb      loc_1402AB7E9
                cmp     rbx, [rbp+1C0h+var_1A0]
                jnb     loc_1402AB7E9

loc_1402AB63F:                          ; CODE XREF: RtlUnwindEx+3E2↓j
                test    rsi, rsi
                jz      short loc_1402AB652
                test    dil, dil
                jnz     short loc_1402AB652
                cmp     rsi, rbx
                jb      loc_14044CDE7

loc_1402AB652:                          ; CODE XREF: RtlUnwindEx+212↑j
                                        ; RtlUnwindEx+217↑j
                test    r13, r13
                jz      loc_1402AB793
                mov     rax, [rbp+1C0h+var_160]
                xor     ecx, ecx
                mov     [rbp+1C0h+var_130], rax
                mov     eax, [rbp+1C0h+var_1C0]
                mov     [rbp+1C0h+var_1BC], ecx

loc_1402AB66E:                          ; CODE XREF: RtlUnwindEx+31E↓j
                cmp     rsi, rbx
                jz      loc_1402AB817

loc_1402AB677:                          ; CODE XREF: RtlUnwindEx+3ED↓j
                mov     r10, [rbp+1C0h+var_180]
                xor     bl, bl
                mov     [r10+4], eax
                mov     rax, [rbp+1C0h+var_168]
                mov     [r14+78h], rax
                mov     rax, [rbp+1C0h+var_190]
                mov     rdx, [rbp+1C0h+var_1B8]
                mov     [rbp+1C0h+var_148], rax
                mov     rax, [rbp+1C0h+var_188]
                mov     [rbp+1C0h+var_118], rax
                mov     rax, [rbp+1C0h+var_178]
                mov     [rbp+1C0h+var_110], rax
                mov     [rbp+1C0h+var_150], r12
                mov     [rbp+1C0h+var_140], r15
                mov     [rbp+1C0h+var_138], rdx
                mov     [rbp+1C0h+var_128], r14
                mov     [rbp+1C0h+var_120], r13
                mov     [rbp+1C0h+var_108], ecx
                mov     eax, [r14+30h]
                and     eax, 100040h
                cmp     eax, 100040h
                jz      loc_14044CD23

loc_1402AB6E5:                          ; CODE XREF: RtlUnwindEx+1A18F5↓j
                lea     r9, [rbp+1C0h+var_150]
                mov     r8, r14
                mov     rcx, r10
                call    sub_140407E90
                mov     edx, eax
                test    bl, bl
                jnz     short loc_1402AB712
                mov     eax, [r14+30h]
                mov     ecx, eax
                and     ecx, 100040h
                cmp     ecx, 100040h
                jz      loc_14044CD2A

loc_1402AB712:                          ; CODE XREF: RtlUnwindEx+2C8↑j
                                        ; RtlUnwindEx+1A1901↓j
                and     [rbp+1C0h+var_1C0], 0FFFFFF9Fh
                sub     edx, 1
                jnz     loc_1402AB822
                cmp     [rbp+1C0h+var_1B8], rsi
                jz      short loc_1402AB730
                mov     rax, r14
                mov     r14, [rbp+1C0h+var_1B0]
                mov     [rbp+1C0h+var_1B0], rax

loc_1402AB730:                          ; CODE XREF: RtlUnwindEx+2F3↑j
                stmxcsr dword ptr [rbp+1C0h+var_198]
                mov     eax, dword ptr [rbp+1C0h+var_198]
                mov     [r14+34h], eax
                mov     [r14+118h], eax

loc_1402AB742:                          ; CODE XREF: RtlUnwindEx+1A1924↓j
                mov     rbx, [rbp+1C0h+var_1B8]

loc_1402AB746:                          ; CODE XREF: RtlUnwindEx+4C1↓j
                                        ; RtlUnwindEx+1A190A↓j
                mov     eax, [rbp+1C0h+var_1C0]
                mov     ecx, [rbp+1C0h+var_1BC]
                test    al, 40h
                jnz     loc_1402AB66E

loc_1402AB754:                          ; CODE XREF: RtlUnwindEx+366↓j
                mov     r13, [rbp+1C0h+var_1B0]

loc_1402AB758:                          ; CODE XREF: RtlUnwindEx+376↓j
                                        ; RtlUnwindEx+1A1951↓j
                xor     eax, eax
                movzx   ecx, dil
                cmp     dil, 2
                cmovnz  eax, ecx
                test    bl, 7
                jnz     loc_14044CD91
                cmp     rbx, [rbp+1C0h+var_1A8]
                jb      loc_14044CD91
                cmp     rbx, [rbp+1C0h+var_1A0]
                jnb     loc_14044CD91
                cmp     rbx, rsi
                jz      short loc_1402AB7A8
                mov     rbx, [rbp+1C0h+var_178]
                movzx   edi, al
                jmp     loc_1402AB590
; ---------------------------------------------------------------------------

loc_1402AB793:                          ; CODE XREF: RtlUnwindEx+225↑j
                cmp     rbx, rsi
                jz      short loc_1402AB754
                mov     rax, r14
                mov     r14, [rbp+1C0h+var_1B0]
                mov     r13, rax
                mov     [rbp+1C0h+var_1B0], rax
                jmp     short loc_1402AB758
; ---------------------------------------------------------------------------

loc_1402AB7A8:                          ; CODE XREF: RtlUnwindEx+355↑j
                                        ; RtlUnwindEx+1A1964↓j
                mov     r15, [rbp+1C0h+var_180]
                mov     rax, [rbp+1C0h+var_168]
                mov     [r14+78h], rax
                cmp     dword ptr [r15], 80000029h
                jz      short loc_1402AB7D8
                mov     rax, [rbp+1C0h+var_160]
                mov     [r14+0F8h], rax
                cmp     dword ptr [r15], 80000026h
                jz      short loc_1402AB7D8
                mov     dword ptr [r15], 0C0000027h

loc_1402AB7D8:                          ; CODE XREF: RtlUnwindEx+38B↑j
                                        ; RtlUnwindEx+39F↑j
                mov     rdx, r15
                mov     rcx, r14
                call    sub_1402A9ED8
                nop
                jmp     loc_14044CDBD
; ---------------------------------------------------------------------------

loc_1402AB7E9:                          ; CODE XREF: RtlUnwindEx+1F5↑j
                                        ; RtlUnwindEx+1FF↑j ...
                cmp     dil, 1
                jnz     loc_14044CDE7
                lea     r8, [rbp+1C0h+var_1A0]
                mov     rcx, rbx
                lea     rdx, [rbp+1C0h+var_1A8]
                mov     dil, 2
                call    sub_1402AA0C0
                test    al, al
                jz      loc_14044CDE7
                mov     rbx, [rbp+1C0h+var_1B8]
                jmp     loc_1402AB63F
; ---------------------------------------------------------------------------

loc_1402AB817:                          ; CODE XREF: RtlUnwindEx+241↑j
                or      eax, 20h
                mov     [rbp+1C0h+var_1C0], eax
                jmp     loc_1402AB677
; ---------------------------------------------------------------------------

loc_1402AB822:                          ; CODE XREF: RtlUnwindEx+2E9↑j
                cmp     edx, 2
                jnz     loc_14044CD86
                mov     r9, [rbp+1C0h+var_170]
                mov     r10, [rbp+1C0h+var_148]
                mov     rcx, r9
                mov     rdx, [rbp+1C0h+var_128]
                mov     r12, [rbp+1C0h+var_150]
                mov     r15, [rbp+1C0h+var_140]
                mov     [rbp+1C0h+var_190], r10
                call    sub_1402AB940
                mov     r8, [rbp+1C0h+var_100]
                mov     rdx, r9
                mov     rcx, r8
                mov     [rbp+1C0h+var_1B0], r8
                mov     r14, r9
                call    sub_1402AB940
                mov     [rsp+210h+var_1D8], 0
                lea     rax, [rbp+1C0h+var_1B8]
                mov     [rsp+210h+var_1E0], rax
                mov     r9, r15
                lea     rax, [rbp+1C0h+var_188]
                mov     rdx, r10
                mov     [rsp+210h+var_1E8], rax
                mov     ecx, 2
                mov     [rsp+210h+var_1F0], r8
                mov     r8, r12
                call    RtlVirtualUnwind
                mov     r13, rax
                cmp     rax, [rbp+1C0h+var_120]
                jnz     loc_1402AB932
                mov     rbx, [rbp+1C0h+var_1B8]
                cmp     rbx, [rbp+1C0h+var_138]
                jnz     short loc_1402AB932
                mov     rcx, [rbp+1C0h+var_118]
                cmp     [rbp+1C0h+var_188], rcx
                jnz     short loc_1402AB932
                mov     rax, [rbp+1C0h+var_110]
                lea     r8, [rbp+1C0h+var_1A0]
                or      [rbp+1C0h+var_1C0], 40h
                lea     rcx, [rbp+1C0h+var_1A8]
                mov     [rbp+1C0h+var_178], rax
                mov     rdx, rbx
                mov     eax, [rbp+1C0h+var_108]
                mov     [rbp+1C0h+var_1BC], eax
                call    sub_1402AB3A0
                test    al, al
                jnz     loc_1402AB746
                jmp     loc_14044CD36
; ---------------------------------------------------------------------------

loc_1402AB8FC:                          ; CODE XREF: RtlUnwindEx+142↑j
                mov     rax, [r12+0F8h]
                lea     r15, [rbp+1C0h+var_E0]
                mov     [rbp+1C0h+var_180], r15
                mov     [rbp+1C0h+var_D0], rax
                mov     [rbp+1C0h+var_E0], 0C0000027h
                mov     [rbp+1C0h+var_D8], rcx
                mov     [rbp+1C0h+var_C8], ecx
                jmp     loc_1402AB578
; ---------------------------------------------------------------------------

loc_1402AB932:                          ; CODE XREF: RtlUnwindEx+477↑j
                                        ; RtlUnwindEx+488↑j ...
                mov     ecx, 27h ; '''
                int     29h             ; Win8: RtlFailFast(ecx)
; } // starts at 1402AB430
RtlUnwindEx     endp

; ---------------------------------------------------------------------------
algn_1402AB939:                         ; DATA XREF: .rdata:00000001400628F8↑o
                                        ; .pdata:00000001400D00F8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402AB940   proc near               ; CODE XREF: sub_1402AAF70+13B↑p
                                        ; sub_1402AAF70+318↑p ...

; FUNCTION CHUNK AT 000000014044CDF2 SIZE 0000000C BYTES

                cmp     rdx, rcx
                jz      loc_14044CDF2
                mov     dword ptr [rcx+30h], 0
                mov     eax, [rdx+30h]
                and     eax, 10000Fh
                mov     [rcx+30h], eax
                mov     rax, [rdx+0F8h]
                mov     [rcx+0F8h], rax
                mov     rax, [rdx+90h]
                mov     [rcx+90h], rax
                mov     rax, [rdx+98h]
                mov     [rcx+98h], rax
                mov     rax, [rdx+0A0h]
                mov     [rcx+0A0h], rax
                mov     rax, [rdx+0A8h]
                mov     [rcx+0A8h], rax
                mov     rax, [rdx+0B0h]
                mov     [rcx+0B0h], rax
                mov     rax, [rdx+0D8h]
                mov     [rcx+0D8h], rax
                mov     rax, [rdx+0E0h]
                mov     [rcx+0E0h], rax
                mov     rax, [rdx+0E8h]
                mov     [rcx+0E8h], rax
                mov     rax, [rdx+0F0h]
                mov     [rcx+0F0h], rax
                movups  xmm0, xmmword ptr [rdx+200h]
                movups  xmmword ptr [rcx+200h], xmm0
                movups  xmm0, xmmword ptr [rdx+210h]
                movups  xmmword ptr [rcx+210h], xmm0
                movups  xmm0, xmmword ptr [rdx+220h]
                movups  xmmword ptr [rcx+220h], xmm0
                movups  xmm0, xmmword ptr [rdx+230h]
                movups  xmmword ptr [rcx+230h], xmm0
                movups  xmm0, xmmword ptr [rdx+240h]
                movups  xmmword ptr [rcx+240h], xmm0
                movups  xmm0, xmmword ptr [rdx+250h]
                movups  xmmword ptr [rcx+250h], xmm0
                movups  xmm0, xmmword ptr [rdx+260h]
                movups  xmmword ptr [rcx+260h], xmm0
                movups  xmm0, xmmword ptr [rdx+270h]
                movups  xmmword ptr [rcx+270h], xmm0
                movups  xmm0, xmmword ptr [rdx+280h]
                movups  xmmword ptr [rcx+280h], xmm0
                movups  xmm0, xmmword ptr [rdx+290h]
                movups  xmmword ptr [rcx+290h], xmm0
                movzx   eax, word ptr [rdx+38h]
                mov     [rcx+38h], ax
                movzx   eax, word ptr [rdx+42h]
                mov     [rcx+42h], ax
                mov     eax, [rdx+34h]
                mov     [rcx+34h], eax
                mov     eax, [rdx+44h]
                mov     [rcx+44h], eax
                lea     rax, [rdx+100h]
                movups  xmm0, xmmword ptr [rax]
                add     rcx, 100h
                movups  xmmword ptr [rcx], xmm0
                movups  xmm1, xmmword ptr [rax+10h]
                movups  xmmword ptr [rcx+10h], xmm1
                movups  xmm0, xmmword ptr [rax+20h]
                movups  xmmword ptr [rcx+20h], xmm0
                movups  xmm1, xmmword ptr [rax+30h]
                movups  xmmword ptr [rcx+30h], xmm1
                movups  xmm0, xmmword ptr [rax+40h]
                movups  xmmword ptr [rcx+40h], xmm0
                movups  xmm1, xmmword ptr [rax+50h]
                movups  xmmword ptr [rcx+50h], xmm1
                movups  xmm0, xmmword ptr [rax+60h]
                movups  xmmword ptr [rcx+60h], xmm0
                movups  xmm0, xmmword ptr [rax+70h]
                movups  xmmword ptr [rcx+70h], xmm0
                movups  xmm1, xmmword ptr [rax+80h]
                movups  xmmword ptr [rcx+80h], xmm1
                movups  xmm0, xmmword ptr [rax+90h]
                movups  xmmword ptr [rcx+90h], xmm0
                retn
sub_1402AB940   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1402ABAF9:                         ; DATA XREF: .pdata:00000001400D0104↑o
                align 20h
; Exported entry 2006. RtlCaptureStackBackTrace

; =============== S U B R O U T I N E =======================================


