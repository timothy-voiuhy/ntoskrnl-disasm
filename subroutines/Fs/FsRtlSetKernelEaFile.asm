FsRtlSetKernelEaFile proc near          ; CODE XREF: sub_140726DF4+402↓p
                                        ; DATA XREF: .rdata:000000014007C5B0↑o ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = xmmword ptr -28h
var_8           = byte ptr -8
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407E7E1B SIZE 00000037 BYTES
; FUNCTION CHUNK AT 0000000140823F80 SIZE 0000000F BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], rdi
                push    r14
                sub     rsp, 60h
                mov     esi, r8d
                mov     r14, rdx
                mov     rdi, rcx
                xor     ebx, ebx
                mov     [r11-38h], rbx
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+68h+var_28], xmm0
                mov     [r11-18h], rax
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, [r11-28h]
                call    KeInitializeEvent
                nop

loc_1406E9A21:                          ; DATA XREF: .rdata:000000014007C59C↑o
;   __try { // __finally(loc_1407E7E1B)
                mov     eax, [rdi+50h]
                bt      eax, 0Bh
                jb      loc_1406E9ADB
                mov     rcx, rdi
                call    IoGetRelatedDeviceObject
                mov     [rsp+68h+arg_18], rax
                xor     r8d, r8d
                mov     dl, [rax+4Ch]
                mov     rcx, rax
                call    IoAllocateIrpEx
                mov     rbx, rax
                mov     [rsp+68h+var_38], rax
                test    rax, rax
                jz      loc_1406E9AE2
                lea     rcx, [rax+0B8h]
                mov     rax, [rcx]
                mov     word ptr [rax-48h], 408h
                mov     [rax-18h], rdi
                mov     [rbx+70h], r14
                mov     [rax-40h], esi
                mov     rax, gs:188h
                mov     rbx, [rsp+68h+var_38]
                mov     [rbx+98h], rax
                mov     dword ptr [rbx+10h], 4
                mov     byte ptr [rbx+40h], 0
                mov     rax, [rcx]
                lea     rcx, sub_14034FD50
                mov     [rax-10h], rcx
                lea     rcx, [rsp+68h+var_28]
                mov     [rax-8], rcx
                mov     byte ptr [rax-45h], 0
                mov     byte ptr [rax-45h], 40h ; '@'
                mov     byte ptr [rax-45h], 0C0h
                mov     byte ptr [rax-45h], 0E0h
                mov     rdx, rbx
                mov     rcx, [rsp+68h+arg_18]
                call    IofCallDriver
                cmp     eax, 103h
                jz      short loc_1406E9AE9

loc_1406E9AD6:                          ; CODE XREF: FsRtlSetKernelEaFile+138↓j
                                        ; FsRtlSetKernelEaFile+15A↓j
                mov     edi, [rbx+30h]
                jmp     short loc_1406E9B3C
; ---------------------------------------------------------------------------

loc_1406E9ADB:                          ; CODE XREF: FsRtlSetKernelEaFile+48↑j
                mov     edi, 0C0000010h
                jmp     short loc_1406E9B3C
; ---------------------------------------------------------------------------

loc_1406E9AE2:                          ; CODE XREF: FsRtlSetKernelEaFile+77↑j
                mov     edi, 0C000009Ah
                jmp     short loc_1406E9B3C
; ---------------------------------------------------------------------------

loc_1406E9AE9:                          ; CODE XREF: FsRtlSetKernelEaFile+F4↑j
                lea     rax, [rsp+68h+var_28]
                mov     [rsp+68h+var_30], rax
                and     [rsp+68h+var_40], 0
                and     [rsp+68h+var_48], 0
                xor     r9d, r9d
                xor     r8d, r8d
                lea     rdx, [rsp+68h+var_30]
                lea     ecx, [r9+1]
                call    FsRtlCancellableWaitForMultipleObjects
                cmp     eax, 0C000004Bh
                jnz     short loc_1406E9AD6
                mov     rcx, rbx
                call    IoCancelIrp
                and     [rsp+68h+var_48], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, [rsp+68h+var_28]
                call    KeWaitForSingleObject
                jmp     short loc_1406E9AD6
;   } // starts at 1406E9A21
; ---------------------------------------------------------------------------

loc_1406E9B3C:                          ; CODE XREF: FsRtlSetKernelEaFile+F9↑j
                                        ; FsRtlSetKernelEaFile+100↑j ...
                test    rbx, rbx
                jz      short loc_1406E9B56
                mov     rcx, [rbx+8]
                test    rcx, rcx
                jnz     loc_140823F80

loc_1406E9B4E:                          ; CODE XREF: FsRtlSetKernelEaFile+13A5AA↓j
                mov     rcx, rbx
                call    IoFreeIrp

loc_1406E9B56:                          ; CODE XREF: FsRtlSetKernelEaFile+15F↑j
                mov     eax, edi
                lea     r11, [rsp+68h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     rsp, r11
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406E99E0
FsRtlSetKernelEaFile endp
