HalQueryEnvironmentVariableInfoEx proc near
                                        ; CODE XREF: sub_14089C340+14↓p
                                        ; DATA XREF: .pdata:00000001400EE8F0↑o

var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+78h+var_38], rax
                cmp     cs:byte_140C49E48, 0
                xorps   xmm0, xmm0
                xorps   xmm1, xmm1
                mov     r14, r9
                movups  [rsp+78h+var_58], xmm0
                mov     rbp, r8
                mov     rsi, rdx
                movups  [rsp+78h+var_48], xmm1
                mov     edi, ecx
                jnz     short loc_1404BBE28
                mov     eax, 0C0000002h
                jmp     loc_1404BBEB2
; ---------------------------------------------------------------------------

loc_1404BBE28:                          ; CODE XREF: HalQueryEnvironmentVariableInfoEx+3C↑j
                mov     ebx, 1
                test    bl, dil
                jnz     short loc_1404BBE39
                mov     eax, 0C000000Dh
                jmp     short loc_1404BBEB2
; ---------------------------------------------------------------------------

loc_1404BBE39:                          ; CODE XREF: HalQueryEnvironmentVariableInfoEx+50↑j
                or      edi, 6
                mov     rax, cr8
                cmp     al, 2
                jnb     short loc_1404BBE8E
                mov     eax, gs:1A4h
                mov     ecx, eax
                lea     rax, dword_140D010D0
                mov     edx, [rax+rcx*4]
                xor     eax, eax
                mov     dword ptr [rsp+78h+var_58+0Ah], eax
                mov     word ptr [rsp+78h+var_58+0Eh], ax
                mov     eax, edx
                shr     eax, 6
                and     edx, 3Fh
                mov     cl, dl
                mov     word ptr [rsp+78h+var_58+8], ax
                mov     rax, rbx
                lea     rdx, [rsp+78h+var_48]
                shl     rax, cl
                lea     rcx, [rsp+78h+var_58]
                mov     qword ptr [rsp+78h+var_58], rax
                call    KeSetSystemGroupAffinityThread
                jmp     short loc_1404BBE90
; ---------------------------------------------------------------------------

loc_1404BBE8E:                          ; CODE XREF: HalQueryEnvironmentVariableInfoEx+62↑j
                xor     bl, bl

loc_1404BBE90:                          ; CODE XREF: HalQueryEnvironmentVariableInfoEx+AC↑j
                mov     r9, r14
                mov     r8, rbp
                mov     rdx, rsi
                mov     ecx, edi
                call    sub_1404C3D4C
                mov     edi, eax
                test    bl, bl
                jz      short loc_1404BBEB0
                lea     rcx, [rsp+78h+var_48]
                call    KeRevertToUserGroupAffinityThread

loc_1404BBEB0:                          ; CODE XREF: HalQueryEnvironmentVariableInfoEx+C4↑j
                mov     eax, edi

loc_1404BBEB2:                          ; CODE XREF: HalQueryEnvironmentVariableInfoEx+43↑j
                                        ; HalQueryEnvironmentVariableInfoEx+57↑j
                mov     rcx, [rsp+78h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 50h
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1404BBDE0
HalQueryEnvironmentVariableInfoEx endp
