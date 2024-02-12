FsRtlIsDbcsInExpression proc near       ; DATA XREF: .pdata:000000014011C3AC↑o

var_C8          = byte ptr -0C8h
var_C6          = word ptr -0C6h
var_C4          = dword ptr -0C4h
var_C0          = dword ptr -0C0h
var_B8          = xmmword ptr -0B8h
var_A8          = dword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_88          = qword ptr -88h
var_78          = word ptr -78h
var_58          = byte ptr -58h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0E8h+var_38], rax
                movzx   ebx, word ptr [rdx]
                xor     r12d, r12d
                mov     [rsp+0E8h+var_88], rdx
                mov     r15, rdx
                mov     [rsp+0E8h+var_98], rcx
                mov     r9, rcx
                mov     word ptr [rsp+0E8h+var_C0], r12w
                mov     r11d, r12d
                mov     [rsp+0E8h+var_A0], r12
                mov     [rsp+0E8h+var_C8], r12b
                test    bx, bx
                jz      loc_14088E395
                movzx   ebp, word ptr [rcx]
                test    bp, bp
                jz      loc_14088E395
                lea     edi, [r12+1]
                cmp     bp, di
                jnz     short loc_14088DE4A
                mov     rax, [rcx+8]
                cmp     byte ptr [rax], 2Ah ; '*'
                jnz     short loc_14088DE4A
                mov     al, dil
                jmp     loc_14088E3A0
; ---------------------------------------------------------------------------

loc_14088DE4A:                          ; CODE XREF: FsRtlIsDbcsInExpression+77↑j
                                        ; FsRtlIsDbcsInExpression+80↑j
                mov     rax, [rcx+8]
                cmp     byte ptr [rax], 2Ah ; '*'
                jnz     loc_14088DF1F
                movups  xmm0, xmmword ptr [rcx]
                mov     eax, 0FFFFh
                lea     rcx, [rsp+0E8h+var_B8]
                mov     r14d, 1
                movups  [rsp+0E8h+var_B8], xmm0
                add     word ptr [rsp+0E8h+var_B8+2], ax
                psrldq  xmm0, 8
                movq    rsi, xmm0
                add     rsi, rdi
                movzx   edi, word ptr [rsp+0E8h+var_B8]
                sub     di, r14w
                mov     qword ptr [rsp+0E8h+var_B8+8], rsi
                mov     word ptr [rsp+0E8h+var_B8], di
                call    FsRtlDoesDbcsContainWildCards
                test    al, al
                jnz     short loc_14088DF12
                sub     bp, r14w
                cmp     bx, bp
                jb      loc_14088E391
                mov     ecx, ebx
                movzx   eax, di
                sub     ecx, eax
                cmp     cs:NlsMbOemCodePageTag, r12b
                jz      short loc_14088DEF9
                mov     edx, r12d
                test    ecx, ecx
                jz      short loc_14088DEF9
                mov     r9, [r15+8]
                lea     r10, word_140D2FC20

loc_14088DECC:                          ; CODE XREF: FsRtlIsDbcsInExpression+131↓j
                mov     eax, edx
                movzx   r8d, byte ptr [rax+r9]
                cmp     r8b, 80h
                jnb     short loc_14088DEDE
                mov     eax, r14d
                jmp     short loc_14088DEED
; ---------------------------------------------------------------------------

loc_14088DEDE:                          ; CODE XREF: FsRtlIsDbcsInExpression+117↑j
                movzx   eax, word ptr [r10+r8*2]
                neg     ax
                sbb     eax, eax
                neg     eax
                add     eax, r14d

loc_14088DEED:                          ; CODE XREF: FsRtlIsDbcsInExpression+11C↑j
                add     edx, eax
                cmp     edx, ecx
                jb      short loc_14088DECC
                ja      loc_14088E391

loc_14088DEF9:                          ; CODE XREF: FsRtlIsDbcsInExpression+F8↑j
                                        ; FsRtlIsDbcsInExpression+FF↑j
                mov     edx, ecx
                mov     rcx, rsi
                add     rdx, [r15+8]
                movzx   r8d, di
                call    memcmp
                test    eax, eax
                jmp     loc_14088E39D
; ---------------------------------------------------------------------------

loc_14088DF12:                          ; CODE XREF: FsRtlIsDbcsInExpression+DB↑j
                mov     r9, [rsp+0E8h+var_98]
                mov     r11, r12
                mov     edi, 1

