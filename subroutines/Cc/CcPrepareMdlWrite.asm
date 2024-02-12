CcPrepareMdlWrite proc near             ; CODE XREF: FsRtlPrepareMdlWriteDev+2C0↓p
                                        ; DATA XREF: .rdata:0000000140088004↑o ...

var_D8          = qword ptr -0D8h
var_D0          = dword ptr -0D0h
var_C8          = dword ptr -0C8h
var_C4          = dword ptr -0C4h
var_C0          = dword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = xmmword ptr -90h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 000000014041B718 SIZE 00000194 BYTES
; FUNCTION CHUNK AT 000000014048A07A SIZE 0000006E BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+20h], r9
                mov     [r11+18h], r8d
                mov     [r11+10h], rdx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0C0h
                mov     edi, r8d
                mov     rbx, rdx
                xor     r12d, r12d
                mov     [rsp+0F8h+var_A8], r12
                mov     [rsp+0F8h+var_B0], r12
                mov     [rsp+0F8h+var_C0], r12d
                mov     esi, r12d
                mov     [rsp+0F8h+var_B8], r12d
                mov     [rsp+0F8h+var_A0], r12
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+0F8h+var_90], xmm0
                mov     [r11-80h], rax
                mov     rax, [rcx+28h]
                mov     r14, [rax+8]
                mov     [rsp+0F8h+var_78], r14
                mov     eax, [rcx+50h]
                test    al, 10h
                jnz     short loc_14035E7F0
                xor     r9d, r9d
                mov     r8, r14
                mov     edx, edi
                call    sub_14035EAEC
                test    al, al
                jnz     loc_14048A07A

loc_14035E7F0:                          ; CODE XREF: CcPrepareMdlWrite+69↑j
                mov     rbx, [rbx]
                mov     [rsp+0F8h+var_98], rbx

