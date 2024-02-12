ObCreateObjectTypeEx proc near          ; CODE XREF: ObCreateObjectType+C↑p
                                        ; sub_1407A50E4+A5↓p ...

var_200         = qword ptr -200h
var_1F8         = qword ptr -1F8h
var_1F0         = qword ptr -1F0h
var_1E0         = qword ptr -1E0h
var_1D8         = qword ptr -1D8h
var_1D0         = xmmword ptr -1D0h
var_1C0         = xmmword ptr -1C0h
var_1B0         = qword ptr -1B0h
var_1A8         = qword ptr -1A8h
var_1A0         = xmmword ptr -1A0h
var_190         = xmmword ptr -190h
var_180         = qword ptr -180h
var_178         = qword ptr -178h
var_170         = dword ptr -170h
var_15C         = dword ptr -15Ch
var_158         = dword ptr -158h
var_154         = dword ptr -154h
var_130         = byte ptr -130h
var_120         = xmmword ptr -120h
var_108         = byte ptr -108h
var_F0          = xmmword ptr -0F0h
var_E0          = xmmword ptr -0E0h
var_D0          = xmmword ptr -0D0h
var_C0          = xmmword ptr -0C0h
var_B0          = xmmword ptr -0B0h
var_A0          = xmmword ptr -0A0h
var_90          = xmmword ptr -90h
var_80          = qword ptr -80h
var_70          = dword ptr -70h
var_50          = qword ptr -50h
var_30          = byte ptr -30h
arg_20          = qword ptr  30h

; FUNCTION CHUNK AT 000000014083A780 SIZE 000000F4 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+20h], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-128h]
                sub     rsp, 1F0h
                movaps  xmmword ptr [rax-48h], xmm6
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+120h+var_50], rax
                mov     rax, [rbp+120h+arg_20]
                mov     r15, r8
                mov     rdi, rdx
                mov     [rbp+120h+var_178], rax
                mov     r14, rcx
                mov     [rsp+220h+var_1D8], r9
                xor     edx, edx
                lea     rcx, [rbp+120h+var_130]
                mov     r8d, 0D8h
                mov     r13, r9
                call    memset
                xor     eax, eax
                lea     rcx, [rbp+120h+var_170]
                xorps   xmm0, xmm0
                mov     [rbp+120h+var_180], rax
                xor     ebx, ebx
                xor     edx, edx
                movups  [rbp+120h+var_1A0], xmm0
                lea     r8d, [rax+40h]
                mov     qword ptr [rsp+220h+var_1D0], rbx
                movups  [rbp+120h+var_190], xmm0
                call    memset
                xorps   xmm0, xmm0
                movups  [rsp+220h+var_1C0+8], xmm0
                test    r14, r14
                jz      loc_14083A789
                movzx   ecx, word ptr [r14]
                test    cx, cx
                jz      loc_14083A789
                lea     esi, [rbx+1]
                test    sil, cl
                jnz     loc_14083A789
                test    rdi, rdi
                jz      loc_14083A789
                test    dword ptr [rdi+8], 0FFFEE00Dh
                jnz     loc_14083A789
                cmp     word ptr [rdi], 78h ; 'x'
                jnz     loc_14083A789
                lea     r12d, [rbx+2]
                cmp     [rdi+3], r12b
                jnb     loc_14083A789
                mov     al, [rdi+2]
                test    al, 10h
                jnz     loc_1407912ED

loc_140790E9C:                          ; CODE XREF: ObCreateObjectTypeEx+541↓j
                                        ; ObCreateObjectTypeEx+54B↓j
                mov     edx, 4
                test    dl, al
                jz      loc_1407912D3

loc_140790EA9:                          ; CODE XREF: ObCreateObjectTypeEx+52A↓j
                                        ; ObCreateObjectTypeEx+A99D3↓j
                shr     ecx, 1
                mov     eax, [rdi+24h]
                mov     rdx, [r14+8]
                mov     dword ptr [rsp+220h+var_1E0], eax
                jz      short loc_140790ECE

loc_140790EB8:                          ; CODE XREF: ObCreateObjectTypeEx+11C↓j
                movzx   eax, word ptr [rdx]
                dec     ecx
                add     rdx, r12
                cmp     ax, 5Ch ; '\'
                jz      loc_14083A7A4
                test    ecx, ecx
                jnz     short loc_140790EB8

