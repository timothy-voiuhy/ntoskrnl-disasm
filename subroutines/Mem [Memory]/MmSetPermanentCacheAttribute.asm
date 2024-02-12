MmSetPermanentCacheAttribute proc near  ; DATA XREF: .pdata:000000014011E7A0↑o

var_18          = qword ptr -18h
var_10          = dword ptr -10h
var_C           = dword ptr -0Ch
arg_0           = qword ptr  8
arg_8           = qword ptr  10h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                and     [rsp+38h+var_C], 0
                mov     rsi, rdx
                mov     rdi, rcx
                mov     rax, cr8
                cmp     al, 1
                jb      short loc_1408C99FC
                mov     eax, 0C000000Dh
                jmp     loc_1408C9AB4
; ---------------------------------------------------------------------------

loc_1408C99FC:                          ; CODE XREF: MmSetPermanentCacheAttribute+20↑j
                test    r9d, 0FFFFFFFEh
                jz      short loc_1408C9A0F
                mov     eax, 0C00000F2h
                jmp     loc_1408C9AB4
; ---------------------------------------------------------------------------

loc_1408C9A0F:                          ; CODE XREF: MmSetPermanentCacheAttribute+33↑j
                mov     eax, 0FFFh
                test    eax, edi
                jz      short loc_1408C9A22
                mov     eax, 0C00000EFh
                jmp     loc_1408C9AB4
; ---------------------------------------------------------------------------

loc_1408C9A22:                          ; CODE XREF: MmSetPermanentCacheAttribute+46↑j
                test    eax, esi
                jnz     loc_1408C9AAF
                shr     rdi, 0Ch
                shr     rsi, 0Ch
                test    rsi, rsi
                jz      short loc_1408C9AAF
                cmp     r8d, 1
                jz      short loc_1408C9A44
                mov     eax, 0C00000F1h
                jmp     short loc_1408C9AB4
; ---------------------------------------------------------------------------

loc_1408C9A44:                          ; CODE XREF: MmSetPermanentCacheAttribute+6B↑j
                mov     edx, 30h ; '0'
                mov     r8d, 6F49694Dh
                lea     ecx, [rdx+10h]
                call    sub_140268720
                mov     rbx, rax
                test    rax, rax
                jnz     short loc_1408C9A66
                mov     eax, 0C000009Ah
                jmp     short loc_1408C9AB4
; ---------------------------------------------------------------------------

loc_1408C9A66:                          ; CODE XREF: MmSetPermanentCacheAttribute+8D↑j
                mov     [rax+18h], rdi
                lea     rdx, [rsp+38h+var_18]
                mov     dword ptr [rbx+28h], 1
                lea     rax, [rsi-1]
                add     rax, rdi
                lea     rcx, sub_140537060
                mov     [rbx+20h], rax
                and     [rsp+38h+var_10], 0
                mov     [rsp+38h+var_18], rbx
                call    KeGenericCallDpc
                mov     eax, [rsp+38h+var_10]
                test    eax, eax
                jns     short loc_1408C9AB4
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                mov     eax, [rsp+38h+var_10]
                jmp     short loc_1408C9AB4
; ---------------------------------------------------------------------------

loc_1408C9AAF:                          ; CODE XREF: MmSetPermanentCacheAttribute+54↑j
                                        ; MmSetPermanentCacheAttribute+65↑j
                mov     eax, 0C00000F0h

loc_1408C9AB4:                          ; CODE XREF: MmSetPermanentCacheAttribute+27↑j
                                        ; MmSetPermanentCacheAttribute+3A↑j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
MmSetPermanentCacheAttribute endp
