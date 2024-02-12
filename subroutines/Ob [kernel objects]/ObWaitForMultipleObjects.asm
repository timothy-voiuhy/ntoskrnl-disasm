ObWaitForMultipleObjects proc near      ; CODE XREF: sub_14068A580+114↑p
                                        ; sub_1406F7D60+116↓p
                                        ; DATA XREF: ...

var_4F0         = dword ptr -4F0h
var_4D0         = byte ptr -4D0h
var_4C8         = byte ptr -4C8h
var_4C0         = qword ptr -4C0h
var_4B8         = qword ptr -4B8h
var_4B0         = byte ptr -4B0h
var_4AF         = byte ptr -4AFh
var_4AE         = byte ptr -4AEh
var_4AD         = byte ptr -4ADh
var_4A8         = qword ptr -4A8h
var_4A0         = qword ptr -4A0h
var_498         = qword ptr -498h
var_490         = qword ptr -490h
var_488         = xmmword ptr -488h
var_478         = dword ptr -478h
var_474         = dword ptr -474h
var_470         = dword ptr -470h
var_46C         = dword ptr -46Ch
var_468         = qword ptr -468h
var_460         = qword ptr -460h
var_458         = qword ptr -458h
var_450         = qword ptr -450h
var_448         = qword ptr -448h
var_440         = qword ptr -440h
var_438         = byte ptr -438h
var_240         = qword ptr -240h
var_40          = qword ptr -40h
arg_10          = qword ptr  20h
arg_20          = byte ptr  30h
arg_28          = byte ptr  38h
arg_30          = qword ptr  40h

; FUNCTION CHUNK AT 00000001407E72A0 SIZE 00000021 BYTES
; FUNCTION CHUNK AT 00000001408132F0 SIZE 000001B0 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 4C0h
                lea     rbp, [rsp+40h]
                mov     [rbp+4B0h+arg_10], rbx
                mov     rax, cs:__security_cookie
                xor     rax, rbp
                mov     [rbp+4B0h+var_40], rax
                mov     [rbp+4B0h+var_478], r9d
                mov     [rbp+4B0h+var_4B0], r8b
                mov     r15, rdx
                mov     [rbp+4B0h+var_458], rdx
                mov     edi, ecx
                mov     [rbp+4B0h+var_474], edi
                mov     rax, [rbp+4B0h+arg_30]
                mov     [rbp+4B0h+var_450], rax
                xorps   xmm0, xmm0
                movups  [rbp+4B0h+var_488], xmm0
                xor     edx, edx
                mov     r8d, 200h
                lea     rcx, [rbp+4B0h+var_240]
                call    memset
                mov     [rbp+4B0h+var_4A0], 0
                xor     edx, edx
                mov     r8d, 200h
                lea     rcx, [rbp+4B0h+var_440]
                call    memset
                mov     [rbp+4B0h+var_4AD], 0
                mov     [rbp+4B0h+var_4AE], 0
                xor     eax, eax
                mov     [rbp+4B0h+var_4A8], rax
                xor     esi, esi
                mov     [rbp+4B0h+var_460], rsi
                cmp     edi, 3
                ja      loc_14068AA45

loc_14068A770:                          ; CODE XREF: ObWaitForMultipleObjects+3AA↓j
                                        ; ObWaitForMultipleObjects+188C52↓j
                mov     [rbp+4B0h+var_4AF], sil
                mov     r14, gs:188h
                mov     [rbp+4B0h+var_490], r14
                mov     r10, [r14+0B8h]
                mov     [rbp+4B0h+var_498], r10
                mov     [rbp+4B0h+var_448], r10
                mov     r13b, 1
                dec     word ptr [r14+1E4h]
                cmp     r10, [r14+220h]
                jnz     loc_140813327
                mov     rcx, [r10+570h]
                mov     [rbp+4B0h+var_468], rcx

loc_14068A7B3:                          ; CODE XREF: ObWaitForMultipleObjects+188C6F↓j
                                        ; ObWaitForMultipleObjects+188C78↓j
                movzx   r9d, [rbp+4B0h+var_4B0]

