RtlGenerate8dot3Name proc near          ; DATA XREF: .rdata:000000014007EC70↑o
                                        ; .pdata:0000000140104B44↑o

var_64          = dword ptr -64h
var_60          = dword ptr -60h
var_58          = qword ptr -58h
var_50          = word ptr -50h
var_40          = qword ptr -40h
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140824CDC SIZE 0000013A BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+88h+var_40], rax
                xor     r10d, r10d
                mov     [rsp+88h+var_58], r9
                mov     rbx, r8
                mov     bpl, dl
                mov     r14, rcx
                test    dl, dl
                jnz     loc_140824CDC

loc_1406EEB3C:                          ; CODE XREF: RtlGenerate8dot3Name+1361EC↓j
                mov     r15b, r10b

loc_1406EEB3F:                          ; CODE XREF: RtlGenerate8dot3Name+1361E6↓j
                mov     esi, 30h ; '0'
                lea     edi, [rsi+7]
                lea     r12d, [rsi-2Ah]
                cmp     [r8+3], r10b
                jnz     loc_1406EEC7E
                or      esi, 0FFFFFFFFh
                mov     [rsp+88h+var_64], r10d
                lea     ecx, [rdi-9]
                cmp     [r14], r10w
                jbe     short loc_1406EEB72
                mov     rax, [r14+8]
                mov     r8b, 1
                cmp     [rax], cx
                jz      short loc_1406EEB75

loc_1406EEB72:                          ; CODE XREF: RtlGenerate8dot3Name+64↑j
                mov     r8b, r10b

loc_1406EEB75:                          ; CODE XREF: RtlGenerate8dot3Name+70↑j
                xor     edi, edi
                mov     r12d, ecx

loc_1406EEB7A:                          ; CODE XREF: RtlGenerate8dot3Name+96↓j
                                        ; RtlGenerate8dot3Name+9C↓j
                mov     r9b, bpl
                lea     rdx, [rsp+88h+var_64]
                mov     rcx, r14
                call    sub_1406EEED8
                test    ax, ax
                jz      short loc_1406EEB9E
                mov     r8b, dil
                cmp     ax, r12w
                jnz     short loc_1406EEB7A
                mov     esi, [rsp+88h+var_64]
                jmp     short loc_1406EEB7A
; ---------------------------------------------------------------------------

loc_1406EEB9E:                          ; CODE XREF: RtlGenerate8dot3Name+8D↑j
                movzx   eax, word ptr [r14]
                shr     eax, 1
                cmp     esi, eax
                mov     eax, 0FFFFFFFFh
                cmovz   esi, eax
                xor     r13d, r13d
                mov     [rsp+88h+var_60], esi
                mov     [rsp+88h+var_64], r13d
                mov     [rbx+3], r13b
                lea     r12d, [r13+6]

loc_1406EEBC2:                          ; CODE XREF: RtlGenerate8dot3Name+FF↓j
                mov     r9b, bpl
                lea     rdx, [rsp+88h+var_64]
                mov     r8b, 1
                mov     rcx, r14
                call    sub_1406EEED8
                movzx   edx, ax
                test    dx, dx
                jz      short loc_1406EEC01
                cmp     [rsp+88h+var_64], esi
                jnb     short loc_1406EEC01
                movzx   r8d, byte ptr [rbx+3]
                cmp     r8b, r12b
                jnb     short loc_1406EEC01
                test    r15b, r15b
                jnz     loc_140824CF1

loc_1406EEBF6:                          ; CODE XREF: RtlGenerate8dot3Name+136219↓j
                mov     [rbx+r8*2+4], dx
                inc     byte ptr [rbx+3]
                jmp     short loc_1406EEBC2
; ---------------------------------------------------------------------------

loc_1406EEC01:                          ; CODE XREF: RtlGenerate8dot3Name+DB↑j
                                        ; RtlGenerate8dot3Name+E1↑j ...
                test    r15b, r15b
                jnz     short loc_1406EEC0A
                movzx   edi, byte ptr [rbx+3]

loc_1406EEC0A:                          ; CODE XREF: RtlGenerate8dot3Name+104↑j
                cmp     edi, 2
                jbe     loc_1406EEE77
                xor     r10d, r10d
                lea     edi, [r10+37h]