loc_14088DF1F:                          ; CODE XREF: FsRtlIsDbcsInExpression+91↑j
                lea     rdx, [rsp+0E8h+var_78]
                mov     [rsp+0E8h+var_78], r12w
                mov     qword ptr [rsp+0E8h+var_B8], rdx
                lea     r14, [rsp+0E8h+var_58]
                mov     r13d, edi
                mov     [rsp+0E8h+var_C6], r12w
                movzx   esi, r12w
                lea     r10, word_140D2FC20
                add     bp, bp
                mov     ebx, 100h

loc_14088DF53:                          ; CODE XREF: FsRtlIsDbcsInExpression+5A0↓j
                cmp     si, [r15]
                jnb     short loc_14088DFBB
                mov     r8, [r15+8]
                movzx   ecx, si
                movsx   edx, byte ptr [rcx+r8]
                cmp     dl, 80h
                jb      short loc_14088DF9E
                cmp     cs:NlsMbOemCodePageTag, r12b
                jz      short loc_14088DF9E
                movzx   eax, dl
                cmp     [r10+rax*2], r12w
                jz      short loc_14088DF9E
                movsx   eax, byte ptr [rcx+r8+1]
                movzx   r15d, ax
                mov     eax, 2
                movzx   ecx, bx
                imul    r15d, ecx
                add     r15w, dx
                mov     [rsp+0E8h+var_C0], r15d
                jmp     short loc_14088DFA7
; ---------------------------------------------------------------------------

loc_14088DF9E:                          ; CODE XREF: FsRtlIsDbcsInExpression+1A8↑j
                                        ; FsRtlIsDbcsInExpression+1B1↑j ...
                movzx   eax, dx
                mov     [rsp+0E8h+var_C0], eax
                mov     eax, edi

loc_14088DFA7:                          ; CODE XREF: FsRtlIsDbcsInExpression+1DC↑j
                mov     rdx, qword ptr [rsp+0E8h+var_B8]
                add     si, ax
                mov     r8b, [rsp+0E8h+var_C8]
                mov     [rsp+0E8h+var_C6], si
                jmp     short loc_14088DFD1
; ---------------------------------------------------------------------------

loc_14088DFBB:                          ; CODE XREF: FsRtlIsDbcsInExpression+197↑j
                lea     eax, [r13-1]
                mov     [rsp+0E8h+var_C8], dil
                mov     r8b, dil
                cmp     [rdx+rax*2], bp
                jz      loc_14088E366

loc_14088DFD1:                          ; CODE XREF: FsRtlIsDbcsInExpression+1F9↑j
                xor     r10d, r10d
                mov     [rsp+0E8h+var_A8], r10d
                mov     ebx, r10d
                test    r13d, r13d
                jz      loc_14088E382

loc_14088DFE5:                          ; CODE XREF: FsRtlIsDbcsInExpression+56E↓j
                mov     eax, r12d
                movzx   ecx, r10w
                movzx   r15d, word ptr [rdx+rax*2]
                add     r15d, edi
                shr     r15d, 1
                add     r12d, edi

loc_14088DFFA:                          ; CODE XREF: FsRtlIsDbcsInExpression+398↓j
                                        ; FsRtlIsDbcsInExpression+462↓j ...
                movzx   eax, word ptr [r9]
                cmp     r15w, ax
                jz      loc_14088E2E3
                add     r15w, cx
                movzx   edi, r15w
                add     di, di
                cmp     r15w, ax
                jz      loc_14088E2D5
                mov     rcx, [r9+8]
                mov     [rsp+0E8h+var_90], eax
                dec     eax
                movzx   r10d, r15w
                movzx   r8d, r15w
                cmp     r10d, eax
                jnz     short loc_14088E06C
                movsx   edx, byte ptr [r8+rcx]
                cmp     dl, 80h
                jb      short loc_14088E06C
                xor     eax, eax
                cmp     cs:NlsMbOemCodePageTag, al
                jz      short loc_14088E06C
                xor     r11d, r11d
                movzx   eax, dl
                lea     rsi, word_140D2FC20
                cmp     [rsi+rax*2], r11w
                mov     r11, [rsp+0E8h+var_A0]
                jz      short loc_14088E06C
                mov     eax, 1
                mov     [rsp+0E8h+var_C4], eax
                jmp     short loc_14088E0BC
; ---------------------------------------------------------------------------

