MmRotatePhysicalView proc near          ; DATA XREF: .rdata:000000014006BD7C↑o
                                        ; .pdata:0000000140101994↑o

var_278         = qword ptr -278h
var_270         = qword ptr -270h
var_268         = dword ptr -268h
var_258         = dword ptr -258h
var_250         = qword ptr -250h
var_248         = dword ptr -248h
var_244         = dword ptr -244h
var_240         = qword ptr -240h
var_238         = dword ptr -238h
var_230         = qword ptr -230h
var_228         = qword ptr -228h
var_220         = qword ptr -220h
var_218         = qword ptr -218h
var_210         = qword ptr -210h
var_208         = qword ptr -208h
var_200         = qword ptr -200h
var_1F8         = qword ptr -1F8h
var_1F0         = qword ptr -1F0h
var_1E8         = qword ptr -1E8h
var_1E0         = xmmword ptr -1E0h
var_1D0         = qword ptr -1D0h
var_1C8         = byte ptr -1C8h
var_108         = byte ptr -108h
var_48          = qword ptr -48h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140814324 SIZE 00000423 BYTES

; __unwind { // __GSHandlerCheck_SEH
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 260h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+298h+var_48], rax
                mov     ebx, r9d
                mov     [rsp+298h+var_238], ebx
                mov     r13, r8
                mov     r14, rdx
                mov     [rsp+298h+var_250], rdx
                mov     rdi, rcx
                mov     [rsp+298h+var_230], rcx
                mov     [rsp+298h+var_1E8], rdx
                mov     [rsp+298h+var_240], r8
                mov     rax, [rsp+298h+arg_20]
                mov     [rsp+298h+var_1F0], rax
                mov     rax, [rsp+298h+arg_28]
                mov     [rsp+298h+var_1F8], rax
                xor     r15d, r15d
                mov     [rsp+298h+var_244], r15d
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rsp+298h+var_1E0], xmm0
                mov     [rsp+298h+var_1D0], rax
                mov     esi, 0B8h
                mov     r8d, esi
                xor     edx, edx
                lea     rcx, [rsp+298h+var_1C8]
                call    memset
                mov     r8d, esi
                xor     edx, edx
                lea     rcx, [rsp+298h+var_108]
                call    memset
                mov     esi, r15d
                mov     [rsp+298h+var_258], r15d
                mov     r12, [r14]
                mov     [rsp+298h+var_210], r15
                test    edi, 0FFFh
                jnz     loc_140814324
                test    r12d, 0FFFh
                jnz     loc_140814335
                cmp     ebx, 4
                jge     loc_14081433C
                lea     rax, [rdi-1]
                add     rax, r12
                mov     [rsp+298h+var_208], rax
                cmp     rax, rdi
                jbe     loc_140814335
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                call    sub_1402323D0
                mov     [rsp+298h+var_218], rax
                mov     r14d, 0FFFFFFFFh

loc_140690DE2:                          ; CODE XREF: MmRotatePhysicalView+183A60↓j
                lea     r8, [rsp+298h+var_244]
                xor     edx, edx
                mov     rcx, rdi
                call    sub_140232930
                mov     rsi, rax
                mov     [rsp+298h+var_200], rax
                test    rax, rax
                jz      loc_140814343
                mov     r8d, [rax+30h]
                mov     eax, r8d
                and     al, 70h
                cmp     al, 40h ; '@'
                jnz     loc_140814377
                movzx   ecx, byte ptr [rsi+21h]
                shl     rcx, 20h
                mov     eax, [rsi+1Ch]
                or      rcx, rax
                mov     r9, [rsp+298h+var_208]
                mov     rax, r9
                shr     rax, 0Ch
                cmp     rcx, rax
                jb      loc_140814377
                mov     edx, r8d
                mov     eax, 0C00h
                and     edx, eax
                test    r8d, 380h
                setnz   cl
                cmp     edx, eax
                setz    al
                test    al, cl
                jz      loc_140814359
                mov     eax, 2

loc_140690E62:                          ; CODE XREF: MmRotatePhysicalView+1836A8↓j
                mov     [rsp+298h+var_248], eax
                mov     rdx, r12
                mov     [rsp+298h+var_228], rdx
                mov     r14, r12
                shr     r14, 0Ch
                mov     [rsp+298h+var_220], r14
                mov     ecx, ebx
                cmp     ebx, 1
                jg      loc_1406910B8
                mov     eax, 0FFFFFFFFh
                cmp     r12, rax
                ja      loc_14081436D
                lea     rax, [r13+30h]
                mov     rcx, rax
                mov     [rsp+298h+var_230], rax
                mov     eax, r15d

loc_140690EA2:                          ; CODE XREF: MmRotatePhysicalView+247↓j
                mov     [rsp+298h+var_244], eax
                cmp     rax, r14
                jnb     short loc_140690F09
                mov     rbx, [rcx]
                mov     rcx, rbx
                call    sub_140243B30
                test    eax, eax
                jnz     loc_140814381
                mov     rcx, rbx
                call    sub_1402E8238
                mov     rdx, rax
                mov     [rsp+298h+var_270], r15
                mov     [rsp+298h+var_278], r15
                mov     r9d, [rsp+298h+var_248]
                mov     ecx, 1
                mov     r8d, ecx
                call    sub_1402E7DF4
                mov     ebx, eax
                test    eax, eax
                js      loc_1408143A5
                inc     [rsp+298h+var_258]