loc_1406EEC1A:                          ; CODE XREF: RtlGenerate8dot3Name+3CA↓j
                or      eax, 0FFFFFFFFh
                cmp     esi, eax
                jz      loc_1406EEE54
                mov     eax, 2Eh ; '.'
                mov     [rbx+18h], ax
                lea     edi, [rax-2Dh]
                mov     [rbx+14h], edi

loc_1406EEC34:                          ; CODE XREF: RtlGenerate8dot3Name+172↓j
                mov     r9b, bpl
                lea     rdx, [rsp+88h+var_60]
                mov     r8b, 1
                mov     rcx, r14
                call    sub_1406EEED8
                movzx   edx, ax
                xor     r10d, r10d
                test    dx, dx
                jz      short loc_1406EEC74
                mov     r8d, [rbx+14h]
                cmp     r8d, 4
                jnb     loc_1406EEE5D
                test    r15b, r15b
                jnz     loc_140824D1E

loc_1406EEC69:                          ; CODE XREF: RtlGenerate8dot3Name+136246↓j
                mov     [rbx+r8*2+18h], dx
                inc     dword ptr [rbx+14h]
                jmp     short loc_1406EEC34
; ---------------------------------------------------------------------------

loc_1406EEC74:                          ; CODE XREF: RtlGenerate8dot3Name+150↑j
                mov     edi, 37h ; '7'

loc_1406EEC79:                          ; CODE XREF: RtlGenerate8dot3Name+358↓j
                mov     esi, 30h ; '0'

loc_1406EEC7E:                          ; CODE XREF: RtlGenerate8dot3Name+4F↑j
                                        ; RtlGenerate8dot3Name+36C↓j ...
                mov     r9d, [rbx+20h]
                inc     r9d
                mov     [rbx+20h], r9d
                cmp     r9d, 4
                ja      loc_1406EEDC5

loc_1406EEC93:                          ; CODE XREF: RtlGenerate8dot3Name+2C9↓j
                                        ; RtlGenerate8dot3Name+34F↓j
                mov     edi, 1
                xor     r12d, r12d
                mov     bpl, dil
                lea     esi, [rdi+6]
                lea     r10d, [rdi+7]
                lea     r13d, [rdi+2Fh]

loc_1406EECA9:                          ; CODE XREF: RtlGenerate8dot3Name+1F2↓j
                test    r9d, r9d
                jz      short loc_1406EECF4
                mov     eax, 0CCCCCCCDh
                mul     r9d
                shr     edx, 3
                movzx   eax, dx
                shl     ax, 2
                lea     ecx, [rax+rdx]
                mov     eax, r10d
                add     cx, cx
                sub     eax, edi
                sub     r9w, cx
                inc     edi
                mov     ecx, r12d
                lea     r8d, [r9+r13]
                mov     r9d, edx
                cmp     r8w, 39h ; '9'
                mov     [rsp+rax*2+88h+var_50], r8w
                movzx   eax, bpl
                cmovz   ecx, eax
                mov     bpl, cl
                cmp     edi, esi
                jbe     short loc_1406EECA9

loc_1406EECF4:                          ; CODE XREF: RtlGenerate8dot3Name+1AC↑j
                movzx   ecx, byte ptr [rbx+3]
                lea     r14, [rsp+88h+var_50]
                mov     r13, [rsp+88h+var_58]
                sub     r10d, edi
                mov     eax, 7Eh ; '~'
                lea     r14, [r14+r10*2]
                mov     [r14], ax
                lea     eax, [rcx-1]
                cmp     al, 0Bh
                ja      loc_140824DA9
                mov     r8d, ecx
                lea     rdx, [rbx+4]
                mov     rcx, [r13+8]
                add     r8, r8
                call    memmove
                movzx   eax, byte ptr [rbx+3]
                add     ax, ax

loc_1406EED37:                          ; CODE XREF: RtlGenerate8dot3Name+1362AC↓j
                movzx   ecx, ax
                lea     r8d, [rdi+rdi]
                mov     [r13+0], ax
                mov     rdx, r14
                mov     rax, [r13+8]
                shr     rcx, 1
                lea     rcx, [rax+rcx*2]
                call    memmove
                movzx   ecx, di
                add     cx, cx
                add     cx, [r13+0]
                mov     [r13+0], cx
                mov     eax, [rbx+14h]
                test    eax, eax
                jz      short loc_1406EED94
                movzx   ecx, cx
                lea     r8d, [rax+rax]
                mov     rax, [r13+8]
                lea     rdx, [rbx+18h]
                shr     rcx, 1
                lea     rcx, [rax+rcx*2]
                call    memmove
                movzx   eax, word ptr [rbx+14h]
                add     ax, ax
                add     [r13+0], ax