loc_14088E06C:                          ; CODE XREF: FsRtlIsDbcsInExpression+272↑j
                                        ; FsRtlIsDbcsInExpression+27C↑j ...
                movsx   edx, byte ptr [r8+rcx]
                cmp     dl, 80h
                jb      short loc_14088E0B2
                xor     esi, esi
                cmp     cs:NlsMbOemCodePageTag, sil
                jz      short loc_14088E0B2
                movzx   eax, dl
                lea     r8, word_140D2FC20
                cmp     [r8+rax*2], si
                jz      short loc_14088E0B2
                movsx   ecx, byte ptr [r10+rcx+1]
                mov     eax, 100h
                movzx   esi, cx
                imul    esi, eax
                mov     eax, 2
                mov     word ptr [rsp+0E8h+var_C4], ax
                add     si, dx
                jmp     short loc_14088E0BF
; ---------------------------------------------------------------------------

loc_14088E0B2:                          ; CODE XREF: FsRtlIsDbcsInExpression+2B4↑j
                                        ; FsRtlIsDbcsInExpression+2BF↑j ...
                mov     eax, 1
                mov     word ptr [rsp+0E8h+var_C4], ax

loc_14088E0BC:                          ; CODE XREF: FsRtlIsDbcsInExpression+2AA↑j
                movzx   esi, dx

loc_14088E0BF:                          ; CODE XREF: FsRtlIsDbcsInExpression+2F0↑j
                cmp     ebx, 0Eh
                jb      short loc_14088E12C
                test    r11, r11
                jnz     short loc_14088E12C
                mov     edx, [rsp+0E8h+var_90]
                lea     ecx, [r11+11h]
                inc     edx
                mov     r8d, 64725346h
                shl     rdx, 3
                call    ExAllocatePoolWithTag
                movups  xmm0, xmmword ptr [r14]
                mov     rdx, qword ptr [rsp+0E8h+var_B8]
                mov     r11, rax
                mov     r9, [rsp+0E8h+var_98]
                movups  xmmword ptr [rax], xmm0
                mov     [rsp+0E8h+var_A0], rax
                movups  xmm1, xmmword ptr [r14+10h]
                mov     r14, rax
                movups  xmmword ptr [rax+10h], xmm1
                movzx   ecx, word ptr [r9]
                movups  xmm0, xmmword ptr [rdx]
                movups  xmmword ptr [rax+rcx*4+4], xmm0
                movups  xmm1, xmmword ptr [rdx+10h]
                movups  xmmword ptr [rax+rcx*4+14h], xmm1
                movzx   eax, word ptr [r9]
                inc     rax
                lea     rax, [r14+rax*4]
                mov     qword ptr [rsp+0E8h+var_B8], rax

loc_14088E12C:                          ; CODE XREF: FsRtlIsDbcsInExpression+302↑j
                                        ; FsRtlIsDbcsInExpression+307↑j
                mov     r8b, [rsp+0E8h+var_C8]
                cmp     si, 2Ah ; '*'
                jnz     short loc_14088E15D
                mov     ecx, [rsp+0E8h+var_C4]
                mov     edx, 1
                mov     eax, ebx
                add     ebx, edx
                mov     [r14+rax*2], di
                add     di, dx
                mov     [r14+rbx*2], di
                add     ebx, edx

loc_14088E153:                          ; CODE XREF: FsRtlIsDbcsInExpression+4D1↓j
                movzx   esi, [rsp+0E8h+var_C6]
                jmp     loc_14088DFFA
; ---------------------------------------------------------------------------

loc_14088E15D:                          ; CODE XREF: FsRtlIsDbcsInExpression+375↑j
                cmp     si, 3Ch ; '<'
                jnz     loc_14088E24B
                movzx   esi, [rsp+0E8h+var_C6]
                test    r8b, r8b
                jnz     loc_14088E231
                cmp     word ptr [rsp+0E8h+var_C0], 2Eh ; '.'
                jnz     loc_14088E231
                mov     rax, [rsp+0E8h+var_88]
                movzx   r9d, si
                movzx   r10d, word ptr [rax]
                cmp     si, r10w
                jnb     short loc_14088E208
                mov     r11, [rax+8]

loc_14088E198:                          ; CODE XREF: FsRtlIsDbcsInExpression+43C↓j
                movzx   ecx, r9w
                movsx   r8d, byte ptr [r11+rcx]
                cmp     r8b, 80h
                jb      short loc_14088E1E5
                xor     eax, eax
                cmp     cs:NlsMbOemCodePageTag, al
                jz      short loc_14088E1E5
                xor     esi, esi
                movzx   eax, r8b
                lea     rdx, word_140D2FC20
                cmp     [rdx+rax*2], si
                movzx   esi, [rsp+0E8h+var_C6]
                jz      short loc_14088E1E5
                movsx   eax, byte ptr [r11+rcx+1]
                mov     ecx, 100h
                movzx   edx, ax
                mov     eax, 2
                imul    edx, ecx
                add     dx, r8w
                jmp     short loc_14088E1EE
