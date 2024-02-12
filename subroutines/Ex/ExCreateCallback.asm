ExCreateCallback proc near              ; CODE XREF: sub_1403CECF8+1C4↑p
                                        ; sub_1407ADEE0+B4↓p ...

var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_20          = byte ptr -20h
arg_8           = qword ptr  18h

; FUNCTION CHUNK AT 000000014082DF2E SIZE 00000007 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 90h
                mov     rsi, gs:188h
                xor     r13d, r13d
                movups  xmm1, xmmword ptr [rdx+10h]
                mov     r12b, r9b
                mov     r14b, r8b
                movups  xmm0, xmmword ptr [rdx]
                mov     r15, rcx
                mov     edi, r13d
                movups  [rbp+57h+var_40], xmm1
                mov     [rbp+57h+arg_8], r13
                psrldq  xmm1, 8
                movd    eax, xmm1
                movups  [rbp+57h+var_50], xmm0
                mov     [rbp+57h+var_60], r13
                movups  xmm0, xmmword ptr [rdx+20h]
                bts     eax, 9
                mov     dword ptr [rbp+57h+var_40+8], eax
                movups  [rbp+57h+var_30], xmm0
                cmp     qword ptr [rbp+57h+var_40], r13
                jz      loc_14071C87F
                mov     rdx, cs:qword_140CFC950
                lea     rax, [rbp+57h+arg_8]
                mov     qword ptr [rsp+0B0h+var_80], rax
                lea     rcx, [rbp+57h+var_50]
                mov     [rsp+0B0h+var_88], r13
                xor     r9d, r9d
                xor     r8d, r8d
                mov     dword ptr [rsp+0B0h+var_90], r13d
                call    ObOpenObjectByName
                mov     rdi, [rbp+57h+arg_8]
                mov     ebx, eax

loc_14071C743:                          ; CODE XREF: ExCreateCallback+1E4↓j
                test    ebx, ebx
                jns     short loc_14071C750
                test    r14b, r14b
                jnz     short loc_14071C7AF

loc_14071C74C:                          ; CODE XREF: ExCreateCallback+1DA↓j
                test    ebx, ebx
                js      short loc_14071C78B

loc_14071C750:                          ; CODE XREF: ExCreateCallback+A5↑j
                mov     r8, cs:qword_140CFC950
                lea     rax, [rbp+57h+var_58]
                mov     [rsp+0B0h+var_88], r13
                xor     r9d, r9d
                xor     edx, edx
                mov     [rsp+0B0h+var_90], rax
                mov     rcx, rdi
                mov     [rbp+57h+var_58], r13
                call    ObReferenceObjectByHandle
                mov     rcx, rdi
                mov     ebx, eax
                call    ZwClose
                test    ebx, ebx
                js      short loc_14071C78B
                mov     rax, [rbp+57h+var_58]
                mov     [r15], rax

loc_14071C78B:                          ; CODE XREF: ExCreateCallback+AE↑j
                                        ; ExCreateCallback+E2↑j ...
                lea     r11, [rsp+0B0h+var_20]
                mov     eax, ebx
                mov     rbx, [r11+30h]
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

loc_14071C7AF:                          ; CODE XREF: ExCreateCallback+AA↑j
                mov     rdx, cs:qword_140CFC950
                lea     rax, [rbp+57h+var_60]
                mov     [rsp+0B0h+var_68], r13
                lea     r8, [rbp+57h+var_50]
                mov     [rsp+0B0h+var_70], rax
                xor     r9d, r9d
                mov     dword ptr [rsp+0B0h+var_78], r13d
                xor     ecx, ecx
                mov     [rsp+0B0h+var_80], r13d
                mov     dword ptr [rsp+0B0h+var_88], 38h ; '8'
                call    sub_14061EDD0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14071C78B
                mov     rbx, [rbp+57h+var_60]
                mov     dword ptr [rbx], 6C6C6143h
                lea     rax, [rbx+10h]
                mov     [rbx+20h], r12b
                mov     [rax+8], rax
                mov     [rax], rax
                mov     [rbx+8], r13
                dec     word ptr [rsi+1E6h]
                xor     edx, edx
                lea     rcx, qword_140C19278
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, cs:qword_140C19248
                lea     rdx, qword_140C19240
                lea     rax, [rbx+28h]
                cmp     [rcx], rdx
                jnz     FatalListEntryError_95
                mov     [rax+8], rcx
                mov     [rax], rdx
                mov     [rcx], rax
                mov     rcx, rsi
                mov     cs:qword_140C19248, rax
                call    sub_1403A665C
                xor     r9d, r9d
                lea     rax, [rbp+57h+arg_8]
                mov     qword ptr [rsp+0B0h+var_80], rax
                xor     edx, edx
                mov     [rsp+0B0h+var_88], r13
                mov     rcx, rbx
                mov     dword ptr [rsp+0B0h+var_90], r13d
                lea     r8d, [r9+1]
                call    sub_14061EFE0
                mov     rdi, [rbp+57h+arg_8]
                mov     ebx, eax
                jmp     loc_14071C74C
; ---------------------------------------------------------------------------

loc_14071C87F:                          ; CODE XREF: ExCreateCallback+6E↑j
                mov     ebx, 0C0000001h
                jmp     loc_14071C743
ExCreateCallback endp
