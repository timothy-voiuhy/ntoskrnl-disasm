RtlInitEnumerationHashTable proc near   ; CODE XREF: sub_14020260C+39↓p
                                        ; RtlInitWeakEnumerationHashTable+4↓p ...

var_28          = xmmword ptr -28h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014041F0AC SIZE 00000007 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 40h
                mov     rbx, rdx
                xorps   xmm0, xmm0
                lea     rdx, [rsp+48h+var_28]
                xor     r8d, r8d
                movups  [rsp+48h+var_28], xmm0
                mov     rdi, rcx
                call    sub_140203470
                mov     rax, qword ptr [rsp+48h+var_28]
                inc     dword ptr [rdi+1Ch]
                cmp     [rax], rax
                jnz     short loc_1402020E5
                inc     dword ptr [rdi+18h]

loc_1402020E5:                          ; CODE XREF: RtlInitEnumerationHashTable+30↑j
                mov     rcx, [rax]
                cmp     [rcx+8], rax
                jnz     FatalListEntryError_0
                mov     [rbx+8], rax
                mov     [rbx], rcx
                mov     [rcx+8], rbx
                mov     [rax], rbx
                and     dword ptr [rbx+20h], 0
                and     qword ptr [rbx+10h], 0
                mov     [rbx+18h], rax
                mov     al, 1
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlInitEnumerationHashTable endp