; ---------------------------------------------------------------------------

loc_14088E1E5:                          ; CODE XREF: FsRtlIsDbcsInExpression+3E5↑j
                                        ; FsRtlIsDbcsInExpression+3EF↑j ...
                movzx   edx, r8w
                mov     eax, 1

loc_14088E1EE:                          ; CODE XREF: FsRtlIsDbcsInExpression+423↑j
                cmp     dx, 2Eh ; '.'
                jz      short loc_14088E227
                add     r9w, ax
                cmp     r9w, r10w
                jb      short loc_14088E198
                mov     r11, [rsp+0E8h+var_A0]
                mov     r8b, [rsp+0E8h+var_C8]

loc_14088E208:                          ; CODE XREF: FsRtlIsDbcsInExpression+3D2↑j
                mov     eax, ebx
                mov     ecx, 1
                add     di, cx
                add     ebx, ecx
                mov     [r14+rax*2], di

loc_14088E219:                          ; CODE XREF: FsRtlIsDbcsInExpression+489↓j
                mov     r9, [rsp+0E8h+var_98]
                mov     ecx, [rsp+0E8h+var_C4]
                jmp     loc_14088DFFA
; ---------------------------------------------------------------------------

loc_14088E227:                          ; CODE XREF: FsRtlIsDbcsInExpression+432↑j
                mov     r11, [rsp+0E8h+var_A0]
                mov     r8b, [rsp+0E8h+var_C8]

loc_14088E231:                          ; CODE XREF: FsRtlIsDbcsInExpression+3AF↑j
                                        ; FsRtlIsDbcsInExpression+3BB↑j
                mov     eax, ebx
                mov     edx, 1
                add     ebx, edx
                mov     [r14+rax*2], di
                add     di, dx
                mov     [r14+rbx*2], di
                add     ebx, edx
                jmp     short loc_14088E219
; ---------------------------------------------------------------------------

loc_14088E24B:                          ; CODE XREF: FsRtlIsDbcsInExpression+3A1↑j
                mov     ecx, [rsp+0E8h+var_C4]
                movzx   eax, cx
                add     ax, ax
                add     di, ax
                cmp     si, 3Eh ; '>'
                jnz     short loc_14088E288
                movzx   esi, [rsp+0E8h+var_C6]
                test    r8b, r8b
                jnz     loc_14088DFFA
                cmp     word ptr [rsp+0E8h+var_C0], 2Eh ; '.'
                jz      loc_14088DFFA

loc_14088E278:                          ; CODE XREF: FsRtlIsDbcsInExpression+513↓j
                mov     eax, ebx
                mov     [r14+rax*2], di

loc_14088E27F:                          ; CODE XREF: FsRtlIsDbcsInExpression+51C↓j
                mov     edi, 1
                add     ebx, edi
                jmp     short loc_14088E2E8
; ---------------------------------------------------------------------------

loc_14088E288:                          ; CODE XREF: FsRtlIsDbcsInExpression+49C↑j
                cmp     si, 22h ; '"'
                jnz     short loc_14088E2B8
                test    r8b, r8b
                jnz     loc_14088E153
                mov     r15d, [rsp+0E8h+var_C0]
                cmp     r15w, 2Eh ; '.'
                jnz     short loc_14088E2C8

loc_14088E2A3:                          ; CODE XREF: FsRtlIsDbcsInExpression+501↓j
                movzx   esi, [rsp+0E8h+var_C6]
                mov     eax, ebx
                mov     [r14+rax*2], di
                mov     edi, 1
                add     ebx, edi
                jmp     short loc_14088E2E8
; ---------------------------------------------------------------------------

loc_14088E2B8:                          ; CODE XREF: FsRtlIsDbcsInExpression+4CC↑j
                test    r8b, r8b
                jnz     short loc_14088E2DE
                cmp     si, 3Fh ; '?'
                jz      short loc_14088E2A3
                mov     r15d, [rsp+0E8h+var_C0]

loc_14088E2C8:                          ; CODE XREF: FsRtlIsDbcsInExpression+4E1↑j
                cmp     si, r15w
                movzx   esi, [rsp+0E8h+var_C6]
                jnz     short loc_14088E2E3
                jmp     short loc_14088E278
; ---------------------------------------------------------------------------

