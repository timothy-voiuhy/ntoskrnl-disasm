RtlLookupElementGenericTableFullAvl proc near
                                        ; CODE XREF: sub_1403726D0+E9↓p
                                        ; sub_1403726D0+11E679↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                mov     [rsp+arg_18], r14
                push    r15
                sub     rsp, 20h
                cmp     dword ptr [rcx+2Ch], 0
                mov     r15, r9
                mov     r14, r8
                mov     rsi, rdx
                mov     rdi, rcx
                jz      loc_1403109DF
                mov     rbx, [rcx+10h]
                nop     dword ptr [rax+00h]
                nop     dword ptr [rax+rax+00000000h]

loc_140310960:                          ; CODE XREF: RtlLookupElementGenericTableFullAvl+68↓j
                                        ; RtlLookupElementGenericTableFullAvl+76↓j
                mov     rax, [rdi+48h]
                lea     r8, [rbx+20h]
                mov     rdx, rsi
                mov     rcx, rdi
                call    sub_1404079D0
                test    eax, eax
                jz      short loc_14031098A
                cmp     eax, 1
                jnz     short loc_1403109CC
                mov     rax, [rbx+10h]
                test    rax, rax
                jz      short loc_140310998
                mov     rbx, rax
                jmp     short loc_140310960
; ---------------------------------------------------------------------------

loc_14031098A:                          ; CODE XREF: RtlLookupElementGenericTableFullAvl+55↑j
                mov     rax, [rbx+8]
                test    rax, rax
                jz      short loc_1403109C0
                mov     rbx, rax
                jmp     short loc_140310960
; ---------------------------------------------------------------------------

loc_140310998:                          ; CODE XREF: RtlLookupElementGenericTableFullAvl+63↑j
                mov     [r14], rbx
                mov     dword ptr [r15], 3

loc_1403109A2:                          ; CODE XREF: RtlLookupElementGenericTableFullAvl+AA↓j
                                        ; RtlLookupElementGenericTableFullAvl+C6↓j
                xor     eax, eax

loc_1403109A4:                          ; CODE XREF: RtlLookupElementGenericTableFullAvl+BD↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                mov     r14, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r15
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1403109C0:                          ; CODE XREF: RtlLookupElementGenericTableFullAvl+71↑j
                mov     [r14], rbx
                mov     dword ptr [r15], 2
                jmp     short loc_1403109A2
; ---------------------------------------------------------------------------

loc_1403109CC:                          ; CODE XREF: RtlLookupElementGenericTableFullAvl+5A↑j
                mov     [r14], rbx
                mov     dword ptr [r15], 1
                mov     rax, [r14]
                add     rax, 20h ; ' '
                jmp     short loc_1403109A4
; ---------------------------------------------------------------------------

loc_1403109DF:                          ; CODE XREF: RtlLookupElementGenericTableFullAvl+2A↑j
                mov     dword ptr [r9], 0
                jmp     short loc_1403109A2
RtlLookupElementGenericTableFullAvl endp
