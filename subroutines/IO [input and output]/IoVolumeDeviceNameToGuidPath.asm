IoVolumeDeviceNameToGuidPath proc near  ; CODE XREF: IoVolumeDeviceToGuidPath+10F↑p
                                        ; IoVolumeDeviceNameToGuid+28↓p
                                        ; DATA XREF: ...

var_E0          = qword ptr -0E0h
var_D8          = dword ptr -0D8h
var_D0          = byte ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B0          = byte ptr -0B0h
var_AF          = byte ptr -0AFh
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = xmmword ptr -98h
var_88          = qword ptr -88h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = dword ptr -60h
var_40          = qword ptr -40h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 000000014080D5AE SIZE 00000072 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_40], rax
                mov     rbx, rcx
                xor     eax, eax
                xor     ecx, ecx
                mov     [rbp+57h+var_88], rax
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_AF], cl
                mov     edi, ecx
                mov     [rbp+57h+var_A0], rcx
                movzx   eax, word ptr [rbx]
                mov     r13b, cl
                mov     [rbp+57h+var_A8], rcx
                xorps   xmm1, xmm1
                mov     ecx, 0F000h
                mov     rsi, rdx
                movups  [rbp+57h+var_98], xmm0
                movups  [rbp+57h+var_80], xmm0
                movups  [rbp+57h+var_70], xmm1
                cmp     ax, cx
                ja      loc_14080D5AE
                lea     r14d, [rax+1Ah]
                mov     r8d, 20473244h
                mov     edx, r14d
                lea     ecx, [rdi+1]
                mov     r12d, r14d
                call    ExAllocatePoolWithTag
                mov     r15, rax
                test    rax, rax
                jz      loc_14080D5B8
                mov     r8d, r12d
                xor     edx, edx
                mov     rcx, rax
                call    memset
                xor     eax, eax
                mov     dword ptr [r15+10h], 18h
                mov     [r15], eax
                lea     rcx, [r15+18h]
                mov     [r15+4], ax
                mov     [r15+8], eax
                mov     [r15+0Ch], ax
                movzx   eax, word ptr [rbx]
                mov     [r15+14h], ax
                movzx   r8d, word ptr [rbx]
                mov     rdx, [rbx+8]
                call    memmove
                lea     rdx, aDeviceMountpoi ; "\\Device\\MountPointManager"
                lea     rcx, [rbp+57h+var_70]
                call    RtlInitUnicodeString
                lea     r9, [rbp+57h+var_A8]
                mov     edx, 80h
                lea     r8, [rbp+57h+var_A0]
                lea     rcx, [rbp+57h+var_70]
                call    IoGetDeviceObjectPointer
                mov     ebx, eax
                test    eax, eax
                js      loc_140670C35
                mov     r13b, 1
                lea     rcx, [rbp+57h+var_98]
                xor     r8d, r8d
                mov     [rbp+57h+var_B0], r13b
                xor     edx, edx
                lea     rdi, [rbp+57h+var_60]
                call    KeInitializeEvent
                mov     r12, [rbp+57h+var_A8]
                lea     rax, [rbp+57h+var_80]
                mov     [rsp+100h+var_C0], rax
                xor     ebx, ebx
                lea     rax, [rbp+57h+var_98]
                mov     r9d, r14d
                mov     [rsp+100h+var_C8], rax
                mov     r8, r15
                mov     [rsp+100h+var_D0], bl
                lea     rax, [rbp+57h+var_60]
                mov     [rsp+100h+var_D8], 20h ; ' '
                mov     rdx, r12
                mov     ecx, 6D0008h
                mov     [rsp+100h+var_E0], rax
                call    IoBuildDeviceIoControlRequest
                test    rax, rax
                jz      loc_14080D5C2
                mov     rdx, rax
                mov     rcx, r12
                call    IofCallDriver
                mov     ebx, eax
                cmp     eax, 103h
                jz      loc_14080D5CC

loc_140670AFA:                          ; CODE XREF: IoVolumeDeviceNameToGuidPath+19CC67↓j
                mov     ecx, 80000000h
                lea     eax, [rbx+rcx]
                test    ecx, eax
                jz      loc_140670C98

