RtlReplaceSidInSd proc near             ; DATA XREF: .pdata:000000014012201C↑o

var_10          = byte ptr -10h
var_C           = dword ptr -0Ch
var_8           = qword ptr -8
arg_0           = qword ptr  40h
arg_8           = qword ptr  48h
arg_10          = qword ptr  50h
arg_18          = byte ptr  58h

                mov     [rsp-38h+arg_8], rbx
                mov     [rsp-38h+arg_10], r8
                mov     [rsp-38h+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 30h
                and     dword ptr [r9], 0
                mov     r13, rcx
                mov     rcx, rdx
                mov     [rbp+arg_18], 0
                mov     r12, r9
                mov     r14, r8
                mov     rbx, rdx
                call    RtlSubAuthorityCountSid
                and     [rbp+var_8], 0
                lea     r8, [rbp+var_10]
                lea     rdx, [rbp+var_8]
                mov     rcx, r13
                movzx   r15d, byte ptr [rax]
                shl     r15d, 2
                mov     [rbp+var_C], r15d
                call    RtlGetOwnerSecurityDescriptor
                test    eax, eax
                js      loc_14091542F
                mov     rdx, [rbp+var_8]
                test    rdx, rdx
                jz      short loc_1409151EA
                mov     al, [rbx]
                cmp     [rdx], al
                jnz     short loc_1409151EA
                movzx   eax, byte ptr [rdx+1]
                movzx   ecx, byte ptr [rbx+1]
                cmp     al, cl
                jz      short loc_1409151A7
                inc     ecx
                cmp     eax, ecx
                jnz     short loc_1409151EA

loc_1409151A7:                          ; CODE XREF: RtlReplaceSidInSd+7F↑j
                mov     ecx, [rdx+2]
                sub     ecx, [rbx+2]
                jnz     short loc_1409151B9
                movzx   ecx, word ptr [rdx+6]
                movzx   eax, word ptr [rbx+6]
                sub     ecx, eax

loc_1409151B9:                          ; CODE XREF: RtlReplaceSidInSd+8D↑j
                test    ecx, ecx
                jnz     short loc_1409151EA
                lea     rsi, [rdx+8]
                mov     r8d, r15d
                mov     rcx, rsi
                mov     edi, r15d
                lea     rdx, [rbx+8]
                call    memcmp
                test    eax, eax
                jnz     short loc_1409151EA
                lea     rdx, [r14+8]
                mov     r8d, edi
                mov     rcx, rsi
                call    memmove
                inc     dword ptr [r12]

loc_1409151EA:                          ; CODE XREF: RtlReplaceSidInSd+6D↑j
                                        ; RtlReplaceSidInSd+73↑j ...
                and     [rbp+var_8], 0
                lea     r8, [rbp+var_10]
                lea     rdx, [rbp+var_8]
                mov     rcx, r13
                call    RtlGetGroupSecurityDescriptor
                test    eax, eax
                js      loc_14091542F
                mov     rdx, [rbp+var_8]
                test    rdx, rdx
                jz      short loc_14091526B
                mov     al, [rbx]
                cmp     [rdx], al
                jnz     short loc_14091526B
                movzx   eax, byte ptr [rdx+1]
                movzx   ecx, byte ptr [rbx+1]
                cmp     al, cl
                jz      short loc_140915228
                inc     ecx
                cmp     eax, ecx
                jnz     short loc_14091526B

loc_140915228:                          ; CODE XREF: RtlReplaceSidInSd+100↑j
                mov     ecx, [rdx+2]
                sub     ecx, [rbx+2]
                jnz     short loc_14091523A
                movzx   ecx, word ptr [rdx+6]
                movzx   eax, word ptr [rbx+6]
                sub     ecx, eax

loc_14091523A:                          ; CODE XREF: RtlReplaceSidInSd+10E↑j
                test    ecx, ecx
                jnz     short loc_14091526B
                lea     rsi, [rdx+8]
                mov     r8d, r15d
                mov     rcx, rsi
                mov     edi, r15d
                lea     rdx, [rbx+8]
                call    memcmp
                test    eax, eax
                jnz     short loc_14091526B
                lea     rdx, [r14+8]
                mov     r8d, edi
                mov     rcx, rsi
                call    memmove
                inc     dword ptr [r12]

loc_14091526B:                          ; CODE XREF: RtlReplaceSidInSd+EE↑j
                                        ; RtlReplaceSidInSd+F4↑j ...
                and     [rbp+var_8], 0
                lea     r9, [rbp+var_10]
                lea     r8, [rbp+var_8]
                mov     rcx, r13
                lea     rdx, [rbp+arg_18]
                call    RtlGetDaclSecurityDescriptor
                test    eax, eax
                js      loc_14091542F
                cmp     [rbp+arg_18], 0
                jz      loc_14091534E
                mov     rax, [rbp+var_8]
                test    rax, rax
                jz      loc_14091534E
                movzx   esi, word ptr [rax+4]
                lea     rdi, [rax+8]
                test    rsi, rsi
                jz      loc_14091534E
                mov     r13, [rbp+arg_10]

loc_1409152B8:                          ; CODE XREF: RtlReplaceSidInSd+224↓j
                mov     al, [rdi]
                cmp     al, 3
                ja      short loc_1409152C4
                lea     rdx, [rdi+8]
                jmp     short loc_1409152DA
; ---------------------------------------------------------------------------

loc_1409152C4:                          ; CODE XREF: RtlReplaceSidInSd+19C↑j
                cmp     al, 4
                jnz     short loc_140915339
                lea     rcx, [rdi+0Ch]
                call    RtlLengthSid
                mov     eax, eax
                lea     rdx, [rdi+0Ch]
                add     rdx, rax

loc_1409152DA:                          ; CODE XREF: RtlReplaceSidInSd+1A2↑j
                mov     al, [rbx]
                cmp     [rdx], al
                jnz     short loc_140915339
                movzx   eax, byte ptr [rdx+1]
                movzx   ecx, byte ptr [rbx+1]
                cmp     al, cl
                jz      short loc_1409152F2
                inc     ecx
                cmp     eax, ecx
                jnz     short loc_140915339

loc_1409152F2:                          ; CODE XREF: RtlReplaceSidInSd+1CA↑j
                mov     ecx, [rdx+2]
                sub     ecx, [rbx+2]
                jnz     short loc_140915304
                movzx   ecx, word ptr [rdx+6]
                movzx   eax, word ptr [rbx+6]
                sub     ecx, eax

loc_140915304:                          ; CODE XREF: RtlReplaceSidInSd+1D8↑j
                test    ecx, ecx
                jnz     short loc_140915339
                mov     r14d, r15d
                lea     r15, [rdx+8]
                mov     rcx, r15
                lea     rdx, [rbx+8]
                mov     r8d, r14d
                call    memcmp
                test    eax, eax
                jnz     short loc_140915335
                lea     rdx, [r13+8]
                mov     r8d, r14d
                mov     rcx, r15
                call    memmove
                inc     dword ptr [r12]

loc_140915335:                          ; CODE XREF: RtlReplaceSidInSd+200↑j
                mov     r15d, [rbp+var_C]

loc_140915339:                          ; CODE XREF: RtlReplaceSidInSd+1A6↑j
                                        ; RtlReplaceSidInSd+1BE↑j ...
                movzx   eax, word ptr [rdi+2]
                add     rdi, rax
                sub     rsi, 1
                jnz     loc_1409152B8
                mov     r13, [rbp+arg_0]

loc_14091534E:                          ; CODE XREF: RtlReplaceSidInSd+170↑j
                                        ; RtlReplaceSidInSd+17D↑j ...
                and     [rbp+var_8], 0
                lea     r9, [rbp+var_10]
                lea     r8, [rbp+var_8]
                mov     rcx, r13
                lea     rdx, [rbp+arg_18]
                call    RtlGetSaclSecurityDescriptor
                test    eax, eax
                js      loc_14091542F
                cmp     [rbp+arg_18], 0
                jz      loc_14091542F
                mov     rcx, [rbp+var_8]
                test    rcx, rcx
                jz      loc_14091542F
                movzx   esi, word ptr [rcx+4]
                lea     rdi, [rcx+8]
                test    rsi, rsi
                jz      loc_14091542D

loc_140915397:                          ; CODE XREF: RtlReplaceSidInSd+307↓j
                mov     al, [rdi]
                cmp     al, 3
                ja      short loc_1409153A3
                lea     rdx, [rdi+8]
                jmp     short loc_1409153B9
; ---------------------------------------------------------------------------

loc_1409153A3:                          ; CODE XREF: RtlReplaceSidInSd+27B↑j
                cmp     al, 4
                jnz     short loc_140915418
                lea     rcx, [rdi+0Ch]
                call    RtlLengthSid
                mov     eax, eax
                lea     rdx, [rdi+0Ch]
                add     rdx, rax

loc_1409153B9:                          ; CODE XREF: RtlReplaceSidInSd+281↑j
                mov     al, [rbx]
                cmp     [rdx], al
                jnz     short loc_140915418
                movzx   eax, byte ptr [rdx+1]
                movzx   ecx, byte ptr [rbx+1]
                cmp     al, cl
                jz      short loc_1409153D1
                inc     ecx
                cmp     eax, ecx
                jnz     short loc_140915418

loc_1409153D1:                          ; CODE XREF: RtlReplaceSidInSd+2A9↑j
                mov     ecx, [rdx+2]
                sub     ecx, [rbx+2]
                jnz     short loc_1409153E3
                movzx   ecx, word ptr [rdx+6]
                movzx   eax, word ptr [rbx+6]
                sub     ecx, eax

loc_1409153E3:                          ; CODE XREF: RtlReplaceSidInSd+2B7↑j
                test    ecx, ecx
                jnz     short loc_140915418
                mov     r14d, r15d
                lea     r15, [rdx+8]
                mov     rcx, r15
                lea     rdx, [rbx+8]
                mov     r8d, r14d
                call    memcmp
                test    eax, eax
                jnz     short loc_140915418
                mov     rdx, [rbp+arg_10]
                mov     r8d, r14d
                add     rdx, 8
                mov     rcx, r15
                call    memmove
                inc     dword ptr [r12]

loc_140915418:                          ; CODE XREF: RtlReplaceSidInSd+285↑j
                                        ; RtlReplaceSidInSd+29D↑j ...
                movzx   eax, word ptr [rdi+2]
                mov     r15d, [rbp+var_C]
                add     rdi, rax
                sub     rsi, 1
                jnz     loc_140915397

loc_14091542D:                          ; CODE XREF: RtlReplaceSidInSd+271↑j
                xor     eax, eax

loc_14091542F:                          ; CODE XREF: RtlReplaceSidInSd+60↑j
                                        ; RtlReplaceSidInSd+E1↑j ...
                mov     rbx, [rsp+30h+arg_8]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlReplaceSidInSd endp
