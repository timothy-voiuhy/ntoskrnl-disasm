HalGetMessageRoutingInfo proc near      ; CODE XREF: sub_140760764+282↓p
                                        ; DATA XREF: .rdata:000000014009231C↑o ...

var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = word ptr -20h
var_1E          = dword ptr -1Eh
var_1A          = word ptr -1Ah
var_18          = xmmword ptr -18h
var_s0          = byte ptr  0
arg_0           = dword ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_18          = qword ptr  48h

; FUNCTION CHUNK AT 0000000140493904 SIZE 0000010F BYTES

                mov     [rsp-28h+arg_8], rbx
                mov     [rsp-28h+arg_10], rsi
                mov     [rsp-28h+arg_18], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 50h
                xor     r14d, r14d
                xorps   xmm0, xmm0
                mov     rdi, rdx
                mov     [rbp+var_1E], r14d
                mov     rbx, rcx
                mov     [rbp+var_1A], r14w
                mov     [rbp+arg_0], r14d
                lea     r15d, [r14+1]
                movups  [rbp+var_18], xmm0
                cmp     [rcx], r15d
                ja      loc_140493A04
                mov     rdx, [rcx+10h]
                test    rdx, rdx
                jz      loc_140377604
                lea     rax, [rdx-1]
                mov     r8b, r15b
                xor     rax, rdx
                and     rax, rdx
                cmp     rax, rdx
                jnz     loc_140377604

loc_1403774BC:                          ; CODE XREF: HalGetMessageRoutingInfo+1B7↓j
                movzx   r9d, word ptr [rcx+18h]
                movzx   esi, r14b
                test    r9w, r9w
                jnz     short loc_1403774E8
                xor     r10d, r10d
                mov     rcx, r14
                cmp     r10w, cs:word_140CFC840
                cmovb   rcx, cs:qword_140CFC848
                cmp     rdx, rcx
                cmovz   esi, r15d

loc_1403774E8:                          ; CODE XREF: HalGetMessageRoutingInfo+79↑j
                mov     r13d, [rbx+20h]
                mov     ecx, r13d
                mov     [rbp+var_20], r9w
                mov     [rbp+var_28], rdx
                mov     [rbp+var_30], r14
                sub     ecx, r15d
                jnz     loc_14037758D
                test    r8b, r8b
                jz      loc_1404939A7

loc_14037750E:                          ; CODE XREF: HalGetMessageRoutingInfo+11C55A↓j
                lea     rdx, [rbp+var_30]
                lea     rcx, [rbp+arg_0]
                call    KeEnumerateNextProcessor
                test    eax, eax
                js      loc_1404939B0
                test    sil, sil
                jnz     loc_1404939BF
                mov     ecx, [rbp+arg_0]

loc_14037752F:                          ; CODE XREF: HalGetMessageRoutingInfo+11C59F↓j
                test    eax, eax
                js      loc_1404939B0
                lea     rdx, [rbp+arg_0]
                call    HalGetProcessorIdByNtNumber
                test    eax, eax
                js      loc_1404939B0

loc_140377548:                          ; CODE XREF: HalGetMessageRoutingInfo+1A4↓j
                                        ; HalGetMessageRoutingInfo+11C4DC↓j ...
                mov     eax, [rbx]
                mov     [rdi], r15d
                test    eax, eax
                jnz     loc_1404939F4
                mov     [rdi+8], r15d
                mov     eax, [rbx+28h]
                mov     [rdi+54h], eax
                mov     eax, [rbx+2Ch]
                mov     [rdi+50h], eax
                movzx   eax, word ptr [rbx+30h]
                mov     [rdi+58h], eax

loc_14037756C:                          ; CODE XREF: HalGetMessageRoutingInfo+11C5AF↓j
                xor     eax, eax

loc_14037756E:                          ; CODE XREF: HalGetMessageRoutingInfo+1AF↓j
                lea     r11, [rsp+50h+var_s0]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rdi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14037758D:                          ; CODE XREF: HalGetMessageRoutingInfo+AF↑j
                sub     ecx, r15d
                jnz     loc_140493904
                cmp     cs:byte_140C49778, r14b
                jnz     loc_140493A04
                lea     rdx, [rbp+var_30]
                lea     rcx, [rbp+arg_0]
                call    KeEnumerateNextProcessor
                test    eax, eax
                js      short loc_1403775FA
                mov     esi, dword ptr [rbp+var_18+8]

loc_1403775B7:                          ; CODE XREF: HalGetMessageRoutingInfo+1A0↓j
                mov     eax, [rbp+arg_0]
                cmp     eax, cs:dword_140C50780
                jnb     loc_1404939B0
                lea     rcx, [rax+rax*2]
                mov     rax, cs:qword_140C50770
                cmp     dword ptr [rax+rcx*8], 5
                jnz     loc_140493A04
                mov     eax, [rax+rcx*8+8]
                lea     rdx, [rbp+var_30]
                lea     rcx, [rbp+arg_0]
                or      esi, eax
                call    KeEnumerateNextProcessor
                test    eax, eax
                jns     short loc_1403775B7
                test    esi, esi
                jnz     loc_140377548

loc_1403775FA:                          ; CODE XREF: HalGetMessageRoutingInfo+162↑j
                                        ; HalGetMessageRoutingInfo+11C56A↓j ...
                mov     eax, 0C000000Dh
                jmp     loc_14037756E
; ---------------------------------------------------------------------------

loc_140377604:                          ; CODE XREF: HalGetMessageRoutingInfo+50↑j
                                        ; HalGetMessageRoutingInfo+66↑j
                mov     r8b, r14b
                jmp     loc_1403774BC
HalGetMessageRoutingInfo endp
