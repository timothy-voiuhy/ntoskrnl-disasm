PsGetEffectiveContainerId proc near     ; CODE XREF: NtQueryInformationThread+1E338E↓p
                                        ; DATA XREF: .rdata:000000014008211C↑o ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047FF16 SIZE 0000005A BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                and     [rsp+28h+arg_0], 0
                mov     rdi, r8
                mov     rsi, rdx
                mov     ebx, ecx
                cmp     ecx, 5
                jge     loc_14047FF16
                test    rdx, rdx
                jz      loc_14047FF20
                xor     eax, eax
                xorps   xmm0, xmm0
                movups  xmmword ptr [r8], xmm0
                mov     [r8+10h], eax
                mov     eax, gs:32ACh
                test    eax, 10001h
                jz      short loc_140348B2B
                mov     rax, gs:188h
                cmp     rdx, rax
                jnz     short loc_140348B2B

loc_140348B18:                          ; CODE XREF: PsGetEffectiveContainerId+B9↓j
                                        ; PsGetEffectiveContainerId+1374AB↓j
                xor     eax, eax

loc_140348B1A:                          ; CODE XREF: PsGetEffectiveContainerId+13745B↓j
                                        ; PsGetEffectiveContainerId+137465↓j
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140348B2B:                          ; CODE XREF: PsGetEffectiveContainerId+48↑j
                                        ; PsGetEffectiveContainerId+56↑j
                lea     rdx, [rsp+28h+arg_0]
                mov     rcx, rsi
                call    sub_140219BBC
                mov     r8, rax
                test    rax, rax
                jnz     short loc_140348B80
                mov     rcx, [rsi+220h]
                mov     rdx, [rcx+510h]

loc_140348B4E:                          ; CODE XREF: PsGetEffectiveContainerId+D2↓j
                test    rdx, rdx
                jz      short loc_140348B74
                test    ebx, ebx
                jz      loc_14047FF38
                sub     ebx, 2
                jnz     loc_14047FF2A
                mov     rax, [rdx+340h]

loc_140348B6B:                          ; CODE XREF: PsGetEffectiveContainerId+13748F↓j
                test    rax, rax
                jnz     loc_14047FF54

loc_140348B74:                          ; CODE XREF: PsGetEffectiveContainerId+91↑j
                                        ; PsGetEffectiveContainerId+137472↓j ...
                cmp     [rsp+28h+arg_0], 0
                jz      short loc_140348B18
                jmp     loc_14047FF5D
; ---------------------------------------------------------------------------

loc_140348B80:                          ; CODE XREF: PsGetEffectiveContainerId+7E↑j
                mov     rax, [rax+220h]
                mov     rdx, [rax+510h]
                or      dword ptr [rdi+10h], 1
                jmp     short loc_140348B4E
PsGetEffectiveContainerId endp
