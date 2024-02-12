ntoskrnl_14     proc near               ; DATA XREF: .pdata:000000014011D174↑o

var_150         = qword ptr -150h
var_148         = qword ptr -148h
var_140         = qword ptr -140h
var_138         = qword ptr -138h
var_130         = dword ptr -130h
var_128         = qword ptr -128h
var_120         = dword ptr -120h
var_110         = dword ptr -110h
var_108         = qword ptr -108h
var_100         = qword ptr -100h
var_F0          = byte ptr -0F0h
var_40          = qword ptr -40h
arg_20          = dword ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                lea     rbp, [rsp-40h]
                sub     rsp, 140h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+70h+var_40], rax
                mov     r15, [rbp+70h+arg_28]
                mov     ebx, r8d
                mov     r12, [rbp+70h+arg_30]
                mov     r14, rdx
                mov     rdi, [rbp+70h+arg_38]
                mov     rsi, rcx
                xor     edx, edx
                lea     rcx, [rbp+70h+var_F0]
                mov     r8d, 0AAh
                call    memset
                and     [rsp+170h+var_108], 0
                and     [rsp+170h+var_110], 0
                test    ebx, ebx
                jz      short loc_1408A2540
                lea     rax, [rbp+70h+var_F0]
                mov     ecx, ebx
                mov     [rsp+170h+var_100], rax
                lea     rdx, [rsp+170h+var_108]
                mov     eax, 0AAh
                mov     word ptr [rsp+170h+var_108+2], ax
                call    RtlLCIDToCultureName
                test    al, al
                jnz     short loc_1408A2546
                mov     ebx, 0C0000001h
                jmp     loc_1408A25E0
; ---------------------------------------------------------------------------

loc_1408A2540:                          ; CODE XREF: ntoskrnl_14+61↑j
                and     [rsp+170h+var_100], 0

loc_1408A2546:                          ; CODE XREF: ntoskrnl_14+84↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     dl, 1
                lea     rcx, unk_140C45240
                call    ExAcquireResourceSharedLite
                and     [rsp+170h+var_120], 0
                xor     r9d, r9d
                mov     eax, [rbp+70h+arg_20]
                mov     rdx, rsi
                mov     rcx, cs:qword_140CF4378
                mov     [rsp+170h+var_128], r12
                mov     [rsp+170h+var_130], eax
                lea     r8d, [r9+1]
                mov     [rsp+170h+var_138], r15
                lea     rax, [rsp+170h+var_110]
                mov     [rsp+170h+var_140], rax
                mov     rax, [rsp+170h+var_100]
                mov     [rsp+170h+var_148], r14
                mov     [rsp+170h+var_150], rax
                call    sub_1406CC6BC
                lea     rcx, unk_140C45240
                mov     ebx, eax
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                test    ebx, ebx
                js      short loc_1408A25D2
                mov     ecx, [rsp+170h+var_110]
                mov     [rdi], ecx

loc_1408A25D2:                          ; CODE XREF: ntoskrnl_14+11A↑j
                cmp     ebx, 0C0000225h
                mov     eax, 0C0000034h
                cmovz   ebx, eax

loc_1408A25E0:                          ; CODE XREF: ntoskrnl_14+8B↑j
                mov     eax, ebx
                mov     rcx, [rbp+70h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 140h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1408A24B0
ntoskrnl_14     endp

algn_1408A2601:                         ; DATA XREF: .pdata:000000014011D174↑o
                align 10h
; Exported entry  15.

; =============== S U B R O U T I N E =======================================


