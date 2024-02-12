HalRequestSoftwareInterrupt proc near   ; CODE XREF: sub_14021E230+1BE↑p
                                        ; sub_14021E830+341↑p ...

var_238         = qword ptr -238h
var_228         = dword ptr -228h
var_220         = xmmword ptr -220h
var_210         = qword ptr -210h
var_208         = dword ptr -208h
var_204         = dword ptr -204h
var_200         = dword ptr -200h
var_1FC         = dword ptr -1FCh
var_1F8         = dword ptr -1F8h
var_1F4         = dword ptr -1F4h
var_1F0         = dword ptr -1F0h
var_1EC         = dword ptr -1ECh
var_1E8         = dword ptr -1E8h
var_1E4         = dword ptr -1E4h
var_1E0         = dword ptr -1E0h
var_1DC         = dword ptr -1DCh
var_1D8         = dword ptr -1D8h
var_1D4         = dword ptr -1D4h
var_1D0         = dword ptr -1D0h
var_1CC         = dword ptr -1CCh
var_1C0         = xmmword ptr -1C0h
var_1B0         = qword ptr -1B0h
var_1A8         = xmmword ptr -1A8h
var_198         = dword ptr -198h
var_194         = byte ptr -194h
var_190         = qword ptr -190h
var_E8          = word ptr -0E8h
var_E6          = word ptr -0E6h
var_E4          = dword ptr -0E4h
var_E0          = qword ptr -0E0h
var_38          = qword ptr -38h
var_28          = qword ptr -28h
var_8           = dword ptr -8
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014046B10C SIZE 0000048C BYTES

; __unwind { // __GSHandlerCheck
                pushfq
                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 238h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+258h+var_38], rax
                mov     eax, 2Fh ; '/'
                cmp     cl, 1
                mov     ebx, 1Fh
                lea     rcx, [rsp+258h+var_190]
                cmovnz  ebx, eax
                xor     edx, edx
                lea     r8d, [rax+71h]
                call    memset
                mov     rdx, cs:qword_140C50778
                xor     eax, eax
                mov     [rsp+258h+var_1B0], rax
                xorps   xmm0, xmm0
                movups  [rsp+258h+var_1C0], xmm0
                mov     eax, [rdx+0DCh]
                test    al, 40h
                jz      loc_14046B10C
                cmp     cs:byte_140CF509E, 0
                jnz     loc_14046B10C
                mov     rcx, cs:qword_140C50840
                mov     edi, 1
                mov     dword ptr [rsp+258h+var_1C0], 3
                mov     [rsp+258h+var_208], 0FFFFFFFFh
                mov     [rsp+258h+var_204], edi
                mov     eax, [rcx+14h]
                mov     [rsp+258h+var_1FC], eax
                mov     eax, [rcx+10h]
                mov     [rsp+258h+var_200], eax
                mov     rax, [rdx+78h]
                cli
                lea     rcx, [rsp+258h+var_208]
                mov     r9d, ebx
                mov     [rsp+258h+var_238], rcx
                lea     r8, [rsp+258h+var_1C0]
                mov     rcx, cs:qword_140C50778
                lea     rdx, [rsp+258h+var_200]
                mov     rcx, [rcx+10h]
                call    sub_1404079D0
                mov     esi, 200h
                test    [rsp+258h+var_8], esi
                jz      short loc_140308C77
                sti

loc_140308C77:                          ; CODE XREF: HalRequestSoftwareInterrupt+E4↑j
                                        ; HalRequestSoftwareInterrupt+162604↓j ...
                mov     rcx, [rsp+258h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 238h
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rcx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140308B90
HalRequestSoftwareInterrupt endp