loc_14068A7B8:                          ; CODE XREF: ObWaitForMultipleObjects+188CA4↓j
                xor     r13d, r13d
                lea     r10d, [r13+1]
                lea     r11, cs:140000000h
                mov     rbx, [rbp+4B0h+var_4A0]

loc_14068A7CA:                          ; CODE XREF: ObWaitForMultipleObjects+276↓j
                mov     r14, [r15+r13*8]
                test    r9b, r9b
                jz      loc_14068AABC

loc_14068A7D7:                          ; CODE XREF: ObWaitForMultipleObjects+3FB↓j
                                        ; ObWaitForMultipleObjects+405↓j
                mov     r15, rcx

loc_14068A7DA:                          ; CODE XREF: ObWaitForMultipleObjects+415↓j
                test    r14d, 3FCh
                jz      loc_14068ACF4
                mov     rdx, r14
                mov     rcx, r15
                call    sub_140645680
                mov     rdi, rax
                test    rax, rax
                jz      loc_14068ACF4
                prefetchw byte ptr [rax]
                mov     rcx, [rax]
                mov     qword ptr [rbp+4B0h+var_488], rcx
                mov     rcx, [rax+8]
                mov     qword ptr [rbp+4B0h+var_488+8], rcx

loc_14068A810:                          ; CODE XREF: ObWaitForMultipleObjects+668↓j
                mov     r8, qword ptr [rbp+4B0h+var_488]

loc_14068A814:                          ; CODE XREF: ObWaitForMultipleObjects+17D↓j
                test    r8, 1FFFEh
                jz      loc_14068AAEA
                movzx   eax, r8b
                not     al
                test    al, 1
                jnz     loc_14068AD1B
                lea     rbx, [r8-2]
                mov     rcx, qword ptr [rbp+4B0h+var_488+8]
                mov     rax, r8
                mov     rdx, rcx
                lock cmpxchg16b xmmword ptr [rdi]
                mov     r8, rax
                mov     qword ptr [rbp+4B0h+var_488], rax
                mov     qword ptr [rbp+4B0h+var_488+8], rdx
                jnz     short loc_14068A814
                mov     rbx, rax
                shr     rbx, 1
                cmp     bx, 10h
                jz      loc_14068AC9B
                mov     rbx, rax
                sar     rbx, 10h
                and     rbx, 0FFFFFFFFFFFFFFF0h
                mov     [rbp+4B0h+var_4A0], rbx
                mov     r10d, 1

loc_14068A874:                          ; CODE XREF: ObWaitForMultipleObjects+47B↓j
                                        ; ObWaitForMultipleObjects+619↓j
                movzx   r9d, [rbp+4B0h+var_4B0]
                lea     r11, cs:140000000h

loc_14068A880:                          ; CODE XREF: ObWaitForMultipleObjects+62F↓j
                mov     r14, rbx
                test    rdi, rdi
                jz      loc_14068AB7A
                mov     eax, dword ptr [rbp+4B0h+var_488+8]
                and     eax, 1FFFFFFh
                inc     esi
                mov     [rbp+4B0h+var_46C], esi
                lea     rdi, [rbx+30h]
                mov     [rbp+r13*8+4B0h+var_240], rdi
                cmp     r9b, 1
                jnz     short loc_14068A8C3
                not     eax
                bt      eax, 14h
                jb      loc_140813451
                movzx   eax, byte ptr [rbx+1Ah]
                test    al, 40h
                jnz     loc_14068AC27

loc_14068A8C3:                          ; CODE XREF: ObWaitForMultipleObjects+1D9↑j
                                        ; ObWaitForMultipleObjects+570↓j ...
                shr     r14, 8
                mov     r15d, [rbp+4B0h+var_478]
                movzx   r8d, r14b
                cmp     r15d, 1
                jnz     loc_14068AB50

loc_14068A8D9:                          ; CODE XREF: ObWaitForMultipleObjects+4A4↓j
                mov     rdx, cs:qword_140C15FC8
                test    rdx, rdx
                jnz     loc_1408133E4

