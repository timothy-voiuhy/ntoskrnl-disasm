IoVolumeDeviceToGuidPath proc near      ; CODE XREF: IoVolumeDeviceToGuid+28↑p
                                        ; sub_1407CEA84+81↓p ...

var_290         = qword ptr -290h
var_288         = dword ptr -288h
var_280         = byte ptr -280h
var_278         = qword ptr -278h
var_270         = qword ptr -270h
var_260         = qword ptr -260h
var_258         = qword ptr -258h
var_250         = xmmword ptr -250h
var_240         = xmmword ptr -240h
var_230         = qword ptr -230h
var_228         = xmmword ptr -228h
var_218         = word ptr -218h
var_216         = byte ptr -216h
var_18          = qword ptr -18h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 000000014080D57A SIZE 00000033 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                lea     rbp, [rsp-1A0h]
                sub     rsp, 2A0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1B0h+var_18], rax
                xor     eax, eax
                xor     esi, esi
                xorps   xmm0, xmm0
                mov     [rbp+1B0h+var_230], rax
                mov     eax, [rcx+48h]
                xorps   xmm1, xmm1
                mov     [rsp+2B0h+var_260], rsi
                mov     rbx, rdx
                mov     [rsp+2B0h+var_258], rsi
                mov     rdi, rcx
                movups  [rsp+2B0h+var_240], xmm0
                movups  [rbp+1B0h+var_228], xmm0
                movups  [rsp+2B0h+var_250], xmm1
                cmp     eax, 24h ; '$'
                ja      loc_14080D5A3
                mov     rcx, 1080000084h
                bt      rcx, rax
                jnb     loc_14080D5A3
                xor     r8d, r8d
                lea     rcx, [rsp+2B0h+var_240]
                xor     edx, edx
                call    KeInitializeEvent
                lea     rax, [rbp+1B0h+var_228]
                xor     r9d, r9d
                mov     [rsp+2B0h+var_270], rax
                xor     r8d, r8d
                lea     rax, [rsp+2B0h+var_240]
                mov     rdx, rdi
                mov     [rsp+2B0h+var_278], rax
                mov     ecx, 4D0008h
                mov     [rsp+2B0h+var_280], sil
                lea     rax, [rbp+1B0h+var_218]
                mov     [rsp+2B0h+var_288], 200h
                mov     [rsp+2B0h+var_290], rax
                call    IoBuildDeviceIoControlRequest
                test    rax, rax
                jz      loc_14080D57A
                mov     rdx, rax
                mov     rcx, rdi
                call    IofCallDriver
                mov     ecx, eax
                cmp     eax, 103h
                jz      loc_14080D584

loc_1406708F0:                          ; CODE XREF: IoVolumeDeviceToGuidPath+19CD8E↓j
                test    ecx, ecx
                js      short loc_140670944
                movzx   eax, [rbp+1B0h+var_218]
                mov     ecx, 1FEh
                cmp     ax, cx
                jnb     short loc_140670969
                mov     word ptr [rsp+2B0h+var_250], ax

loc_140670907:                          ; CODE XREF: IoVolumeDeviceToGuidPath+160↓j
                mov     word ptr [rsp+2B0h+var_250+2], ax
                lea     rdx, [rsp+2B0h+var_260]
                lea     rax, [rbp+1B0h+var_216]
                lea     rcx, [rsp+2B0h+var_250]
                mov     qword ptr [rsp+2B0h+var_250+8], rax
                call    IoVolumeDeviceNameToGuidPath
                mov     ecx, eax
                test    eax, eax
                js      short loc_140670944
                movzx   eax, word ptr [rsp+2B0h+var_260]
                mov     [rbx], ax
                movzx   eax, word ptr [rsp+2B0h+var_260+2]
                mov     [rbx+2], ax
                mov     rax, [rsp+2B0h+var_258]
                mov     [rbx+8], rax

loc_140670944:                          ; CODE XREF: IoVolumeDeviceToGuidPath+E2↑j
                                        ; IoVolumeDeviceToGuidPath+118↑j ...
                mov     eax, ecx
                mov     rcx, [rbp+1B0h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+2B0h+arg_10]
                add     rsp, 2A0h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140670969:                          ; CODE XREF: IoVolumeDeviceToGuidPath+F0↑j
                mov     eax, ecx
                mov     word ptr [rsp+2B0h+var_250], cx
                jmp     short loc_140670907
; } // starts at 140670810
IoVolumeDeviceToGuidPath endp