loc_140790ECE:                          ; CODE XREF: ObCreateObjectTypeEx+106↑j
                mov     rdx, cs:qword_140C25958
                mov     dword ptr [rbp+120h+var_180], 0FFFF1234h
                test    rdx, rdx
                jz      short loc_140790F16
                lea     rcx, [rbp+120h+var_1A0]
                call    sub_140342D8C
                mov     rcx, cs:qword_140C25958
                lea     rax, [rbp+120h+var_1A0]
                xor     r9d, r9d
                mov     [rsp+220h+var_1F8], rax
                mov     rdx, r14
                mov     byte ptr [rsp+220h+var_200], bl
                lea     r8d, [r9+40h]
                call    sub_1405E8B3C
                test    rax, rax
                jnz     loc_14083A7AE

loc_140790F16:                          ; CODE XREF: ObCreateObjectTypeEx+12F↑j
                movzx   edx, word ptr [r14+2]
                mov     r8d, 6D4E624Fh
                mov     ecx, esi
                call    ExAllocatePoolWithTag
                mov     [rsp+220h+var_1B0], rax
                test    rax, rax
                jz      loc_14083A7B5
                movzx   eax, word ptr [r14+2]
                lea     rcx, [rsp+220h+var_1C0+8]
                mov     rdx, r14
                mov     word ptr [rsp+220h+var_1C0+0Ah], ax
                call    RtlCopyUnicodeString
                mov     r8, cs:qword_140C259F0
                movups  xmm6, [rsp+220h+var_1C0+8]
                test    r8, r8
                jz      loc_14079132E

loc_140790F62:                          ; CODE XREF: ObCreateObjectTypeEx+5DF↓j
                mov     [rbp+120h+var_170], 10h
                lea     r9, [rsp+220h+var_1C0+8]
                mov     eax, [r8+68h]
                lea     rcx, [rbp+120h+var_170]
                mov     [rbp+120h+var_15C], eax
                xor     edx, edx
                mov     eax, [r8+6Ch]
                mov     [rbp+120h+var_158], eax
                lea     rax, [rsp+220h+var_1D0]
                mov     [rsp+220h+var_1F0], rbx
                mov     [rsp+220h+var_1F8], rax
                mov     dword ptr [rsp+220h+var_200], 0D8h
                mov     [rbp+120h+var_154], 800h
                call    sub_1406444C0
                mov     esi, eax
                test    eax, eax
                js      loc_14083A7E4
                mov     rax, qword ptr [rsp+220h+var_1D0]
                mov     [rax+20h], rbx
                lea     rbx, [rax+30h]
                cmp     cs:dword_140C4C058, 0
                movdqu  xmmword ptr [rbx+10h], xmm6
                jz      short loc_140790FDF
                mov     rdx, r15
                mov     rcx, rbx
                call    sub_1407913BC
                mov     esi, eax
                test    eax, eax
                js      loc_14083A7FB

loc_140790FDF:                          ; CODE XREF: ObCreateObjectTypeEx+218↑j
                xor     eax, eax
                xorps   xmm0, xmm0
                movups  xmmword ptr [rbx+2Ch], xmm0
                mov     [rbx+3Ch], eax
                cmp     cs:qword_140C259F0, rax
                jz      loc_140791394
                mov     rcx, r14
                mov     r13b, 1
                call    RtlxUnicodeStringToAnsiSize
                mov     ecx, 1
                mov     r8d, 6E54624Fh
                lea     r15d, [r12+rax]
                mov     eax, 0FFFCh
                and     r15w, ax
                add     r15w, cx
                movzx   eax, r15w
                mov     edx, eax
                mov     qword ptr [rsp+220h+var_1D0+8], rax
                call    ExAllocatePoolWithTag
                mov     [rsp+220h+var_1A8], rax
                test    rax, rax
                jz      loc_14083A813
                mov     r8, qword ptr [rsp+220h+var_1D0+8]
                xor     edx, edx
                mov     rcx, rax
                call    memset
                xorps   xmm0, xmm0
                lea     rcx, [rsp+220h+var_1D0+8]
                movups  [rsp+220h+var_1D0+8], xmm0
                mov     word ptr [rsp+220h+var_1D0+0Ah], r15w
                xor     r8d, r8d
                mov     r15, [rsp+220h+var_1A8]
                mov     rdx, r14
                mov     qword ptr [rsp+220h+var_1C0], r15
                call    RtlUnicodeStringToAnsiString
                test    eax, eax
                js      short loc_140791098
                movzx   ecx, word ptr [r14]
                mov     r8, qword ptr [rsp+220h+var_1C0]
                shr     ecx, 1
                cmp     ecx, 4
                jb      loc_140791306

loc_14079108C:                          ; CODE XREF: ObCreateObjectTypeEx+576↓j
                mov     eax, [r8]
                xor     r13b, r13b
                mov     [rbx+0C0h], eax

loc_140791098:                          ; CODE XREF: ObCreateObjectTypeEx+2C6↑j
                xor     edx, edx
                mov     rcx, r15
                call    ExFreePoolWithTag
                test    r13b, r13b
                jnz     loc_14083A813
                mov     r13, [rsp+220h+var_1D8]
                mov     r15d, 1

