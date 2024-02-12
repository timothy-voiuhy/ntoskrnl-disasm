RtlGetNtProductType proc near           ; CODE XREF: sub_140501C08+287↓p
                                        ; KeCapturePersistentThreadState+1EA↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                call    PsIsCurrentThreadInServerSilo
                test    al, al
                jnz     short loc_140355521
                mov     rax, 0FFFFF78000000268h
                mov     ebx, 1
                cmp     byte ptr [rax], 0
                jz      short loc_140355507
                mov     eax, ds:0FFFFF78000000264h
                mov     [rdi], eax
                jmp     short loc_14035555E
; ---------------------------------------------------------------------------

loc_140355507:                          ; CODE XREF: RtlGetNtProductType+28↑j
                mov     rax, cr8
                cmp     al, bl
                ja      short loc_14035551B
                mov     rcx, rdi
                call    sub_140779794
                test    eax, eax
                jns     short loc_14035555E

loc_14035551B:                          ; CODE XREF: RtlGetNtProductType+3D↑j
                mov     [rdi], ebx
                xor     bl, bl
                jmp     short loc_14035555E
; ---------------------------------------------------------------------------

loc_140355521:                          ; CODE XREF: RtlGetNtProductType+14↑j
                call    sub_1403F2884
                test    eax, eax
                jnz     short loc_140355546
                mov     rcx, gs:188h
                call    PsGetThreadServerSilo
                test    rax, rax
                jz      short loc_140355546
                mov     rax, [rax+4F8h]
                jmp     short loc_14035554D
; ---------------------------------------------------------------------------

loc_140355546:                          ; CODE XREF: RtlGetNtProductType+58↑j
                                        ; RtlGetNtProductType+6B↑j
                lea     rax, unk_140D24540

loc_14035554D:                          ; CODE XREF: RtlGetNtProductType+74↑j
                mov     rax, [rax+468h]
                mov     ebx, 1
                mov     ecx, [rax+10h]
                mov     [rdi], ecx

loc_14035555E:                          ; CODE XREF: RtlGetNtProductType+35↑j
                                        ; RtlGetNtProductType+49↑j ...
                mov     al, bl
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlGetNtProductType endp
