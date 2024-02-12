FsRtlAllocateExtraCreateParameterFromLookasideList proc near
                                        ; CODE XREF: sub_140656210+DB↑p
                                        ; sub_140702C60+57↓p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001408237EA SIZE 00000014 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r14
                sub     rsp, 30h
                mov     rbx, [rsp+38h+arg_20]
                lea     esi, [rdx+48h]
                mov     eax, r8d
                mov     rbp, r9
                and     eax, 2
                mov     edi, 42h ; 'B'
                mov     r9d, 2
                mov     r14, rcx
                mov     ecx, [rbx+28h]
                cmovz   edi, r9d
                cmp     esi, [rbx+2Ch]
                ja      loc_1406E6BC9
                mov     rcx, rbx
                test    eax, eax
                jnz     short loc_1406E6BA2
                inc     dword ptr [rbx+14h]
                call    ExpInterlockedPopEntrySList
                test    rax, rax
                jz      short loc_1406E6BB1

loc_1406E6B4D:                          ; CODE XREF: FsRtlAllocateExtraCreateParameterFromLookasideList+BA↓j
                xor     ecx, ecx
                mov     qword ptr [rax], 48706345h
                mov     [rax+10h], rcx
                mov     [rax+8], rcx
                movups  xmm0, xmmword ptr [r14]
                mov     [rax+40h], rcx
                lea     rcx, [rax+48h]
                mov     [rax+28h], rbp
                movups  xmmword ptr [rax+18h], xmm0
                mov     [rax+30h], edi
                mov     [rax+34h], esi
                mov     [rax+38h], rbx
                mov     rax, [rsp+38h+arg_28]
                mov     [rax], rcx
                xor     eax, eax

loc_1406E6B86:                          ; CODE XREF: FsRtlAllocateExtraCreateParameterFromLookasideList+F2↓j
                                        ; FsRtlAllocateExtraCreateParameterFromLookasideList+13CD09↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1406E6BA2:                          ; CODE XREF: FsRtlAllocateExtraCreateParameterFromLookasideList+4E↑j
                call    sub_14030E5D4

loc_1406E6BA7:                          ; CODE XREF: FsRtlAllocateExtraCreateParameterFromLookasideList+D7↓j
                test    rax, rax
                jnz     short loc_1406E6B4D
                jmp     loc_1408237EA
; ---------------------------------------------------------------------------

loc_1406E6BB1:                          ; CODE XREF: FsRtlAllocateExtraCreateParameterFromLookasideList+5B↑j
                inc     dword ptr [rbx+18h]
                mov     edx, [rbx+2Ch]
                mov     rax, [rbx+30h]
                mov     r8d, [rbx+28h]
                mov     ecx, [rbx+24h]
                call    sub_1404079D0
                jmp     short loc_1406E6BA7
; ---------------------------------------------------------------------------

loc_1406E6BC9:                          ; CODE XREF: FsRtlAllocateExtraCreateParameterFromLookasideList+43↑j
                mov     rax, [rsp+38h+arg_28]
                mov     r9, rbp
                mov     [rsp+38h+var_10], rax
                mov     [rsp+38h+var_18], ecx
                mov     rcx, r14
                call    FsRtlAllocateExtraCreateParameter
                jmp     short loc_1406E6B86
FsRtlAllocateExtraCreateParameterFromLookasideList endp
