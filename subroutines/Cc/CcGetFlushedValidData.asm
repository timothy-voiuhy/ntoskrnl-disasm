CcGetFlushedValidData proc near         ; CODE XREF: sub_1402604A0+433↑p
                                        ; DATA XREF: .rdata:0000000140082900↑o ...

var_40          = qword ptr -40h
var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
var_s0          = byte ptr  0

; FUNCTION CHUNK AT 000000014048156E SIZE 00000270 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rdi
                mov     [rax+18h], r12
                mov     [rax+20h], r13
                push    rbp
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                xor     eax, eax
                or      r14, 0FFFFFFFFFFFFFFFFh
                mov     [rbp+var_8], rax
                xorps   xmm0, xmm0
                mov     [rbp+var_20], rax
                xorps   xmm1, xmm1
                mov     r12b, dl
                mov     r15, rcx
                movups  [rbp+var_18], xmm0
                movups  [rbp+var_30], xmm1
                test    dl, dl
                jz      loc_14048156E
                mov     rdi, [rcx+8]

loc_14034B2ED:                          ; CODE XREF: CcGetFlushedValidData+136457↓j
                mov     rcx, rdi
                call    sub_140265960
                mov     rcx, r15
                mov     r13, rax
                call    sub_140285080
                cmp     [rax+8], r13
                jnz     loc_1404817BF
                cmp     dword ptr [rdi+70h], 0
                mov     rbx, [rdi+30h]
                jnz     short loc_14034B33F

loc_14034B314:                          ; CODE XREF: CcGetFlushedValidData+DE↓j
                                        ; CcGetFlushedValidData+13648D↓j
                test    r12b, r12b
                jz      loc_140481732

loc_14034B31D:                          ; CODE XREF: CcGetFlushedValidData+13651A↓j
                mov     rax, rbx

loc_14034B320:                          ; CODE XREF: CcGetFlushedValidData+136358↓j
                lea     r11, [rsp+60h+var_s0]
                mov     rbx, [r11+20h]
                mov     rdi, [r11+28h]
                mov     r12, [r11+30h]
                mov     r13, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14034B33F:                          ; CODE XREF: CcGetFlushedValidData+72↑j
                mov     rcx, [rdi+0A0h]
                test    rcx, rcx
                jz      short loc_14034B363
                cmp     dword ptr [rcx+8], 0
                jz      short loc_14034B363
                xor     edx, edx
                call    sub_14034B38C
                mov     ebx, [rax+18h]
                add     rbx, [rax+10h]
                shl     rbx, 0Ch

loc_14034B363:                          ; CODE XREF: CcGetFlushedValidData+A9↑j
                                        ; CcGetFlushedValidData+AF↑j
                lea     rdx, [rdi+10h]
                mov     rax, [rdx]
                lea     rcx, [rax-10h]

loc_14034B36E:                          ; CODE XREF: CcGetFlushedValidData+13647D↓j
                cmp     rax, rdx
                jnz     loc_1404816FC

loc_14034B377:                          ; CODE XREF: CcGetFlushedValidData+13646C↓j
                lea     rax, [rcx+10h]
                cmp     rax, rdx
                jz      short loc_14034B314
                jmp     loc_140481722
CcGetFlushedValidData endp
