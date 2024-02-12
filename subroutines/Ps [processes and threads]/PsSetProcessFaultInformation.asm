PsSetProcessFaultInformation proc near  ; CODE XREF: NtSetInformationProcess+3496↑p
                                        ; sub_1407315B0+10282D↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014084940E SIZE 0000018E BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 20h
                mov     eax, [rdx]
                mov     r14, rdx
                mov     rsi, rcx
                mov     rdi, 0FFFFF7800000037Ch
                test    al, 1
                jnz     loc_14084940E

loc_140771A0C:                          ; CODE XREF: PsSetProcessFaultInformation+D7A4C↓j
                                        ; PsSetProcessFaultInformation+D7A9E↓j
                mov     eax, [r14]
                or      rbx, 0FFFFFFFFFFFFFFFFh
                test    al, 2
                jnz     loc_140849483
                lea     rdi, [rsi+438h]

loc_140771A22:                          ; CODE XREF: PsSetProcessFaultInformation+D7B42↓j
                test    al, 4
                jz      short loc_140771A80
                mov     rbp, gs:188h
                add     [rbp+1E4h], bx
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockExclusiveEx
                mov     cl, [rsi+87Bh]
                mov     dl, 38h ; '8'
                mov     al, cl
                and     al, dl
                cmp     al, dl
                jnb     short loc_140771A5F
                lea     eax, [rcx+8]
                xor     al, cl
                and     al, dl
                xor     al, cl
                mov     [rsi+87Bh], al

loc_140771A5F:                          ; CODE XREF: PsSetProcessFaultInformation+6E↑j
                mov     rax, rbx
                lock xadd [rdi], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_140771AB3

loc_140771A6D:                          ; CODE XREF: PsSetProcessFaultInformation+DB↓j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, rbp
                call    sub_14021E1F0
                mov     eax, [r14]

loc_140771A80:                          ; CODE XREF: PsSetProcessFaultInformation+44↑j
                test    al, 8
                jnz     loc_140849527

loc_140771A88:                          ; CODE XREF: PsSetProcessFaultInformation+D7B8E↓j
                mov     rcx, cs:qword_140CFC968
                call    sub_140309D44
                test    rax, rax
                jnz     loc_140849573

loc_140771A9D:                          ; CODE XREF: PsSetProcessFaultInformation+D7BB7↓j
                mov     rbx, [rsp+38h+arg_0]
                xor     eax, eax
                mov     rbp, [rsp+38h+arg_18]
                add     rsp, 20h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140771AB3:                          ; CODE XREF: PsSetProcessFaultInformation+8B↑j
                mov     rcx, rdi
                call    ExfTryToWakePushLock
                jmp     short loc_140771A6D
PsSetProcessFaultInformation endp
