RtlFindRange    proc near               ; CODE XREF: sub_1407B8B30+A0↓p
                                        ; sub_1407CF530+87↓p ...

var_78          = byte ptr -78h
var_70          = byte ptr -70h
var_68          = byte ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = byte ptr -28h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h
arg_30          = byte ptr  38h
arg_38          = qword ptr  40h
arg_40          = qword ptr  48h
arg_48          = qword ptr  50h

; FUNCTION CHUNK AT 00000001408420F4 SIZE 0000000A BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 70h
                mov     rbp, [rsp+98h+arg_20]
                mov     rdi, rdx
                xor     edx, edx
                mov     rbx, r8
                sub     rbx, r9
                xorps   xmm0, xmm0
                inc     rbx
                mov     rsi, r9
                mov     rax, rbx
                div     rbp
                movups  [rsp+98h+var_48], xmm0
                sub     rbx, rdx
                movups  [rsp+98h+var_38], xmm0
                cmp     rdi, r8
                ja      loc_1408420F4
                lea     r14, [r9-1]
                sub     r8, rdi
                cmp     r8, r14
                jb      loc_1408420F4
                lea     rax, [rdi+rbp]
                cmp     rax, rdi
                jb      loc_1408420F4
                cmp     rbx, rdi
                jb      loc_1408420F4
                test    r9, r9
                jz      loc_1408420F4
                test    rbp, rbp
                jz      loc_1408420F4
                mov     r15b, [rsp+98h+arg_28]
                lea     r12, [r9-1]
                mov     r13b, r15b
                lea     r8, [r11+28h]
                and     r13b, 1
                lea     rdx, [r11-48h]
                and     r15b, 2
                add     r12, rbx
                call    RtlGetLastRange

loc_14075EE83:                          ; CODE XREF: RtlFindRange+149↓j
                mov     rax, [rsp+98h+arg_40]
                lea     rcx, [rsp+98h+var_48]
                mov     r9b, [rsp+98h+arg_30]
                mov     r8, r12
                mov     [rsp+98h+var_58], rax
                mov     rdx, rbx
                mov     rax, [rsp+98h+arg_38]
                mov     [rsp+98h+var_60], rax
                mov     [rsp+98h+var_68], 0
                mov     [rsp+98h+var_70], r15b
                mov     [rsp+98h+var_78], r13b
                call    sub_14075EFEC
                test    al, al
                jz      short loc_14075EEF4
                mov     rax, [rsp+98h+arg_48]
                mov     [rax], rbx
                xor     eax, eax

loc_14075EED5:                          ; CODE XREF: RtlFindRange+154↓j
                                        ; RtlFindRange+E3329↓j
                lea     r11, [rsp+98h+var_28]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_14075EEF4:                          ; CODE XREF: RtlFindRange+F6↑j
                mov     rax, qword ptr [rsp+98h+var_38]
                mov     rcx, [rax]
                mov     rbx, rcx
                sub     rbx, rsi
                cmp     rbx, rcx
                ja      short loc_14075EF1F
                xor     edx, edx
                mov     rax, rbx
                div     rbp
                sub     rbx, rdx
                lea     r12, [r14+rbx]
                cmp     rbx, rdi
                jnb     loc_14075EE83

loc_14075EF1F:                          ; CODE XREF: RtlFindRange+135↑j
                mov     eax, 0C0000001h
                jmp     short loc_14075EED5
RtlFindRange    endp

; ---------------------------------------------------------------------------
algn_14075EF26:                         ; DATA XREF: .rdata:0000000140091D44↑o
                                        ; .pdata:0000000140109D40↑o
                align 10h
; Exported entry 2270. RtlIsRangeAvailable

; =============== S U B R O U T I N E =======================================