loc_140670B0A:                          ; CODE XREF: IoVolumeDeviceNameToGuidPath+31E↓j
                mov     ebx, [rbp+57h+var_60]
                add     ebx, 20h ; ' '
                cmp     ebx, 0FFFFh
                ja      loc_14080D5EC
                mov     edx, ebx
                mov     ecx, 1
                mov     r8d, 20473244h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_14080D5C2
                xor     r8d, r8d
                mov     [rbp+57h+var_AF], r13b
                xor     edx, edx
                lea     rcx, [rbp+57h+var_98]
                call    KeInitializeEvent
                lea     rax, [rbp+57h+var_80]
                mov     r9d, r14d
                mov     [rsp+100h+var_C0], rax
                mov     r8, r15
                lea     rax, [rbp+57h+var_98]
                mov     rdx, r12
                mov     [rsp+100h+var_C8], rax
                mov     ecx, 6D0008h
                xor     eax, eax
                mov     [rsp+100h+var_D0], al
                mov     [rsp+100h+var_D8], ebx
                mov     [rsp+100h+var_E0], rdi
                call    IoBuildDeviceIoControlRequest
                xor     r14d, r14d
                test    rax, rax
                jz      loc_14080D5C2
                mov     rdx, rax
                mov     rcx, r12
                call    IofCallDriver
                mov     ebx, eax
                cmp     eax, 103h
                jz      loc_14080D5F6

loc_140670BA4:                          ; CODE XREF: IoVolumeDeviceNameToGuidPath+19CC8F↓j
                xor     eax, eax
                test    ebx, ebx
                js      loc_140670C35
                mov     ebx, 0C0000225h
                cmp     [rdi+4], eax
                jbe     short loc_140670C35

loc_140670BB8:                          ; CODE XREF: IoVolumeDeviceNameToGuidPath+310↓j
                lea     r13, [r14+r14*2]
                mov     r8d, 0Ah
                mov     r12d, [rdi+r13*8+8]
                lea     rcx, aVolume    ; "\\??\\Volume"
                add     r12, rdi
                mov     rdx, r12
                call    _wcsnicmp
                test    eax, eax
                jnz     loc_140670C89
                movzx   eax, word ptr [rdi+r13*8+0Ch]
                mov     ecx, 1
                mov     [rsi], ax
                mov     r8d, 20473244h
                add     ax, 2
                movzx   edx, ax
                mov     [rsi+2], dx
                call    ExAllocatePoolWithTag
                xor     ebx, ebx
                mov     [rsi+8], rax
                test    rax, rax
                jz      loc_14080D614
                movzx   r8d, word ptr [rsi]
                mov     rdx, r12
                mov     rcx, rax
                call    memmove
                movzx   ecx, word ptr [rsi]
                mov     rax, [rsi+8]
                shr     rcx, 1
                mov     [rax+rcx*2], bx

loc_140670C31:                          ; CODE XREF: IoVolumeDeviceNameToGuidPath+316↓j
                                        ; IoVolumeDeviceNameToGuidPath+19CC9B↓j
                mov     r13b, [rbp+57h+var_B0]

loc_140670C35:                          ; CODE XREF: IoVolumeDeviceNameToGuidPath+FA↑j
                                        ; IoVolumeDeviceNameToGuidPath+228↑j ...
                xor     edx, edx
                mov     rcx, r15
                call    ExFreePoolWithTag
                xor     esi, esi
                cmp     [rbp+57h+var_AF], sil
                jz      short loc_140670C51
                xor     edx, edx
                mov     rcx, rdi
                call    ExFreePoolWithTag

loc_140670C51:                          ; CODE XREF: IoVolumeDeviceNameToGuidPath+2C5↑j
                test    r13b, r13b
                jz      short loc_140670C5F
                mov     rcx, [rbp+57h+var_A0]
                call    PsDereferenceSiloContext

loc_140670C5F:                          ; CODE XREF: IoVolumeDeviceNameToGuidPath+2D4↑j
                                        ; IoVolumeDeviceNameToGuidPath+19CC33↓j ...
                mov     eax, ebx
                mov     rcx, [rbp+57h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+100h+arg_10]
                add     rsp, 0D0h
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

loc_140670C89:                          ; CODE XREF: IoVolumeDeviceNameToGuidPath+25B↑j
                inc     r14d
                cmp     r14d, [rdi+4]
                jb      loc_140670BB8
                jmp     short loc_140670C31
; ---------------------------------------------------------------------------

loc_140670C98:                          ; CODE XREF: IoVolumeDeviceNameToGuidPath+184↑j
                cmp     ebx, 80000005h
                jz      loc_140670B0A
                jmp     short loc_140670C35
; } // starts at 140670980
IoVolumeDeviceNameToGuidPath endp
