HalRequestIpi   proc near               ; CODE XREF: sub_14024EFB0+4B4↑p
                                        ; sub_140253E20+465↑p ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014047F84A SIZE 0000001F BYTES

                push    rbx
                sub     rsp, 30h
                movsxd  rbx, ecx
                mov     r8d, 0E1h
                mov     ecx, ebx
                call    HalRequestIpiSpecifyVector
                test    eax, eax
                js      loc_14047F84A
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
HalRequestIpi   endp

byte_140347CE5  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140081DBC↑o
                                        ; .pdata:00000001400D78EC↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_140347CEC   proc near               ; CODE XREF: sub_1402369F0+438↑p
                                        ; sub_1402369F0+969↑p ...

var_60          = qword ptr -60h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
var_20          = xmmword ptr -20h
var_10          = qword ptr -10h
arg_0           = dword ptr  40h
arg_8           = qword ptr  48h
arg_10          = dword ptr  50h
arg_18          = dword ptr  58h

; FUNCTION CHUNK AT 000000014047F86A SIZE 0000033D BYTES

                mov     [rsp-38h+arg_8], rbx
                mov     [rsp-38h+arg_10], r8d
                mov     [rsp-38h+arg_0], ecx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 80h
                mov     r15, rdx
                mov     esi, ecx
                xorps   xmm0, xmm0
                lea     rdx, [rbp+var_38]
                xor     eax, eax
                lea     rcx, qword_140C191A0
                movups  [rbp+var_38], xmm0
                mov     [rbp+var_28], rax
                mov     ebx, r8d
                call    KeAcquireInStackQueuedSpinLock
                mov     eax, ebx
                mov     edi, 20h ; ' '
                and     eax, edi
                mov     [rbp+arg_18], eax
                jz      loc_14047F86A
                mov     rax, gs:188h
                mov     rbx, cs:qword_140C19188
                mov     r13, cs:qword_140C19190
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+558h]
                mov     r12, [rax+3D0h]
                mov     r8, [rax+3D8h]

loc_140347D79:                          ; CODE XREF: sub_140347CEC+137B9A↓j
                xor     edx, edx
                test    r8, r8
                jz      short loc_140347DA7
                xor     eax, eax

loc_140347D82:                          ; CODE XREF: sub_140347CEC+AD↓j
                imul    rax, 38h ; '8'
                mov     ecx, [rax+r12]
                cmp     ecx, esi
                jz      short loc_140347DA7
                test    ecx, ecx
                jz      short loc_140347D9D
                inc     edx
                mov     eax, edx
                cmp     rax, r8
                jb      short loc_140347D82
                jmp     short loc_140347DA7
; ---------------------------------------------------------------------------

loc_140347D9D:                          ; CODE XREF: sub_140347CEC+A4↑j
                mov     eax, edx
                imul    rcx, rax, 38h ; '8'
                mov     [rcx+r12], esi

loc_140347DA7:                          ; CODE XREF: sub_140347CEC+92↑j
                                        ; sub_140347CEC+A0↑j ...
                mov     eax, edx
                cmp     rax, r8
                jz      short loc_140347E08
                imul    rax, 38h ; '8'
                add     rax, r12
                test    byte ptr [rbp+arg_10], 1
                jz      short loc_140347DFE
                inc     qword ptr [rax+28h]
                add     [rax+20h], r15

loc_140347DC3:                          ; CODE XREF: sub_140347CEC+11A↓j
                lea     rcx, [rbp+var_38]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_28]
                test    eax, eax
                jnz     loc_14047F88B

loc_140347DDE:                          ; CODE XREF: sub_140347CEC+137BA1↓j
                                        ; sub_140347CEC+137BB1↓j ...
                mov     cr8, rbx

loc_140347DE2:                          ; CODE XREF: sub_140347CEC+24F↓j
                                        ; sub_140347CEC+137CA0↓j ...
                mov     rbx, [rsp+80h+arg_8]
                add     rsp, 80h
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

loc_140347DFE:                          ; CODE XREF: sub_140347CEC+CD↑j
                inc     qword ptr [rax+10h]
                add     [rax+8], r15
                jmp     short loc_140347DC3
; ---------------------------------------------------------------------------

loc_140347E08:                          ; CODE XREF: sub_140347CEC+C0↑j
                imul    rax, r13, 38h ; '8'
                mov     eax, [rax+rbx-38h]
                test    eax, eax
                jnz     loc_14047F8F5
                imul    rax, r8, 38h ; '8'
                mov     [rbp+var_48], rax
                add     rax, 0FFFh
                and     rax, 0FFFFFFFFFFFFF000h
                mov     [rbp+var_50], rax
                lea     r14, [rax+1000h]
                mov     rax, 2492492492492493h
                mul     r14
                mov     rsi, r14
                sub     rsi, rdx
                shr     rsi, 1
                add     rsi, rdx
                mov     rdx, r14
                shr     rsi, 5
                call    sub_140375A10
                mov     rdi, rax
                test    rax, rax
                jz      loc_14047FB02
                test    r12, r12
                jnz     loc_14047F991

loc_140347E71:                          ; CODE XREF: sub_140347CEC+137CB5↓j
                mov     rax, [rbp+var_48]
                mov     r8, r14
                sub     r8, rax
                xor     edx, edx
                lea     rcx, [rax+rdi]
                call    memset
                cmp     [rbp+arg_18], 0
                jz      loc_14047F9A6
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, [rcx+558h]
                mov     [rax+3D0h], rdi
                mov     [rax+3D8h], rsi

