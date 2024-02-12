KeSetAffinityThread proc near           ; CODE XREF: NtSetInformationThread+BDD↓p
                                        ; DATA XREF: .rdata:0000000140071E70↑o ...

var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046B812 SIZE 0000019C BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+88h+var_48], rax
                mov     rbp, [rcx+220h]
                xor     r13d, r13d
                mov     rdi, rdx
                mov     rsi, rcx
                test    rdx, rdx
                jz      loc_1403095B5
                and     [rsp+88h+var_60], r13
                xorps   xmm0, xmm0
                movups  [rsp+88h+var_58], xmm0
                mov     r15, cr8
                lea     eax, [r13+2]
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                or      r12, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jnz     loc_14046B812

loc_140309507:                          ; CODE XREF: KeSetAffinityThread+162374↓j
                                        ; KeSetAffinityThread+16237E↓j ...
                mov     rbx, gs:20h
                lea     rcx, [rbp+40h]
                call    ExAcquireSpinLockSharedAtDpcLevel
                movzx   edx, word ptr [rsi+230h]
                lea     rax, qword_140CFC848
                mov     word ptr [rsp+88h+var_58+8], dx
                mov     rax, [rax+rdx*8]
                and     rdi, rax
                jz      short loc_140309560
                mov     rax, [rbp+rdx*8+58h]
                and     rax, rdi
                cmp     rax, rdi
                jnz     short loc_140309560
                mov     r13, [rsi+228h]
                lea     r8, [rsp+88h+var_58]
                lea     rdx, [rsp+88h+var_60]
                mov     qword ptr [rsp+88h+var_58], rdi
                mov     rcx, rsi
                call    sub_1403096B0

loc_140309560:                          ; CODE XREF: KeSetAffinityThread+93↑j
                                        ; KeSetAffinityThread+A0↑j
                lea     rcx, [rbp+40h]
                call    ExReleaseSpinLockSharedFromDpcLevel
                lea     rdx, [rsp+88h+var_60]
                mov     rcx, rbx
                call    sub_14028DAE0
                mov     edx, 2
                cmp     r15b, dl
                jnb     loc_14046B987
                mov     rsi, [rbx+8]
                xor     ebp, ebp
                cmp     [rbx+10h], rbp
                jnz     short loc_1403095DE
                mov     eax, [rsi+74h]
                lea     r14d, [rdx-1]
                test    al, 40h
                jnz     loc_14046B8DD

loc_14030959F:                          ; CODE XREF: KeSetAffinityThread+1DA↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046B932

loc_1403095AD:                          ; CODE XREF: KeSetAffinityThread+162495↓j
                                        ; KeSetAffinityThread+1624A3↓j ...
                movzx   eax, r15b
                mov     cr8, rax

loc_1403095B5:                          ; CODE XREF: KeSetAffinityThread+36↑j
                                        ; KeSetAffinityThread+1624EC↓j ...
                mov     rax, r13
                mov     rcx, [rsp+88h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+88h+arg_10]
                add     rsp, 50h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403095DE:                          ; CODE XREF: KeSetAffinityThread+EE↑j
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1402423B0
                mov     rdi, gs:20h
                mov     r14d, 1
                mov     [rsp+88h+var_68], ebp

loc_1403095FB:                          ; CODE XREF: KeSetAffinityThread+202↓j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046B853

loc_14030960B:                          ; CODE XREF: KeSetAffinityThread+1623B7↓j
                                        ; KeSetAffinityThread+1623C6↓j ...
                lock bts qword ptr [rbx+30h], 0
                jb      short loc_14030967F
                mov     rdi, [rbx+10h]
                mov     [rbx+10h], rbp
                cli
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402CC660
                sti
                mov     [rbx+8], rdi
                mov     al, [rdi+184h]
                cmp     al, r14b
                jz      loc_14046B8A1

loc_14030963F:                          ; CODE XREF: KeSetAffinityThread+162421↓j
                mov     byte ptr [rdi+184h], 2
                mov     rdx, rsi
                mov     rcx, rbx
                mov     byte ptr [rsi+283h], 20h ; ' '
                mov     [rsi+186h], r15b
                call    sub_1402CE090
                mov     r8b, r15b
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_1404058F0
                test    al, al
                jnz     loc_14046B8C6

loc_140309675:                          ; CODE XREF: KeSetAffinityThread+16248D↓j
                mov     edx, 2
                jmp     loc_14030959F
; ---------------------------------------------------------------------------

loc_14030967F:                          ; CODE XREF: KeSetAffinityThread+172↑j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14046B87A

loc_14030968F:                          ; CODE XREF: KeSetAffinityThread+200↓j
                                        ; KeSetAffinityThread+1623DE↓j ...
                lea     rcx, [rsp+88h+var_68]
                call    sub_1402C8C70
                mov     rax, [rbx+30h]
                test    rax, rax
                jnz     short loc_14030968F
                jmp     loc_1403095FB
; } // starts at 1403094A0
KeSetAffinityThread endp
