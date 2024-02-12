PoFxActivateComponent proc near         ; CODE XREF: sub_14036DA80+FA↓p
                                        ; sub_1403BDD20+CE↓p ...

var_68          = qword ptr -68h
var_58          = byte ptr -58h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140452880 SIZE 00000092 BYTES

                push    rbx
                push    rbp
                push    rdi
                sub     rsp, 70h
                mov     ebp, r8d
                mov     ebx, r8d
                mov     rdi, rcx
                and     ebp, 1
                jz      short loc_1402BCE52
                mov     rax, cr8
                cmp     al, 2
                jnb     loc_140452880

loc_1402BCE52:                          ; CODE XREF: PoFxActivateComponent+14↑j
                mov     eax, ebx
                mov     ecx, edx
                and     eax, 3
                cmp     al, 3
                jz      loc_1402BCF2A
                cmp     edx, [rdi+33Ch]
                jnb     loc_140452894
                mov     rax, [rdi+340h]
                xor     edx, edx

loc_1402BCE76:                          ; DATA XREF: .rdata:0000000140067958↑o
                                        ; .rdata:0000000140067970↑o ...
                mov     [rsp+88h+arg_8], r14
                mov     r14, [rax+rcx*8]
                lea     r8d, [rdx+40h]
                lea     rcx, [rsp+88h+var_58]
                call    memset
                mov     eax, [rdi+338h]
                test    al, 1
                jnz     short loc_1402BCF19
                mov     eax, ebx

loc_1402BCE9C:                          ; DATA XREF: .rdata:0000000140067970↑o
                                        ; .rdata:0000000140067984↑o ...
                mov     [rsp+88h+arg_0], rsi
                and     al, 6
                mov     [rsp+88h+arg_10], r15
                cmp     al, 4
                jz      loc_1402BCF41
                xor     sil, sil

loc_1402BCEB9:                          ; CODE XREF: PoFxActivateComponent+124↓j
                test    bl, 2
                lea     r9, [rsp+88h+var_58]
                mov     r15d, 0
                mov     eax, 1
                cmovnz  r9, r15
                lock xadd [r14+58h], eax
                inc     eax
                cmp     eax, 1
                jz      short loc_1402BCF59
                test    eax, eax
                jns     loc_1402BCF96

loc_1402BCEE5:                          ; CODE XREF: PoFxActivateComponent+13E↓j
                                        ; PoFxActivateComponent+15A↓j
                mov     r15, [rsp+88h+arg_10]
                test    sil, sil
                mov     rsi, [rsp+88h+arg_0]
                jz      short loc_1402BCF19

loc_1402BCEFA:                          ; DATA XREF: .pdata:00000001400D1040↑o
                                        ; .pdata:00000001400D104C↑o
                mov     rcx, gs:188h
                add     word ptr [rcx+1E6h], 1
                jnz     short loc_1402BCF19
                lea     rax, [rcx+98h]
                cmp     [rax], rax
                jnz     short loc_1402BCF8F

loc_1402BCF19:                          ; CODE XREF: PoFxActivateComponent+68↑j
                                        ; PoFxActivateComponent+C8↑j ...
                mov     r14, [rsp+88h+arg_8]
                add     rsp, 70h
                pop     rdi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
algn_1402BCF29:                         ; DATA XREF: .pdata:00000001400D104C↑o
                                        ; .pdata:00000001400D1058↑o
                align 2

loc_1402BCF2A:                          ; CODE XREF: PoFxActivateComponent+2B↑j
                mov     r8, rcx
                mov     r9d, 1
                mov     ecx, 614h
                mov     rdx, rdi
                call    sub_1405695EC
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402BCF41:                          ; CODE XREF: PoFxActivateComponent+80↑j
                                        ; DATA XREF: .pdata:00000001400D1058↑o ...
                mov     rax, gs:188h
                mov     sil, 1
                dec     word ptr [rax+1E6h]
                jmp     loc_1402BCEB9
; ---------------------------------------------------------------------------

loc_1402BCF59:                          ; CODE XREF: PoFxActivateComponent+AB↑j
                lock inc dword ptr [r14+58h]
                xor     r8d, r8d
                mov     rdx, r14
                mov     rcx, rdi
                call    sub_1402BD0D0

loc_1402BCF6C:                          ; CODE XREF: PoFxActivateComponent+16A↓j
                                        ; PoFxActivateComponent+199↓j
                test    ebp, ebp
                jz      loc_1402BCEE5
                lea     rcx, [r14+68h]
                mov     [rsp+88h+var_68], r15
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                jmp     loc_1402BCEE5
; ---------------------------------------------------------------------------

loc_1402BCF8F:                          ; CODE XREF: PoFxActivateComponent+E7↑j
                                        ; DATA XREF: .pdata:00000001400D1064↑o ...
                call    KiCheckForKernelApcDelivery
                jmp     short loc_1402BCF19
; ---------------------------------------------------------------------------

loc_1402BCF96:                          ; CODE XREF: PoFxActivateComponent+AF↑j
                                        ; DATA XREF: .pdata:00000001400D1070↑o ...
                bt      eax, 1Eh
                jnb     short loc_1402BCF6C
                lea     rcx, [r14+80h]
                call    KeAcquireSpinLockRaiseToDpc
                lea     rcx, [r14+80h]
                movzx   edi, al
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404528AB

loc_1402BCFC5:                          ; CODE XREF: PoFxActivateComponent+195A7D↓j
                                        ; PoFxActivateComponent+195A89↓j ...
                mov     cr8, rdi
                jmp     short loc_1402BCF6C
PoFxActivateComponent endp
