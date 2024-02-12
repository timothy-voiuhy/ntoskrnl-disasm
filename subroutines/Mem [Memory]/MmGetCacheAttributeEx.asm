MmGetCacheAttributeEx proc near         ; CODE XREF: MmGetCacheAttribute+9↑p
                                        ; DATA XREF: .pdata:00000001400F48E4↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = word ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                push    rdi
                sub     rsp, 30h
                mov     rdi, r8
                mov     rbx, rcx
                test    edx, 0FFFFFFFEh
                jz      short loc_140532217
                mov     eax, 0C00000F0h
                jmp     loc_1405322E3
; ---------------------------------------------------------------------------

loc_140532217:                          ; CODE XREF: MmGetCacheAttributeEx+1B↑j
                shr     rbx, 0Ch
                mov     rbp, 0FFFFFFFFFh
                cmp     rbx, rbp
                ja      short loc_140532286
                lea     rcx, [rbx+rbx*2]
                add     rcx, rcx
                mov     rax, 0FFFFFA8000000028h
                mov     rax, [rax+rcx*8]
                shr     rax, 32h
                and     eax, 1
                jz      short loc_140532286
                mov     rax, 0FFFFFA8000000020h
                xor     edx, edx
                cmp     [rax+rcx*8], dx
                jnz     short loc_140532270
                mov     rax, gs:188h
                cmp     cs:qword_140C4E588, rax
                jnz     loc_1405322F4

loc_140532270:                          ; CODE XREF: MmGetCacheAttributeEx+68↑j
                mov     rax, 0FFFFFA8000000022h
                mov     rax, rax
                movzx   ecx, byte ptr [rax+rcx*8]
                shr     ecx, 6
                jmp     short loc_1405322BB
; ---------------------------------------------------------------------------

loc_140532286:                          ; CODE XREF: MmGetCacheAttributeEx+38↑j
                                        ; MmGetCacheAttributeEx+56↑j
                test    dl, 1
                jz      short loc_1405322DE
                mov     rcx, rbx
                call    sub_1402E972C
                xor     edx, edx
                test    rax, rax
                jz      short loc_1405322B6
                and     rbx, rbp
                sub     rbx, [rax+28h]
                mov     rax, [rax+30h]
                movzx   eax, word ptr [rax+rbx*2]
                movzx   ecx, ax
                shr     ecx, 0Eh
                mov     [rsp+38h+arg_8], ax
                jmp     short loc_1405322BB
; ---------------------------------------------------------------------------

loc_1405322B6:                          ; CODE XREF: MmGetCacheAttributeEx+A8↑j
                mov     ecx, 3

loc_1405322BB:                          ; CODE XREF: MmGetCacheAttributeEx+94↑j
                                        ; MmGetCacheAttributeEx+C4↑j
                cmp     ecx, 1
                jnz     short loc_1405322C4
                mov     [rdi], ecx
                jmp     short loc_1405322D3
; ---------------------------------------------------------------------------

loc_1405322C4:                          ; CODE XREF: MmGetCacheAttributeEx+CE↑j
                test    ecx, ecx
                jnz     short loc_1405322CC
                mov     [rdi], edx
                jmp     short loc_1405322D3
; ---------------------------------------------------------------------------

loc_1405322CC:                          ; CODE XREF: MmGetCacheAttributeEx+D6↑j
                cmp     ecx, 2
                jnz     short loc_1405322D7
                mov     [rdi], ecx

loc_1405322D3:                          ; CODE XREF: MmGetCacheAttributeEx+D2↑j
                                        ; MmGetCacheAttributeEx+DA↑j
                xor     eax, eax
                jmp     short loc_1405322E3
; ---------------------------------------------------------------------------

loc_1405322D7:                          ; CODE XREF: MmGetCacheAttributeEx+DF↑j
                mov     eax, 0C00000EFh
                jmp     short loc_1405322E3
; ---------------------------------------------------------------------------

loc_1405322DE:                          ; CODE XREF: MmGetCacheAttributeEx+99↑j
                mov     eax, 0C0000141h

loc_1405322E3:                          ; CODE XREF: MmGetCacheAttributeEx+22↑j
                                        ; MmGetCacheAttributeEx+E5↑j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1405322F4:                          ; CODE XREF: MmGetCacheAttributeEx+7A↑j
                mov     rax, 0FFFFFA8000000022h
                mov     rax, rax
                movzx   r9d, byte ptr [rax+rcx*8]
                mov     r8, rbx
                mov     [rsp+38h+var_18], rdx
                and     r9d, 7
                mov     edx, 1232h
                mov     ecx, 1Ah
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
MmGetCacheAttributeEx endp