loc_140690EF3:                          ; CODE XREF: MmRotatePhysicalView+1836DF↓j
                mov     eax, [rsp+298h+var_244]
                inc     eax
                mov     rcx, [rsp+298h+var_230]
                add     rcx, 8
                mov     [rsp+298h+var_230], rcx
                jmp     short loc_140690EA2
; ---------------------------------------------------------------------------

loc_140690F09:                          ; CODE XREF: MmRotatePhysicalView+1E9↑j
                xor     r8d, r8d
                mov     rdx, r14
                mov     rcx, [rsp+298h+var_218]
                call    sub_140232160
                test    eax, eax
                jz      loc_14081440F
                mov     rdx, r12
                mov     rcx, rdi
                call    MmSizeOfMdl
                mov     r8d, 6F666E49h
                mov     rdx, rax
                mov     ecx, 40h ; '@'
                call    sub_140268720
                mov     rbx, rax
                mov     [rsp+298h+var_230], rax
                test    rax, rax
                jz      loc_1408143FF
                mov     [rax], r15
                mov     r8d, edi
                mov     ecx, r8d
                mov     edx, 0FFFh
                and     rcx, rdx
                add     rcx, rdx
                add     rcx, r12
                shr     rcx, 0Ch
                add     cx, 6
                shl     cx, 3
                mov     [rax+8], cx
                mov     [rax+0Ah], r15w
                mov     rax, rdi
                and     rax, 0FFFFFFFFFFFFF000h
                mov     [rbx+20h], rax
                and     r8d, edx
                mov     [rbx+2Ch], r8d
                mov     [rbx+28h], r12d

loc_140690F97:                          ; DATA XREF: .rdata:000000014006BD64↑o
;   __try { // __except at loc_140690FA6
                xor     r8d, r8d
                mov     dl, 1
                mov     rcx, rbx
                call    MmProbeAndLockPages
                jmp     short loc_140690FF0
;   } // starts at 140690F97
; ---------------------------------------------------------------------------

loc_140690FA6:                          ; DATA XREF: .rdata:000000014006BD64↑o
;   __except(1) // owned by 140690F97
                mov     ebx, eax
                mov     rdx, [rsp+298h+var_220]
                mov     rcx, [rsp+298h+var_218]
                call    sub_14026B700
                xor     edx, edx
                mov     rcx, [rsp+298h+var_230]
                call    ExFreePoolWithTag
                mov     r14d, 0FFFFFFFFh
                mov     rsi, [rsp+298h+var_200]
                mov     r12d, [rsp+298h+var_258]
                mov     r13, [rsp+298h+var_240]
                mov     rdi, [rsp+298h+var_1E8]
                mov     [rsp+298h+var_250], rdi
                jmp     loc_1408143B5
; ---------------------------------------------------------------------------

loc_140690FF0:                          ; CODE XREF: MmRotatePhysicalView+2E4↑j
                mov     qword ptr [rsp+298h+var_1E0+8], rsi
                mov     rax, gs:188h
                mov     [rsp+298h+var_1D0], rax
                lea     r8, [rsp+298h+var_1E0]
                mov     rdx, [rsp+298h+var_208]
                mov     rcx, rdi
                call    sub_1402E97B4
                cmp     [rsp+298h+var_238], r15d
                jz      loc_140814416

loc_14069102C:                          ; CODE XREF: MmRotatePhysicalView+18377C↓j
                                        ; MmRotatePhysicalView+183791↓j
                lea     r8, [rbx+30h]
                mov     [rsp+298h+var_268], 10h
                mov     [rsp+298h+var_270], r15
                mov     [rsp+298h+var_278], r14
                mov     r9d, [rsp+298h+var_248]
                lea     rdx, [r13+30h]
                mov     rcx, rdi
                call    sub_1402E9264
                lea     rcx, [rsp+298h+var_1E0]
                call    sub_1402E91DC
                mov     rcx, rsi
                call    sub_140232610
                mov     rcx, rbx
                call    MmUnlockPages
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag
                mov     rax, [rsp+298h+var_250]
                mov     [rax], r12
                test    dword ptr cs:xmmword_140CFC480+4, 8000h
                jnz     loc_140814456

loc_140691092:                          ; CODE XREF: MmRotatePhysicalView+434↓j
                                        ; MmRotatePhysicalView+183799↓j ...
                xor     eax, eax

loc_140691094:                          ; CODE XREF: MmRotatePhysicalView+43B↓j
                                        ; MmRotatePhysicalView+183A82↓j
                mov     rcx, [rsp+298h+var_48]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 260h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1406910B8:                          ; CODE XREF: MmRotatePhysicalView+1BF↑j
                cmp     ecx, 3
                jnz     loc_140814495
                mov     r8d, eax
                mov     rdx, r9
                mov     rcx, rdi
                call    sub_140353700
                mov     ebx, eax
                mov     rcx, rsi
                call    sub_140232610
                mov     rax, [rsp+298h+var_250]
                mov     [rax], r12
                test    dword ptr cs:xmmword_140CFC480+4, 8000h
                jnz     loc_140814475

loc_1406910F1:                          ; CODE XREF: MmRotatePhysicalView+1837B8↓j
                                        ; MmRotatePhysicalView+1837D0↓j
                cmp     ebx, 1
                jnz     short loc_140691092
                mov     eax, 40000019h
                jmp     short loc_140691094
; } // starts at 140690CC0
MmRotatePhysicalView endp