loc_1406EED94:                          ; CODE XREF: RtlGenerate8dot3Name+26B↑j
                test    bpl, bpl
                jnz     loc_140824DB1

loc_1406EED9D:                          ; CODE XREF: RtlGenerate8dot3Name+136306↓j
                xor     eax, eax

loc_1406EED9F:                          ; CODE XREF: RtlGenerate8dot3Name+136311↓j
                mov     rcx, [rsp+88h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+88h+arg_8]
                add     rsp, 50h
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

loc_1406EEDC5:                          ; CODE XREF: RtlGenerate8dot3Name+18D↑j
                cmp     [rbx+2], r10b
                jnz     loc_1406EEC93
                test    r15b, r15b
                jnz     loc_140824D5E
                mov     r11d, r10d

loc_1406EEDDB:                          ; CODE XREF: RtlGenerate8dot3Name+1362A4↓j
                mov     rcx, r14
                call    sub_1406EEFB0
                mov     r8d, 2
                mov     [rbx], ax
                mov     edx, r12d
                sub     r8d, r11d
                sub     edx, r11d
                movzx   r9d, ax
                cmp     r8d, edx
                jnb     short loc_1406EEE37
                mov     r10d, r8d
                add     r10, 2
                sub     edx, r8d
                mov     r8d, edx
                lea     r10, [rbx+r10*2]

loc_1406EEE0F:                          ; CODE XREF: RtlGenerate8dot3Name+335↓j
                movzx   ecx, r9w
                mov     eax, esi
                and     cx, 0Fh
                cmp     cx, 9
                cmova   ax, di
                shr     r9w, 4
                add     ax, cx
                mov     [r10], ax
                lea     r10, [r10+2]
                sub     r8, 1
                jnz     short loc_1406EEE0F

loc_1406EEE37:                          ; CODE XREF: RtlGenerate8dot3Name+2FC↑j
                sub     r12b, r11b
                mov     dword ptr [rbx+20h], 1
                mov     [rbx+3], r12b
                mov     r9d, 1
                mov     byte ptr [rbx+2], 1
                jmp     loc_1406EEC93
; ---------------------------------------------------------------------------

loc_1406EEE54:                          ; CODE XREF: RtlGenerate8dot3Name+11F↑j
                mov     [rbx+14h], r10d
                jmp     loc_1406EEC79
; ---------------------------------------------------------------------------

loc_1406EEE5D:                          ; CODE XREF: RtlGenerate8dot3Name+15A↑j
                                        ; RtlGenerate8dot3Name+136240↓j
                cmp     cs:byte_140D2D04C, r10b
                mov     edi, 37h ; '7'
                lea     esi, [rdi-7]
                jz      loc_1406EEC7E
                jmp     loc_140824D4B
; ---------------------------------------------------------------------------

loc_1406EEE77:                          ; CODE XREF: RtlGenerate8dot3Name+10D↑j
                mov     rcx, r14
                call    sub_1406EEFB0
                xor     r10d, r10d
                mov     [rbx], ax
                movzx   r11d, ax
                mov     r8d, r10d
                lea     edi, [r10+37h]

loc_1406EEE90:                          ; CODE XREF: RtlGenerate8dot3Name+3C0↓j
                movzx   eax, byte ptr [rbx+3]
                movzx   ecx, r11w
                and     cx, 0Fh
                mov     edx, 30h ; '0'
                cmp     cx, 9
                cmova   dx, di
                add     eax, r8d
                add     dx, cx
                shr     r11w, 4
                inc     r8d
                mov     [rbx+rax*2+4], dx
                cmp     r8d, 4
                jb      short loc_1406EEE90
                add     byte ptr [rbx+3], 4
                mov     byte ptr [rbx+2], 1
                jmp     loc_1406EEC1A
; } // starts at 1406EEB00
RtlGenerate8dot3Name endp