loc_14068A8E9:                          ; CODE XREF: ObWaitForMultipleObjects+188D31↓j
                cmp     cs:dword_140CFB010, 0
                jnz     loc_140813411

loc_14068A8F6:                          ; CODE XREF: ObWaitForMultipleObjects+188D61↓j
                movzx   ecx, byte ptr [rbx+18h]
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rcx, rax
                movzx   eax, r14b
                xor     rcx, rax
                mov     r9, ds:rva qword_140CFCE60[r11+rcx*8]
                mov     r8, [r9+20h]
                test    r8b, 1
                jnz     loc_14068AAA5
                test    r8, r8
                js      short loc_14068A929

loc_14068A926:                          ; CODE XREF: ObWaitForMultipleObjects+5AD↓j
                add     r8, rdi

loc_14068A929:                          ; CODE XREF: ObWaitForMultipleObjects+254↑j
                                        ; ObWaitForMultipleObjects+3E7↓j ...
                mov     [rbp+r13*8+4B0h+var_440], r8
                inc     r13d
                mov     edi, [rbp+4B0h+var_474]
                cmp     r13d, edi
                jnb     short loc_14068A94B
                movzx   r9d, [rbp+4B0h+var_4B0]
                mov     rcx, [rbp+4B0h+var_468]
                mov     r15, [rbp+4B0h+var_458]
                jmp     loc_14068A7CA
; ---------------------------------------------------------------------------

loc_14068A94B:                          ; CODE XREF: ObWaitForMultipleObjects+267↑j
                cmp     [rbp+4B0h+var_4AF], 0
                jnz     loc_14081345B

loc_14068A955:                          ; CODE XREF: ObWaitForMultipleObjects+188DA0↓j
                mov     r14, [rbp+4B0h+var_490]
                add     word ptr [r14+1E4h], 1
                jnz     short loc_14068A974
                lea     rax, [r14+98h]
                cmp     [rax], rax
                jnz     loc_14068AC82

loc_14068A974:                          ; CODE XREF: ObWaitForMultipleObjects+292↑j
                                        ; ObWaitForMultipleObjects+5BB↓j ...
                xor     r13b, r13b
                mov     [rbp+4B0h+var_4B0], r13b
                test    r15d, r15d
                jz      loc_14068AB93

loc_14068A984:                          ; CODE XREF: ObWaitForMultipleObjects+4C6↓j
                                        ; ObWaitForMultipleObjects+50F↓j
                                        ; DATA XREF: ...
;   __try { // __except at loc_14068A9CB
                mov     r12, [rbp+4B0h+var_4A8]
                mov     [rsp+4F0h+var_4B8], r12
                mov     rax, [rbp+4B0h+var_450]
                mov     [rsp+4F0h+var_4C0], rax
                movzx   eax, [rbp+4B0h+arg_28]
                mov     [rsp+4F0h+var_4C8], al
                movzx   eax, [rbp+4B0h+arg_20]
                mov     [rsp+4F0h+var_4D0], al
                mov     r9d, 6
                mov     r8d, r15d
                lea     rdx, [rbp+4B0h+var_440]
                mov     ecx, edi
                call    KeWaitForMultipleObjects
                mov     edi, eax
                mov     [rbp+4B0h+var_470], eax
                mov     r15, [rbp+4B0h+var_498]
                jmp     short loc_14068A9E4
;   } // starts at 14068A984
; ---------------------------------------------------------------------------

loc_14068A9CB:                          ; DATA XREF: .rdata:00000001400690E4↑o
;   __except(loc_1407E72A0) // owned by 14068A984
                mov     edi, eax
                mov     [rbp+4B0h+var_470], eax
                mov     r15, [rbp+4B0h+var_448]
                movzx   r13d, [rbp+4B0h+var_4B0]
                mov     esi, [rbp+4B0h+var_46C]
                mov     r14, [rbp+4B0h+var_490]
                mov     r12, [rbp+4B0h+var_4A8]