loc_14035E7F8:                          ; DATA XREF: .rdata:0000000140087FF0↑o
;   __try { // __finally(loc_14041B718)
                or      r15, 0FFFFFFFFFFFFFFFFh

loc_14035E7FC:                          ; CODE XREF: CcPrepareMdlWrite+281↓j
                test    edi, edi
                jz      loc_14035EA79
                mov     [rsp+0F8h+var_C8], r12d
                mov     [rsp+0F8h+var_70], r12
                mov     [rsp+0F8h+var_D0], r12d
                mov     dword ptr [rsp+0F8h+var_D8], r12d
                lea     r9, [rsp+0F8h+var_C8]
                lea     r8, [rsp+0F8h+var_A0]
                mov     rdx, rbx
                mov     rcx, r14
                call    sub_140273980
                mov     [rsp+0F8h+var_68], rax
                mov     r12d, [rsp+0F8h+var_C8]
                cmp     r12d, edi
                cmova   r12d, edi
                mov     [rsp+0F8h+var_C8], r12d
                mov     edi, r12d
                add     rdi, rbx
                mov     [rsp+0F8h+var_70], rdi
                mov     esi, 2
                mov     [rsp+0F8h+var_C4], esi
                test    ebx, 0FFFh
                jnz     short loc_14035E879
                lea     eax, [rsi+1]
                cmp     r12d, 1000h
                cmovnb  esi, eax
                mov     [rsp+0F8h+var_C4], esi

loc_14035E879:                          ; CODE XREF: CcPrepareMdlWrite+F6↑j
                test    edi, 0FFFh
                jz      loc_14035EA2D

loc_14035E885:                          ; CODE XREF: CcPrepareMdlWrite+2C4↓j
                mov     [rsp+0F8h+var_B0], rbx
                and     ebx, 0FFFFF000h
                mov     dword ptr [rsp+0F8h+var_B0], ebx
                lea     r13, [r14+118h]
                mov     rcx, r13
                call    ExAcquireFastMutex
                mov     rbx, [r14+30h]
                sub     rbx, [rsp+0F8h+var_B0]
                mov     [rsp+0F8h+var_B0], rbx
                mov     rcx, r13
                call    KeReleaseGuardedMutex
                test    rbx, rbx
                jg      loc_14035EA0C
                or      esi, 7

loc_14035E8C5:                          ; CODE XREF: CcPrepareMdlWrite+2B8↓j
                mov     [rsp+0F8h+var_C4], esi

loc_14035E8C9:                          ; CODE XREF: CcPrepareMdlWrite+2A4↓j
                                        ; CcPrepareMdlWrite+2AF↓j
                mov     r9, [rsp+0F8h+var_68]
                mov     r8b, 1
                mov     edx, esi
                mov     ecx, r12d
                call    sub_140273E50
                and     [rsp+0F8h+var_D8], 0
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, r12d
                mov     rcx, [rsp+0F8h+var_68]
                call    IoAllocateMdl
                mov     [rsp+0F8h+var_A8], rax
                xor     r12d, r12d
                test    rax, rax
                jz      loc_14035EA39
                mov     rax, gs:188h
                mov     [rsp+0F8h+var_58], rax
                movzx   ebx, byte ptr [rax+51Dh]
                add     ebx, 2
                mov     [rsp+0F8h+var_C0], ebx
                mov     rax, gs:188h
                mov     [rsp+0F8h+var_50], rax
                mov     byte ptr [rax+51Dh], 1
                xor     edx, edx
                lea     r8d, [r12+1]
                mov     rcx, [rsp+0F8h+var_A8]
                call    sub_140221A30
                mov     rax, gs:188h
                mov     [rsp+0F8h+var_48], rax
                sub     bl, 2
                mov     [rax+51Dh], bl
                mov     [rsp+0F8h+var_C0], r12d
                mov     rcx, r13
                call    ExAcquireFastMutex
                cmp     rdi, [r14+30h]
                jle     short loc_14035E984
                mov     [r14+30h], rdi

loc_14035E984:                          ; CODE XREF: CcPrepareMdlWrite+20E↑j
                mov     rcx, r13
                call    KeReleaseGuardedMutex
                mov     rax, [rsp+0F8h+var_A0]
                mov     rbx, [rax+8]
                mov     ecx, r15d
                lock xadd [rax+10h], ecx
                add     ecx, r15d
                test    cx, cx
                jz      short loc_14035E9F6

loc_14035E9A5:                          ; CODE XREF: CcPrepareMdlWrite+29A↓j
                mov     [rsp+0F8h+var_A0], r12
                mov     r9, [rsp+0F8h+arg_18]
                mov     rcx, [r9]
                test    rcx, rcx
                jnz     loc_14035EA4F
                mov     rax, [rsp+0F8h+var_A8]
                mov     [r9], rax

loc_14035E9C6:                          ; CODE XREF: CcPrepareMdlWrite+304↓j
                mov     [rsp+0F8h+var_A8], r12
                mov     rbx, rdi
                mov     [rsp+0F8h+var_98], rbx
                mov     esi, [rsp+0F8h+var_B8]
                add     esi, [rsp+0F8h+var_C8]
                mov     [rsp+0F8h+var_B8], esi
                mov     edi, [rsp+0F8h+arg_10]
                sub     edi, [rsp+0F8h+var_C8]
                mov     [rsp+0F8h+arg_10], edi
                jmp     loc_14035E7FC
; ---------------------------------------------------------------------------

loc_14035E9F6:                          ; CODE XREF: CcPrepareMdlWrite+233↑j
                mov     rcx, [rbx+0B8h]
                test    rcx, rcx
                jnz     short loc_14035EA43

loc_14035EA02:                          ; CODE XREF: CcPrepareMdlWrite+2DD↓j
                lock add [rbx+220h], r15d
                jmp     short loc_14035E9A5
; ---------------------------------------------------------------------------

loc_14035EA0C:                          ; CODE XREF: CcPrepareMdlWrite+14C↑j
                cmp     dword ptr [rsp+0F8h+var_B0], 1000h
                ja      loc_14035E8C9
                cmp     dword ptr [rsp+0F8h+var_B0+4], 0
                jnz     loc_14035E8C9
                or      esi, 6
                jmp     loc_14035E8C5
; ---------------------------------------------------------------------------

loc_14035EA2D:                          ; CODE XREF: CcPrepareMdlWrite+10F↑j
                or      esi, 4
                mov     [rsp+0F8h+var_C4], esi
                jmp     loc_14035E885
; ---------------------------------------------------------------------------

loc_14035EA39:                          ; CODE XREF: CcPrepareMdlWrite+195↑j
                mov     ecx, 0C000009Ah
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------

loc_14035EA43:                          ; CODE XREF: CcPrepareMdlWrite+290↑j
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent
                jmp     short loc_14035EA02
; ---------------------------------------------------------------------------

loc_14035EA4F:                          ; CODE XREF: CcPrepareMdlWrite+248↑j
                mov     [rsp+0F8h+var_60], rcx

loc_14035EA57:                          ; CODE XREF: CcPrepareMdlWrite+2FA↓j
                mov     rax, [rcx]
                test    rax, rax
                jz      short loc_14035EA6C
                mov     rcx, rax
                mov     [rsp+0F8h+var_60], rax
                jmp     short loc_14035EA57
; ---------------------------------------------------------------------------

loc_14035EA6C:                          ; CODE XREF: CcPrepareMdlWrite+2ED↑j
                mov     rax, [rsp+0F8h+var_A8]
                mov     [rcx], rax
                jmp     loc_14035E9C6
;   } // starts at 14035E7F8
; ---------------------------------------------------------------------------

loc_14035EA79:                          ; CODE XREF: CcPrepareMdlWrite+8E↑j
                                        ; DATA XREF: .rdata:0000000140087FF0↑o
                mov     rcx, r14
                call    sub_140265960
                mov     rdx, [rsp+0F8h+arg_20]
                mov     [rdx], r12d
                mov     ecx, esi
                mov     [rdx+8], rcx
                lea     rcx, [rax+80h]
                lea     rdx, [rsp+0F8h+var_90]
                call    KeAcquireInStackQueuedSpinLock
                inc     dword ptr [r14+4]
                inc     dword ptr [r14+218h]
                lea     rcx, [rsp+0F8h+var_90]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     rbx, [rsp+0F8h+var_80]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14048A085

loc_14035EACB:                          ; CODE XREF: CcPrepareMdlWrite+12B917↓j
                                        ; CcPrepareMdlWrite+12B923↓j ...
                movzx   eax, bl
                mov     cr8, rax
                add     rsp, 0C0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14035E770
CcPrepareMdlWrite endp
