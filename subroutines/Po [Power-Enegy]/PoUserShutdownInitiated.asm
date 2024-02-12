PoUserShutdownInitiated proc near       ; CODE XREF: sub_14067B764:loc_14067BCD5↑p
                                        ; DATA XREF: .rdata:0000000140095E78↑o ...

var_18          = qword ptr -18h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 000000014084ABCC SIZE 0000000B BYTES

                mov     [rsp+arg_0], rbx
                push    rsi
                sub     rsp, 30h
                call    PsIsCurrentThreadInServerSilo
                test    al, al
                jnz     loc_1407744BE
                xor     edx, edx
                lea     ecx, [rdx+7]
                call    sub_140774508
                mov     ebx, 1
                lea     rcx, unk_140C25040
                mov     edx, ebx
                call    sub_1403642E4
                cmp     cs:qword_140C54238, 0
                jz      loc_1407744BE
                call    sub_140991320
                cmp     cs:byte_140C23FB8, 0
                jnz     loc_14084ABCC
                cmp     cs:byte_140C23FB4, 0
                lea     rsi, unk_140C24000
                mov     cs:byte_140C23FB8, bl
                jnz     short loc_14077447E
                and     cs:qword_140C24058, 0
                lea     rax, sub_1408E9040
                and     cs:qword_140C24040, 0
                lea     rcx, unk_140C23FC0
                xor     edx, edx
                mov     cs:qword_140C24050, rax
                call    KeInitializeTimerEx
                xor     r8d, r8d
                lea     rdx, sub_14056F900
                mov     rcx, rsi
                call    KeInitializeDpc
                mov     cs:byte_140C23FB4, bl

loc_14077447E:                          ; CODE XREF: PoUserShutdownInitiated+68↑j
                mov     cs:dword_140C4C410, ebx
                call    sub_1409912E0
                mov     rax, cs:qword_140C54238
                call    sub_1404079D0
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rsi
                xor     r8d, r8d
                lea     rcx, unk_140C23FC0
                mov     rdx, 0FFFFFFFFCA5B1700h
                mov     bl, al
                call    sub_1402BE300
                test    bl, bl
                jz      short loc_1407744BE
                call    sub_1403A79C0

loc_1407744BE:                          ; CODE XREF: PoUserShutdownInitiated+11↑j
                                        ; PoUserShutdownInitiated+3C↑j ...
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
PoUserShutdownInitiated endp
