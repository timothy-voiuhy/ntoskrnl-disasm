FsRtlKernelFsControlFile proc near      ; CODE XREF: sub_140726DF4+217↓p
                                        ; sub_140726DF4+253↓p ...

var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_18          = byte ptr -18h
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 00000001407E7E95 SIZE 00000037 BYTES
; FUNCTION CHUNK AT 0000000140823FA0 SIZE 0000000F BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     r12d, r9d
                mov     r15, r8
                mov     r13d, edx
                mov     r14, rcx
                xor     ebx, ebx
                mov     [r11-50h], rbx
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+88h+var_30], xmm0
                mov     [r11-20h], rax
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, [r11-30h]
                call    KeInitializeEvent
                mov     esi, r13d
                and     esi, 3

loc_1406E9DCD:                          ; DATA XREF: .rdata:000000014007C654↑o
;   __try { // __finally(loc_1407E7E95)
                mov     eax, [r14+50h]
                bt      eax, 0Bh
                jb      loc_1406E9F5C
                mov     rcx, r14
                call    IoGetRelatedDeviceObject
                mov     [rsp+88h+var_40], rax
                xor     r8d, r8d
                mov     dl, [rax+4Ch]
                mov     rcx, rax
                call    IoAllocateIrpEx
                mov     rbx, rax
                mov     [rsp+88h+var_50], rax
                test    rax, rax
                jz      loc_1406E9F63
                add     rax, 0B8h
                mov     [rsp+88h+var_48], rax
                mov     rcx, [rax]
                mov     word ptr [rcx-48h], 40Dh
                mov     [rcx-18h], r14
                mov     r14d, [rsp+88h+arg_28]
                mov     [rcx-40h], r14d
                mov     [rcx-38h], r12d
                mov     [rcx-30h], r13d
                test    esi, esi
                jnz     loc_1406E9F39
                test    r12d, r12d
                jnz     short loc_1406E9E49
                test    r14d, r14d
                jz      loc_1406E9FDE

loc_1406E9E49:                          ; CODE XREF: FsRtlKernelFsControlFile+BE↑j
                cmp     r12d, r14d
                jnb     loc_1406E9FEC
                mov     rax, [rsp+88h+arg_20]
                mov     [rbx+18h], rax
                mov     r8, r12
                mov     rdx, r15
                mov     rcx, rax
                call    memmove

loc_1406E9E6C:                          ; CODE XREF: FsRtlKernelFsControlFile+270↓j
                mov     dword ptr [rbx+10h], 10h
                mov     rax, [rsp+88h+arg_20]
                mov     [rbx+70h], rax
                test    rax, rax
                jz      short loc_1406E9E88
                or      dword ptr [rbx+10h], 40h

loc_1406E9E88:                          ; CODE XREF: FsRtlKernelFsControlFile+102↑j
                                        ; FsRtlKernelFsControlFile+1C1↓j ...
                mov     rax, gs:188h
                mov     rbx, [rsp+88h+var_50]
                mov     [rbx+98h], rax
                or      dword ptr [rbx+10h], 4
                mov     byte ptr [rbx+40h], 0
                mov     rax, [rsp+88h+var_48]
                mov     rax, [rax]
                lea     rcx, sub_14034FD50
                mov     [rax-10h], rcx
                lea     rcx, [rsp+88h+var_30]
                mov     [rax-8], rcx
                mov     byte ptr [rax-45h], 0
                mov     byte ptr [rax-45h], 40h ; '@'
                mov     byte ptr [rax-45h], 0C0h
                mov     byte ptr [rax-45h], 0E0h
                mov     rdx, rbx
                mov     rcx, [rsp+88h+var_40]
                call    IofCallDriver
                mov     [rsp+88h+var_58], eax
                cmp     eax, 103h
                jz      loc_1406E9FF5

loc_1406E9EED:                          ; CODE XREF: FsRtlKernelFsControlFile+2A4↓j
                                        ; FsRtlKernelFsControlFile+2CA↓j
                mov     esi, [rbx+30h]
                mov     [rsp+88h+var_58], esi
                mov     ecx, [rbx+38h]
                mov     rax, [rsp+88h+arg_30]
                mov     [rax], ecx
                test    esi, esi
                js      loc_1406EA04F
                test    ecx, ecx
                jz      loc_1406EA04F
                cmp     r12d, r14d
                jb      loc_1406EA04F
                cmp     ecx, r14d
                cmovb   r14d, ecx
                mov     r8d, r14d
                mov     rdx, r15
                mov     rcx, [rsp+88h+arg_20]
                call    memmove
                jmp     loc_1406EA04F
; ---------------------------------------------------------------------------

loc_1406E9F39:                          ; CODE XREF: FsRtlKernelFsControlFile+B5↑j
                cmp     esi, 2
                jbe     short loc_1406E9F71
                cmp     esi, 3
                jnz     loc_1406E9E88
                mov     rax, [rsp+88h+arg_20]
                mov     [rbx+70h], rax
                mov     [rcx-28h], r15
                jmp     loc_1406E9E88
; ---------------------------------------------------------------------------

loc_1406E9F5C:                          ; CODE XREF: FsRtlKernelFsControlFile+55↑j
                mov     esi, 0C0000010h
                jmp     short loc_1406E9F68
; ---------------------------------------------------------------------------

loc_1406E9F63:                          ; CODE XREF: FsRtlKernelFsControlFile+81↑j
                                        ; FsRtlKernelFsControlFile+236↓j
                mov     esi, 0C000009Ah

loc_1406E9F68:                          ; CODE XREF: FsRtlKernelFsControlFile+1E1↑j
                mov     [rsp+88h+var_58], esi
                jmp     loc_1406EA04F
; ---------------------------------------------------------------------------

loc_1406E9F71:                          ; CODE XREF: FsRtlKernelFsControlFile+1BC↑j
                test    r15, r15
                jz      short loc_1406E9F83
                mov     [rbx+18h], r15
                mov     dword ptr [rbx+10h], 10h
                jmp     short loc_1406E9F87
; ---------------------------------------------------------------------------

loc_1406E9F83:                          ; CODE XREF: FsRtlKernelFsControlFile+1F4↑j
                and     dword ptr [rbx+10h], 0

loc_1406E9F87:                          ; CODE XREF: FsRtlKernelFsControlFile+201↑j
                mov     rax, [rsp+88h+arg_20]
                test    rax, rax
                jz      loc_1406E9E88
                and     [rsp+88h+var_68], 0
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, r14d
                mov     rcx, rax
                call    IoAllocateMdl
                mov     [rbx+8], rax
                test    rax, rax
                jz      short loc_1406E9F63

loc_1406E9FB8:                          ; DATA XREF: .rdata:000000014007C644↑o
;     __try { // __except at loc_1406E9FD1
                xor     r8d, r8d
                cmp     esi, 1
                setnz   r8b
                xor     edx, edx
                mov     rcx, rax
                call    MmProbeAndLockPages
                jmp     loc_1406E9E88
;     } // starts at 1406E9FB8
; ---------------------------------------------------------------------------

loc_1406E9FD1:                          ; DATA XREF: .rdata:000000014007C644↑o
;   __except(1) // owned by 1406E9FB8
                mov     esi, eax
                mov     [rsp+88h+var_58], eax
                mov     rbx, [rsp+88h+var_50]
                jmp     short loc_1406EA04F
; ---------------------------------------------------------------------------

loc_1406E9FDE:                          ; CODE XREF: FsRtlKernelFsControlFile+C3↑j
                and     dword ptr [rbx+10h], 0
                and     qword ptr [rbx+70h], 0
                jmp     loc_1406E9E88
; ---------------------------------------------------------------------------

loc_1406E9FEC:                          ; CODE XREF: FsRtlKernelFsControlFile+CC↑j
                mov     [rbx+18h], r15
                jmp     loc_1406E9E6C
; ---------------------------------------------------------------------------

loc_1406E9FF5:                          ; CODE XREF: FsRtlKernelFsControlFile+167↑j
                lea     rax, [rsp+88h+var_30]
                mov     [rsp+88h+var_38], rax
                and     [rsp+88h+var_60], 0
                and     [rsp+88h+var_68], 0
                xor     r9d, r9d
                xor     r8d, r8d
                lea     rdx, [rsp+88h+var_38]
                lea     ecx, [r9+1]
                call    FsRtlCancellableWaitForMultipleObjects
                cmp     eax, 0C000004Bh
                jnz     loc_1406E9EED
                mov     rcx, rbx
                call    IoCancelIrp
                and     [rsp+88h+var_68], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, [rsp+88h+var_30]
                call    KeWaitForSingleObject
                jmp     loc_1406E9EED
;   } // starts at 1406E9DCD
; ---------------------------------------------------------------------------

loc_1406EA04F:                          ; CODE XREF: FsRtlKernelFsControlFile+183↑j
                                        ; FsRtlKernelFsControlFile+18B↑j ...
                test    rbx, rbx
                jz      short loc_1406EA069
                mov     rcx, [rbx+8]
                test    rcx, rcx
                jnz     loc_140823FA0

loc_1406EA061:                          ; CODE XREF: FsRtlKernelFsControlFile+13A22A↓j
                mov     rcx, rbx
                call    IoFreeIrp

loc_1406EA069:                          ; CODE XREF: FsRtlKernelFsControlFile+2D2↑j
                mov     eax, esi
                lea     r11, [rsp+88h+var_18]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     r12, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406E9D80
FsRtlKernelFsControlFile endp
