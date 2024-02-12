HalSetEnvironmentVariableEx proc near   ; CODE XREF: sub_1403855A0+31B↑p
                                        ; sub_1403855A0+56A↑p ...

var_80          = qword ptr -80h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = qword ptr -50h
arg_20          = dword ptr  30h

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 68h
                lea     rbp, [rsp+30h]
                mov     rax, cs:__security_cookie
                xor     rax, rbp
                mov     [rbp+70h+var_50], rax
                xor     ebx, ebx
                mov     r15d, r9d
                cmp     cs:byte_140C49E48, bl
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                mov     r13, r8
                mov     r12, rdx
                mov     r8, rcx
                movups  [rbp+70h+var_70], xmm0
                movups  [rbp+70h+var_60], xmm1
                jnz     short loc_1404BC012
                mov     eax, 0C0000002h
                jmp     loc_1404BC11D
; ---------------------------------------------------------------------------

loc_1404BC012:                          ; CODE XREF: HalSetEnvironmentVariableEx+46↑j
                mov     edi, [rbp+70h+arg_20]
                mov     esi, 1
                test    sil, dil
                jnz     short loc_1404BC02C
                mov     eax, 0C000000Dh
                jmp     loc_1404BC11D
; ---------------------------------------------------------------------------

loc_1404BC02C:                          ; CODE XREF: HalSetEnvironmentVariableEx+60↑j
                or      edi, 6
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_1404BC033:                          ; CODE XREF: HalSetEnvironmentVariableEx+7A↓j
                inc     rax
                cmp     [rcx+rax*2], bx
                jnz     short loc_1404BC033
                add     eax, esi
                mov     ecx, 100h
                cmp     eax, ecx
                cmovnb  eax, ecx
                mov     edx, eax
                add     rax, rax
                lea     rcx, [rax+0Fh]
                cmp     rcx, rax
                ja      short loc_1404BC060
                mov     rcx, 0FFFFFFFFFFFFFF0h

loc_1404BC060:                          ; CODE XREF: HalSetEnvironmentVariableEx+94↑j
                and     rcx, 0FFFFFFFFFFFFFFF0h
                mov     rax, rcx
                call    __chkstk
                sub     rsp, rcx
                lea     r14, [rsp+0A0h+var_70]
                mov     rcx, r14
                call    wcscpy_s
                mov     rax, cr8
                cmp     al, 2
                jnb     short loc_1404BC0C8
                mov     eax, gs:1A4h
                mov     ecx, eax
                lea     rax, dword_140D010D0
                mov     edx, [rax+rcx*4]
                xor     eax, eax
                mov     dword ptr [rbp+70h+var_70+0Ah], eax
                mov     word ptr [rbp+70h+var_70+0Eh], ax
                mov     eax, edx
                shr     eax, 6
                and     edx, 3Fh
                mov     cl, dl
                mov     word ptr [rbp+70h+var_70+8], ax
                mov     rax, rsi
                lea     rdx, [rbp+70h+var_60]
                shl     rax, cl
                lea     rcx, [rbp+70h+var_70]
                mov     qword ptr [rbp+70h+var_70], rax
                call    KeSetSystemGroupAffinityThread
                jmp     short loc_1404BC0CB
; ---------------------------------------------------------------------------

loc_1404BC0C8:                          ; CODE XREF: HalSetEnvironmentVariableEx+C2↑j
                mov     sil, bl

loc_1404BC0CB:                          ; CODE XREF: HalSetEnvironmentVariableEx+106↑j
                test    dil, 40h
                jnz     short loc_1404BC0EB
                xor     r9d, r9d
                mov     [rsp+0A0h+var_80], rbx
                xor     r8d, r8d
                mov     rdx, r12
                mov     rcx, r14
                call    sub_1404C3E48
                mov     ebx, eax
                jmp     short loc_1404BC0F0
; ---------------------------------------------------------------------------

loc_1404BC0EB:                          ; CODE XREF: HalSetEnvironmentVariableEx+10F↑j
                mov     ebx, 0C000000Dh

loc_1404BC0F0:                          ; CODE XREF: HalSetEnvironmentVariableEx+129↑j
                test    r15d, r15d
                jz      short loc_1404BC10D
                mov     r9, r15
                mov     [rsp+0A0h+var_80], r13
                mov     r8d, edi
                mov     rdx, r12
                mov     rcx, r14
                call    sub_1404C3E48
                mov     ebx, eax

loc_1404BC10D:                          ; CODE XREF: HalSetEnvironmentVariableEx+133↑j
                test    sil, sil
                jz      short loc_1404BC11B
                lea     rcx, [rbp+70h+var_60]
                call    KeRevertToUserGroupAffinityThread

loc_1404BC11B:                          ; CODE XREF: HalSetEnvironmentVariableEx+150↑j
                mov     eax, ebx

loc_1404BC11D:                          ; CODE XREF: HalSetEnvironmentVariableEx+4D↑j
                                        ; HalSetEnvironmentVariableEx+67↑j
                mov     rcx, [rbp+70h+var_50]
                xor     rcx, rbp
                call    __security_check_cookie
                lea     rsp, [rbp+38h]
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404BBFC0
HalSetEnvironmentVariableEx endp
