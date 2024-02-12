ObReferenceObjectByPointerWithTag proc near
                                        ; CODE XREF: ObOpenObjectByPointer+8E↓p
                                        ; IoRegisterPlugPlayNotification+56↓p
                                        ; DATA XREF: ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 0000000140427D52 SIZE 00000033 BYTES

                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 30h
                mov     rsi, rcx
                test    r8, r8
                jz      short loc_14021B538
                lea     rax, [rcx-30h]
                shr     rax, 8
                movzx   ecx, al
                movzx   eax, byte ptr [rsi-18h]
                xor     rcx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rcx, rax
                lea     rax, qword_140CFCE60
                cmp     [rax+rcx*8], r8
                jnz     short loc_14021B53D

loc_14021B4FB:                          ; CODE XREF: ObReferenceObjectByPointerWithTag+7B↓j
                cmp     cs:dword_140CFB010, 0

loc_14021B502:                          ; DATA XREF: .rdata:000000014004E3E0↑o
                                        ; .rdata:000000014004E3F4↑o ...
                mov     [rsp+38h+arg_0], rbx
                mov     ebx, 1
                jnz     loc_140427D52

loc_14021B512:                          ; CODE XREF: ObReferenceObjectByPointerWithTag+20C8A7↓j
                lock xadd [rsi-30h], rbx
                inc     rbx
                cmp     rbx, 1
                jle     loc_140427D6C
                mov     rbx, [rsp+38h+arg_0]
                xor     eax, eax

loc_14021B52C:                          ; CODE XREF: ObReferenceObjectByPointerWithTag+82↓j
                                        ; DATA XREF: .pdata:00000001400CA56C↑o ...
                mov     rsi, [rsp+38h+arg_8]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_14021B538:                          ; CODE XREF: ObReferenceObjectByPointerWithTag+10↑j
                test    r9b, r9b
                jz      short loc_14021B4FB

loc_14021B53D:                          ; CODE XREF: ObReferenceObjectByPointerWithTag+39↑j
                mov     eax, 0C0000024h
                jmp     short loc_14021B52C
ObReferenceObjectByPointerWithTag endp