loc_1407910B6:                          ; CODE XREF: ObCreateObjectTypeEx+5FF↓j
                mov     r8d, 4

loc_1407910BC:                          ; CODE XREF: ObCreateObjectTypeEx+A9A84↓j
                                        ; ObCreateObjectTypeEx+A9A93↓j
                movups  xmm0, xmmword ptr [rdi]
                mov     edx, dword ptr [rsp+220h+var_1E0]
                movups  xmmword ptr [rbx+40h], xmm0
                movups  xmm1, xmmword ptr [rdi+10h]
                movups  xmmword ptr [rbx+50h], xmm1
                movups  xmm0, xmmword ptr [rdi+20h]
                movups  xmmword ptr [rbx+60h], xmm0
                movups  xmm1, xmmword ptr [rdi+30h]
                movups  xmmword ptr [rbx+70h], xmm1
                movups  xmm0, xmmword ptr [rdi+40h]
                movups  xmmword ptr [rbx+80h], xmm0
                movups  xmm1, xmmword ptr [rdi+50h]
                movups  xmmword ptr [rbx+90h], xmm1
                movups  xmm0, xmmword ptr [rdi+60h]
                movups  xmmword ptr [rbx+0A0h], xmm0
                movsd   xmm1, qword ptr [rdi+70h]
                movsd   qword ptr [rbx+0B0h], xmm1
                mov     [rbx+64h], edx
                test    cs:NtGlobalFlag, 4000h
                jnz     loc_14083A848

loc_140791120:                          ; CODE XREF: ObCreateObjectTypeEx+A9A9C↓j
                mov     al, [rdi+2]
                and     al, 10h
                neg     al
                sbb     ecx, ecx
                and     ecx, 10h
                add     ecx, 58h ; 'X'
                test    r15b, dl
                jnz     loc_1407912E5
                add     [rbx+6Ch], ecx

loc_14079113B:                          ; CODE XREF: ObCreateObjectTypeEx+538↓j
                cmp     qword ptr [rdi+58h], 0
                jnz     short loc_140791150
                lea     rax, sub_140625030
                mov     [rbx+98h], rax

loc_140791150:                          ; CODE XREF: ObCreateObjectTypeEx+390↑j
                and     qword ptr [rbx+0B8h], 0
                lea     rax, [rbx+0C8h]
                mov     [rbx+8], rbx
                mov     [rbx], rbx
                mov     [rax+8], rax
                mov     [rax], rax
                test    [rbx+42h], r8b
                jz      short loc_14079117F
                bts     dword ptr [rbx+5Ch], 14h
                lea     r13, word_140C25940

loc_14079117F:                          ; CODE XREF: ObCreateObjectTypeEx+3C1↑j
                mov     [rbx+20h], r13
                mov     rax, gs:188h
                dec     word ptr [rax+1E6h]
                mov     rcx, cs:qword_140C259F0
                xor     edx, edx
                add     rcx, 0B8h
                call    ExAcquirePushLockExclusiveEx
                mov     rcx, qword ptr [rsp+220h+var_1D0]
                test    [rcx+1Ah], r15b
                jz      loc_14083A851
                lea     rax, [rcx-20h]

loc_1407911BB:                          ; CODE XREF: ObCreateObjectTypeEx+A9AA3↓j
                mov     rcx, cs:qword_140C259F0
                mov     rdx, [rcx+8]
                cmp     [rdx], rcx
                jnz     loc_14083A858
                mov     [rax], rcx
                lea     r14, cs:140000000h
                mov     [rax+8], rdx
                mov     r13d, 100h
                mov     [rdx], rax
                mov     edi, 0C000009Ah
                mov     [rcx+8], rax
                mov     rdx, cs:qword_140C259F0
                mov     eax, [rdx+2Ch]
                cmp     eax, r13d
                jnb     loc_14083A85F
                dec     eax
                mov     rva qword_140C25120[r14+rax*8], rbx

loc_14079120C:                          ; CODE XREF: ObCreateObjectTypeEx+A9AB1↓j
                lea     rcx, [rdx+0B8h]
                xor     edx, edx
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_140245770
                cmp     rbx, cs:qword_140C259F0
                jz      short loc_140791261
                test    esi, esi
                js      loc_14083A7CA
                mov     ecx, 3
                mov     edx, ecx

loc_140791240:                          ; CODE XREF: ObCreateObjectTypeEx+4A7↓j
                xor     eax, eax
                lock cmpxchg ds:rva qword_140CFCE60[r14+rdx*8], r15
                jz      short loc_14079125E
                add     ecx, r15d
                movsxd  rdx, ecx
                cmp     rdx, r13
                jb      short loc_140791240
                jmp     loc_14083A7C5
