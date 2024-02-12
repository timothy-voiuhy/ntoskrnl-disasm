IoGetCopyInformationExtension proc near ; DATA XREF: .pdata:00000001400E151C↑o
                sub     rsp, 28h
                mov     r8, rdx
                mov     edx, 9
                call    sub_1402F17B0
                test    al, al
                jz      short loc_1403F1849
                mov     rax, [rcx+0C8h]
                movups  xmm0, xmmword ptr [rax+40h]
                xor     eax, eax
                movdqu  xmmword ptr [r8], xmm0
                jmp     short loc_1403F184E
; ---------------------------------------------------------------------------

loc_1403F1849:                          ; CODE XREF: IoGetCopyInformationExtension+13↑j
                mov     eax, 0C0000225h

loc_1403F184E:                          ; CODE XREF: IoGetCopyInformationExtension+27↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetCopyInformationExtension endp
