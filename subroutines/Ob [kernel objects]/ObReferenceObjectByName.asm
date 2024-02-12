ObReferenceObjectByName proc near       ; CODE XREF: sub_140500CA8+7A↑p
                                        ; sub_140626480+186↓p ...

var_2A0         = qword ptr -2A0h
var_298         = qword ptr -298h
var_290         = qword ptr -290h
var_288         = qword ptr -288h
var_280         = qword ptr -280h
var_278         = qword ptr -278h
var_270         = qword ptr -270h
var_268         = qword ptr -268h
var_260         = qword ptr -260h
var_250         = dword ptr -250h
var_248         = qword ptr -248h
var_240         = xmmword ptr -240h
var_230         = xmmword ptr -230h
var_220         = xmmword ptr -220h
var_210         = xmmword ptr -210h
var_200         = qword ptr -200h
var_1F8         = xmmword ptr -1F8h
var_1E8         = xmmword ptr -1E8h
var_1D8         = qword ptr -1D8h
var_1D0         = byte ptr -1D0h
var_130         = byte ptr -130h
var_50          = qword ptr -50h
arg_20          = qword ptr  30h
arg_28          = byte ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h

; FUNCTION CHUNK AT 0000000140800548 SIZE 00000012 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-188h]
                sub     rsp, 288h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1C0h+var_50], rax
                mov     r14, [rbp+1C0h+arg_20]
                mov     rbx, r8
                mov     r13, [rbp+1C0h+arg_30]
                mov     r12d, edx
                mov     rsi, [rbp+1C0h+arg_38]
                mov     rdi, rcx
                xor     edx, edx
                lea     rcx, [rbp+1C0h+var_130]
                mov     r8d, 0E0h
                mov     r15d, r9d
                call    memset
                xorps   xmm0, xmm0
                lea     rcx, [rbp+1C0h+var_1D0]
                xor     eax, eax
                xor     edx, edx
                mov     r8d, 0A0h
                mov     [rsp+2C0h+var_248], rax
                movups  [rbp+1C0h+var_240], xmm0
                call    memset
                xor     eax, eax
                xorps   xmm1, xmm1
                mov     [rbp+1C0h+var_1D8], rax
                xorps   xmm0, xmm0
                mov     [rbp+1C0h+var_200], rax
                movups  [rbp+1C0h+var_1F8], xmm0
                movups  [rbp+1C0h+var_1E8], xmm0
                movups  [rbp+1C0h+var_230], xmm1
                movups  [rbp+1C0h+var_220], xmm1
                movups  [rbp+1C0h+var_210], xmm1
                test    rdi, rdi
                jz      loc_140800550
                mov     rdx, rdi
                lea     r9d, [rax+1]
                mov     dil, [rbp+1C0h+arg_28]
                lea     r8, [rbp+1C0h+var_240]
                mov     cl, dil
                call    sub_140652450
                xor     ecx, ecx
                mov     [rsp+2C0h+var_250], eax
                test    eax, eax
                js      loc_140625E81
                cmp     word ptr [rbp+1C0h+var_240], cx
                jz      loc_140800550
                test    rbx, rbx
                jnz     loc_140800548
                lea     r9, [r14+4Ch]
                mov     r8d, r15d
                lea     rdx, [rbp+1C0h+var_130]
                lea     rcx, [rbp+1C0h+var_1D0]
                lea     rbx, [rbp+1C0h+var_1D0]
                call    SeCreateAccessState
                xor     r15d, r15d
                mov     [rsp+2C0h+var_250], eax
                test    eax, eax
                js      loc_140625E74

loc_140625D83:                          ; CODE XREF: ObReferenceObjectByName+1DA8DB↓j
                call    PsGetCurrentSilo
                lea     rcx, [rsp+2C0h+var_248]
                mov     r9, r14
                mov     [rsp+2C0h+var_260], rcx
                lea     rdx, [rbp+1C0h+var_240]
                mov     [rsp+2C0h+var_268], r15
                lea     rcx, [rbp+1C0h+var_1F8]
                mov     [rsp+2C0h+var_270], rcx
                mov     r8d, r12d
                mov     [rsp+2C0h+var_278], rbx
                xor     ecx, ecx
                mov     [rsp+2C0h+var_280], rax
                mov     [rsp+2C0h+var_288], r15
                mov     [rsp+2C0h+var_290], r15
                mov     [rsp+2C0h+var_298], r13
                mov     byte ptr [rsp+2C0h+var_2A0], dil
                call    sub_1406483B0
                lea     rcx, [rbp+1C0h+var_1F8]
                mov     [rsp+2C0h+var_250], eax
                call    sub_14021C224
                mov     [rsi], r15
                cmp     [rsp+2C0h+var_250], r15d
                jl      short loc_140625E5A
                mov     rcx, [rsp+2C0h+var_248]
                lea     rax, [rcx-30h]
                shr     rax, 8
                movzx   edx, al
                movzx   eax, byte ptr [rcx-18h]
                lea     rcx, [rbp+1C0h+var_230]
                xor     rdx, rax
                mov     qword ptr [rbp+1C0h+var_210], r15
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rdx, rax
                lea     rax, qword_140CFCE60
                mov     rax, [rax+rdx*8]
                add     rax, 10h
                mov     qword ptr [rbp+1C0h+var_220], rax
                lea     rax, [rbp+1C0h+var_240]
                mov     qword ptr [rbp+1C0h+var_220+8], rax
                call    sub_14024C810
                mov     rcx, [rsp+2C0h+var_248]
                lea     rax, [rsp+2C0h+var_250]
                mov     r9b, dil
                mov     [rsp+2C0h+var_2A0], rax
                mov     rdx, rbx
                call    sub_140625AB8
                test    al, al
                jz      short loc_140625EA5
                mov     rax, [rsp+2C0h+var_248]
                mov     [rsi], rax

loc_140625E55:                          ; CODE XREF: ObReferenceObjectByName+23F↓j
                call    sub_14024C440

loc_140625E5A:                          ; CODE XREF: ObReferenceObjectByName+174↑j
                lea     rax, [rbp+1C0h+var_1D0]
                cmp     rbx, rax
                jnz     short loc_140625E74
                mov     rcx, rbx
                call    sub_14024C4F0
                lea     rcx, [rbx+20h]
                call    SeReleaseSubjectContext

loc_140625E74:                          ; CODE XREF: ObReferenceObjectByName+10D↑j
                                        ; ObReferenceObjectByName+1F1↑j
                lea     rcx, [rbp+1C0h+var_240]
                call    sub_140625EB8
                mov     eax, [rsp+2C0h+var_250]

loc_140625E81:                          ; CODE XREF: ObReferenceObjectByName+D0↑j
                                        ; ObReferenceObjectByName+1DA8E5↓j
                mov     rcx, [rbp+1C0h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 288h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140625EA5:                          ; CODE XREF: ObReferenceObjectByName+1DB↑j
                mov     rcx, [rsp+2C0h+var_248]
                call    PsDereferenceSiloContext
                jmp     short loc_140625E55
; } // starts at 140625C70
ObReferenceObjectByName endp