loc_14068A9E4:                          ; CODE XREF: ObWaitForMultipleObjects+2F9↑j
                                        ; ObWaitForMultipleObjects+4BE↓j
                test    esi, esi
                jz      short loc_14068AA0B
                mov     eax, esi
                lea     rbx, [rbp+4B0h+var_240]
                lea     rbx, [rbx+rax*8]

loc_14068A9F5:                          ; CODE XREF: ObWaitForMultipleObjects+339↓j
                lea     rbx, [rbx-8]
                mov     edx, 7457624Fh
                mov     rcx, [rbx]
                call    ObfDereferenceObjectWithTag
                add     esi, 0FFFFFFFFh
                jnz     short loc_14068A9F5

loc_14068AA0B:                          ; CODE XREF: ObWaitForMultipleObjects+316↑j
                test    r13b, r13b
                jnz     loc_14068AD04

loc_14068AA14:                          ; CODE XREF: ObWaitForMultipleObjects+646↓j
                test    r12, r12
                jnz     short loc_14068AA7F

loc_14068AA19:                          ; CODE XREF: ObWaitForMultipleObjects+3D0↓j
                                        ; ObWaitForMultipleObjects+552↓j ...
                mov     eax, edi
                mov     rcx, [rbp+4B0h+var_40]
                xor     rcx, rbp
                call    __security_check_cookie
                mov     rbx, [rbp+4B0h+arg_10]
                lea     rsp, [rbp+480h]
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

loc_14068AA45:                          ; CODE XREF: ObWaitForMultipleObjects+9A↑j
                lea     rbx, [rdi+rdi*2]
                shl     rbx, 4
                cmp     edi, 0Ah
                ja      loc_14068ABE4
                mov     r8d, 6D57624Fh
                mov     rdx, rbx
                mov     ecx, 200h
                call    ExAllocatePoolWithTag

loc_14068AA69:                          ; CODE XREF: ObWaitForMultipleObjects+542↓j
                mov     [rbp+4B0h+var_4A8], rax
                test    rax, rax
                jz      loc_1408132F0
                mov     [rbp+4B0h+var_4AE], 1
                jmp     loc_14068A770
; ---------------------------------------------------------------------------

loc_14068AA7F:                          ; CODE XREF: ObWaitForMultipleObjects+347↑j
                cmp     [rbp+4B0h+var_4AE], 0
                jz      loc_140813491
                mov     rax, [rbp+4B0h+var_460]
                test    rax, rax
                jnz     loc_14068AC17
                xor     edx, edx
                mov     rcx, r12
                call    ExFreePoolWithTag
                jmp     loc_14068AA19
; ---------------------------------------------------------------------------

loc_14068AAA5:                          ; CODE XREF: ObWaitForMultipleObjects+24B↑j
                test    r8b, 2
                jnz     loc_14068AC5D
                lea     rax, [rdi+r8]
                mov     r8, [rax-1]
                jmp     loc_14068A929
; ---------------------------------------------------------------------------

loc_14068AABC:                          ; CODE XREF: ObWaitForMultipleObjects+101↑j
                mov     rax, r14
                and     rax, 0FFFFFFFF80000000h
                cmp     rax, 0FFFFFFFF80000000h
                jnz     loc_14068A7D7
                cmp     r14, 0FFFFFFFFFFFFFFFDh
                ja      loc_14068A7D7
                xor     r14, rax
                mov     r15, cs:qword_140C259A0
                jmp     loc_14068A7DA
; ---------------------------------------------------------------------------

loc_14068AAEA:                          ; CODE XREF: ObWaitForMultipleObjects+14B↑j
                mov     rdx, rdi
                mov     rcx, r15
                call    sub_140243200
                test    al, al
                jz      loc_140813392
                mov     rbx, [rdi]
                sar     rbx, 10h
                and     rbx, 0FFFFFFFFFFFFFFF0h
                mov     [rbp+4B0h+var_4A0], rbx
                movups  xmm0, xmmword ptr [rdi]
                movups  [rbp+4B0h+var_488], xmm0
                mov     rcx, rdi
                call    sub_1402431A0
                lea     edx, [rax+1]
                mov     rcx, rbx
                call    sub_14034E7A0
                mov     r10d, 1
                mov     eax, r10d
                lock xadd [rdi], rax
                lea     rcx, [r15+30h]
                lock or [rsp+4F0h+var_4F0], 0
                cmp     qword ptr [rcx], 0
                jnz     loc_14068AD3D

