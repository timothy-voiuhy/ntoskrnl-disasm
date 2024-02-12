ExDeleteResourceLite proc near          ; CODE XREF: sub_1402F82E0+17↑p
                                        ; sub_14030CB40+1BE↓p ...

var_28          = qword ptr -28h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404654D6 SIZE 000002B3 BYTES

                push    rbx
                push    rdi
                sub     rsp, 38h
                test    byte ptr [rcx+1Ah], 1
                mov     rbx, rcx
                jnz     loc_1404654D6
                inc     dword ptr gs:8660h

loc_1402F833C:                          ; DATA XREF: .rdata:000000014006EE38↑o
                                        ; .rdata:000000014006EE48↑o ...
                mov     [rsp+48h+arg_0], rbp
                mov     [rsp+48h+arg_18], r14
                mov     [rsp+48h+var_18], r15
                mov     rbp, cr8
                mov     r15d, 2
                mov     cr8, r15
                mov     eax, cs:dword_140CFC660
                lea     r14, [r15-3]
                test    eax, eax
                jnz     loc_1404654F1

loc_1402F836B:                          ; CODE XREF: ExDeleteResourceLite+16D1D3↓j
                                        ; ExDeleteResourceLite+16D1DD↓j ...
                xor     edi, edi
                mov     [rsp+48h+arg_10], rsi
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_140465532
                mov     rsi, gs:20h
                mov     [rsp+48h+arg_8], edi
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_140465548

loc_1402F839C:                          ; CODE XREF: ExDeleteResourceLite+16D22C↓j
                                        ; ExDeleteResourceLite+16D23B↓j ...
                lock bts cs:dword_140D230C0, 1Fh
                jb      loc_1402F84D7

loc_1402F83AB:                          ; CODE XREF: ExDeleteResourceLite+1DB↓j
                mov     edx, cs:dword_140D230C0
                mov     ecx, edx
                btr     ecx, 1Eh
                cmp     ecx, 80000000h
                jnz     loc_140465596

loc_1402F83C3:                          ; CODE XREF: ExDeleteResourceLite+16D223↓j
                                        ; ExDeleteResourceLite+16D2AD↓j
                mov     rdx, [rbx]
                mov     rax, [rbx+8]
                cmp     [rdx+8], rbx
                jnz     loc_140465782
                cmp     [rax], rbx
                jnz     loc_140465782
                mov     [rax], rdx
                mov     [rdx+8], rax
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_1404655D2
                mov     cs:dword_140D230C0, edi

loc_1402F83F7:                          ; CODE XREF: ExDeleteResourceLite+16D2C4↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_1404655E9

loc_1402F8410:                          ; CODE XREF: ExDeleteResourceLite+16D2CD↓j
                                        ; ExDeleteResourceLite+16D2DC↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046560D

loc_1402F841E:                          ; CODE XREF: ExDeleteResourceLite+16D2EF↓j
                                        ; ExDeleteResourceLite+16D2FB↓j ...
                movzx   eax, bpl
                mov     cr8, rax
                mov     [rbx], rdi
                mov     [rbx+8], rdi
                mov     eax, [rbx+38h]
                mov     rdi, [rbx+30h]
                test    r15b, al
                jnz     loc_140465671
                test    dil, 3
                jnz     short loc_1402F8448

loc_1402F8443:                          ; CODE XREF: ExDeleteResourceLite+16D355↓j
                test    rdi, rdi
                jnz     short loc_1402F846F

loc_1402F8448:                          ; CODE XREF: ExDeleteResourceLite+121↑j
                                        ; ExDeleteResourceLite+175↓j ...
                mov     rcx, [rbx+10h]
                test    rcx, rcx
                jnz     short loc_1402F849C

loc_1402F8451:                          ; CODE XREF: ExDeleteResourceLite+1B2↓j
                mov     rsi, [rsp+48h+arg_10]
                xor     eax, eax
                mov     r14, [rsp+48h+arg_18]
                mov     rbp, [rsp+48h+arg_0]
                mov     r15, [rsp+48h+var_18]
                add     rsp, 38h
                pop     rdi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
byte_1402F846E  db 0CCh                 ; DATA XREF: .pdata:00000001400D3590↑o
                                        ; .pdata:00000001400D359C↑o
; ---------------------------------------------------------------------------

loc_1402F846F:                          ; CODE XREF: ExDeleteResourceLite+126↑j
                                        ; DATA XREF: .pdata:00000001400D359C↑o ...
                mov     rcx, rbx
                call    sub_140247BA0
                test    al, al
                jnz     loc_14046567A

loc_1402F847F:                          ; CODE XREF: ExDeleteResourceLite+16D360↓j
                                        ; ExDeleteResourceLite+16D372↓j
                mov     eax, [rbx+38h]
                test    al, 1
                jnz     loc_1404656BB

loc_1402F848A:                          ; CODE XREF: ExDeleteResourceLite+16D3AE↓j
                test    al, 4
                jnz     loc_1404656D3

loc_1402F8492:                          ; CODE XREF: ExDeleteResourceLite+16D3C3↓j
                test    r15b, al
                jz      short loc_1402F8448
                jmp     loc_1404656E8
; ---------------------------------------------------------------------------

loc_1402F849C:                          ; CODE XREF: ExDeleteResourceLite+12F↑j
                mov     edi, 1
                lea     rsi, [rcx+8]
                cmp     [rsi], edi
                jbe     short loc_1402F84CD

loc_1402F84A9:                          ; CODE XREF: ExDeleteResourceLite+1AB↓j
                lea     rsi, [rsi+10h]
                lea     rcx, [rsi-8]
                call    sub_1402FAD08
                mov     rbp, rax
                test    rax, rax
                jnz     loc_1404656FB

loc_1402F84C2:                          ; CODE XREF: ExDeleteResourceLite+16D449↓j
                                        ; ExDeleteResourceLite+16D45D↓j
                mov     rcx, [rbx+10h]
                inc     edi
                cmp     edi, [rcx+8]
                jb      short loc_1402F84A9

loc_1402F84CD:                          ; CODE XREF: ExDeleteResourceLite+187↑j
                call    sub_14023C050
                jmp     loc_1402F8451
; ---------------------------------------------------------------------------

loc_1402F84D7:                          ; CODE XREF: ExDeleteResourceLite+85↑j
                mov     rcx, [rsi+84B8h]
                test    rcx, rcx
                jnz     loc_14046556F

loc_1402F84E7:                          ; CODE XREF: ExDeleteResourceLite+16D253↓j
                                        ; ExDeleteResourceLite+16D262↓j ...
                movzx   edx, bpl
                lea     rcx, dword_140D230C0
                call    sub_14028EAE0
                mov     [rsp+48h+arg_8], eax
                jmp     loc_1402F83AB
ExDeleteResourceLite endp