loc_140347EB5:                          ; CODE XREF: sub_140347CEC+137CC8↓j
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     [rbp+var_10], rax
                mov     eax, cs:dword_140CFB0F8
                movups  [rbp+var_20], xmm0
                cmp     eax, 6C6F6F50h
                jz      loc_14047F9B9
                jmp     loc_14047F9BA
; ---------------------------------------------------------------------------

loc_140347ED8:                          ; CODE XREF: sub_140347CEC+27C↓j
                                        ; sub_140347CEC+2F5↓j ...
                mov     edx, r13d
                imul    rbx, rdx, 38h ; '8'
                mov     eax, [rbx+rdi]
                cmp     eax, 6C6F6F50h
                jnz     short loc_140347F40
                lock inc qword ptr [rbx+rdi+10h]
                mov     rax, [rbp+var_50]
                add     rax, 1000h
                lock xadd [rbx+rdi+8], rax
                mov     rdi, [rbp+var_50]

loc_140347F04:                          ; CODE XREF: sub_140347CEC+29D↓j
                lea     rcx, [rbp+var_38]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_28]
                test    eax, eax
                jnz     loc_14047FA8D

loc_140347F1F:                          ; CODE XREF: sub_140347CEC+137DA3↓j
                                        ; sub_140347CEC+137DB0↓j ...
                mov     cr8, rbx
                test    r12, r12
                jnz     loc_14047FAF1

loc_140347F2C:                          ; CODE XREF: sub_140347CEC+137E11↓j
                mov     r8d, [rbp+arg_10]
                mov     rdx, r15
                mov     ecx, [rbp+arg_0]
                call    sub_140347CEC
                jmp     loc_140347DE2
; ---------------------------------------------------------------------------

loc_140347F40:                          ; CODE XREF: sub_140347CEC+1FB↑j
                test    eax, eax
                jnz     short loc_140347F5F
                mov     rax, cs:qword_140C191C8
                mov     ecx, [rbx+rax]
                test    ecx, ecx
                jnz     loc_140347FE6
                lea     rax, [r10-1]
                cmp     rdx, rax
                jnz     short loc_140347F8E

loc_140347F5F:                          ; CODE XREF: sub_140347CEC+256↑j
                inc     r13d
                and     r13d, r8d
                cmp     r13d, r9d
                jnz     loc_140347ED8
                mov     rdi, [rbp+var_50]
                mov     r8d, 200h
                mov     ecx, 6C6F6F50h
                lea     rdx, [rdi+1000h]
                call    sub_140347CEC
                jmp     loc_140347F04
; ---------------------------------------------------------------------------

loc_140347F8E:                          ; CODE XREF: sub_140347CEC+271↑j
                lea     rdx, [rbp+var_20]
                lea     rcx, qword_140C191A0
                call    KeAcquireInStackQueuedSpinLock
                mov     rcx, cs:qword_140C191C8
                cmp     dword ptr [rbx+rcx], 0
                jnz     short loc_140347FB6
                mov     eax, 6C6F6F50h
                mov     [rbx+rcx], eax
                mov     [rbx+rdi], eax

loc_140347FB6:                          ; CODE XREF: sub_140347CEC+2BD↑j
                lea     rcx, [rbp+var_20]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   ebx, byte ptr [rbp+var_10]
                test    eax, eax
                jnz     loc_14047FA27

loc_140347FD1:                          ; CODE XREF: sub_140347CEC+137D3D↓j
                                        ; sub_140347CEC+137D4A↓j ...
                mov     cr8, rbx
                mov     r8, [rbp+var_48]
                mov     r9d, [rbp+arg_18]
                mov     r10, [rbp+var_40]
                jmp     loc_140347ED8
; ---------------------------------------------------------------------------

loc_140347FE6:                          ; CODE XREF: sub_140347CEC+264↑j
                mov     [rbx+rdi], ecx
                jmp     loc_140347ED8
sub_140347CEC   endp

; ---------------------------------------------------------------------------
algn_140347FEE:                         ; DATA XREF: .rdata:0000000140081E38↑o
                                        ; .pdata:00000001400D78F8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140348000   proc near               ; DATA XREF: .pdata:00000001400D7904↑o
                                        ; sub_1403B208C+12F↓o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                movzx   eax, byte ptr [rcx]
                mov     r9d, edx
                mov     edx, eax
                mov     rbx, rcx
                bts     edx, 11h
                mov     ecx, 320h
                cmp     r9d, 2
                mov     rdi, r8
                cmovnz  edx, eax
                mov     rax, cs:qword_140C508A8
                call    sub_1404079D0
                mov     rax, cs:qword_140C508A8
                mov     ecx, 3E0h
                mov     edx, [rbx+4]
                call    sub_1404079D0
                mov     rax, cs:qword_140C508A8
                mov     edx, edi
                mov     ecx, 380h
                call    sub_1404079D0
                mov     rbx, [rsp+28h+arg_0]
                xor     eax, eax
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140348000   endp

algn_140348069:                         ; DATA XREF: .pdata:00000001400D7904↑o
                align 10h
; Exported entry 1834. PsGetProcessCreateTimeQuadPart

; =============== S U B R O U T I N E =======================================