loc_14068AB47:                          ; CODE XREF: ObWaitForMultipleObjects+67A↓j
                                        ; ObWaitForMultipleObjects+188CBD↓j
                mov     rbx, [rbp+4B0h+var_4A0]
                jmp     loc_14068A874
; ---------------------------------------------------------------------------

loc_14068AB50:                          ; CODE XREF: ObWaitForMultipleObjects+203↑j
                movzx   ecx, byte ptr [rbx+18h]
                movzx   eax, r14b
                xor     rcx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rcx, rax
                mov     rax, cs:IoCompletionObjectType
                cmp     ds:rva qword_140CFCE60[r11+rcx*8], rax
                jnz     loc_14068A8D9

loc_14068AB7A:                          ; CODE XREF: ObWaitForMultipleObjects+1B6↑j
                mov     edi, 0C0000008h

loc_14068AB7F:                          ; CODE XREF: ObWaitForMultipleObjects+188D3C↓j
                                        ; ObWaitForMultipleObjects+188D7C↓j ...
                mov     r14, [rbp+4B0h+var_490]
                mov     r13b, 1

loc_14068AB86:                          ; CODE XREF: ObWaitForMultipleObjects+188CAE↓j
                                        ; ObWaitForMultipleObjects+188DAA↓j
                mov     r12, [rbp+4B0h+var_4A8]
                mov     r15, [rbp+4B0h+var_498]
                jmp     loc_14068A9E4
; ---------------------------------------------------------------------------

loc_14068AB93:                          ; CODE XREF: ObWaitForMultipleObjects+2AE↑j
                cmp     edi, 1
                jbe     loc_14068A984
                lea     r9, [rbp+4B0h+var_438]
                mov     r10d, 1

loc_14068ABA6:                          ; CODE XREF: ObWaitForMultipleObjects+50D↓j
                mov     ecx, r10d
                mov     r8, [r9]

loc_14068ABAC:                          ; CODE XREF: ObWaitForMultipleObjects+4FA↓j
                lea     ebx, [rcx-1]
                mov     rdx, [rbp+rbx*8+4B0h+var_440]
                cmp     r8, rdx
                ja      short loc_14068ABCC
                jz      loc_140813475
                mov     eax, ecx
                mov     [rbp+rax*8+4B0h+var_440], rdx
                mov     ecx, ebx
                test    ebx, ebx
                jnz     short loc_14068ABAC

loc_14068ABCC:                          ; CODE XREF: ObWaitForMultipleObjects+4E7↑j
                mov     eax, ecx
                mov     [rbp+rax*8+4B0h+var_440], r8
                inc     r10d
                add     r9, 8
                cmp     r10d, edi
                jb      short loc_14068ABA6
                jmp     loc_14068A984
; ---------------------------------------------------------------------------

loc_14068ABE4:                          ; CODE XREF: ObWaitForMultipleObjects+380↑j
                lea     ecx, [rdi-0Bh]
                mov     eax, 24924925h
                mul     ecx
                sub     ecx, edx
                shr     ecx, 1
                lea     eax, [rdx+rcx]
                shr     eax, 3
                shl     rax, 7
                lea     rcx, unk_140CEBE80
                add     rax, rcx
                mov     [rbp+4B0h+var_460], rax
                mov     rcx, rax
                call    sub_14030E5D4
                jmp     loc_14068AA69
; ---------------------------------------------------------------------------

loc_14068AC17:                          ; CODE XREF: ObWaitForMultipleObjects+3C0↑j
                mov     rdx, r12
                mov     rcx, rax
                call    sub_14030D224
                jmp     loc_14068AA19
; ---------------------------------------------------------------------------

