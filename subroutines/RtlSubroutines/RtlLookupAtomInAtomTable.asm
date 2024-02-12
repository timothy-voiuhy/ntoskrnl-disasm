RtlLookupAtomInAtomTable proc near      ; CODE XREF: NtFindAtom+115↑p
                                        ; DATA XREF: .rdata:0000000140061FF0↑o ...

var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = word ptr  20h

; FUNCTION CHUNK AT 000000014080AF20 SIZE 0000000A BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+8], rcx
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 60h
                mov     rbx, r8
                mov     rdi, rdx
                mov     rsi, rcx
                xor     r14d, r14d
                mov     [rax-30h], r14
                mov     [rax+20h], r14w
                call    sub_140663974
                test    al, al
                jz      loc_14080AF20

loc_140663555:                          ; DATA XREF: .rdata:0000000140061FDC↑o
;   __try { // __except at loc_140663624
                lea     rdx, [rsp+78h+arg_18]
                mov     rcx, rdi
                call    RtlGetIntegerAtom
                test    al, al
                jnz     short loc_1406635DD
                cmp     [rdi], r14w
                jz      loc_140663610
                lea     rax, [rsp+78h+var_30]
                mov     [rsp+78h+var_48], rax
                lea     rax, [rsp+78h+var_28]
                mov     [rsp+78h+var_50], rax
                mov     [rsp+78h+var_58], r14
                xor     r9d, r9d
                mov     r8b, 1
                mov     rdx, rdi
                mov     rcx, rsi
                call    sub_140663AC0
                mov     [rsp+78h+var_38], eax
                test    eax, eax
                js      short loc_140663622
                mov     rdi, [rsp+78h+var_30]
                test    rdi, rdi
                jz      short loc_1406635D3
                movzx   edx, word ptr [rdi+8]
                mov     rcx, rsi
                call    sub_1406639C0
                test    rax, rax
                jz      short loc_14066361A
                mov     [rsp+78h+var_38], r14d
                test    rbx, rbx
                jz      short loc_140663622
                movzx   eax, word ptr [rdi+0Ah]

loc_1406635CE:                          ; CODE XREF: RtlLookupAtomInAtomTable+D7↓j
                mov     [rbx], ax
                jmp     short loc_140663622
; ---------------------------------------------------------------------------

loc_1406635D3:                          ; CODE XREF: RtlLookupAtomInAtomTable+8D↑j
                mov     [rsp+78h+var_38], 0C0000034h
                jmp     short loc_140663622
; ---------------------------------------------------------------------------

loc_1406635DD:                          ; CODE XREF: RtlLookupAtomInAtomTable+47↑j
                mov     ecx, 0C000h
                movzx   eax, [rsp+78h+arg_18]
                cmp     ax, cx
                jnb     short loc_1406635FB
                mov     [rsp+78h+var_38], r14d

loc_1406635F4:                          ; CODE XREF: RtlLookupAtomInAtomTable+EE↓j
                test    rbx, rbx
                jnz     short loc_1406635CE
                jmp     short loc_140663622
; ---------------------------------------------------------------------------

loc_1406635FB:                          ; CODE XREF: RtlLookupAtomInAtomTable+CD↑j
                mov     eax, r14d
                mov     [rsp+78h+arg_18], ax
                mov     [rsp+78h+var_38], 0C000000Dh
                jmp     short loc_1406635F4
; ---------------------------------------------------------------------------

loc_140663610:                          ; CODE XREF: RtlLookupAtomInAtomTable+4D↑j
                mov     [rsp+78h+var_38], 0C0000033h
                jmp     short loc_140663622
; ---------------------------------------------------------------------------

loc_14066361A:                          ; CODE XREF: RtlLookupAtomInAtomTable+9E↑j
                mov     [rsp+78h+var_38], 0C0000008h

loc_140663622:                          ; CODE XREF: RtlLookupAtomInAtomTable+83↑j
                                        ; RtlLookupAtomInAtomTable+A8↑j ...
                jmp     short loc_140663630
;   } // starts at 140663555
; ---------------------------------------------------------------------------

loc_140663624:                          ; DATA XREF: .rdata:0000000140061FDC↑o
;   __except(1) // owned by 140663555
                mov     [rsp+78h+var_38], eax
                mov     rsi, [rsp+78h+arg_0]

loc_140663630:                          ; CODE XREF: RtlLookupAtomInAtomTable:loc_140663622↑j
                lea     rbx, [rsi+8]
                or      rax, 0FFFFFFFFFFFFFFFFh
                lock xadd [rbx], rax
                and     al, 6
                cmp     al, 2
                jz      short loc_140663666

loc_140663643:                          ; CODE XREF: RtlLookupAtomInAtomTable+14E↓j
                mov     rcx, rbx
                call    sub_140243660
                call    KeLeaveCriticalRegion
                mov     eax, [rsp+78h+var_38]

loc_140663654:                          ; CODE XREF: RtlLookupAtomInAtomTable+1A7A05↓j
                mov     rbx, [rsp+78h+arg_8]
                add     rsp, 60h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140663666:                          ; CODE XREF: RtlLookupAtomInAtomTable+121↑j
                mov     rcx, rbx
                call    ExfTryToWakePushLock
                jmp     short loc_140663643
; } // starts at 140663520
RtlLookupAtomInAtomTable endp