loc_14088E2D5:                          ; CODE XREF: FsRtlIsDbcsInExpression+257↑j
                mov     eax, ebx
                mov     [r14+rax*2], bp
                jmp     short loc_14088E27F
; ---------------------------------------------------------------------------

loc_14088E2DE:                          ; CODE XREF: FsRtlIsDbcsInExpression+4FB↑j
                movzx   esi, [rsp+0E8h+var_C6]

loc_14088E2E3:                          ; CODE XREF: FsRtlIsDbcsInExpression+242↑j
                                        ; FsRtlIsDbcsInExpression+511↑j
                mov     edi, 1

loc_14088E2E8:                          ; CODE XREF: FsRtlIsDbcsInExpression+4C6↑j
                                        ; FsRtlIsDbcsInExpression+4F6↑j
                mov     rdx, qword ptr [rsp+0E8h+var_B8]
                cmp     r12d, r13d
                jnb     short loc_14088E334
                mov     r10d, [rsp+0E8h+var_A8]

loc_14088E2F7:                          ; CODE XREF: FsRtlIsDbcsInExpression+55E↓j
                cmp     r10d, ebx
                jnb     short loc_14088E320
                cmp     r12d, r13d
                jnb     short loc_14088E318
                mov     eax, r10d
                movzx   ecx, word ptr [r14+rax*2]

loc_14088E309:                          ; CODE XREF: FsRtlIsDbcsInExpression+556↓j
                cmp     [rdx+r12*2], cx
                jnb     short loc_14088E318
                add     r12d, edi
                cmp     r12d, r13d
                jb      short loc_14088E309

loc_14088E318:                          ; CODE XREF: FsRtlIsDbcsInExpression+53F↑j
                                        ; FsRtlIsDbcsInExpression+54E↑j
                add     r10d, edi
                cmp     r12d, r13d
                jb      short loc_14088E2F7

loc_14088E320:                          ; CODE XREF: FsRtlIsDbcsInExpression+53A↑j
                mov     [rsp+0E8h+var_A8], r10d
                mov     r10d, 0
                cmp     r12d, r13d
                jb      loc_14088DFE5

loc_14088E334:                          ; CODE XREF: FsRtlIsDbcsInExpression+530↑j
                xor     r12d, r12d
                test    ebx, ebx
                jz      short loc_14088E382
                mov     r15, [rsp+0E8h+var_88]
                mov     rax, rdx
                lea     r10, word_140D2FC20
                mov     rdx, r14
                mov     qword ptr [rsp+0E8h+var_B8], rdx
                mov     r13d, ebx
                mov     r14, rax
                mov     ebx, 100h
                test    r8b, r8b
                jz      loc_14088DF53

loc_14088E366:                          ; CODE XREF: FsRtlIsDbcsInExpression+20B↑j
                lea     eax, [r13-1]
                movzx   ebx, word ptr [rdx+rax*2]
                test    r11, r11
                jz      short loc_14088E37D
                xor     edx, edx
                mov     rcx, r11
                call    ExFreePoolWithTag

loc_14088E37D:                          ; CODE XREF: FsRtlIsDbcsInExpression+5B1↑j
                cmp     bx, bp
                jmp     short loc_14088E39D
; ---------------------------------------------------------------------------

loc_14088E382:                          ; CODE XREF: FsRtlIsDbcsInExpression+21F↑j
                                        ; FsRtlIsDbcsInExpression+579↑j
                test    r11, r11
                jz      short loc_14088E391
                xor     edx, edx
                mov     rcx, r11
                call    ExFreePoolWithTag

loc_14088E391:                          ; CODE XREF: FsRtlIsDbcsInExpression+E4↑j
                                        ; FsRtlIsDbcsInExpression+133↑j ...
                xor     al, al
                jmp     short loc_14088E3A0
; ---------------------------------------------------------------------------

loc_14088E395:                          ; CODE XREF: FsRtlIsDbcsInExpression+5D↑j
                                        ; FsRtlIsDbcsInExpression+69↑j
                movzx   eax, word ptr [r9]
                mov     ecx, ebx
                add     ecx, eax

loc_14088E39D:                          ; CODE XREF: FsRtlIsDbcsInExpression+14D↑j
                                        ; FsRtlIsDbcsInExpression+5C0↑j
                setz    al

loc_14088E3A0:                          ; CODE XREF: FsRtlIsDbcsInExpression+85↑j
                                        ; FsRtlIsDbcsInExpression+5D3↑j
                mov     rcx, [rsp+0E8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0E8h+var_28]
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14088DDC0
FsRtlIsDbcsInExpression endp
