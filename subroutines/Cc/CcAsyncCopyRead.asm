CcAsyncCopyRead proc near               ; DATA XREF: .rdata:000000014006F620↑o
                                        ; .pdata:00000001400D3800↑o

var_58          = qword ptr -58h
var_48          = xmmword ptr -48h
var_38          = byte ptr -38h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 0000000140466E42 SIZE 00000101 BYTES

                mov     r11, rsp
                mov     [r11+10h], rbx
                mov     [r11+18h], rbp
                mov     [r11+20h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rsi, [rcx+30h]
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     r14d, r8d
                movups  [rsp+78h+var_48], xmm0
                mov     [r11-38h], rax
                mov     r13, rcx
                mov     rax, [rcx+28h]
                xor     ebp, ebp
                mov     r12, rdx
                mov     [r11+8], rbp
                mov     rbx, [rax+8]
                mov     rcx, rbx
                call    sub_140265960
                mov     edx, r14d
                mov     r15, rax
                add     rdx, [r12]
                cmp     rdx, [rbx+8]
                jg      loc_140466F25
                cmp     [rsp+78h+arg_20], rbp
                jz      loc_140466E42
                cmp     cs:byte_140CF51B0, bpl
                mov     rdi, [rsp+78h+arg_30]
                jnz     loc_140466E4D

loc_1402FB804:                          ; CODE XREF: CcAsyncCopyRead+16B6D3↓j
                                        ; CcAsyncCopyRead+16B6EB↓j
                mov     edx, 8
                mov     ecx, 200h
                mov     r8d, 73416343h
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jz      loc_140466E70
                lea     rdx, [rsp+78h+arg_0]
                mov     [rax], rbp
                mov     rcx, r15
                call    sub_1402F9A50
                mov     ebp, eax
                test    eax, eax
                js      loc_140466E7B
                test    rdi, rdi
                jz      loc_140466E90

loc_1402FB84B:                          ; CODE XREF: CcAsyncCopyRead+16B719↓j
                mov     rax, [rdi+220h]
                lea     edx, [r14+0FFFh]
                mov     ecx, 0FFFFF000h
                and     rdx, rcx
                mov     rcx, [rax+8B8h]
                test    rcx, rcx
                jnz     loc_1402FB983

loc_1402FB871:                          ; CODE XREF: CcAsyncCopyRead+218↓j
                lea     rcx, [r15+80h]
                lea     rdx, [rsp+78h+var_48]
                call    KeAcquireInStackQueuedSpinLock
                inc     dword ptr [rbx+4]
                lea     rcx, [rsp+78h+var_48]
                inc     dword ptr [rbx+218h]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebp, [rsp+78h+var_38]
                test    eax, eax
                jnz     loc_140466E9E

loc_1402FB8A8:                          ; CODE XREF: CcAsyncCopyRead+16B720↓j
                                        ; CcAsyncCopyRead+16B72C↓j ...
                mov     cr8, rbp
                lock inc dword ptr [rbx+208h]
                mov     rdx, [rsp+78h+arg_0]
                mov     rcx, rdi
                mov     byte ptr [rdx+78h], 5
                mov     [rdx+10h], rbx
                mov     rbx, [rsp+78h+arg_38]
                mov     [rdx+20h], r13
                mov     rax, [r12]
                mov     [rdx+18h], rax
                mov     [rdx+28h], r14d
                mov     [rdx+30h], rsi
                mov     rax, [rbx+10h]
                mov     [rdx+40h], rax
                mov     rax, [rsp+78h+arg_28]
                mov     [rdx+48h], rax
                mov     [rdx+50h], rbx
                call    sub_1402C4F00
                mov     [rdx+38h], eax
                mov     rcx, rdi
                mov     rax, gs:188h
                mov     rsi, [rsp+78h+arg_0]
                mov     rdx, [rax+0B8h]
                mov     [rsi+58h], rdx
                lea     rdx, [rsi+68h]
                mov     [rsi+60h], rdi
                mov     al, [rbx+18h]
                mov     [rsi+70h], al
                mov     eax, [rbx+1Ch]
                mov     [rsi+74h], eax
                and     qword ptr [rdx], 0
                call    sub_1402FBC28
                mov     ecx, [rbx+1Ch]
                cmp     ecx, cs:dword_140C486D0
                ja      loc_140466F06
                mov     edx, ecx
                mov     rcx, rsi
                shl     rdx, 4
                add     rdx, [r15+360h]
                call    sub_1402FB9A4
                lea     r11, [rsp+78h+var_28]
                mov     al, 1
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsi, [r11+48h]
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

loc_1402FB983:                          ; CODE XREF: CcAsyncCopyRead+EB↑j
                test    rdx, rdx
                jz      short loc_1402FB98D
                lock xadd [rcx], rdx

loc_1402FB98D:                          ; CODE XREF: CcAsyncCopyRead+206↑j
                mov     eax, 1
                lock xadd [rcx+10h], rax
                jmp     loc_1402FB871
CcAsyncCopyRead endp
