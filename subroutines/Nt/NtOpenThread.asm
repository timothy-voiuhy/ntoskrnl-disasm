NtOpenThread    proc near               ; DATA XREF: .pdata:00000001400FE1B4↑o
                                        ; PAGE:000000014098BE68↓o

var_18          = byte ptr -18h
var_10          = byte ptr -10h

                sub     rsp, 38h
                mov     rax, gs:188h
                mov     r10b, [rax+232h]
                mov     [rsp+38h+var_10], r10b
                mov     [rsp+38h+var_18], r10b
                call    sub_14062778C
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
NtOpenThread    endp

algn_1406298D9:                         ; DATA XREF: .pdata:00000001400FE1B4↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1406298E0   proc near               ; CODE XREF: sub_140629D8C+1F↓p
                                        ; sub_1406B0E44+1A↓p ...

var_D8          = dword ptr -0D8h
var_D0          = dword ptr -0D0h
var_C8          = dword ptr -0C8h
var_C0          = dword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B0          = dword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A0          = dword ptr -0A0h
var_98          = dword ptr -98h
var_90          = dword ptr -90h
var_88          = xmmword ptr -88h
var_78          = byte ptr -78h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0F8h+var_28], rax
                movzx   eax, byte ptr [rcx+0Fh]
                mov     r9, rcx
                movzx   ecx, byte ptr [rcx+0Eh]
                mov     r14, rdx
                mov     [rsp+0F8h+var_90], eax
                xorps   xmm0, xmm0
                mov     [rsp+0F8h+var_98], ecx
                lea     rcx, [rsp+0F8h+var_78]
                movzx   r8d, byte ptr [r9+0Dh]
                movzx   edx, byte ptr [r9+8]
                movzx   r10d, byte ptr [r9+0Ch]
                movzx   r11d, byte ptr [r9+0Bh]
                movzx   ebx, byte ptr [r9+0Ah]
                movzx   edi, byte ptr [r9+9]
                movzx   esi, word ptr [r9+6]
                movzx   ebp, word ptr [r9+4]
                mov     r9d, [r9]
                mov     [rsp+0F8h+var_A0], r8d
                lea     r8, a08x04x04x02x02_0 ; "%08x-%04x-%04x-%02x%02x-%02x%02x%02x%02"...
                mov     [rsp+0F8h+var_A8], r10d
                mov     [rsp+0F8h+var_B0], r11d
                mov     [rsp+0F8h+var_B8], ebx
                mov     [rsp+0F8h+var_C0], edi
                mov     [rsp+0F8h+var_C8], edx
                mov     edx, 4Ch ; 'L'
                mov     [rsp+0F8h+var_D0], esi
                mov     [rsp+0F8h+var_D8], ebp
                movups  [rsp+0F8h+var_88], xmm0
                call    sub_14021C308
                lea     rdx, [rsp+0F8h+var_78]
                lea     rcx, [rsp+0F8h+var_88]
                call    RtlInitUnicodeString
                mov     rdx, r14
                lea     rcx, [rsp+0F8h+var_88]
                call    sub_1406299F0
                cmp     qword ptr [r14], 0
                jnz     short loc_1406299E6
                mov     rax, cs:qword_140CF4500
                mov     [r14], rax
                xor     al, al

loc_1406299BD:                          ; CODE XREF: sub_1406298E0+108↓j
                mov     rcx, [rsp+0F8h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0F8h+var_18]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406299E6:                          ; CODE XREF: sub_1406298E0+CF↑j
                mov     al, 1
                jmp     short loc_1406299BD
; } // starts at 1406298E0
sub_1406298E0   endp

; ---------------------------------------------------------------------------
algn_1406299EA:                         ; DATA XREF: .pdata:00000001400FE1C0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1406299F0   proc near               ; CODE XREF: sub_1406298E0+C6↑p
                                        ; sub_140A7468C+FE↓p
                                        ; DATA XREF: ...

var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001408022FA SIZE 0000001E BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+20h], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 40h
                xor     ebx, ebx
                mov     esi, 200h
                and     [rax+18h], ebx
                mov     r14, rdx
                and     [rdx], rbx
                mov     rbp, rcx
                mov     [rax+10h], esi

loc_140629A19:                          ; CODE XREF: sub_1406299F0+122↓j
                test    rbx, rbx
                jnz     loc_140629AFF

loc_140629A22:                          ; CODE XREF: sub_1406299F0+119↓j
                mov     edx, esi
                mov     ecx, 1
                mov     r8d, 50777445h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_1408022FA
                mov     rdx, cs:qword_140C196D8
                lea     rax, [rsp+58h+arg_8]
                mov     rcx, cs:qword_140C196D0
                mov     r9d, esi
                mov     [rsp+58h+var_28], rax
                mov     r8, rbp
                lea     rax, [rsp+58h+arg_10]
                mov     [rsp+58h+var_30], rbx
                mov     [rsp+58h+var_38], rax
                call    RtlQueryRegistryValueWithFallback
                mov     edi, eax
                cmp     eax, 80000005h
                jz      loc_140629B0E
                cmp     eax, 0C0000023h
                jz      loc_140629B0E
                mov     esi, [rsp+58h+arg_8]

loc_140629A8E:                          ; CODE XREF: sub_1406299F0+1D890F↓j
                test    edi, edi
                jns     short loc_140629AB7

loc_140629A92:                          ; CODE XREF: sub_1406299F0+CC↓j
                                        ; sub_1406299F0+10D↓j ...
                test    rbx, rbx
                jz      short loc_140629AA1
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_140629AA1:                          ; CODE XREF: sub_1406299F0+A5↑j
                mov     rbx, [rsp+58h+arg_0]
                mov     eax, edi
                mov     rbp, [rsp+58h+arg_18]
                add     rsp, 40h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140629AB7:                          ; CODE XREF: sub_1406299F0+A0↑j
                cmp     [rsp+58h+arg_10], 3
                jnz     short loc_140629A92
                mov     rdx, rbx
                mov     ecx, esi
                call    SeValidSecurityDescriptor
                test    al, al
                jz      loc_14080230E
                mov     r8d, 50777445h
                mov     rdx, rsi
                mov     ecx, 1
                call    ExAllocatePoolWithTag
                mov     [r14], rax
                test    rax, rax
                jz      loc_140802304
                mov     r8, rsi
                mov     rdx, rbx
                mov     rcx, rax
                call    memmove
                jmp     short loc_140629A92
; ---------------------------------------------------------------------------

loc_140629AFF:                          ; CODE XREF: sub_1406299F0+2C↑j
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                jmp     loc_140629A22
; ---------------------------------------------------------------------------

loc_140629B0E:                          ; CODE XREF: sub_1406299F0+89↑j
                                        ; sub_1406299F0+94↑j
                mov     esi, [rsp+58h+arg_8]
                jmp     loc_140629A19
sub_1406299F0   endp

; ---------------------------------------------------------------------------
algn_140629B17:                         ; DATA XREF: .rdata:000000014004FF74↑o
                                        ; .pdata:00000001400FE1CC↑o
                align 20h
; Exported entry 2343. RtlQueryRegistryValueWithFallback

; =============== S U B R O U T I N E =======================================


