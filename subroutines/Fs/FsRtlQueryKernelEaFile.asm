FsRtlQueryKernelEaFile proc near        ; CODE XREF: sub_140727414+211↓p
                                        ; DATA XREF: .rdata:000000014007C604↑o ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
var_8           = byte ptr -8
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h
arg_38          = byte ptr  40h
arg_40          = qword ptr  48h

; FUNCTION CHUNK AT 00000001407E7E58 SIZE 00000037 BYTES
; FUNCTION CHUNK AT 0000000140823F90 SIZE 0000000F BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], rdi
                mov     [r11+20h], r14
                push    r15
                sub     rsp, 60h
                mov     sil, r9b
                mov     r14d, r8d
                mov     r15, rdx
                mov     rdi, rcx
                xor     ebx, ebx
                mov     [r11-38h], rbx
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+68h+var_20], xmm0
                mov     [r11-10h], rax
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, [r11-20h]
                call    KeInitializeEvent
                nop

loc_1406E9BC8:                          ; DATA XREF: .rdata:000000014007C5F0↑o
;   __try { // __finally(loc_1407E7E58)
                mov     eax, [rdi+50h]
                bt      eax, 0Bh
                jb      loc_1406E9CCB
                mov     rcx, rdi
                call    IoGetRelatedDeviceObject
                mov     [rsp+68h+var_30], rax
                xor     r8d, r8d
                mov     dl, [rax+4Ch]
                mov     rcx, rax
                call    IoAllocateIrpEx
                mov     rbx, rax
                mov     [rsp+68h+var_38], rax
                test    rax, rax
                jz      loc_1406E9CD2
                lea     rdx, [rax+0B8h]
                mov     rcx, [rdx]
                mov     byte ptr [rcx-48h], 7
                mov     [rcx-18h], rdi
                mov     [rax+70h], r15
                mov     [rcx-40h], r14d
                mov     rax, [rsp+68h+arg_20]
                mov     [rcx-38h], rax
                mov     eax, [rsp+68h+arg_28]
                mov     [rcx-30h], eax
                mov     rax, [rsp+68h+arg_30]
                test    rax, rax
                jnz     loc_1406E9CD9
                and     [rcx-28h], eax

loc_1406E9C45:                          ; CODE XREF: FsRtlQueryKernelEaFile+162↓j
                cmp     [rsp+68h+arg_38], 0
                jz      short loc_1406E9C53
                or      byte ptr [rcx-46h], 1

loc_1406E9C53:                          ; CODE XREF: FsRtlQueryKernelEaFile+CD↑j
                test    sil, sil
                jnz     short loc_1406E9CC5

loc_1406E9C58:                          ; CODE XREF: FsRtlQueryKernelEaFile+149↓j
                mov     rax, gs:188h
                mov     rbx, [rsp+68h+var_38]
                mov     [rbx+98h], rax
                mov     dword ptr [rbx+10h], 4
                mov     byte ptr [rbx+40h], 0
                mov     rax, [rdx]
                lea     rcx, sub_14034FD50
                mov     [rax-10h], rcx
                lea     rcx, [rsp+68h+var_20]
                mov     [rax-8], rcx
                mov     byte ptr [rax-45h], 0
                mov     byte ptr [rax-45h], 40h ; '@'
                mov     byte ptr [rax-45h], 0C0h
                mov     byte ptr [rax-45h], 0E0h
                mov     rdx, rbx
                mov     rcx, [rsp+68h+var_30]
                call    IofCallDriver
                cmp     eax, 103h
                jz      short loc_1406E9CE7

loc_1406E9CB3:                          ; CODE XREF: FsRtlQueryKernelEaFile+196↓j
                                        ; FsRtlQueryKernelEaFile+1B8↓j
                mov     edi, [rbx+30h]
                mov     ecx, [rbx+38h]
                mov     rax, [rsp+68h+arg_40]
                mov     [rax], ecx
                jmp     short loc_1406E9D3D
; ---------------------------------------------------------------------------

loc_1406E9CC5:                          ; CODE XREF: FsRtlQueryKernelEaFile+D6↑j
                or      byte ptr [rcx-46h], 2
                jmp     short loc_1406E9C58
; ---------------------------------------------------------------------------

loc_1406E9CCB:                          ; CODE XREF: FsRtlQueryKernelEaFile+4F↑j
                mov     edi, 0C0000010h
                jmp     short loc_1406E9D3D
; ---------------------------------------------------------------------------

loc_1406E9CD2:                          ; CODE XREF: FsRtlQueryKernelEaFile+7B↑j
                mov     edi, 0C000009Ah
                jmp     short loc_1406E9D3D
; ---------------------------------------------------------------------------

loc_1406E9CD9:                          ; CODE XREF: FsRtlQueryKernelEaFile+BC↑j
                mov     eax, [rax]
                mov     [rcx-28h], eax
                or      byte ptr [rcx-46h], 4
                jmp     loc_1406E9C45
; ---------------------------------------------------------------------------

loc_1406E9CE7:                          ; CODE XREF: FsRtlQueryKernelEaFile+131↑j
                lea     rax, [rsp+68h+var_20]
                mov     [rsp+68h+var_28], rax
                and     [rsp+68h+var_40], 0
                and     [rsp+68h+var_48], 0
                xor     r9d, r9d
                xor     r8d, r8d
                lea     rdx, [rsp+68h+var_28]
                lea     ecx, [r9+1]
                call    FsRtlCancellableWaitForMultipleObjects
                cmp     eax, 0C000004Bh
                jnz     short loc_1406E9CB3
                mov     rcx, rbx
                call    IoCancelIrp
                and     [rsp+68h+var_48], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, [rsp+68h+var_20]
                call    KeWaitForSingleObject
                jmp     loc_1406E9CB3
;   } // starts at 1406E9BC8
; ---------------------------------------------------------------------------

loc_1406E9D3D:                          ; CODE XREF: FsRtlQueryKernelEaFile+143↑j
                                        ; FsRtlQueryKernelEaFile+150↑j ...
                test    rbx, rbx
                jz      short loc_1406E9D57
                mov     rcx, [rbx+8]
                test    rcx, rcx
                jnz     loc_140823F90

loc_1406E9D4F:                          ; CODE XREF: FsRtlQueryKernelEaFile+13A41A↓j
                mov     rcx, rbx
                call    IoFreeIrp

loc_1406E9D57:                          ; CODE XREF: FsRtlQueryKernelEaFile+1C0↑j
                mov     eax, edi
                lea     r11, [rsp+68h+var_8]
                mov     rbx, [r11+10h]
                mov     rsi, [r11+18h]
                mov     rdi, [r11+20h]
                mov     r14, [r11+28h]
                mov     rsp, r11
                pop     r15
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406E9B80
FsRtlQueryKernelEaFile endp
