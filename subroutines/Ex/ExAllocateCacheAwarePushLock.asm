ExAllocateCacheAwarePushLock proc near  ; DATA XREF: .rdata:00000001400A9F78↑o
                                        ; .pdata:00000001400DF728↑o

var_78          = dword ptr -78h
var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404B1BCA SIZE 0000010A BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+98h+var_38], rax
                mov     r13d, ecx
                xorps   xmm0, xmm0
                mov     r15d, 1
                xor     r12b, r12b
                and     r13d, r15d
                mov     edi, 100h
                mov     eax, r13d
                mov     r8d, 70636C50h
                neg     eax
                mov     edx, edi
                movups  [rsp+98h+var_58], xmm0
                sbb     esi, esi
                and     esi, 1FFh
                add     esi, r15d
                mov     ecx, esi
                movups  [rsp+98h+var_48], xmm0
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_1403C84A3
                mov     r8d, edi
                xor     edx, edx
                mov     rcx, rax
                call    memset
                cmp     cs:word_140CFB000, r15w
                jnz     loc_1404B1BCA
                mov     ebp, 1000h
                mov     r8d, 6C636C50h
                mov     edx, ebp
                mov     ecx, esi
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      short loc_1403C84A7
                mov     r8d, ebp
                xor     edx, edx
                mov     rcx, rax
                call    memset
                mov     rax, rbx
                lea     ebp, [r15+1Fh]
                lea     r14d, [r15+7Fh]

loc_1403C8456:                          ; CODE XREF: ExAllocateCacheAwarePushLock+DF↓j
                and     qword ptr [rdi], 0
                mov     [rdi+8], r15b
                mov     [rdi+10h], rbx
                mov     [rax], rdi
                add     rdi, r14
                lea     rax, [rax+8]
                sub     rbp, r15
                jnz     short loc_1403C8456
                mov     rdi, rbx

loc_1403C8474:                          ; CODE XREF: ExAllocateCacheAwarePushLock+115↓j
                                        ; ExAllocateCacheAwarePushLock+E9930↓j ...
                mov     rax, rdi
                mov     rcx, [rsp+98h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+98h+var_28]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403C84A3:                          ; CODE XREF: ExAllocateCacheAwarePushLock+71↑j
                xor     edi, edi
                jmp     short loc_1403C8474
; ---------------------------------------------------------------------------

loc_1403C84A7:                          ; CODE XREF: ExAllocateCacheAwarePushLock+AC↑j
                xor     edi, edi
                jmp     loc_1404B1CBD
; } // starts at 1403C8390
ExAllocateCacheAwarePushLock endp
