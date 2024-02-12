RtlLocateSupervisorFeature proc near    ; CODE XREF: sub_1402D2A7C+18974B↑p
                                        ; sub_14051A330+44↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                mov     r9d, edx
                mov     rbx, r8
                mov     r11, rcx
                lea     eax, [r9-2]
                cmp     eax, 3Dh ; '='
                ja      loc_14058D436
                mov     rax, ds:0FFFFF780000005F0h
                mov     ecx, r9d
                mov     r10d, 1
                shl     r10, cl
                test    r10, rax
                jz      loc_14058D436
                mov     eax, ds:0FFFFF780000003ECh
                mov     ecx, 2
                test    cl, al
                jz      loc_14058D436
                mov     r8, [r11+8]
                test    r8, r8
                jns     short loc_14058D436
                mov     rax, [r11]
                and     rax, r8
                bt      rax, r9
                jnb     short loc_14058D436
                lea     edx, [rcx+3Eh]
                cmp     r9d, ecx
                jbe     short loc_14058D405
                mov     rax, 0FFFFF7800000060Ch

loc_14058D3D5:                          ; CODE XREF: RtlLocateSupervisorFeature+B3↓j
                mov     edi, 1
                shl     rdi, cl
                test    r8, rdi
                jz      short loc_14058D3FA
                mov     rbp, 0FFFFF780000005F8h
                test    [rbp+0], rdi
                jz      short loc_14058D3F8
                add     edx, 3Fh ; '?'
                and     edx, 0FFFFFFC0h

loc_14058D3F8:                          ; CODE XREF: RtlLocateSupervisorFeature+A0↑j
                add     edx, [rax]

loc_14058D3FA:                          ; CODE XREF: RtlLocateSupervisorFeature+90↑j
                inc     ecx
                add     rax, 4
                cmp     ecx, r9d
                jb      short loc_14058D3D5

loc_14058D405:                          ; CODE XREF: RtlLocateSupervisorFeature+79↑j
                mov     rax, ds:0FFFFF780000005F8h
                test    r10, rax
                jz      short loc_14058D41A
                add     edx, 3Fh ; '?'
                and     edx, 0FFFFFFC0h

loc_14058D41A:                          ; CODE XREF: RtlLocateSupervisorFeature+C2↑j
                test    rbx, rbx
                jz      short loc_14058D42F
                mov     rax, 0FFFFF78000000604h
                mov     eax, [rax+r9*4]
                mov     [rbx], eax

loc_14058D42F:                          ; CODE XREF: RtlLocateSupervisorFeature+CD↑j
                mov     eax, edx
                add     rax, r11
                jmp     short loc_14058D438
; ---------------------------------------------------------------------------

loc_14058D436:                          ; CODE XREF: RtlLocateSupervisorFeature+23↑j
                                        ; RtlLocateSupervisorFeature+42↑j ...
                xor     eax, eax

loc_14058D438:                          ; CODE XREF: RtlLocateSupervisorFeature+E4↑j
                mov     rbx, [rsp+arg_0]
                mov     rbp, [rsp+arg_8]
                mov     rsi, [rsp+arg_10]
                mov     rdi, [rsp+arg_18]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlLocateSupervisorFeature endp