loc_14068AC27:                          ; CODE XREF: ObWaitForMultipleObjects+1ED↑j
                and     eax, 7Fh
                movzx   eax, byte ptr [rax+r11+0C25E20h]
                mov     rcx, rbx
                sub     rcx, rax
                mov     rax, [rcx]
                cmp     byte ptr [rax+18h], 0
                jz      loc_14068A8C3
                mov     rax, [rax+10h]
                cmp     rax, 1
                jz      loc_140813447
                mov     rbx, [rbp+4B0h+var_4A0]
                jmp     loc_14068A8C3
; ---------------------------------------------------------------------------

loc_14068AC5D:                          ; CODE XREF: ObWaitForMultipleObjects+3D9↑j
                mov     edx, [r9+0B0h]
                movzx   eax, word ptr [r9+0B4h]
                mov     ecx, [rax+rdi]
                and     ecx, edx
                cmp     ecx, edx
                jz      loc_140813436
                add     r8, 0FFFFFFFFFFFFFFFDh
                jmp     loc_14068A926
; ---------------------------------------------------------------------------

loc_14068AC82:                          ; CODE XREF: ObWaitForMultipleObjects+29E↑j
                cmp     word ptr [r14+1E6h], 0
                jnz     loc_14068A974
                call    KiCheckForKernelApcDelivery
                jmp     loc_14068A974
; ---------------------------------------------------------------------------

loc_14068AC9B:                          ; CODE XREF: ObWaitForMultipleObjects+189↑j
                lea     rbx, ds:0FFFFFFFFFFFFFFFEh[rbx*2]
                xor     rbx, rax
                and     ebx, 1FFFEh
                xor     rbx, rax
                mov     qword ptr [rbp+4B0h+var_488], rbx
                sar     rbx, 10h
                and     rbx, 0FFFFFFFFFFFFFFF0h
                mov     [rbp+4B0h+var_4A0], rbx
                mov     edx, 7FF0h
                mov     rcx, rbx
                call    sub_14034E7A0
                mov     r8d, 7FF0h
                lea     rdx, [rbp+4B0h+var_488]
                mov     rcx, rdi
                call    sub_14035BC70
                movsxd  rcx, eax
                mov     r10d, 1
                test    eax, eax
                jz      loc_14068A874
                jmp     loc_140813383
; ---------------------------------------------------------------------------

loc_14068ACF4:                          ; CODE XREF: ObWaitForMultipleObjects+111↑j
                                        ; ObWaitForMultipleObjects+128↑j ...
                test    r14, r14
                jnz     loc_1408133AD

loc_14068ACFD:                          ; CODE XREF: ObWaitForMultipleObjects+188D0F↓j
                xor     edi, edi
                jmp     loc_14068A880
; ---------------------------------------------------------------------------

loc_14068AD04:                          ; CODE XREF: ObWaitForMultipleObjects+33E↑j
                cmp     [rbp+4B0h+var_4AF], 0
                jnz     loc_14081347F

loc_14068AD0E:                          ; CODE XREF: ObWaitForMultipleObjects+188DBC↓j
                mov     rcx, r14
                call    sub_14021E1F0
                jmp     loc_14068AA14
; ---------------------------------------------------------------------------

loc_14068AD1B:                          ; CODE XREF: ObWaitForMultipleObjects+159↑j
                mov     rdx, rdi
                mov     rcx, r15
                call    sub_1406E4D14
                prefetchw byte ptr [rdi]
                mov     rax, [rdi]
                mov     qword ptr [rbp+4B0h+var_488], rax
                mov     rax, [rdi+8]
                mov     qword ptr [rbp+4B0h+var_488+8], rax
                jmp     loc_14068A810
; ---------------------------------------------------------------------------

loc_14068AD3D:                          ; CODE XREF: ObWaitForMultipleObjects+471↑j
                xor     edx, edx
                call    ExfUnblockPushLock
                mov     r10d, 1
                jmp     loc_14068AB47
; } // starts at 14068A6D0
ObWaitForMultipleObjects endp
