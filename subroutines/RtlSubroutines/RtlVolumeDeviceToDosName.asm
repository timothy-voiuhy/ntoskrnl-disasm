RtlVolumeDeviceToDosName proc near      ; CODE XREF: sub_14069BB18+C1↑p
                                        ; sub_1406C29E4+9E↑p ...

var_2A0         = qword ptr -2A0h
var_298         = dword ptr -298h
var_290         = byte ptr -290h
var_288         = qword ptr -288h
var_280         = qword ptr -280h
var_270         = qword ptr -270h
var_268         = xmmword ptr -268h
var_258         = qword ptr -258h
var_250         = xmmword ptr -250h
var_240         = qword ptr -240h
var_238         = xmmword ptr -238h
var_228         = dword ptr -228h
var_220         = byte ptr -220h
var_20          = qword ptr -20h
var_10          = byte ptr -10h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 000000014081CFAA SIZE 00000092 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx ; IoVolumeDeviceToDosName
                mov     [rsp-8+arg_18], rsi
                push    rbp
                push    rdi
                push    r15
                lea     rbp, [rsp-1B0h]
                sub     rsp, 2B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1C0h+var_20], rax
                xor     eax, eax
                xor     r15d, r15d
                xorps   xmm0, xmm0
                mov     [rsp+2C0h+var_258], rax
                mov     eax, [rcx+48h]
                xorps   xmm1, xmm1
                mov     [rbp+1C0h+var_240], r15
                mov     rsi, rdx
                mov     [rsp+2C0h+var_270], r15
                mov     rbx, rcx
                movups  [rsp+2C0h+var_268], xmm0
                movups  [rsp+2C0h+var_250], xmm0
                movups  [rbp+1C0h+var_238], xmm1
                cmp     eax, 24h ; '$'
                ja      loc_14081D032
                mov     rcx, 1080000084h
                bt      rcx, rax
                jnb     loc_14081D032
                xor     r8d, r8d
                lea     rcx, [rsp+2C0h+var_268]
                xor     edx, edx
                call    KeInitializeEvent
                lea     rax, [rsp+2C0h+var_250]
                xor     r9d, r9d
                mov     [rsp+2C0h+var_280], rax
                xor     r8d, r8d
                lea     rax, [rsp+2C0h+var_268]
                mov     rdx, rbx
                mov     [rsp+2C0h+var_288], rax
                mov     ecx, 4D0008h
                mov     [rsp+2C0h+var_290], r15b
                lea     rax, [rbp+1C0h+var_220]
                mov     [rsp+2C0h+var_298], 200h
                mov     [rsp+2C0h+var_2A0], rax
                call    IoBuildDeviceIoControlRequest
                test    rax, rax
                jz      loc_14081CFAA
                mov     rdx, rax
                mov     rcx, rbx
                call    IofCallDriver
                cmp     eax, 103h
                jz      loc_14081CFB4

loc_1406C32B6:                          ; CODE XREF: RtlVolumeDeviceToDosName+159DFF↓j
                test    eax, eax
                js      loc_1406C3457
                lea     rdx, aDeviceMountpoi ; "\\Device\\MountPointManager"
                lea     rcx, [rbp+1C0h+var_238]
                call    RtlInitUnicodeString
                lea     r9, [rsp+2C0h+var_270]
                mov     edx, 80h
                lea     r8, [rbp+1C0h+var_240]
                lea     rcx, [rbp+1C0h+var_238]
                call    IoGetDeviceObjectPointer
                test    eax, eax
                js      loc_1406C3457
                xor     r8d, r8d
                lea     rcx, [rsp+2C0h+var_268]
                xor     edx, edx
                call    KeInitializeEvent
                mov     rdx, [rsp+2C0h+var_270]
                lea     rax, [rsp+2C0h+var_250]
                mov     [rsp+2C0h+var_280], rax
                lea     r8, [rbp+1C0h+var_220]
                lea     rax, [rsp+2C0h+var_268]
                mov     r9d, 200h
                mov     [rsp+2C0h+var_288], rax
                mov     ecx, 6D0030h
                mov     [rsp+2C0h+var_290], r15b
                lea     rax, [rbp+1C0h+var_228]
                mov     [rsp+2C0h+var_298], 8
                mov     [rsp+2C0h+var_2A0], rax
                call    IoBuildDeviceIoControlRequest
                test    rax, rax
                jz      loc_14081D008
                mov     rcx, [rsp+2C0h+var_270]
                mov     rdx, rax
                call    IofCallDriver
                mov     ebx, eax
                cmp     eax, 103h
                jz      loc_14081CFD4

