RtlQueryAtomInAtomTable proc near       ; CODE XREF: NtQueryInformationAtom+E8↓p
                                        ; DATA XREF: .rdata:0000000140062054↑o ...

var_98          = dword ptr -98h
var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = byte ptr -60h
var_40          = qword ptr -40h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 000000014080AF5E SIZE 0000000A BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_40], rax
                mov     rdi, r9
                mov     rsi, r8
                mov     [rsp+0B8h+var_80], r8
                movzx   ebx, dx
                mov     r14, rcx
                mov     [rsp+0B8h+var_78], rcx
                mov     r12, [rsp+0B8h+arg_20]
                mov     r13, [rsp+0B8h+arg_28]
                call    sub_140663974
                test    al, al
                jz      loc_14080AF5E

loc_140663785:                          ; DATA XREF: .rdata:000000014006203C↑o
;   __try { // __except at loc_140663911
                mov     eax, 0C000h
                cmp     bx, ax
                jb      loc_140663857
                mov     [rsp+0B8h+var_88], 0C0000008h
                mov     edx, ebx
                and     edx, 3FFFh
                mov     rcx, r14
                call    sub_1406639C0
                mov     rsi, rax
                mov     [rsp+0B8h+var_70], rax
                test    rax, rax
                jz      short loc_140663829
                cmp     [rax+0Ah], bx
                jnz     short loc_140663829
                xor     r8d, r8d
                mov     rdx, rax
                mov     rcx, r14
                call    sub_1402A9648
                mov     [rsp+0B8h+var_68], rax
                test    rax, rax
                jz      short loc_140663829
                xor     r15d, r15d
                mov     [rsp+0B8h+var_88], r15d
                mov     rcx, [rsp+0B8h+var_80]
                test    rcx, rcx
                jnz     short loc_140663847

loc_1406637E8:                          ; CODE XREF: RtlQueryAtomInAtomTable+11D↓j
                test    rdi, rdi
                jnz     short loc_14066384F

loc_1406637ED:                          ; CODE XREF: RtlQueryAtomInAtomTable+125↓j
                test    r12, r12
                jz      short loc_140663829
                movzx   edi, byte ptr [rsi+28h]
                add     edi, edi
                mov     dword ptr [rsp+0B8h+var_80], edi
                mov     eax, [r13+0]
                cmp     edi, eax
                jnb     short loc_140663835

loc_140663804:                          ; CODE XREF: RtlQueryAtomInAtomTable+115↓j
                test    edi, edi
                jz      loc_140663902
                mov     ebx, edi
                lea     rdx, [rsi+2Ah]
                mov     r8d, edi
                mov     rcx, r12
                call    memmove
                shr     rbx, 1
                mov     [r12+rbx*2], r15w
                mov     [r13+0], edi

loc_140663829:                          ; CODE XREF: RtlQueryAtomInAtomTable+86↑j
                                        ; RtlQueryAtomInAtomTable+8C↑j ...
                mov     rbx, 0FFFFFFFFFFFFFFFFh
                jmp     loc_14066390F
; ---------------------------------------------------------------------------

loc_140663835:                          ; CODE XREF: RtlQueryAtomInAtomTable+D2↑j
                cmp     eax, 2
                jb      loc_1406638FE
                lea     edi, [rax-2]
                mov     dword ptr [rsp+0B8h+var_80], edi
                jmp     short loc_140663804
; ---------------------------------------------------------------------------

loc_140663847:                          ; CODE XREF: RtlQueryAtomInAtomTable+B6↑j
                movzx   eax, word ptr [rsi+24h]
                mov     [rcx], eax
                jmp     short loc_1406637E8
; ---------------------------------------------------------------------------

loc_14066384F:                          ; CODE XREF: RtlQueryAtomInAtomTable+BB↑j
                movzx   eax, word ptr [rsi+26h]
                mov     [rdi], eax
                jmp     short loc_1406637ED
; ---------------------------------------------------------------------------

loc_140663857:                          ; CODE XREF: RtlQueryAtomInAtomTable+5D↑j
                test    bx, bx
                jz      short loc_1406638C9
                xor     r15d, r15d
                mov     [rsp+0B8h+var_88], r15d
                test    rsi, rsi
                jnz     short loc_1406638D6

loc_140663869:                          ; CODE XREF: RtlQueryAtomInAtomTable+1AC↓j
                test    rdi, rdi
                jnz     short loc_1406638DE

loc_14066386E:                          ; CODE XREF: RtlQueryAtomInAtomTable+1B4↓j
                test    r12, r12
                jz      short loc_140663829
                mov     [rsp+0B8h+var_98], ebx
                lea     r9, aU_7        ; "#%u"
                mov     rbx, 0FFFFFFFFFFFFFFFFh
                mov     r8, rbx
                lea     edx, [rbx+11h]
                lea     rcx, [rsp+0B8h+var_60]
                call    _snwprintf_s
                mov     esi, eax
                add     esi, esi
                mov     dword ptr [rsp+0B8h+var_80], esi
                mov     eax, [r13+0]
                cmp     esi, eax
                jnb     short loc_1406638E6

loc_1406638A5:                          ; CODE XREF: RtlQueryAtomInAtomTable+1C2↓j
                test    esi, esi
                jz      short loc_1406638F4
                mov     edi, esi
                mov     r8d, esi
                lea     rdx, [rsp+0B8h+var_60]
                mov     rcx, r12
                call    memmove
                shr     rdi, 1
                mov     [r12+rdi*2], r15w
                mov     [r13+0], esi
                jmp     short loc_14066390F
; ---------------------------------------------------------------------------

loc_1406638C9:                          ; CODE XREF: RtlQueryAtomInAtomTable+12A↑j
                mov     [rsp+0B8h+var_88], 0C000000Dh
                jmp     loc_140663829
; ---------------------------------------------------------------------------

loc_1406638D6:                          ; CODE XREF: RtlQueryAtomInAtomTable+137↑j
                mov     dword ptr [rsi], 1
                jmp     short loc_140663869
; ---------------------------------------------------------------------------

loc_1406638DE:                          ; CODE XREF: RtlQueryAtomInAtomTable+13C↑j
                mov     dword ptr [rdi], 1
                jmp     short loc_14066386E
; ---------------------------------------------------------------------------

loc_1406638E6:                          ; CODE XREF: RtlQueryAtomInAtomTable+173↑j
                cmp     eax, 2
                jb      short loc_1406638F4
                lea     esi, [rax-2]
                mov     dword ptr [rsp+0B8h+var_80], esi
                jmp     short loc_1406638A5
; ---------------------------------------------------------------------------

loc_1406638F4:                          ; CODE XREF: RtlQueryAtomInAtomTable+177↑j
                                        ; RtlQueryAtomInAtomTable+1B9↑j
                mov     [rsp+0B8h+var_88], 0C0000023h
                jmp     short loc_14066390F
; ---------------------------------------------------------------------------

loc_1406638FE:                          ; CODE XREF: RtlQueryAtomInAtomTable+108↑j
                mov     [r13+0], edi

loc_140663902:                          ; CODE XREF: RtlQueryAtomInAtomTable+D6↑j
                mov     [rsp+0B8h+var_88], 0C0000023h
                jmp     loc_140663829
; ---------------------------------------------------------------------------

loc_14066390F:                          ; CODE XREF: RtlQueryAtomInAtomTable+100↑j
                                        ; RtlQueryAtomInAtomTable+197↑j ...
                jmp     short loc_140663921
;   } // starts at 140663785
; ---------------------------------------------------------------------------

loc_140663911:                          ; DATA XREF: .rdata:000000014006203C↑o
;   __except(1) // owned by 140663785
                mov     [rsp+0B8h+var_88], eax
                mov     rbx, 0FFFFFFFFFFFFFFFFh
                mov     r14, [rsp+0B8h+var_78]

loc_140663921:                          ; CODE XREF: RtlQueryAtomInAtomTable:loc_14066390F↑j
                lock xadd [r14+8], rbx
                and     bl, 6
                cmp     bl, 2
                jz      short loc_140663962

loc_14066392F:                          ; CODE XREF: RtlQueryAtomInAtomTable+23B↓j
                lea     rcx, [r14+8]
                call    sub_140243660
                call    KeLeaveCriticalRegion
                mov     eax, [rsp+0B8h+var_88]

loc_140663941:                          ; CODE XREF: RtlQueryAtomInAtomTable+1A7833↓j
                mov     rcx, [rsp+0B8h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 80h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140663962:                          ; CODE XREF: RtlQueryAtomInAtomTable+1FD↑j
                lea     rcx, [r14+8]
                call    ExfTryToWakePushLock
                jmp     short loc_14066392F
; } // starts at 140663730
RtlQueryAtomInAtomTable endp
