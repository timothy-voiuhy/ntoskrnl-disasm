IoGetFsZeroingOffset proc near          ; DATA XREF: .pdata:00000001400F291C↑o
                sub     rsp, 28h
                mov     r8, rdx
                mov     edx, 4
                call    sub_1402F17B0
                test    al, al
                jz      short loc_140507CE6
                mov     rax, [rcx+0C8h]
                mov     ecx, [rax+28h]
                xor     eax, eax
                mov     [r8], ecx
                jmp     short loc_140507CEB
; ---------------------------------------------------------------------------

loc_140507CE6:                          ; CODE XREF: IoGetFsZeroingOffset+13↑j
                mov     eax, 0C0000225h

loc_140507CEB:                          ; CODE XREF: IoGetFsZeroingOffset+24↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoGetFsZeroingOffset endp