loc_1406C3362:                          ; CODE XREF: RtlVolumeDeviceToDosName+159E1F↓j
                mov     ecx, 80000000h
                lea     eax, [rbx+rcx]
                test    ecx, eax
                jz      loc_1406C347F

loc_1406C3372:                          ; CODE XREF: RtlVolumeDeviceToDosName+2B5↓j
                mov     ebx, [rbp+1C0h+var_228]
                add     ebx, 8
                cmp     ebx, 0FFFFh
                ja      loc_14081CFF4
                mov     edx, ebx
                mov     ecx, 1
                mov     r8d, 20643244h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_14081D008
                xor     r8d, r8d
                lea     rcx, [rsp+2C0h+var_268]
                xor     edx, edx
                call    KeInitializeEvent
                mov     rdx, [rsp+2C0h+var_270]
                lea     rax, [rsp+2C0h+var_250]
                mov     [rsp+2C0h+var_280], rax
                lea     r8, [rbp+1C0h+var_220]
                lea     rax, [rsp+2C0h+var_268]
                mov     r9d, 200h
                mov     [rsp+2C0h+var_288], rax
                mov     ecx, 6D0030h
                mov     [rsp+2C0h+var_290], r15b
                mov     [rsp+2C0h+var_298], ebx
                mov     [rsp+2C0h+var_2A0], rdi
                call    IoBuildDeviceIoControlRequest
                test    rax, rax
                jz      loc_14081CFFE
                mov     rcx, [rsp+2C0h+var_270]
                mov     rdx, rax
                call    IofCallDriver
                mov     ebx, eax
                cmp     eax, 103h
                jz      loc_14081D012

loc_1406C340F:                          ; CODE XREF: RtlVolumeDeviceToDosName+159E5D↓j
                mov     rcx, rdi
                test    ebx, ebx
                js      short loc_1406C348D
                movzx   eax, word ptr [rdi]
                lea     rdx, [rdi+4]
                sub     ax, 4
                mov     [rsi+8], rdi
                movzx   r8d, ax
                mov     [rsi], r8w
                lea     eax, [r8+2]
                mov     [rsi+2], ax
                call    memmove
                movzx   ecx, word ptr [rsi]
                mov     ebx, r15d
                mov     rax, [rsi+8]
                shr     rcx, 1
                mov     [rax+rcx*2], r15w

loc_1406C344C:                          ; CODE XREF: RtlVolumeDeviceToDosName+2BB↓j
                                        ; RtlVolumeDeviceToDosName+2C4↓j ...
                mov     rcx, [rbp+1C0h+var_240]
                call    PsDereferenceSiloContext
                mov     eax, ebx

loc_1406C3457:                          ; CODE XREF: RtlVolumeDeviceToDosName+E8↑j
                                        ; RtlVolumeDeviceToDosName+117↑j ...
                mov     rcx, [rbp+1C0h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+2C0h+var_10]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1406C347F:                          ; CODE XREF: RtlVolumeDeviceToDosName+19C↑j
                cmp     ebx, 80000005h
                jz      loc_1406C3372
                jmp     short loc_1406C344C
; ---------------------------------------------------------------------------

loc_1406C348D:                          ; CODE XREF: RtlVolumeDeviceToDosName+244↑j
                xor     edx, edx
                call    ExFreePoolWithTag
                jmp     short loc_1406C344C
; } // starts at 1406C31D0
RtlVolumeDeviceToDosName endp
