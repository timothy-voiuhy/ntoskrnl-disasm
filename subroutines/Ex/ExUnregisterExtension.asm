ExUnregisterExtension proc near         ; DATA XREF: .pdata:0000000140124980↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rax, gs:188h
                or      rbx, 0FFFFFFFFFFFFFFFFh
                mov     rsi, rcx
                add     [rax+1E4h], bx
                lea     rdi, [rcx+48h]
                xor     r8d, r8d
                mov     rcx, rdi
                xor     edx, edx
                call    sub_140244C10
                lock bts qword ptr [rdi], 0
                mov     rbp, rax
                jnb     short loc_140958065
                mov     r8, rdi
                mov     rdx, rax
                mov     rcx, rdi
                call    sub_1402F5F10

loc_140958065:                          ; CODE XREF: ExUnregisterExtension+45↑j
                test    rbp, rbp
                jz      short loc_14095806E
                or      byte ptr [rbp+1Ah], 1

loc_14095806E:                          ; CODE XREF: ExUnregisterExtension+58↑j
                mov     rax, [rsi+30h]
                test    rax, rax
                jz      short loc_140958085
                mov     rdx, [rsi+38h]
                mov     ecx, 2
                call    sub_1404079D0

loc_140958085:                          ; CODE XREF: ExUnregisterExtension+65↑j
                lea     rcx, [rsi+40h]
                call    ExWaitForRundownProtectionRelease
                mov     rax, [rsi+30h]
                and     qword ptr [rsi+50h], 0
                test    rax, rax
                jz      short loc_1409580AA
                mov     rdx, [rsi+38h]
                mov     ecx, 3
                call    sub_1404079D0

loc_1409580AA:                          ; CODE XREF: ExUnregisterExtension+8A↑j
                lock xadd [rdi], rbx
                and     bl, 6
                cmp     bl, 2
                jnz     short loc_1409580BF
                mov     rcx, rdi
                call    ExfTryToWakePushLock

loc_1409580BF:                          ; CODE XREF: ExUnregisterExtension+A5↑j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rcx, rsi
                call    sub_1409580FC
                mov     rbx, [rsp+28h+arg_0]
                mov     rbp, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ExUnregisterExtension endp
