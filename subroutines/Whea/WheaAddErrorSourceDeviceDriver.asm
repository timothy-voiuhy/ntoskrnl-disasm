WheaAddErrorSourceDeviceDriver proc near
                                        ; CODE XREF: WheaAddErrorSourceDeviceDriverV1+63↑p
                                        ; DATA XREF: .rdata:00000001400A5034↑o ...

var_3F0         = dword ptr -3F0h
var_3EC         = dword ptr -3ECh
var_3E8         = dword ptr -3E8h
var_3E4         = dword ptr -3E4h
var_3E0         = dword ptr -3E0h
var_3DC         = dword ptr -3DCh
var_3D8         = dword ptr -3D8h
var_3D4         = dword ptr -3D4h
var_3CC         = xmmword ptr -3CCh
var_3B4         = dword ptr -3B4h
var_3B0         = qword ptr -3B0h
var_3A8         = qword ptr -3A8h
var_3A0         = qword ptr -3A0h
var_398         = qword ptr -398h
var_390         = qword ptr -390h
var_388         = xmmword ptr -388h
var_378         = xmmword ptr -378h
var_368         = dword ptr -368h
var_364         = dword ptr -364h
var_360         = qword ptr -360h
var_20          = byte ptr -20h

; FUNCTION CHUNK AT 0000000140859248 SIZE 00000042 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-318h]
                sub     rsp, 3F0h
                xor     esi, esi
                mov     r12d, r8d
                xor     edi, edi
                mov     rbx, rdx
                mov     r13, rcx
                cmp     [rdx+1Ch], rsi
                jz      loc_140859280
                cmp     [rdx+24h], rsi
                jz      loc_140859280
                cmp     dword ptr [rdx], 2
                jnz     loc_140859276
                mov     r15d, [rdx+30h]
                mov     al, cs:byte_140CF4948
                add     r15d, 2
                mov     r14d, r15d
                imul    r14d, [rdx+2Ch]
                test    al, al
                jnz     short loc_1407AEEA9
                lea     rdx, unk_140C033E0
                lea     ecx, [rsi+10h]
                call    WheaConfigureErrorSource

loc_1407AEEA9:                          ; CODE XREF: WheaAddErrorSourceDeviceDriver+68↑j
                xor     edx, edx
                lea     rcx, [rsp+410h+var_3F0]
                mov     r8d, 3CCh
                call    memset
                movzx   eax, word ptr [rbx+14h]
                xor     ecx, ecx
                mov     word ptr [rsp+410h+var_3B4], ax
                mov     rax, [rbx+1Ch]
                mov     [rsp+410h+var_3A0], rax
                mov     rax, [rbx+24h]
                mov     [rsp+410h+var_398], rax
                lea     rax, sub_140365D80
                mov     [rbp+310h+var_390], rax
                mov     [rsp+410h+var_3F0], 3CCh
                mov     [rsp+410h+var_3EC], 0Bh
                mov     [rsp+410h+var_3E8], 10h
                mov     [rsp+410h+var_3E4], 1
                mov     [rsp+410h+var_3DC], r12d
                mov     [rsp+410h+var_3D8], r15d
                mov     [rsp+410h+var_3D4], ecx
                mov     dword ptr [rsp+410h+var_3CC], ecx
                mov     [rsp+410h+var_3E0], r14d
                mov     [rsp+410h+var_3A8], rcx
                mov     [rbp+310h+var_360], rcx
                movups  xmm0, xmmword ptr [rbx+34h]
                movups  xmm1, xmmword ptr [rbx+44h]
                movdqu  [rbp+310h+var_388], xmm0
                movups  xmm0, xmmword ptr [rbx+4]
                movdqu  [rbp+310h+var_378], xmm1
                movdqu  [rsp+410h+var_3CC+8], xmm0
                test    r12d, r12d
                jz      short loc_1407AEFB3
                test    r14d, r14d
                jz      short loc_1407AEFB3
                mov     ecx, r15d
                mov     edx, r15d
                imul    ecx, [rbx+2Ch]
                call    sub_1403BB040
                mov     edx, eax
                mov     edi, 200h
                imul    edx, r12d
                mov     r8d, 41454857h
                mov     ecx, edi
                mov     r14d, eax
                call    ExAllocatePoolWithTag
                imul    rdx, r12, 68h ; 'h'
                mov     r8d, 41454857h
                mov     ecx, edi
                mov     rsi, rax
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rsi, rsi
                jz      short loc_1407AEFEE
                test    rax, rax
                jz      short loc_1407AEFEE
                mov     ecx, [rbx+2Ch]
                mov     [rbp+310h+var_368], ecx
                mov     ecx, [rbx+30h]
                mov     [rbp+310h+var_364], ecx
                mov     [rsp+410h+var_3A8], rsi
                mov     [rbp+310h+var_360], rax
                mov     dword ptr [rsp+410h+var_3B0], r14d
                mov     dword ptr [rsp+410h+var_3B0+4], r12d

loc_1407AEFB3:                          ; CODE XREF: WheaAddErrorSourceDeviceDriver+112↑j
                                        ; WheaAddErrorSourceDeviceDriver+117↑j
                mov     rdx, r13
                lea     rcx, [rsp+410h+var_3F0]
                call    WheaAddErrorSource
                mov     ebx, eax
                test    eax, eax
                js      loc_140859248

loc_1407AEFCA:                          ; CODE XREF: WheaAddErrorSourceDeviceDriver+1C3↓j
                                        ; WheaAddErrorSourceDeviceDriver+AA42D↓j ...
                mov     eax, ebx

loc_1407AEFCC:                          ; CODE XREF: WheaAddErrorSourceDeviceDriver+AA44B↓j
                                        ; WheaAddErrorSourceDeviceDriver+AA455↓j
                lea     r11, [rsp+410h+var_20]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rdi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1407AEFEE:                          ; CODE XREF: WheaAddErrorSourceDeviceDriver+15D↑j
                                        ; WheaAddErrorSourceDeviceDriver+162↑j
                mov     ebx, 0C000009Ah
                jmp     short loc_1407AEFCA
WheaAddErrorSourceDeviceDriver endp
