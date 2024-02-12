PoQueryWatchdogTime proc near           ; DATA XREF: .rdata:0000000140080A14↑o
                                        ; .pdata:00000001400D7424↑o

var_28          = xmmword ptr -28h
var_18          = byte ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014047D79C SIZE 00000078 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+18h], rdi
                push    r14
                sub     rsp, 40h
                xor     eax, eax
                xorps   xmm0, xmm0
                or      rbx, 0FFFFFFFFFFFFFFFFh
                xor     sil, sil
                mov     r14, rdx
                movups  [rsp+48h+var_28], xmm0
                mov     [r11-18h], rax
                test    rcx, rcx
                jz      loc_14047D79C
                mov     rax, [rcx+138h]
                mov     rdi, [rax+28h]

loc_1403425B1:                          ; CODE XREF: PoQueryWatchdogTime+13B22E↓j
                lea     rdx, [rsp+48h+var_28]
                lea     rcx, qword_140C23A70
                call    KeAcquireInStackQueuedSpinLock
                mov     rdx, [rdi+108h]
                test    rdx, rdx
                jnz     loc_14034268B

loc_1403425D2:                          ; CODE XREF: PoQueryWatchdogTime+133↓j
                                        ; PoQueryWatchdogTime+156↓j
                mov     rdx, [rdi+118h]
                test    rdx, rdx
                jnz     short loc_14034264C

loc_1403425DE:                          ; CODE XREF: PoQueryWatchdogTime+F4↓j
                                        ; PoQueryWatchdogTime+116↓j
                lea     rcx, [rsp+48h+var_28]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   edi, [rsp+48h+var_18]
                test    eax, eax
                jnz     loc_14047D7A3

loc_1403425FB:                          ; CODE XREF: PoQueryWatchdogTime+13B235↓j
                                        ; PoQueryWatchdogTime+13B241↓j ...
                mov     cr8, rdi
                cmp     rbx, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_14034261F

loc_140342605:                          ; CODE XREF: PoQueryWatchdogTime+DA↓j
                                        ; PoQueryWatchdogTime+13B29F↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     al, sil
                mov     rsi, [rsp+48h+arg_8]
                mov     rdi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14034261F:                          ; CODE XREF: PoQueryWatchdogTime+93↑j
                mov     sil, 1
                mov     cl, sil
                call    sub_140212F34
                cmp     rax, rbx
                ja      loc_14047D80B
                sub     rbx, rax
                mov     rax, 0D6BF94D5E57A42BDh
                mul     rbx
                shr     rdx, 17h
                mov     [r14], edx
                jmp     short loc_140342605
; ---------------------------------------------------------------------------

loc_14034264C:                          ; CODE XREF: PoQueryWatchdogTime+6C↑j
                movsx   rax, byte ptr [rdx+42h]
                lea     rcx, [rax+rax*8]
                mov     r8, [rdx+rcx*8+0C8h]
                cmp     [r8+0C4h], sil
                jz      loc_1403425DE
                mov     rcx, r8
                call    sub_14039858C
                mov     ecx, eax
                imul    rax, rcx, 989680h
                add     rax, [r8+30h]
                cmp     rax, rbx
                cmovb   rbx, rax
                jmp     loc_1403425DE
; ---------------------------------------------------------------------------

loc_14034268B:                          ; CODE XREF: PoQueryWatchdogTime+5C↑j
                movsx   rax, byte ptr [rdx+42h]
                lea     rcx, [rax+rax*8]
                mov     r8, [rdx+rcx*8+0C8h]
                cmp     [r8+0C4h], sil
                jz      loc_1403425D2
                mov     rcx, r8
                call    sub_14039858C
                mov     ecx, eax
                imul    rax, rcx, 989680h
                add     rax, [r8+30h]
                cmp     rax, 0FFFFFFFFFFFFFFFFh
                cmovb   rbx, rax
                jmp     loc_1403425D2
PoQueryWatchdogTime endp