; ---------------------------------------------------------------------------

loc_14079125E:                          ; CODE XREF: ObCreateObjectTypeEx+49C↑j
                mov     r12b, cl

loc_140791261:                          ; CODE XREF: ObCreateObjectTypeEx+47F↑j
                movzx   esi, r12b
                mov     ds:rva qword_140CFCE60[r14+rsi*8], rbx
                mov     [rbx+28h], r12b
                mov     rcx, cs:qword_140C25958
                test    rcx, rcx
                jz      short loc_140791291
                lea     r8, [rbp+120h+var_1A0]
                mov     rdx, rbx
                call    sub_1406FEDF4
                test    al, al
                jz      loc_14083A866

loc_140791291:                          ; CODE XREF: ObCreateObjectTypeEx+4CB↑j
                lea     rcx, [rbp+120h+var_1A0]
                call    sub_14021C224
                mov     rax, [rbp+120h+var_178]
                mov     [rax], rbx
                xor     eax, eax

loc_1407912A3:                          ; CODE XREF: ObCreateObjectTypeEx+A99EF↓j
                                        ; ObCreateObjectTypeEx+A99F9↓j ...
                mov     rcx, [rbp+120h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+220h+var_30]
                mov     rbx, [r11+58h]
                movaps  xmm6, xmmword ptr [r11-10h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1407912D3:                          ; CODE XREF: ObCreateObjectTypeEx+F3↑j
                test    dword ptr [rdi+24h], 0FFFFFDFFh
                jz      loc_140790EA9
                jmp     loc_14083A780
; ---------------------------------------------------------------------------

loc_1407912E5:                          ; CODE XREF: ObCreateObjectTypeEx+382↑j
                add     [rbx+68h], ecx
                jmp     loc_14079113B
; ---------------------------------------------------------------------------

loc_1407912ED:                          ; CODE XREF: ObCreateObjectTypeEx+E6↑j
                cmp     [rdi+38h], rbx
                jnz     loc_140790E9C
                cmp     [rdi+40h], rbx
                jnz     loc_140790E9C
                jmp     loc_14083A789
; ---------------------------------------------------------------------------

loc_140791306:                          ; CODE XREF: ObCreateObjectTypeEx+2D6↑j
                movzx   r9d, word ptr [rsp+220h+var_1D0+0Ah]
                mov     eax, 1
                mov     edx, ecx
                add     rdx, r8

loc_140791316:                          ; CODE XREF: ObCreateObjectTypeEx+57C↓j
                cmp     ecx, r9d
                jnb     short loc_14079131E
                mov     byte ptr [rdx], 20h ; ' '

loc_14079131E:                          ; CODE XREF: ObCreateObjectTypeEx+569↑j
                add     ecx, eax
                add     rdx, rax
                cmp     ecx, 4
                jnb     loc_14079108C
                jmp     short loc_140791316
; ---------------------------------------------------------------------------

loc_14079132E:                          ; CODE XREF: ObCreateObjectTypeEx+1AC↑j
                movups  xmm0, xmmword ptr [rdi]
                mov     [rbp+120h+var_108], r12b
                lea     r8, [rbp+120h+var_130]
                movups  xmm1, xmmword ptr [rdi+10h]
                mov     [rbp+120h+var_70], 546A624Fh
                movaps  [rbp+120h+var_F0], xmm0
                movups  xmm0, xmmword ptr [rdi+20h]
                movaps  [rbp+120h+var_E0], xmm1
                movups  xmm1, xmmword ptr [rdi+30h]
                movaps  [rbp+120h+var_D0], xmm0
                movups  xmm0, xmmword ptr [rdi+40h]
                movaps  [rbp+120h+var_C0], xmm1
                movups  xmm1, xmmword ptr [rdi+50h]
                movaps  [rbp+120h+var_B0], xmm0
                movups  xmm0, xmmword ptr [rdi+60h]
                movaps  [rbp+120h+var_A0], xmm1
                movsd   xmm1, qword ptr [rdi+70h]
                movaps  [rbp+120h+var_90], xmm0
                movsd   [rbp+120h+var_80], xmm1
                movdqu  [rbp+120h+var_120], xmm6
                jmp     loc_140790F62
; ---------------------------------------------------------------------------

loc_140791394:                          ; CODE XREF: ObCreateObjectTypeEx+242↑j
                mov     cs:qword_140C259F0, rbx
                mov     r15d, 1
                mov     [rbx+2Ch], r15d
                mov     dword ptr [rbx+0C0h], 546A624Fh
                jmp     loc_1407910B6
; } // starts at 140790DB0
ObCreateObjectTypeEx endp
