RtlClearBitsEx  proc near               ; CODE XREF: sub_1402D6AAC:loc_1402D6CF0↑p
                                        ; RtlFindSetBitsAndClearEx+F7↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                test    r8, r8
                jz      short locret_1402EBAD1
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                mov     [rsp+arg_10], rdi
                push    r14
                sub     rsp, 20h
                mov     rsi, rdx
                lea     r14, cs:140000000h
                and     edx, 7
                shr     rsi, 3
                add     rsi, [rcx+8]
                mov     rdi, r8
                lea     rax, [rdx+r8]
                cmp     rax, 8
                ja      short loc_1402EBAD3
                mov     al, [r8+r14+1DAE0h]
                mov     ecx, edx
                shl     al, cl
                not     al

loc_1402EBABA:                          ; CODE XREF: RtlClearBitsEx+AB↓j
                and     [rsi], al

loc_1402EBABC:                          ; CODE XREF: RtlClearBitsEx+A1↓j
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     r14

locret_1402EBAD1:                       ; CODE XREF: RtlClearBitsEx+3↑j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EBAD3:                          ; CODE XREF: RtlClearBitsEx+3A↑j
                test    edx, edx
                jz      short loc_1402EBAEE
                mov     al, [rdx+r14+1DAE0h]
                and     [rsi], al
                mov     eax, 8
                sub     eax, edx
                inc     rsi
                sub     rdi, rax

loc_1402EBAEE:                          ; CODE XREF: RtlClearBitsEx+65↑j
                cmp     rdi, 8
                jbe     short loc_1402EBB0E
                mov     rbx, rdi
                xor     edx, edx
                shr     rbx, 3
                mov     rcx, rsi
                mov     r8, rbx
                call    memset
                add     rsi, rbx
                and     edi, 7

loc_1402EBB0E:                          ; CODE XREF: RtlClearBitsEx+82↑j
                test    rdi, rdi
                jz      short loc_1402EBABC
                mov     al, ds:rva byte_14001A870[r14+rdi]
                jmp     short loc_1402EBABA
RtlClearBitsEx  endp

; ---------------------------------------------------------------------------
byte_1402EBB1D  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2B34↑o

; =============== S U B R O U T I N E =======================================


sub_1402EBB24   proc near               ; CODE XREF: sub_14063CB90+569↓p
                                        ; sub_14065B470+3A6↓p ...
                sub     rsp, 28h
                call    sub_1402EBB3C
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402EBB24   endp

byte_1402EBB33  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2B40↑o

; =============== S U B R O U T I N E =======================================


sub_1402EBB3C   proc near               ; CODE XREF: sub_140230420+388↑p
                                        ; sub_14026B8A4+E2↑p ...
                mov     rax, [rcx+38h]

loc_1402EBB40:                          ; CODE XREF: sub_1402EBB3C+13↓j
                test    rax, rax
                jz      short locret_1402EBB4A
                test    [rax+40h], edx
                jz      short loc_1402EBB4C

locret_1402EBB4A:                       ; CODE XREF: sub_1402EBB3C+7↑j
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402EBB4C:                          ; CODE XREF: sub_1402EBB3C+C↑j
                mov     rax, [rax]
                jmp     short loc_1402EBB40
sub_1402EBB3C   endp

; ---------------------------------------------------------------------------
algn_1402EBB51:                         ; DATA XREF: .pdata:00000001400D2B4C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402EBB60   proc near               ; CODE XREF: sub_1402335C0+7AE↑p
                                        ; sub_1402EB044+293↑p ...

var_68          = dword ptr -68h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140461A5C SIZE 00000098 BYTES

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
                movzx   r15d, r8b
                mov     dword ptr [r9], 0
                mov     r14, rdx
                mov     rax, 0FFFFF6FB40000000h
                mov     r8, 7FFFFFFFF8h
                mov     rdx, 0FFFFF68000000000h
                mov     rsi, r9
                mov     r12, 0FFFFF6FB7DBED000h
                mov     ebp, 2
                mov     r13, 0FFFFF6FB7DBED7F8h

loc_1402EBBCB:                          ; CODE XREF: sub_1402EBB60+F4↓j
                shr     rcx, 12h
                and     ecx, 3FFFFFF8h
                mov     rax, rax
                add     rcx, rax
                mov     [rsp+88h+var_48], rcx
                shr     rcx, 9
                and     rcx, r8
                mov     rax, rdx
                add     rcx, rax
                mov     [rsp+88h+var_50], rcx
                shr     rcx, 9
                and     rcx, r8
                mov     rax, rdx
                add     rcx, rax
                lea     rdi, [rsp+88h+var_58]
                mov     [rsp+88h+var_58], rcx
                xor     ebx, ebx

loc_1402EBC0B:                          ; CODE XREF: sub_1402EBB60+D4↓j
                mov     r10, [rdi]
                mov     rcx, [r10]
                mov     rax, r12
                cmp     r10, rax
                jnb     short loc_1402EBC80

loc_1402EBC19:                          ; CODE XREF: sub_1402EBB60+126↓j
                                        ; sub_1402EBB60+132↓j ...
                test    rcx, rcx
                jz      loc_1402EBCD4
                test    cl, 1
                jz      loc_140461AB1

loc_1402EBC2B:                          ; CODE XREF: sub_1402EBB60+175F54↓j
                                        ; sub_1402EBB60+175F8F↓j
                inc     ebx
                add     rdi, 8
                cmp     ebx, 3
                jb      short loc_1402EBC0B

loc_1402EBC36:                          ; CODE XREF: sub_1402EBB60+184↓j
                inc     rsi
                mov     rax, 0FFFFF6FB40000000h
                mov     rcx, r14
                mov     r8, 7FFFFFFFF8h
                sub     rbp, 1
                jnz     loc_1402EBBCB
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
                align 20h

loc_1402EBC80:                          ; CODE XREF: sub_1402EBB60+B7↑j
                mov     rax, r13
                cmp     r10, rax
                ja      short loc_1402EBC19
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_1402EBC19
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                cmp     byte ptr [rdx+390h], 1
                jnz     short loc_1402EBCBC

loc_1402EBCAD:                          ; CODE XREF: sub_1402EBB60+15F↓j
                                        ; sub_1402EBB60+16D↓j ...
                mov     rdx, 0FFFFF68000000000h
                jmp     loc_1402EBC19
; ---------------------------------------------------------------------------

loc_1402EBCBC:                          ; CODE XREF: sub_1402EBB60+14B↑j
                test    cl, 1
                jz      short loc_1402EBCAD
                test    cl, 20h
                jz      loc_140461A5C
                test    cl, 42h
                jnz     short loc_1402EBCAD
                jmp     loc_140461A5C
; ---------------------------------------------------------------------------

loc_1402EBCD4:                          ; CODE XREF: sub_1402EBB60+BC↑j
                mov     ecx, 2
                mov     eax, 1
                sub     cl, bl
                shl     al, cl
                mov     [rsi], al
                jmp     loc_1402EBC36
; } // starts at 1402EBB60
sub_1402EBB60   endp

; ---------------------------------------------------------------------------
algn_1402EBCE9:                         ; DATA XREF: .rdata:000000014006C310↑o
                                        ; .pdata:00000001400D2B58↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402EBCF0   proc near               ; CODE XREF: sub_1402E97B4+87↑p
                                        ; sub_1402EB044+25B↑p ...

var_28          = dword ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 40h
                mov     rax, gs:188h
                mov     rbx, r9
                bts     r8d, 7
                mov     [rsp+48h+var_18], rbx
                mov     r10, rcx
                mov     [rsp+48h+var_20], r8d
                and     [rsp+48h+var_28], 0
                mov     r9, rdx
                mov     rdi, [rax+0B8h]
                mov     r8, r10
                mov     dl, 11h
                lea     rcx, [rdi+680h]
                call    sub_140289B60
                mov     rax, [rbx+18h]
                test    rax, rax
                jnz     short loc_1402EBD4D

loc_1402EBD41:                          ; CODE XREF: sub_1402EBCF0+69↓j
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EBD4D:                          ; CODE XREF: sub_1402EBCF0+4F↑j
                neg     rax
                lock xadd [rdi+4F8h], rax
                jmp     short loc_1402EBD41
sub_1402EBCF0   endp

; ---------------------------------------------------------------------------
byte_1402EBD5B  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2B64↑o

; =============== S U B R O U T I N E =======================================


sub_1402EBD64   proc near               ; CODE XREF: sub_1402EB044+227↑p
                                        ; sub_1402EB044+1762E6↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140461AF4 SIZE 000000A1 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 20h
                movzx   ebx, byte ptr [rcx+20h]
                mov     rsi, rdx
                mov     eax, [rcx+18h]
                mov     rdi, rcx
                shl     rbx, 20h
                or      rbx, rax
                add     rbx, rdx
                test    dword ptr [rcx+30h], 100000h
                jz      loc_140461AF4

loc_1402EBD9C:                          ; CODE XREF: sub_1402EBD64+175E2C↓j
                mov     rbp, [rsp+28h+arg_10]
                mov     rsi, [rsp+28h+arg_18]
                mov     [rdi+18h], ebx
                shr     rbx, 20h
                mov     [rdi+20h], bl
                mov     rbx, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402EBD64   endp

byte_1402EBDBC  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014006C348↑o
                                        ; .pdata:00000001400D2B70↑o

; =============== S U B R O U T I N E =======================================


sub_1402EBDC4   proc near               ; CODE XREF: sub_1402EA560+9↑p
                                        ; sub_1402EADFC+53↑p ...
                sub     ecx, 6
                jz      short loc_1402EBE0B
                sub     ecx, 2
                jz      short loc_1402EBDEF
                sub     ecx, 1
                jnz     short loc_1402EBDDC

loc_1402EBDD3:                          ; CODE XREF: sub_1402EBDC4+37↓j
                lea     rax, qword_140C4DF18
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402EBDDC:                          ; CODE XREF: sub_1402EBDC4+D↑j
                sub     ecx, 2
                jz      short loc_1402EBE14
                sub     ecx, 1
                jnz     short loc_1402EBDF8
                lea     rax, qword_140C4DF60
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EBDEF:                          ; CODE XREF: sub_1402EBDC4+8↑j
                lea     rax, qword_140C4E038
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1402EBDF8:                          ; CODE XREF: sub_1402EBDC4+20↑j
                sub     ecx, 1
                jz      short loc_1402EBDD3
                sub     ecx, 1
                jnz     short loc_1402EBE1D
                lea     rax, qword_140C4DED0
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EBE0B:                          ; CODE XREF: sub_1402EBDC4+3↑j
                lea     rax, qword_140C4DFF0
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402EBE14:                          ; CODE XREF: sub_1402EBDC4+1B↑j
                lea     rax, unk_140C4DFA8
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EBE1D:                          ; CODE XREF: sub_1402EBDC4+3C↑j
                cmp     ecx, 1
                jnz     short loc_1402EBE2B
                lea     rax, unk_140C4E080
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EBE2B:                          ; CODE XREF: sub_1402EBDC4+5C↑j
                xor     eax, eax
                retn
sub_1402EBDC4   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1402EBE2F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2B7C↑o

; =============== S U B R O U T I N E =======================================


sub_1402EBE38   proc near               ; CODE XREF: sub_1402EA018+155↑p
                                        ; sub_1403C947C+AA↓p ...

var_18          = dword ptr -18h

                sub     rsp, 38h
                cmp     ecx, 0Dh
                mov     r9d, 9
                mov     r11, r8
                mov     r10, rdx
                cmovnz  r9d, ecx
                mov     r8d, 220h
                lea     eax, [r9-5]
                test    eax, 0FFFFFFFBh
                jnz     short loc_1402EBEB0
                mov     r8d, 230h

loc_1402EBE66:                          ; CODE XREF: sub_1402EBE38+7F↓j
                                        ; sub_1402EBE38+85↓j ...
                lea     rdx, [r11-1]
                mov     rcx, 0FFFFF68000000000h
                shr     rdx, 3
                mov     r11, 7FFFFFFFF8h
                add     rdx, r10
                shr     rdx, 9
                and     rdx, r11
                mov     rax, rcx
                shr     r10, 9
                add     rdx, rax
                and     r10, r11
                mov     rax, rcx
                and     [rsp+38h+var_18], 0
                lea     rcx, [rax+r10]
                call    sub_1402A43FC
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1402EBEB0:                          ; CODE XREF: sub_1402EBE38+26↑j
                lea     eax, [r9-0Eh]
                cmp     eax, 1
                jbe     short loc_1402EBE66
                cmp     r9d, 8
                jz      short loc_1402EBE66
                mov     rax, cr8
                cmp     al, 1
                ja      short loc_1402EBE66
                mov     r8d, 221h
                jmp     short loc_1402EBE66
sub_1402EBE38   endp

; ---------------------------------------------------------------------------
byte_1402EBECF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2B88↑o

; =============== S U B R O U T I N E =======================================


sub_1402EBED8   proc near               ; CODE XREF: sub_1402EA588+2FF↑p
                                        ; sub_1403C947C+E9723↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 0000000140461B96 SIZE 00000017 BYTES

                sub     rsp, 28h
                cmp     ecx, 1
                jz      loc_140461B96
                cmp     cs:qword_140C4DEC8, 8000000h
                jbe     loc_140461B96

loc_1402EBEF6:                          ; CODE XREF: sub_1402EBED8+175CD0↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402EBED8   endp

byte_1402EBEFC  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014006C390↑o
                                        ; .pdata:00000001400D2B94↑o

; =============== S U B R O U T I N E =======================================


sub_1402EBF04   proc near               ; CODE XREF: sub_1402EADFC:loc_1402EAF9D↑p
                                        ; DATA XREF: .rdata:000000014006C3AC↑o ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 0000000140461BAE SIZE 0000001B BYTES

                sub     rsp, 38h
                movzx   r8d, cs:word_140CFB000
                xor     eax, eax
                test    r8d, r8d
                jz      loc_140461BAE
                mov     rdx, cs:qword_140C4DD20
                add     rdx, 0A8h

loc_1402EBF29:                          ; CODE XREF: sub_1402EBF04+42↓j
                cmp     rcx, [rdx-8]
                jb      short loc_1402EBF3A
                cmp     rcx, [rdx]
                jnb     short loc_1402EBF3A
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402EBF3A:                          ; CODE XREF: sub_1402EBF04+29↑j
                                        ; sub_1402EBF04+2E↑j
                inc     eax
                add     rdx, 0B0h
                cmp     eax, r8d
                jb      short loc_1402EBF29
                jmp     loc_140461BAE
sub_1402EBF04   endp

; ---------------------------------------------------------------------------
byte_1402EBF4D  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014006C3AC↑o
                                        ; .pdata:00000001400D2BA0↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1402EBF54   proc near               ; CODE XREF: sub_1402E9BF4+7F↑p
                                        ; sub_1402EA018+4B9↑p
                                        ; DATA XREF: ...

var_58          = qword ptr -58h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = dword ptr -20h
var_1C          = dword ptr -1Ch
var_18          = qword ptr -18h
arg_0           = dword ptr  48h
arg_8           = dword ptr  50h
arg_10          = dword ptr  58h
arg_18          = dword ptr  60h

; FUNCTION CHUNK AT 0000000140461BCA SIZE 0000025E BYTES

                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 78h
                mov     rax, gs:188h
                mov     r10d, 1
                mov     r12d, ecx
                mov     rdx, [rax+0B8h]
                mov     r13, [rdx+558h]
                mov     [rbp+var_18], r13
                mov     r8, [r13+350h]
                lea     rdi, [r13+340h]
                mov     rcx, [rdi]
                mov     r15, [rdi+8]
                cmp     r8, rcx
                mov     [rbp+var_40], r8
                sbb     rbx, rbx
                mov     [rbp+var_48], rcx
                and     rbx, r8
                lea     rdx, [rcx-1]
                or      r11, 0FFFFFFFFFFFFFFFFh
                test    r12d, r12d
                jz      loc_140461BCA
                lea     r13d, [r10+3Fh]

loc_1402EBFC7:                          ; CODE XREF: sub_1402EBF54+175CA1↓j
                and     [rbp+arg_0], 0
                mov     rax, rdx
                sub     rax, rbx
                add     rax, r10
                cmp     rax, r12
                jb      loc_140461BD3
                mov     r14, rdx
                mov     cl, bl
                sub     r14, r12
                and     cl, 3Fh
                add     r14, r10
                mov     r9, r10
                shl     r9, cl
                mov     rax, r14
                shr     rax, 6
                sub     r9, r10
                lea     rdi, [r15+rax*8]
                mov     rax, rbx
                shr     rax, 6
                lea     r8, [r15+rax*8]
                or      r9, [r8]
                cmp     r12, 7Fh
                ja      loc_1402EC41F
                mov     eax, 40h ; '@'
                cmp     r12, rax
                jnb     loc_1402EC2E0
                cmp     r12, r10
                ja      loc_1402EC394

loc_1402EC02E:                          ; CODE XREF: sub_1402EBF54+EF↓j
                cmp     r9, r11
                jnz     short loc_1402EC045
                add     r8, 8
                cmp     r8, rdi
                ja      loc_1402EC544
                mov     r9, [r8]
                jmp     short loc_1402EC02E
; ---------------------------------------------------------------------------

loc_1402EC045:                          ; CODE XREF: sub_1402EBF54+DD↑j
                not     r9
                mov     rdx, r8
                sub     rdx, r15
                mov     r13d, 40h ; '@'
                bsf     rax, r9
                sar     rdx, 3
                shl     rdx, 6
                mov     [rbp+arg_0], eax
                add     rdx, rax

loc_1402EC066:                          ; CODE XREF: sub_1402EBF54+4C6↓j
                cmp     rdx, r14
                ja      loc_1402EC301

loc_1402EC06F:                          ; CODE XREF: sub_1402EBF54+3F9↓j
                                        ; sub_1402EBF54+41A↓j ...
                cmp     rdx, r11
                jz      loc_1402EC304

loc_1402EC078:                          ; CODE XREF: sub_1402EBF54+175C85↓j
                mov     r13, [rbp+var_18]
                mov     rbx, rdx
                lea     rdi, [r13+340h]

loc_1402EC086:                          ; CODE XREF: sub_1402EBF54+175C7A↓j
                cmp     rbx, r11
                jz      loc_140461C27
                mov     r15, gs:188h
                add     [r15+1E6h], r11w
                mov     rax, gs:188h
                mov     r14d, 338h
                xor     edx, edx
                mov     r9, [rax+0B8h]
                mov     rcx, [r9+558h]
                add     rcx, r14
                call    ExAcquirePushLockExclusiveEx
                mov     r8, rbx
                mov     rdx, r12
                mov     rcx, rdi
                call    RtlFindClearBitsAndSetEx
                or      rdi, 0FFFFFFFFFFFFFFFFh
                mov     rsi, rax
                cmp     rax, rdi
                jz      loc_140461C2E
                lea     eax, [rdi+2]
                cmp     r12d, eax
                jnz     short loc_1402EC0F8
                lea     rax, [rsi+1]
                mov     [r13+350h], rax

loc_1402EC0F8:                          ; CODE XREF: sub_1402EBF54+197↑j
                add     [r13+368h], r12d
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, rdi
                mov     r14, [rcx+558h]
                add     r14, 338h
                lock xadd [r14], rax
                and     al, 6
                cmp     al, 2
                jz      loc_1402EC2CE

loc_1402EC12F:                          ; CODE XREF: sub_1402EBF54+382↓j
                xor     r13d, r13d
                mov     rcx, r14
                mov     [rbp+var_38], r13d
                mov     rbx, gs:188h
                call    sub_140245330
                lea     r11d, [r13+1]
                cmp     eax, r11d
                jz      loc_1402EC2B5
                or      edx, 0FFFFFFFFh

loc_1402EC157:                          ; CODE XREF: sub_1402EBF54+375↓j
                add     [rbx+1E6h], di
                add     [rbx+31Ah], r11b
                movsx   ecx, byte ptr [rbx+318h]
                mov     r9, r14
                movsx   r8d, byte ptr [rbx+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                mov     r12b, [rbx+31Ah]
                or      r8d, ecx
                and     r9, r10
                xor     r8d, 3Fh

loc_1402EC192:                          ; CODE XREF: sub_1402EBF54+268↓j
                                        ; sub_1402EBF54+270↓j ...
                bsr     ecx, r8d
                mov     [rbp+arg_18], ecx
                jz      loc_1402EC562
                lea     rdi, [rcx+rcx*2]
                mov     eax, r11d
                shl     rdi, 5
                add     rdi, [rbx+320h]
                shl     eax, cl
                not     eax
                and     r8d, eax
                test    [rdi+1Ah], r11b
                jz      short loc_1402EC192
                mov     eax, [rdi+20h]
                test    r11b, al
                jnz     short loc_1402EC192
                mov     rax, [rdi+20h]
                and     rax, r10
                cmp     rax, r9
                jnz     short loc_1402EC192
                cmp     [rdi+28h], edx
                jnz     short loc_1402EC192
                and     byte ptr [rdi+1Ah], 0FEh
                mov     rax, [rdi+20h]
                test    rax, rax
                jz      short loc_1402EC192
                test    rdi, rdi
                jz      loc_1402EC562
                mov     al, [rdi+20h]
                or      al, 2
                mov     [rdi+20h], al
                mov     rax, [rdi+20h]
                shr     rax, 3Fh
                test    al, al
                jnz     loc_1402EC54F

loc_1402EC205:                          ; CODE XREF: sub_1402EBF54+609↓j
                mov     eax, [rdi+58h]
                and     eax, 1FFFFh
                mov     [rbp+var_38], eax
                and     dword ptr [rdi+58h], 0FFFE0000h
                and     byte ptr [rdi+19h], 0FEh
                mov     [rdi+20h], r13
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rdi, [rbx+320h]
                imul    rdi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r12b, r11b
                jnz     loc_140461DFC
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_1402EC25A:                          ; CODE XREF: sub_1402EBF54+615↓j
                                        ; sub_1402EBF54+175EB6↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rbp+var_38]
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_1402456E0
                mov     eax, 1
                add     [rbx+1E6h], ax
                jnz     short loc_1402EC28D
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jnz     loc_1402EC574

loc_1402EC28D:                          ; CODE XREF: sub_1402EBF54+327↑j
                                        ; sub_1402EBF54+625↓j
                mov     rcx, r15
                call    sub_140245770
                shl     rsi, 15h
                add     rsi, cs:qword_140C4CC20
                mov     rax, rsi

loc_1402EC2A3:                          ; CODE XREF: sub_1402EBF54+175CD5↓j
                add     rsp, 78h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EC2B5:                          ; CODE XREF: sub_1402EBF54+1FA↑j
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     edx, eax
                mov     r11d, 1
                jmp     loc_1402EC157
; ---------------------------------------------------------------------------

loc_1402EC2CE:                          ; CODE XREF: sub_1402EBF54+1D5↑j
                mov     rcx, r14
                call    ExfTryToWakePushLock
                jmp     loc_1402EC12F
; ---------------------------------------------------------------------------

loc_1402EC2DB:                          ; CODE XREF: sub_1402EBF54+411↓j
                                        ; sub_1402EBF54+43B↓j
                mov     eax, 40h ; '@'

loc_1402EC2E0:                          ; CODE XREF: sub_1402EBF54+CB↑j
                                        ; sub_1402EBF54+5E0↓j
                test    r9, r9
                jns     short loc_1402EC311
                add     r8, 8
                cmp     r8, rdi
                jbe     loc_1402EC531

loc_1402EC2F2:                          ; CODE XREF: sub_1402EBF54+3EB↓j
                                        ; sub_1402EBF54+50D↓j
                mov     rdx, r11
                mov     r13d, 40h ; '@'
                jmp     short loc_1402EC304
; ---------------------------------------------------------------------------

loc_1402EC2FD:                          ; CODE XREF: sub_1402EBF54+45B↓j
                                        ; sub_1402EBF54+5A9↓j
                or      r11, 0FFFFFFFFFFFFFFFFh

loc_1402EC301:                          ; CODE XREF: sub_1402EBF54+115↑j
                                        ; sub_1402EBF54+556↓j
                mov     rdx, r11

loc_1402EC304:                          ; CODE XREF: sub_1402EBF54+11E↑j
                                        ; sub_1402EBF54+3A7↑j ...
                mov     r8, [rbp+var_40]
                mov     rcx, [rbp+var_48]
                jmp     loc_140461BD6
; ---------------------------------------------------------------------------

loc_1402EC311:                          ; CODE XREF: sub_1402EBF54+38F↑j
                and     [rbp+var_28], 0
                bsr     rcx, r9
                jz      short loc_1402EC322
                mov     eax, 3Fh ; '?'
                sub     eax, ecx

loc_1402EC322:                          ; CODE XREF: sub_1402EBF54+3C5↑j
                mov     rdx, r8
                mov     r9d, eax
                sub     rdx, r15
                mov     [rbp+var_28], eax
                sar     rdx, 3
                add     rdx, r10
                shl     rdx, 6
                sub     rdx, r9
                cmp     rdx, r14
                ja      short loc_1402EC2F2
                mov     rcx, r12
                mov     r13d, 40h ; '@'
                sub     rcx, r9
                jz      loc_1402EC06F
                add     r8, 8
                mov     rax, [r8]
                mov     r9, rax
                cmp     rcx, r13
                jb      short loc_1402EC37B
                test    rax, rax
                jnz     loc_1402EC2DB
                sub     rcx, r13
                jz      loc_1402EC06F
                add     r8, 8
                mov     r9, [r8]

loc_1402EC37B:                          ; CODE XREF: sub_1402EBF54+40C↑j
                bsf     rax, r9
                cmovz   eax, r13d
                mov     [rbp+var_24], eax
                cmp     rax, rcx
                jnb     loc_1402EC06F
                jmp     loc_1402EC2DB
; ---------------------------------------------------------------------------

loc_1402EC394:                          ; CODE XREF: sub_1402EBF54+D4↑j
                xor     r10d, r10d
                mov     r13, rax
                shr     rdx, 6
                lea     r11, [r15+rdx*8]

loc_1402EC3A2:                          ; CODE XREF: sub_1402EBF54+5D1↓j
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jnz     short loc_1402EC3C1

loc_1402EC3A8:                          ; CODE XREF: sub_1402EBF54+468↓j
                add     r8, 8
                cmp     r8, rdi
                ja      loc_1402EC2FD
                mov     r9, [r8]
                cmp     r9, 0FFFFFFFFFFFFFFFFh
                jz      short loc_1402EC3A8
                xor     r10d, r10d

loc_1402EC3C1:                          ; CODE XREF: sub_1402EBF54+452↑j
                bsf     rax, r9
                cmovz   eax, r13d
                mov     [rbp+var_20], eax
                lea     ecx, [r10+rax]
                cmp     rcx, r12
                jnb     loc_1402EC539
                mov     rdx, r9
                mov     r10d, r12d
                not     rdx

loc_1402EC3E2:                          ; CODE XREF: sub_1402EBF54+4A9↓j
                mov     rax, rdx
                mov     ecx, r10d
                shr     ecx, 1
                shr     rax, cl
                and     rdx, rax
                jz      loc_1402EC4FA
                sub     r10d, ecx
                cmp     r10d, 1
                ja      short loc_1402EC3E2
                bsf     rax, rdx
                mov     [rbp+arg_0], eax
                mov     edx, eax

loc_1402EC408:                          ; CODE XREF: sub_1402EBF54+5EB↓j
                sub     r8, r15
                sar     r8, 3
                shl     r8, 6
                add     rdx, r8
                or      r11, 0FFFFFFFFFFFFFFFFh
                jmp     loc_1402EC066
; ---------------------------------------------------------------------------

loc_1402EC41F:                          ; CODE XREF: sub_1402EBF54+BD↑j
                test    r14b, 3Fh
                lea     r10, [rdi+8]
                cmovz   r10, rdi
                test    r9, r9
                jz      loc_1402EC52A
                add     r8, 8
                cmp     qword ptr [r8], 0
                jnz     short loc_1402EC45E
                and     [rbp+var_34], 0
                bsr     rax, r9
                jz      loc_140461BFA
                mov     ecx, 3Fh ; '?'
                sub     ecx, eax

loc_1402EC453:                          ; CODE XREF: sub_1402EBF54+175CA9↓j
                mov     [rbp+var_34], ecx
                jmp     short loc_1402EC493
; ---------------------------------------------------------------------------

loc_1402EC458:                          ; CODE XREF: sub_1402EBF54+571↓j
                cmp     qword ptr [r8], 0
                jz      short loc_1402EC4BE

loc_1402EC45E:                          ; CODE XREF: sub_1402EBF54+4E8↑j
                                        ; sub_1402EBF54+51B↓j ...
                cmp     r8, r10
                ja      loc_1402EC2F2
                add     r8, 8
                cmp     qword ptr [r8], 0
                jnz     short loc_1402EC45E
                and     [rbp+var_30], 0
                mov     rax, [r8-8]
                bsr     rdx, rax
                jz      loc_140461C02
                mov     ecx, 3Fh ; '?'
                sub     ecx, edx

loc_1402EC48A:                          ; CODE XREF: sub_1402EBF54+175CB3↓j
                mov     [rbp+var_30], ecx
                mov     r13d, 40h ; '@'

loc_1402EC493:                          ; CODE XREF: sub_1402EBF54+502↑j
                                        ; sub_1402EBF54+5D8↓j
                mov     rdx, r8
                mov     r9d, ecx
                sub     rdx, r15
                sar     rdx, 3
                shl     rdx, 6
                sub     rdx, r9
                cmp     rdx, r14
                ja      loc_1402EC301
                mov     rax, r12
                sub     rax, r9
                shr     rax, 6
                lea     r9, [r8+rax*8]

loc_1402EC4BE:                          ; CODE XREF: sub_1402EBF54+508↑j
                add     r8, 8
                cmp     r8, r9
                jnz     short loc_1402EC458
                mov     r9d, r12d
                sub     r9d, ecx
                and     r9d, 3Fh
                jz      loc_1402EC06F
                mov     rax, [r8]
                bsf     rcx, rax
                mov     eax, 40h ; '@'
                cmovz   ecx, eax
                mov     [rbp+var_2C], ecx
                cmp     ecx, r9d
                jb      loc_1402EC45E
                mov     r13d, eax
                jmp     loc_1402EC06F
; ---------------------------------------------------------------------------

loc_1402EC4FA:                          ; CODE XREF: sub_1402EBF54+49C↑j
                cmp     r8, r11
                jz      loc_1402EC2FD
                and     [rbp+var_1C], 0
                bsr     rax, r9
                jz      loc_140461C0C
                mov     r10d, 3Fh ; '?'
                sub     r10d, eax

loc_1402EC51A:                          ; CODE XREF: sub_1402EBF54+175CC1↓j
                add     r8, 8
                mov     [rbp+var_1C], r10d
                mov     r9, [r8]
                jmp     loc_1402EC3A2
; ---------------------------------------------------------------------------

loc_1402EC52A:                          ; CODE XREF: sub_1402EBF54+4DA↑j
                xor     ecx, ecx
                jmp     loc_1402EC493
; ---------------------------------------------------------------------------

loc_1402EC531:                          ; CODE XREF: sub_1402EBF54+398↑j
                mov     r9, [r8]
                jmp     loc_1402EC2E0
; ---------------------------------------------------------------------------

loc_1402EC539:                          ; CODE XREF: sub_1402EBF54+47F↑j
                mov     edx, r10d
                neg     rdx
                jmp     loc_1402EC408
; ---------------------------------------------------------------------------

loc_1402EC544:                          ; CODE XREF: sub_1402EBF54+E6↑j
                mov     rdx, r11
                mov     r13, rax
                jmp     loc_1402EC304
; ---------------------------------------------------------------------------

loc_1402EC54F:                          ; CODE XREF: sub_1402EBF54+2AB↑j
                mov     rcx, rdi
                call    sub_14031EC80
                mov     r11d, 1
                jmp     loc_1402EC205
; ---------------------------------------------------------------------------

loc_1402EC562:                          ; CODE XREF: sub_1402EBF54+245↑j
                                        ; sub_1402EBF54+293↑j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      loc_1402EC25A
                jmp     loc_140461E0F
; ---------------------------------------------------------------------------

loc_1402EC574:                          ; CODE XREF: sub_1402EBF54+333↑j
                call    KiCheckForKernelApcDelivery
                jmp     loc_1402EC28D
sub_1402EBF54   endp

; ---------------------------------------------------------------------------
byte_1402EC57E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014006C3D8↑o
                                        ; .pdata:00000001400D2BAC↑o

; =============== S U B R O U T I N E =======================================


sub_1402EC584   proc near               ; CODE XREF: sub_1402EADFC+230↑p
                                        ; DATA XREF: .rdata:000000014006C404↑o ...

var_38          = qword ptr -38h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140461E28 SIZE 0000002D BYTES

                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                sub     rsp, 30h
                mov     rax, gs:188h
                mov     rdi, rcx
                sub     rdi, cs:qword_140C4CC20
                or      r13, 0FFFFFFFFFFFFFFFFh
                mov     rbp, gs:188h
                shr     rdi, 15h
                mov     r8, [rax+0B8h]
                mov     esi, edx
                mov     rbx, [r8+558h]
                add     [rbp+1E6h], r13w
                mov     rax, gs:188h
                mov     r14d, 338h
                xor     edx, edx
                mov     rcx, [rax+0B8h]
                mov     rcx, [rcx+558h]
                add     rcx, r14
                call    ExAcquirePushLockExclusiveEx
                mov     r8d, esi
                lea     rcx, [rbx+340h]
                mov     rdx, rdi
                call    RtlClearBitsEx
                cmp     rdi, [rbx+350h]
                jb      loc_1402EC7DF

loc_1402EC61C:                          ; CODE XREF: sub_1402EC584+262↓j
                sub     [rbx+368h], esi
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, r13
                mov     rsi, [rcx+558h]
                add     rsi, r14
                lock xadd [rsi], rax
                and     al, 6
                cmp     al, 2
                jz      loc_1402EC7EB

loc_1402EC64E:                          ; CODE XREF: sub_1402EC584+26F↓j
                and     [rsp+58h+arg_0], 0
                mov     rcx, rsi
                mov     rbx, gs:188h
                call    sub_140245330
                mov     r12d, 1
                cmp     eax, r12d
                jz      loc_1402EC7CC
                or      edx, 0FFFFFFFFh

loc_1402EC676:                          ; CODE XREF: sub_1402EC584+256↓j
                add     [rbx+1E6h], r13w
                add     [rbx+31Ah], r12b
                movsx   ecx, byte ptr [rbx+318h]
                mov     r9, rsi
                movsx   r8d, byte ptr [rbx+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                mov     r14b, [rbx+31Ah]
                or      r8d, ecx
                and     r9, r10
                xor     r8d, 3Fh

loc_1402EC6B2:                          ; CODE XREF: sub_1402EC584+159↓j
                                        ; sub_1402EC584+161↓j ...
                bsr     ecx, r8d
                mov     [rsp+58h+arg_8], ecx
                jz      loc_1402EC805
                lea     rdi, [rcx+rcx*2]
                mov     eax, r12d
                shl     rdi, 5
                add     rdi, [rbx+320h]
                shl     eax, cl
                not     eax
                and     r8d, eax
                test    [rdi+1Ah], r12b
                jz      short loc_1402EC6B2
                mov     eax, [rdi+20h]
                test    r12b, al
                jnz     short loc_1402EC6B2
                mov     rax, [rdi+20h]
                and     rax, r10
                cmp     rax, r9
                jnz     short loc_1402EC6B2
                cmp     [rdi+28h], edx
                jnz     short loc_1402EC6B2
                and     byte ptr [rdi+1Ah], 0FEh
                mov     rax, [rdi+20h]
                test    rax, rax
                jz      short loc_1402EC6B2
                test    rdi, rdi
                jz      loc_1402EC805
                mov     al, [rdi+20h]
                or      al, 2
                mov     [rdi+20h], al
                mov     rax, [rdi+20h]
                shr     rax, 3Fh
                test    al, al
                jnz     loc_1402EC7F8

loc_1402EC726:                          ; CODE XREF: sub_1402EC584+27C↓j
                mov     eax, [rdi+58h]
                and     eax, 1FFFFh
                mov     [rsp+58h+arg_0], eax
                and     dword ptr [rdi+58h], 0FFFE0000h
                and     byte ptr [rdi+19h], 0FEh
                mov     qword ptr [rdi+20h], 0
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rdi, [rbx+320h]
                imul    rdi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     r14b, r12b
                jnz     loc_140461E28
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_1402EC780:                          ; CODE XREF: sub_1402EC584+288↓j
                                        ; sub_1402EC584+1758B2↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+58h+arg_0]
                mov     rdx, rsi
                mov     rcx, rbx
                call    sub_1402456E0
                add     [rbx+1E6h], r12w
                jnz     short loc_1402EC7AC
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jnz     short loc_1402EC817

loc_1402EC7AC:                          ; CODE XREF: sub_1402EC584+21A↑j
                                        ; sub_1402EC584+298↓j
                mov     rcx, rbp
                call    sub_140245770
                mov     rbx, [rsp+58h+arg_10]
                mov     rbp, [rsp+58h+arg_18]
                add     rsp, 30h
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402EC7CC:                          ; CODE XREF: sub_1402EC584+E9↑j
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     edx, eax
                jmp     loc_1402EC676
; ---------------------------------------------------------------------------

loc_1402EC7DF:                          ; CODE XREF: sub_1402EC584+92↑j
                mov     [rbx+350h], rdi
                jmp     loc_1402EC61C
; ---------------------------------------------------------------------------

loc_1402EC7EB:                          ; CODE XREF: sub_1402EC584+C4↑j
                mov     rcx, rsi
                call    ExfTryToWakePushLock
                jmp     loc_1402EC64E
; ---------------------------------------------------------------------------

loc_1402EC7F8:                          ; CODE XREF: sub_1402EC584+19C↑j
                mov     rcx, rdi
                call    sub_14031EC80
                jmp     loc_1402EC726
; ---------------------------------------------------------------------------

loc_1402EC805:                          ; CODE XREF: sub_1402EC584+136↑j
                                        ; sub_1402EC584+184↑j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      loc_1402EC780
                jmp     loc_140461E3B
; ---------------------------------------------------------------------------

loc_1402EC817:                          ; CODE XREF: sub_1402EC584+226↑j
                call    KiCheckForKernelApcDelivery
                jmp     short loc_1402EC7AC
sub_1402EC584   endp

; ---------------------------------------------------------------------------
byte_1402EC81E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014006C404↑o
                                        ; .pdata:00000001400D2BB8↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1402EC824   proc near               ; CODE XREF: sub_14020F4F0+1A7↑p
                                        ; DATA XREF: .rdata:000000014006C438↑o ...

var_A0          = qword ptr -0A0h
var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_10          = byte ptr -10h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140461E56 SIZE 00000027 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                mov     [rsp-8+arg_18], rsi
                push    rbp
                push    rdi
                push    r14
                lea     rbp, [rsp-47h]
                sub     rsp, 0B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_20], rax
                xorps   xmm0, xmm0
                xor     esi, esi
                movups  [rbp+57h+var_50], xmm0
                xor     ebx, ebx
                mov     r14, rdx
                movups  [rbp+57h+var_40], xmm0
                mov     rdi, rcx
                movups  [rbp+57h+var_30], xmm0
                movups  [rbp+57h+var_90], xmm0
                movups  [rbp+57h+var_80], xmm0
                mov     rax, gs:188h
                cmp     byte ptr [rax+24Ah], 1
                jz      loc_1402EC946

loc_1402EC883:                          ; CODE XREF: sub_1402EC824+13B↓j
                mov     rcx, [rdi+19B8h]
                lea     r8, [rbp+57h+var_50]
                xor     edx, edx
                call    sub_1402D3C90
                mov     rcx, rdi
                mov     ebx, 2
                call    sub_1402EC96C
                mov     rsi, rax
                test    rax, rax
                jz      short loc_1402EC903
                movups  xmm0, xmmword ptr [r14]
                and     [rsp+0C0h+var_A0], 0
                lea     rdx, [rbp+57h+var_90]
                xor     r9d, r9d
                mov     qword ptr [rbp+57h+var_90], rdi
                movups  [rbp+57h+var_70], xmm0
                mov     r8d, 2000h
                lea     rcx, sub_1402EE130
                movups  xmm0, xmmword ptr [r14+10h]
                mov     ebx, 3
                mov     qword ptr [rbp+57h+var_90+8], r14
                mov     qword ptr [rbp+57h+var_80], rax
                movups  [rbp+57h+var_60], xmm0
                call    ntoskrnl_7
                test    eax, eax
                js      short loc_1402EC903
                cmp     dword ptr [rbp+57h+var_80+8], 0
                mov     ebx, 2
                jz      loc_140461E56
                mov     ebx, 6

loc_1402EC903:                          ; CODE XREF: sub_1402EC824+84↑j
                                        ; sub_1402EC824+C9↑j ...
                test    bl, 1
                jnz     loc_140461E6C

loc_1402EC90C:                          ; CODE XREF: sub_1402EC824+175654↓j
                test    bl, 2
                jz      short loc_1402EC91C
                xor     edx, edx
                lea     rcx, [rbp+57h+var_50]
                call    sub_14021E230

loc_1402EC91C:                          ; CODE XREF: sub_1402EC824+EB↑j
                shr     ebx, 2
                mov     eax, ebx
                mov     rcx, [rbp+57h+var_20]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0C0h+var_10]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402EC946:                          ; CODE XREF: sub_1402EC824+59↑j
                mov     rcx, gs:188h
                mov     rax, [rdi+19B8h]
                cmp     [rcx+0B8h], rax
                jnz     short loc_1402EC903
                jmp     loc_1402EC883
; } // starts at 1402EC824
sub_1402EC824   endp

; ---------------------------------------------------------------------------
byte_1402EC964  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014006C438↑o
                                        ; .pdata:00000001400D2BC4↑o

; =============== S U B R O U T I N E =======================================


sub_1402EC96C   proc near               ; CODE XREF: sub_1402EC824+79↑p
                                        ; sub_1402EDB40+40↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140461E7E SIZE 00000019 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                add     rcx, 0FD0h
                call    ExpInterlockedPopEntrySList
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1402EC99C

loc_1402EC98D:                          ; CODE XREF: sub_1402EC96C+F5↓j
                                        ; sub_1402EC96C+106↓j ...
                mov     rax, rbx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402EC99C:                          ; CODE XREF: sub_1402EC96C+1F↑j
                mov     ecx, [rdi+0FB8h]
                mov     r8d, 74536D73h
                add     ecx, 1C0h
                test    dword ptr [rdi+358h], 40000h
                lea     edx, [rcx+1000h]
                cmovz   edx, ecx
                mov     ecx, 200h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_140461E7E
                xor     edx, edx
                mov     rcx, rax
                lea     r8d, [rdx+50h]
                call    memset
                lea     rcx, [rbx+5Fh]
                and     rcx, 0FFFFFFFFFFFFFFF0h
                cmp     dword ptr [rdi+0FB8h], 0
                jnz     loc_140461E85

loc_1402EC9FA:                          ; CODE XREF: sub_1402EC96C+175526↓j
                add     rcx, 7
                mov     r8d, 8
                and     rcx, 0FFFFFFFFFFFFFFF8h
                mov     [rbx+18h], rcx
                lea     rax, [rcx+28h]
                lea     rdx, [rcx+0AFh]
                and     rdx, 0FFFFFFFFFFFFFFF8h
                mov     [rbx+20h], rdx
                and     qword ptr [rcx+8], 0
                and     qword ptr [rcx+10h], 0
                and     qword ptr [rcx+20h], 0
                and     dword ptr [rcx+18h], 0
                mov     [rcx], rax
                lea     rax, [rdx+28h]
                mov     [rcx+1Ch], r8d
                and     qword ptr [rdx+8], 0
                and     qword ptr [rdx+10h], 0
                and     qword ptr [rdx+20h], 0
                and     dword ptr [rdx+18h], 0
                mov     [rdx], rax
                mov     [rdx+1Ch], r8d
                test    dword ptr [rdi+358h], 40000h
                jz      loc_1402EC98D
                lea     rcx, [rdx+0A8h]
                mov     [rbx+30h], rcx
                jmp     loc_1402EC98D
sub_1402EC96C   endp

; ---------------------------------------------------------------------------
algn_1402ECA77:                         ; DATA XREF: .rdata:000000014006C458↑o
                                        ; .pdata:00000001400D2BD0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402ECA80   proc near               ; DATA XREF: .rdata:000000014006C484↑o
                                        ; .pdata:00000001400D2BDC↑o ...

var_58          = qword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_18          = byte ptr -18h

; FUNCTION CHUNK AT 0000000140461E98 SIZE 00000050 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 60h
                xorps   xmm0, xmm0
                mov     rdi, rcx
                mov     rcx, gs:188h
                mov     edx, 19h
                movups  xmmword ptr [rax-48h], xmm0
                movups  xmmword ptr [rax-38h], xmm0
                movups  xmmword ptr [rax-28h], xmm0
                call    KeSetActualBasePriorityThread
                mov     rax, gs:188h
                lea     r14, [rdi+8]
                or      dword ptr [rax+514h], 2
                jmp     short loc_1402ECB15
; ---------------------------------------------------------------------------

loc_1402ECAD3:                          ; CODE XREF: sub_1402ECA80+BA↓j
                lea     r8, [rdi+40h]
                mov     edx, esi
                mov     rcx, rdi
                call    sub_1402ECB60
                prefetchw byte ptr [rdi+38h]
                mov     eax, [rdi+38h]

loc_1402ECAE8:                          ; CODE XREF: sub_1402ECA80+72↓j
                mov     ecx, eax
                or      ecx, 1
                lock cmpxchg [rdi+38h], ecx
                jnz     short loc_1402ECAE8
                mov     ebx, eax
                test    al, 2
                jnz     loc_140461E98

loc_1402ECAFE:                          ; CODE XREF: sub_1402ECA80+175436↓j
                                        ; sub_1402ECA80+17544E↓j
                xor     r8d, r8d
                lea     rcx, [rdi+20h]
                xor     edx, edx
                call    KeSetEvent
                test    bl, 2
                jnz     loc_140461ED3

loc_1402ECB15:                          ; CODE XREF: sub_1402ECA80+51↑j
                                        ; sub_1402ECA80+175463↓j
                and     [rsp+78h+var_58], 0
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                mov     rcx, r14
                call    KeWaitForSingleObject
                mov     rcx, r14
                call    KeResetEvent
                movzx   esi, word ptr [rdi+3Ah]
                cmp     esi, 1
                jnz     short loc_1402ECAD3
                lea     r11, [rsp+78h+var_18]
                mov     rbx, [r11+20h]
                mov     rbp, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402ECA80   endp

algn_1402ECB57:                         ; DATA XREF: .rdata:000000014006C484↑o
                                        ; .pdata:00000001400D2BDC↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1402ECB60   proc near               ; CODE XREF: sub_1402ECA80+5C↑p
                                        ; sub_14059E3B4+B2↓p
                                        ; DATA XREF: ...

var_20          = dword ptr -20h
var_10          = qword ptr -10h
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_18          = qword ptr  48h

; FUNCTION CHUNK AT 0000000140461EE8 SIZE 0000011D BYTES

                mov     [rsp-28h+arg_0], rbx
                mov     [rsp-28h+arg_8], rsi
                push    rbp
                push    rdi
                push    r12
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 40h
                and     [rbp+arg_10], 0
                mov     rdi, r8
                and     [rbp+arg_18], 0
                mov     rsi, rcx
                sub     edx, 2
                jz      loc_1402ECC7F
                sub     edx, 1
                jz      loc_1402ECCAF
                sub     edx, 1
                jnz     loc_1402ECCD9
                mov     rax, [r8]
                xor     r9d, r9d
                mov     [rbp+arg_10], rax
                mov     rax, [r8+8]
                mov     [rbp+arg_18], rax
                mov     eax, [r8+14h]
                lea     edx, [r9+2]
                and     eax, 1
                mov     r8, rcx
                mov     rcx, [rcx+78h]
                mov     [rsp+40h+var_20], eax
                call    sub_1402ED4D8
                mov     r14, rax
                test    rax, rax
                jz      loc_140461F23
                mov     rax, gs:188h
                lea     rcx, [rbp+var_10]
                mov     edx, [rdi+10h]
                mov     [rbp+var_10], rax
                call    sub_1402ED9E0
                mov     rdx, [rbp+arg_18]
                xor     r9d, r9d
                mov     rcx, [rbp+arg_10]
                mov     r8, r14
                mov     r15d, eax
                call    sub_1402EDACC
                mov     ebx, eax
                cmp     eax, 0C00001ADh
                jz      loc_140461F2D

loc_1402ECC19:                          ; CODE XREF: sub_1402ECB60+1753D3↓j
                                        ; sub_1402ECB60+175428↓j ...
                cmp     r15d, [rdi+10h]
                jz      short loc_1402ECC2B
                mov     edx, r15d
                lea     rcx, [rbp+var_10]
                call    sub_1402ED9E0

loc_1402ECC2B:                          ; CODE XREF: sub_1402ECB60+BD↑j
                test    ebx, ebx
                js      loc_140461FA9
                mov     eax, [rdi+14h]
                mov     r9, r14
                mov     rcx, [rsi+78h]
                and     eax, 1
                mov     r8, rsi
                mov     [rsp+40h+var_20], eax
                mov     edx, 5
                call    sub_1402ED4D8
                mov     [rbp+arg_10], rax
                test    rax, rax
                jz      loc_140461F95
                mov     [rdi+18h], r14

loc_1402ECC62:                          ; CODE XREF: sub_1402ECB60+14D↓j
                                        ; sub_1402ECB60+164↓j ...
                xor     ebx, ebx

loc_1402ECC64:                          ; CODE XREF: sub_1402ECB60+193↓j
                                        ; sub_1402ECB60+175392↓j ...
                mov     rsi, [rsp+40h+arg_8]
                mov     [rdi+28h], ebx
                mov     rbx, [rsp+40h+arg_0]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402ECC7F:                          ; CODE XREF: sub_1402ECB60+2C↑j
                mov     rcx, [r8+8]
                mov     [rbp+arg_18], rcx
                call    sub_14071667C
                mov     [rbp+arg_10], rax
                mov     rcx, rax
                test    rax, rax
                jz      loc_140461F23
                mov     r9, [rsi+70h]
                test    r9, r9
                jnz     loc_140461FD2

loc_1402ECCA9:                          ; CODE XREF: sub_1402ECB60+175477↓j
                                        ; sub_1402ECB60+175494↓j
                mov     [rdi+18h], rcx
                jmp     short loc_1402ECC62
; ---------------------------------------------------------------------------

loc_1402ECCAF:                          ; CODE XREF: sub_1402ECB60+35↑j
                mov     rax, [r8+8]
                mov     rcx, [r8]
                mov     [rbp+arg_18], rax
                mov     eax, [r8+10h]
                mov     [rbp+arg_10], rcx
                test    al, 1
                jnz     short loc_1402ECC62
                call    sub_14071E2AC
                mov     rcx, [rsi+70h]
                test    rcx, rcx
                jz      short loc_1402ECC62
                jmp     loc_140461FC3
; ---------------------------------------------------------------------------

loc_1402ECCD9:                          ; CODE XREF: sub_1402ECB60+3E↑j
                sub     edx, 1
                jnz     loc_140461EE8
                mov     rax, [r8]
                xor     r8d, r8d
                mov     rdx, [rdi+8]
                call    sub_1404079D0
                mov     ebx, eax
                jmp     loc_1402ECC64
sub_1402ECB60   endp

; ---------------------------------------------------------------------------
algn_1402ECCF8:                         ; DATA XREF: .rdata:000000014006C4B0↑o
                                        ; .pdata:00000001400D2BE8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402ECD00   proc near               ; CODE XREF: sub_14035EC9C+2E↓p
                                        ; DATA XREF: .rdata:000000014006C4DC↑o ...

var_48          = qword ptr -48h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140462006 SIZE 000000A5 BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+8], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r14, [rsp+68h+arg_20]
                xor     r15d, r15d
                mov     [rax+18h], r15d
                mov     rbp, r8
                mov     [rax+20h], r15
                mov     r13, rdx
                mov     ebx, r15d
                test    r8b, 3
                jnz     loc_1402ECEC1

loc_1402ECD40:                          ; CODE XREF: sub_1402ECD00+1DB↓j
                mov     [r14+8], r15
                lea     rax, [rsp+68h+arg_10]
                mov     [r14], r9
                lea     r8, [rsp+68h+arg_20]
                mov     edi, [rbp+28h]
                lea     r9, [rsp+68h+arg_18]
                shr     edi, 0Ch
                lea     rcx, unk_140D239C0
                mov     [rsp+68h+arg_0], edi
                mov     r12, r14
                mov     dword ptr [rsp+68h+arg_20], edi
                mov     [rsp+68h+var_48], rax
                call    sub_1402ED040
                mov     r15, [rsp+68h+arg_18]
                mov     esi, eax
                test    eax, eax
                js      loc_1402ECE8E
                mov     esi, dword ptr [rsp+68h+arg_20]
                mov     [r14+8], rsi
                cmp     ebx, 2
                jnb     loc_140462006

loc_1402ECDAA:                          ; CODE XREF: sub_1402ECD00+17530E↓j
                mov     eax, cs:dword_140D240F0
                test    al, 10h
                jz      short loc_1402ECDD5
                mov     edx, edi
                xor     r8d, r8d
                mov     rcx, r14
                call    sub_1402ECF30
                and     eax, 1
                shl     eax, 3
                or      ebx, eax
                cmp     ebx, 8
                jb      loc_14046201E
                or      ebx, 4

loc_1402ECDD5:                          ; CODE XREF: sub_1402ECD00+B2↑j
                test    bl, 1
                jnz     loc_1402ECEE0

loc_1402ECDDE:                          ; CODE XREF: sub_1402ECD00+21A↓j
                mov     eax, cs:dword_140D240F0
                lea     rcx, unk_140D23FC0
                xor     r9d, r9d
                and     eax, 1
                mov     r8, r14
                mov     dword ptr [rsp+68h+var_48], eax
                lea     edx, [r9+1]
                call    sub_1402ED4D8
                mov     rdi, rax
                test    rax, rax
                jz      loc_140462028

loc_1402ECE0D:                          ; CODE XREF: sub_1402ECD00+1F2↓j
                                        ; sub_1402ECD00+211↓j
                test    [rsp+68h+arg_10], 1
                xorps   xmm0, xmm0
                mov     eax, [r13+0]
                movups  xmmword ptr [rdi], xmm0
                movups  xmmword ptr [rdi+10h], xmm0
                mov     dword ptr [rdi], 2
                mov     [rdi+18h], eax
                mov     [rdi+10h], rbp
                mov     [rdi+8], sil
                mov     [rdi+20h], r14
                jnz     loc_140462032

loc_1402ECE3E:                          ; CODE XREF: sub_1402ECD00+175337↓j
                test    bl, 1
                jnz     loc_1402ECF1F

loc_1402ECE47:                          ; CODE XREF: sub_1402ECD00+224↓j
                mov     r8d, [r15+1780h]
                lea     rdx, unk_140D239C0
                and     r8d, 3FFh
                mov     r9, rdi
                mov     rcx, r14
                call    sub_14020F010
                test    eax, eax
                js      loc_14046203C
                xor     edi, edi
                xor     r12d, r12d
                xor     r15d, r15d
                mov     ebx, 0FFFFFFFBh
                mov     esi, 103h

loc_1402ECE81:                          ; CODE XREF: sub_1402ECD00+175341↓j
                test    rdi, rdi
                jnz     loc_140462046

loc_1402ECE8A:                          ; CODE XREF: sub_1402ECD00+17532D↓j
                                        ; sub_1402ECD00+175359↓j
                mov     edi, [rsp+68h+arg_0]

loc_1402ECE8E:                          ; CODE XREF: sub_1402ECD00+90↑j
                                        ; sub_1402ECD00+175319↓j ...
                test    r15, r15
                jnz     loc_14046205E

loc_1402ECE97:                          ; CODE XREF: sub_1402ECD00+175381↓j
                test    bl, 4
                jnz     loc_140462086

loc_1402ECEA0:                          ; CODE XREF: sub_1402ECD00+175397↓j
                test    r12, r12
                jnz     loc_14046209C

loc_1402ECEA9:                          ; CODE XREF: sub_1402ECD00+1753A6↓j
                mov     rbx, [rsp+68h+arg_8]
                mov     eax, esi
                add     rsp, 30h
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

loc_1402ECEC1:                          ; CODE XREF: sub_1402ECD00+3A↑j
                mov     rax, rbp
                mov     ecx, ebp
                and     ecx, 1
                and     eax, 2
                mov     ebx, ecx
                and     rbp, 0FFFFFFFFFFFFFFFCh
                or      ebx, 2
                test    rax, rax
                cmovz   ebx, ecx
                jmp     loc_1402ECD40
; ---------------------------------------------------------------------------

loc_1402ECEE0:                          ; CODE XREF: sub_1402ECD00+D8↑j
                lea     rcx, word_140D23EA0
                call    ExpInterlockedPopEntrySList
                mov     rdi, rax
                test    rax, rax
                jnz     loc_1402ECE0D
                lea     edx, [rax+58h]
                mov     ecx, 200h
                mov     r8d, 61576D73h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jnz     loc_1402ECE0D
                and     ebx, 0FFFFFFFEh
                jmp     loc_1402ECDDE
; ---------------------------------------------------------------------------

loc_1402ECF1F:                          ; CODE XREF: sub_1402ECD00+141↑j
                bts     dword ptr [rdi+8], 1Ah
                jmp     loc_1402ECE47
sub_1402ECD00   endp

; ---------------------------------------------------------------------------
algn_1402ECF29:                         ; DATA XREF: .rdata:000000014006C4DC↑o
                                        ; .pdata:00000001400D2BF4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402ECF30   proc near               ; CODE XREF: sub_14020EE70+125↑p
                                        ; sub_1402ECD00+BC↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 00000001404620AC SIZE 00000052 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                xor     ebx, ebx
                mov     rdi, rdx
                mov     rsi, rcx
                test    r8d, r8d
                jz      short loc_1402ECFBF
                cmp     cs:qword_140D24178, rcx
                jz      loc_1404620AC
                mov     r9, gs:20h
                add     rdx, 30h ; '0'
                or      r10d, 0FFFFFFFFh
                movsxd  r8, dword ptr [r9+831Ch]
                cmp     r8d, r10d
                jz      short loc_1402ECFDC
                lea     rcx, [rdx+r8]
                mov     r11d, 100h
                cmp     rcx, r11
                ja      short loc_1402ECFD2

loc_1402ECF85:                          ; CODE XREF: sub_1402ECF30+175198↓j
                cmp     rdx, 80000h
                jnb     short loc_1402ECFD2
                lea     ecx, [r8+rdx]
                mov     eax, r8d
                lock cmpxchg [r9+831Ch], ecx
                movsxd  r8, eax
                jnz     loc_1404620B8

loc_1402ECFA7:                          ; CODE XREF: sub_1402ECF30+AF↓j
                                        ; sub_1402ECF30+BA↓j ...
                mov     ecx, 1

loc_1402ECFAC:                          ; CODE XREF: sub_1402ECF30+9B↓j
                                        ; sub_1402ECF30+1751C1↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, ecx
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402ECFBF:                          ; CODE XREF: sub_1402ECF30+1A↑j
                mov     rcx, rdi
                call    sub_1402ED014
                mov     ecx, eax
                test    eax, eax
                jnz     short loc_1402ECFAC
                jmp     loc_1404620D3
; ---------------------------------------------------------------------------

loc_1402ECFD2:                          ; CODE XREF: sub_1402ECF30+53↑j
                                        ; sub_1402ECF30+5C↑j ...
                mov     ecx, 0C0h
                cmp     r8d, ecx
                jg      short loc_1402ECFEC

loc_1402ECFDC:                          ; CODE XREF: sub_1402ECF30+44↑j
                                        ; sub_1402ECF30+BF↓j ...
                test    rdx, rdx
                jz      short loc_1402ECFA7
                lock xadd cs:qword_140C52800, rdx
                jmp     short loc_1402ECFA7
; ---------------------------------------------------------------------------

loc_1402ECFEC:                          ; CODE XREF: sub_1402ECF30+AA↑j
                cmp     r8d, r10d
                jz      short loc_1402ECFDC
                mov     eax, r8d
                lock cmpxchg [r9+831Ch], ecx
                jnz     short loc_1402ECFDC
                lea     eax, [r8-0C0h]
                movsxd  rcx, eax
                add     rdx, rcx
                jmp     short loc_1402ECFDC
sub_1402ECF30   endp

; ---------------------------------------------------------------------------
byte_1402ED00E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014006C500↑o
                                        ; .pdata:00000001400D2C00↑o

; =============== S U B R O U T I N E =======================================


sub_1402ED014   proc near               ; CODE XREF: sub_1402ECF30+92↑p
                                        ; sub_140305494+45D↓p
                                        ; DATA XREF: ...
                sub     rsp, 28h
                lea     rdx, [rcx+30h]
                xor     r8d, r8d
                lea     rcx, unk_140C50C00
                call    sub_1402D4174
                xor     ecx, ecx
                test    eax, eax
                setnz   cl
                mov     eax, ecx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402ED014   endp

algn_1402ED03A:                         ; DATA XREF: .pdata:00000001400D2C0C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402ED040   proc near               ; CODE XREF: sub_1402ECD00+7F↑p
                                        ; DATA XREF: .rdata:000000014006C52C↑o ...

var_28          = dword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404620FE SIZE 00000025 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+20h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 40h
                mov     eax, [r8]
                mov     r15, r9
                mov     [rsp+58h+var_28], eax
                lea     r9, [r11-20h]
                lea     rax, [r11+18h]
                mov     r14, r8
                xor     ebx, ebx
                mov     [r11-38h], rax
                lea     r8, [r11-28h]
                mov     [r11-20h], rbx
                mov     rdi, rcx
                mov     [rsp+58h+arg_10], ebx
                call    sub_1402ED0FC
                mov     esi, eax
                cmp     eax, 400h
                jz      short loc_1402ED0EC
                lea     ebp, [rbx+1]
                add     [rdi+74Ch], ebp
                cmp     [rsp+58h+var_20], rbx
                ja      loc_1404620FE

loc_1402ED0A4:                          ; CODE XREF: sub_1402ED040+1750D3↓j
                mov     edx, esi
                mov     rcx, rdi
                call    sub_14020F34C
                test    rax, rax
                jz      short loc_1402ED0EC
                mov     rdx, [rsp+58h+arg_20]
                mov     ecx, ebx
                cmp     [rsp+58h+arg_10], ebx
                mov     [r15], rax
                cmovnz  ecx, ebp
                mov     [rdx], ecx
                mov     ecx, [rsp+58h+var_28]
                mov     [r14], ecx

loc_1402ED0D0:                          ; CODE XREF: sub_1402ED040+B1↓j
                                        ; sub_1402ED040+1750DE↓j
                mov     rbp, [rsp+58h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+58h+arg_0]
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402ED0EC:                          ; CODE XREF: sub_1402ED040+4E↑j
                                        ; sub_1402ED040+71↑j
                mov     ebx, 0C0000225h
                jmp     short loc_1402ED0D0
sub_1402ED040   endp

; ---------------------------------------------------------------------------
byte_1402ED0F3  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014006C52C↑o
                                        ; .pdata:00000001400D2C18↑o

; =============== S U B R O U T I N E =======================================


sub_1402ED0FC   proc near               ; CODE XREF: sub_1402ED040+42↑p
                                        ; DATA XREF: .rdata:000000014006C558↑o ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140462124 SIZE 0000000E BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rax, gs:188h
                mov     r12, r9
                mov     r15d, [r8]
                mov     r14, r8
                mov     rbx, rdx
                mov     [rsp+48h+arg_0], r15d
                mov     rsi, rcx
                dec     word ptr [rax+1E6h]
                lea     rdi, [rcx+1B8h]
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockSharedEx
                mov     rbp, [rsp+48h+arg_20]
                lea     r8, [rsp+48h+arg_0]
                mov     r9, rbp
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_1402ED1E4
                xor     edx, edx
                mov     r8d, 400h
                mov     ebx, eax
                cmp     eax, r8d
                jz      short loc_1402ED192
                mov     ecx, [rsi+730h]
                test    cl, 4
                jnz     short loc_1402ED17E
                cmp     [rbp+0], edx
                jnz     short loc_1402ED1D6

loc_1402ED17E:                          ; CODE XREF: sub_1402ED0FC+7B↑j
                mov     eax, [rsp+48h+arg_0]
                cmp     eax, r15d
                jnz     loc_140462124

loc_1402ED18B:                          ; CODE XREF: sub_1402ED0FC+175031↓j
                mov     [r12], rdx
                mov     [r14], eax

loc_1402ED192:                          ; CODE XREF: sub_1402ED0FC+70↑j
                                        ; sub_1402ED0FC+DD↓j
                mov     eax, 11h
                lock cmpxchg [rdi], rdx
                jz      short loc_1402ED1A6
                mov     rcx, rdi
                call    ExfReleasePushLockShared

loc_1402ED1A6:                          ; CODE XREF: sub_1402ED0FC+A0↑j
                mov     rcx, rdi
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                mov     rbp, [rsp+48h+arg_10]
                mov     eax, ebx
                mov     rbx, [rsp+48h+arg_8]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402ED1D6:                          ; CODE XREF: sub_1402ED0FC+80↑j
                                        ; sub_1402ED0FC+17502B↓j
                mov     ebx, r8d
                jmp     short loc_1402ED192
sub_1402ED0FC   endp

; ---------------------------------------------------------------------------
byte_1402ED1DB  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014006C558↑o
                                        ; .pdata:00000001400D2C24↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=40h

sub_1402ED1E4   proc near               ; CODE XREF: sub_1402ED0FC+5E↑p
                                        ; DATA XREF: .rdata:000000014006C58C↑o ...

var_120         = dword ptr -120h
var_118         = qword ptr -118h
var_110         = xmmword ptr -110h
var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = dword ptr -0E8h
var_E4          = dword ptr -0E4h
var_E0          = qword ptr -0E0h
var_D8          = byte ptr -0D8h
var_50          = qword ptr -50h

; FUNCTION CHUNK AT 0000000140462132 SIZE 0000000A BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-8]
                sub     rsp, 108h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+40h+var_50], rax
                mov     ebx, [rdx]
                mov     r13, r8
                mov     rdi, rcx
                mov     [rsp+140h+var_118], r9
                xor     edx, edx
                lea     rcx, [rsp+140h+var_D8]
                mov     r8d, 80h
                call    memset
                xor     ecx, ecx
                mov     [rsp+140h+var_E0], 1
                lea     rax, [rsp+140h+var_D8]
                mov     [rsp+140h+var_F8], rcx
                mov     [rsp+140h+var_F0], rcx
                lea     r8, [rsp+140h+var_100]
                mov     [rsp+140h+var_100], rax
                mov     esi, ecx
                mov     eax, [r13+0]
                mov     r14d, ecx
                mov     [rsp+140h+var_E8], ecx
                mov     r12d, 400h
                lea     rcx, [rdi+1C0h]
                mov     [rsp+140h+var_120], eax
                mov     edx, ebx
                mov     [rsp+140h+var_E4], 8
                mov     r15d, r12d
                call    sub_14020E944
                mov     eax, [rsp+140h+var_E8]
                cmp     eax, 0FFFFFFFFh
                jz      loc_140462132
                test    eax, eax
                jz      loc_140462132
                dec     eax
                shl     rax, 4
                add     rax, [rsp+140h+var_100]

loc_1402ED29E:                          ; CODE XREF: sub_1402ED1E4+174F53↓j
                movups  xmm0, xmmword ptr [rax]
                mov     r10d, [rsp+140h+var_120]
                mov     r11d, 1
                movups  [rsp+140h+var_110], xmm0
                mov     r8, qword ptr [rsp+140h+var_110]
                psrldq  xmm0, 8
                movq    rdx, xmm0
                sub     rdx, 8

loc_1402ED2C4:                          ; CODE XREF: sub_1402ED1E4+14E↓j
                test    r8, r8
                jz      short loc_1402ED339
                mov     eax, [r8]
                add     rdx, 8
                movzx   eax, ax
                add     rax, 2
                lea     rax, [r8+rax*8]
                cmp     rdx, rax
                jnb     loc_1402ED370
                mov     rcx, rdx
                jmp     short loc_1402ED2F6
; ---------------------------------------------------------------------------

loc_1402ED2E9:                          ; CODE XREF: sub_1402ED1E4+193↓j
                                        ; sub_1402ED1E4+1A0↓j
                lea     rax, [rcx+10h]
                neg     rcx
                sbb     rcx, rcx
                and     rcx, rax

loc_1402ED2F6:                          ; CODE XREF: sub_1402ED1E4+103↑j
                test    rcx, rcx
                jz      short loc_1402ED339
                cmp     ebx, [rcx]
                jb      short loc_1402ED339
                test    [rcx+7], r11b
                jnz     short loc_1402ED339
                mov     r9b, [rcx+6]
                mov     al, r9b
                sub     al, r11b
                test    al, 0FDh
                jnz     short loc_1402ED339
                movzx   eax, word ptr [rcx+4]
                cmp     r9b, r11b
                cmovz   r14d, r11d
                test    esi, esi
                jz      short loc_1402ED334
                cmp     r15d, eax
                jnz     short loc_1402ED339

loc_1402ED327:                          ; CODE XREF: sub_1402ED1E4+153↓j
                add     esi, r11d
                cmp     esi, r10d
                jnb     short loc_1402ED339
                add     ebx, r11d
                jmp     short loc_1402ED2C4
; ---------------------------------------------------------------------------

loc_1402ED334:                          ; CODE XREF: sub_1402ED1E4+13C↑j
                mov     r15d, eax
                jmp     short loc_1402ED327
; ---------------------------------------------------------------------------

loc_1402ED339:                          ; CODE XREF: sub_1402ED1E4+E3↑j
                                        ; sub_1402ED1E4+115↑j ...
                test    esi, esi
                jz      short loc_1402ED34C
                mov     rax, [rsp+140h+var_118]
                mov     r12d, r15d
                mov     [r13+0], esi
                mov     [rax], r14d

loc_1402ED34C:                          ; CODE XREF: sub_1402ED1E4+157↑j
                mov     eax, r12d
                mov     rcx, [rbp+40h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 108h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_1402ED370:                          ; CODE XREF: sub_1402ED1E4+FA↑j
                mov     rcx, [r8+8]
                test    rcx, rcx
                jz      loc_1402ED2E9
                mov     r8, rcx
                lea     rdx, [rcx+10h]
                jmp     loc_1402ED2E9
; } // starts at 1402ED1E4
sub_1402ED1E4   endp

; ---------------------------------------------------------------------------
algn_1402ED389:                         ; DATA XREF: .rdata:000000014006C58C↑o
                                        ; .pdata:00000001400D2C30↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402ED390   proc near               ; CODE XREF: sub_140357058+14F↓p
                                        ; sub_140357058+12FF24↓p
                                        ; DATA XREF: ...

var_58          = dword ptr -58h
var_48          = xmmword ptr -48h
var_28          = byte ptr -28h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 000000014046213C SIZE 00000064 BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+20h], r9
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 50h
                xor     eax, eax
                mov     [r11+18h], r8d
                and     [r11+20h], eax
                lea     r9, [r11+20h]
                xorps   xmm0, xmm0
                lea     r8, [r11+18h]
                movups  [rsp+78h+var_48], xmm0
                mov     [r11-38h], rax
                mov     r14, rdx
                xor     edi, edi
                call    sub_1402ED5BC
                mov     ebp, eax
                cmp     eax, 400h
                jz      loc_1402ED4B1
                mov     edx, eax
                lea     rcx, unk_140D239C0
                and     edx, 3FFh
                call    sub_14020F388
                mov     r15d, cs:dword_140D240F0
                lea     rcx, unk_140D23F50
                and     r15d, 1
                xor     r9d, r9d
                xor     r8d, r8d
                mov     [rsp+78h+var_58], r15d
                mov     rsi, [rax]
                xor     edx, edx
                call    sub_1402ED4D8
                mov     r12d, [rsp+78h+arg_10]
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1402ED496
                and     [rax+8], rdi
                lea     rcx, unk_140D23F50
                and     [rax], rdi
                xor     r9d, r9d
                mov     [rsp+78h+var_58], r15d
                mov     r8, rax
                lea     r15d, [rdi+1]
                mov     edx, r15d
                call    sub_1402ED4D8
                mov     rdi, rax
                test    rax, rax
                jz      short loc_1402ED496
                and     dword ptr [rax+4], 0
                lea     rdx, unk_140D239C0
                and     qword ptr [rax+10h], 0
                mov     r9, rdi
                and     qword ptr [rax+18h], 0
                mov     r8d, ebp
                mov     [rax], r15d
                mov     rcx, rbx
                mov     eax, [r14]
                mov     [rdi+8], eax
                mov     [rdi+0Ch], r12d
                mov     [rdi+20h], rbx
                call    sub_14020F010
                test    eax, eax
                js      short loc_1402ED496
                xor     esi, esi
                xor     edi, edi
                xor     ebx, ebx

loc_1402ED496:                          ; CODE XREF: sub_1402ED390+99↑j
                                        ; sub_1402ED390+C6↑j ...
                test    rsi, rsi
                jnz     loc_14046213C

loc_1402ED49F:                          ; CODE XREF: sub_1402ED390+174DD9↓j
                test    rdi, rdi
                jnz     loc_14046216E

loc_1402ED4A8:                          ; CODE XREF: sub_1402ED390+174DF1↓j
                test    rbx, rbx
                jnz     loc_140462186

loc_1402ED4B1:                          ; CODE XREF: sub_1402ED390+4A↑j
                                        ; sub_1402ED390+174E0B↓j
                mov     eax, [rsp+78h+arg_18]
                lea     r11, [rsp+78h+var_28]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402ED390   endp

algn_1402ED4D2:                         ; DATA XREF: .rdata:000000014006C5B8↑o
                                        ; .pdata:00000001400D2C3C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1402ED4D8   proc near               ; CODE XREF: sub_14020F3B4+111↑p
                                        ; sub_1402ECB60+6C↑p ...

var_28          = dword ptr -28h
var_20          = dword ptr -20h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_20          = dword ptr  28h

; FUNCTION CHUNK AT 00000001404621A0 SIZE 00000042 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 30h
                movsxd  rdi, edx
                mov     rsi, r9
                mov     r14, r8
                mov     rbp, rcx
                cmp     edi, 5
                jge     short loc_1402ED558
                cmp     edi, 2
                jz      short loc_1402ED57F
                cmp     edi, 3
                jz      loc_1402ED58E
                cmp     edi, 4
                jz      loc_1404621A0
                movzx   edx, word ptr [rcx+rdi*2+58h]
                lea     eax, [rdi+30h]
                mov     [rsp+48h+arg_8], 30526D73h
                mov     ecx, 200h
                mov     byte ptr [rsp+48h+arg_8+3], al
                mov     r8d, [rsp+48h+arg_8]
                call    ExAllocatePoolWithTag

loc_1402ED535:                          ; CODE XREF: sub_1402ED4D8+A5↓j
                                        ; sub_1402ED4D8+B4↓j
                mov     rbx, rax

loc_1402ED538:                          ; CODE XREF: sub_1402ED4D8+D3↓j
                                        ; sub_1402ED4D8+D9↓j
                test    rbx, rbx
                jz      loc_1404621A2

loc_1402ED541:                          ; CODE XREF: sub_1402ED4D8+174CCF↓j
                                        ; sub_1402ED4D8+174CE8↓j ...
                mov     rbp, [rsp+48h+arg_10]
                mov     rax, rbx
                mov     rbx, [rsp+48h+arg_0]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1402ED558:                          ; CODE XREF: sub_1402ED4D8+21↑j
                test    byte ptr [r9+0Ah], 5
                jnz     short loc_1402ED5AD
                xor     r9d, r9d
                mov     [rsp+48h+var_20], 40000010h
                and     [rsp+48h+var_28], 0
                xor     edx, edx
                mov     rcx, rsi
                lea     r8d, [r9+1]
                call    MmMapLockedPagesSpecifyCache
                jmp     short loc_1402ED535
; ---------------------------------------------------------------------------

loc_1402ED57F:                          ; CODE XREF: sub_1402ED4D8+26↑j
                movzx   ecx, word ptr [rcx+5Ch]
                shl     rcx, 0Ch
                call    sub_1402EDA10
                jmp     short loc_1402ED535
; ---------------------------------------------------------------------------

loc_1402ED58E:                          ; CODE XREF: sub_1402ED4D8+2B↑j
                movzx   ecx, word ptr [rcx+5Eh]
                xor     r8d, r8d
                shl     rcx, 0Ch
                lea     edx, [r8+1]
                call    sub_1402EF11C
                neg     eax
                sbb     rbx, rbx
                and     rbx, 0FFFFFFFFFFFFFFF8h
                jmp     short loc_1402ED538
; ---------------------------------------------------------------------------

loc_1402ED5AD:                          ; CODE XREF: sub_1402ED4D8+85↑j
                mov     rbx, [r9+18h]
                jmp     short loc_1402ED538
sub_1402ED4D8   endp

; ---------------------------------------------------------------------------
byte_1402ED5B3  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014006C5E0↑o
                                        ; .pdata:00000001400D2C48↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1402ED5BC   proc near               ; CODE XREF: sub_1402ED390+3E↑p
                                        ; DATA XREF: .rdata:000000014006C614↑o ...

var_110         = qword ptr -110h
var_100         = dword ptr -100h
var_FC          = dword ptr -0FCh
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = dword ptr -0D8h
var_D4          = dword ptr -0D4h
var_D0          = qword ptr -0D0h
var_C8          = byte ptr -0C8h
var_40          = qword ptr -40h

; FUNCTION CHUNK AT 00000001404621E2 SIZE 0000002D BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 100h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_40], rax
                mov     rdi, r8
                lea     rcx, [rbp+57h+var_C8]
                mov     rbx, rdx
                mov     r8d, 80h
                xor     edx, edx
                mov     rsi, r9
                call    memset
                and     [rsp+130h+var_E8], 0
                lea     rax, [rbp+57h+var_C8]
                and     [rsp+130h+var_E0], 0
                or      r15, 0FFFFFFFFFFFFFFFFh
                and     [rbp+57h+var_D0], 0
                and     [rsp+130h+var_D8], 0
                mov     [rsp+130h+var_F0], rax
                mov     [rbp+57h+var_D4], 8
                mov     rax, gs:188h
                add     [rax+1E6h], r15w
                lea     r13, qword_140D23B78
                xor     edx, edx
                mov     rcx, r13
                call    ExAcquirePushLockExclusiveEx
                mov     edx, [rbx]
                lea     r8, [rsp+130h+var_F0]
                lea     rcx, unk_140D23B80
                call    sub_14020E944
                lea     rax, [rsp+130h+var_F0]
                mov     r9, rsi
                mov     r8, rdi
                mov     [rsp+130h+var_110], rax
                mov     rdx, rbx
                call    sub_1402ED864
                mov     r14d, eax
                mov     rcx, r15
                lock xadd cs:qword_140D23B78, rcx
                and     cl, 6
                cmp     cl, 2
                jz      loc_1402ED83D

loc_1402ED68D:                          ; CODE XREF: sub_1402ED5BC+289↓j
                and     [rsp+130h+var_FC], 0
                mov     rcx, r13
                mov     rbx, gs:188h
                call    sub_140245330
                mov     r15d, 1
                cmp     eax, r15d
                jz      loc_1402ED81B
                or      r8d, 0FFFFFFFFh

loc_1402ED6B6:                          ; CODE XREF: sub_1402ED5BC+26E↓j
                or      rax, 0FFFFFFFFFFFFFFFFh
                add     [rbx+1E6h], ax
                add     [rbx+31Ah], r15b
                movsx   ecx, byte ptr [rbx+318h]
                mov     r9, r13
                movsx   edx, byte ptr [rbx+366h]
                mov     r10, 7FFFFFFFFFFFFFFCh
                mov     sil, [rbx+31Ah]
                or      edx, ecx
                and     r9, r10
                xor     edx, 3Fh

loc_1402ED6F2:                          ; CODE XREF: sub_1402ED5BC+15F↓j
                                        ; sub_1402ED5BC+167↓j ...
                bsr     ecx, edx
                mov     [rsp+130h+var_100], ecx
                jz      loc_1402ED82F
                lea     rdi, [rcx+rcx*2]
                mov     eax, r15d
                shl     rdi, 5
                add     rdi, [rbx+320h]
                shl     eax, cl
                not     eax
                and     edx, eax
                test    [rdi+1Ah], r15b
                jz      short loc_1402ED6F2
                mov     eax, [rdi+20h]
                test    r15b, al
                jnz     short loc_1402ED6F2
                mov     rax, [rdi+20h]
                and     rax, r10
                cmp     rax, r9
                jnz     short loc_1402ED6F2
                cmp     [rdi+28h], r8d
                jnz     short loc_1402ED6F2
                and     byte ptr [rdi+1Ah], 0FEh
                mov     rax, [rdi+20h]
                test    rax, rax
                jz      short loc_1402ED6F2
                test    rdi, rdi
                jz      loc_1402ED82F
                mov     al, [rdi+20h]
                or      al, 2
                mov     [rdi+20h], al
                mov     rax, [rdi+20h]
                shr     rax, 3Fh
                test    al, al
                jnz     loc_1402ED84A

loc_1402ED765:                          ; CODE XREF: sub_1402ED5BC+296↓j
                mov     eax, [rdi+58h]
                and     eax, 1FFFFh
                mov     [rsp+130h+var_FC], eax
                and     dword ptr [rdi+58h], 0FFFE0000h
                and     byte ptr [rdi+19h], 0FEh
                mov     qword ptr [rdi+20h], 0
                mov     rax, 2AAAAAAAAAAAAAABh
                sub     rdi, [rbx+320h]
                imul    rdi
                sar     rdx, 4
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                cmp     sil, r15b
                jnz     loc_1404621E2
                movzx   eax, byte ptr [rbx+318h]
                bts     eax, edx
                mov     [rbx+318h], al

loc_1402ED7BF:                          ; CODE XREF: sub_1402ED5BC+27A↓j
                                        ; sub_1402ED5BC+174C34↓j
                dec     byte ptr [rbx+31Ah]
                lea     r8, [rsp+130h+var_FC]
                mov     rdx, r13
                mov     rcx, rbx
                call    sub_1402456E0
                add     [rbx+1E6h], r15w
                jnz     short loc_1402ED7EB
                lea     rax, [rbx+98h]
                cmp     [rax], rax
                jnz     short loc_1402ED857

loc_1402ED7EB:                          ; CODE XREF: sub_1402ED5BC+221↑j
                                        ; sub_1402ED5BC+2A0↓j
                mov     rcx, gs:188h
                call    sub_140245770
                mov     eax, r14d
                mov     rcx, [rbp+57h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 100h
                pop     r15
                pop     r14
                pop     r13
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402ED81B:                          ; CODE XREF: sub_1402ED5BC+F0↑j
                mov     rcx, [rbx+0B8h]
                call    sub_140245840
                mov     r8d, eax
                jmp     loc_1402ED6B6
; ---------------------------------------------------------------------------

loc_1402ED82F:                          ; CODE XREF: sub_1402ED5BC+13D↑j
                                        ; sub_1402ED5BC+18B↑j
                mov     eax, [rbx+78h]
                bt      eax, 10h
                jb      short loc_1402ED7BF
                jmp     loc_1404621F5
; ---------------------------------------------------------------------------

loc_1402ED83D:                          ; CODE XREF: sub_1402ED5BC+CB↑j
                mov     rcx, r13
                call    ExfTryToWakePushLock
                jmp     loc_1402ED68D
; ---------------------------------------------------------------------------

loc_1402ED84A:                          ; CODE XREF: sub_1402ED5BC+1A3↑j
                mov     rcx, rdi
                call    sub_14031EC80
                jmp     loc_1402ED765
; ---------------------------------------------------------------------------

loc_1402ED857:                          ; CODE XREF: sub_1402ED5BC+22D↑j
                call    KiCheckForKernelApcDelivery
                jmp     short loc_1402ED7EB
; } // starts at 1402ED5BC
sub_1402ED5BC   endp

; ---------------------------------------------------------------------------
byte_1402ED85E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014006C614↑o
                                        ; .pdata:00000001400D2C54↑o

; =============== S U B R O U T I N E =======================================


sub_1402ED864   proc near               ; CODE XREF: sub_1402ED5BC+B1↑p
                                        ; DATA XREF: .rdata:000000014006C640↑o ...

var_48          = xmmword ptr -48h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140462210 SIZE 0000005F BYTES

                mov     [rsp+arg_18], rbx
                mov     [rsp+arg_0], rcx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     ebx, [rdx]
                xor     ebp, ebp
                mov     rcx, [rsp+68h+arg_20]
                xor     esi, esi
                mov     [rsp+68h+arg_10], r9
                mov     r10d, 400h
                mov     r9d, [r8]
                mov     r15d, r10d
                lea     edi, [rbx-1]
                mov     [rsp+68h+arg_8], r8
                mov     eax, [rcx+18h]
                add     edi, r9d
                mov     dword ptr [rsp+68h+arg_0], r9d
                cmp     eax, 0FFFFFFFFh
                jz      loc_140462210
                test    eax, eax
                jz      loc_140462210
                dec     eax
                shl     rax, 4
                add     rax, [rcx]

loc_1402ED8CC:                          ; CODE XREF: sub_1402ED864+1749B0↓j
                movups  xmm0, xmmword ptr [rax]
                movups  [rsp+68h+var_48], xmm0
                mov     r12, qword ptr [rsp+68h+var_48]
                psrldq  xmm0, 8
                movq    r13, xmm0
                sub     r13, 8

loc_1402ED8E7:                          ; CODE XREF: sub_1402ED864+117↓j
                test    r12, r12
                jz      loc_140462219
                mov     eax, [r12]
                add     r13, 8
                movzx   eax, ax
                mov     r14, r13
                add     rax, 2
                lea     rax, [r12+rax*8]
                cmp     r13, rax
                jb      short loc_1402ED929
                mov     rcx, [r12+8]
                test    rcx, rcx
                jz      short loc_1402ED91C
                mov     r12, rcx
                lea     r13, [rcx+10h]

loc_1402ED91C:                          ; CODE XREF: sub_1402ED864+AF↑j
                lea     rax, [rcx+10h]
                neg     rcx
                sbb     r14, r14
                and     r14, rax

loc_1402ED929:                          ; CODE XREF: sub_1402ED864+A5↑j
                test    r14, r14
                jz      loc_14046221C
                mov     eax, [r14]
                cmp     ebx, eax
                jb      loc_14046224C
                test    byte ptr [r14+7], 1
                jnz     loc_14046224C

loc_1402ED948:                          ; CODE XREF: sub_1402ED864+1749E3↓j
                cmp     r15d, r10d
                jz      short loc_1402ED957
                movzx   eax, word ptr [r14+4]
                cmp     r15d, eax
                jnz     short loc_1402ED9AA

loc_1402ED957:                          ; CODE XREF: sub_1402ED864+E7↑j
                cmp     byte ptr [r14+6], 2
                jz      loc_140462254
                test    ebp, ebp
                jz      short loc_1402ED980
                cmp     r15d, r10d
                jz      short loc_1402ED9AA

loc_1402ED96B:                          ; CODE XREF: sub_1402ED864+142↓j
                mov     byte ptr [r14+6], 2

loc_1402ED970:                          ; CODE XREF: sub_1402ED864+1749DD↓j
                                        ; sub_1402ED864+1749F9↓j
                inc     ebp
                inc     esi
                cmp     ebp, r9d
                jz      short loc_1402ED9AA
                inc     ebx
                jmp     loc_1402ED8E7
; ---------------------------------------------------------------------------

loc_1402ED980:                          ; CODE XREF: sub_1402ED864+100↑j
                movzx   edx, word ptr [r14+4]
                lea     rcx, unk_140D239C0
                call    sub_14020F34C
                test    rax, rax
                jz      short loc_1402ED9A8
                movzx   r15d, word ptr [r14+4]
                mov     r10d, 400h
                mov     r9d, dword ptr [rsp+68h+arg_0]
                jmp     short loc_1402ED96B
; ---------------------------------------------------------------------------

loc_1402ED9A8:                          ; CODE XREF: sub_1402ED864+130↑j
                                        ; sub_1402ED864+1749CE↓j
                inc     esi

loc_1402ED9AA:                          ; CODE XREF: sub_1402ED864+F1↑j
                                        ; sub_1402ED864+105↑j ...
                mov     rax, [rsp+68h+arg_8]
                mov     rbx, [rsp+68h+arg_18]
                mov     [rax], ebp
                mov     rax, [rsp+68h+arg_10]
                mov     [rax], esi
                mov     eax, r15d
                add     rsp, 30h
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
sub_1402ED864   endp

algn_1402ED9D7:                         ; DATA XREF: .rdata:000000014006C640↑o
                                        ; .pdata:00000001400D2C60↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402ED9E0   proc near               ; CODE XREF: sub_14020F78C+75↑p
                                        ; sub_1402ECB60+91↑p ...

; FUNCTION CHUNK AT 0000000140462270 SIZE 00000011 BYTES

                sub     rsp, 28h
                mov     r8, [rcx]
                test    r8, r8
                jz      loc_140462270

loc_1402ED9F0:                          ; CODE XREF: sub_1402ED9E0+17489C↓j
                mov     rcx, r8
                call    sub_1402C4F00
                cmp     eax, edx
                jz      short loc_1402EDA04
                mov     rcx, r8
                call    sub_1402FA864

loc_1402EDA04:                          ; CODE XREF: sub_1402ED9E0+1A↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402ED9E0   endp

algn_1402EDA0A:                         ; DATA XREF: .rdata:000000014006C65C↑o
                                        ; .pdata:00000001400D2C6C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402EDA10   proc near               ; CODE XREF: sub_1402ED4D8+AF↑p
                                        ; sub_1403C8C64+1C8↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140462282 SIZE 00000027 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                xor     r15d, r15d
                xor     r8d, r8d
                mov     rsi, rcx
                mov     r14d, r15d
                lea     edx, [r15+3]
                call    sub_1402EF11C
                mov     ebp, eax
                test    eax, eax
                jz      short loc_1402EDAA7
                lea     rdi, [rsi+0FFFh]
                mov     ecx, 200h
                shr     rdi, 0Ch
                mov     r8d, 4C506D73h
                lea     rdx, ds:30h[rdi*8]
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1402EDA96
                add     di, 6
                mov     [rax], r15
                shl     di, 3
                mov     r14, rax
                mov     [rax+8], di
                mov     ebx, r15d
                mov     [rax+0Ah], r15w
                mov     ebp, r15d
                mov     [rax+20h], r15
                mov     [rax+2Ch], r15d
                mov     [rax+28h], esi

loc_1402EDA96:                          ; CODE XREF: sub_1402EDA10+5C↑j
                test    ebp, ebp
                jnz     loc_140462282

loc_1402EDA9E:                          ; CODE XREF: sub_1402EDA10+174884↓j
                test    rbx, rbx
                jnz     loc_140462299

loc_1402EDAA7:                          ; CODE XREF: sub_1402EDA10+31↑j
                                        ; sub_1402EDA10+174894↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rax, r14
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402EDA10   endp

byte_1402EDAC4  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014006C688↑o
                                        ; .pdata:00000001400D2C78↑o

; =============== S U B R O U T I N E =======================================


sub_1402EDACC   proc near               ; CODE XREF: sub_1402ECB60+A7↑p
                                        ; sub_1402ECB60+175408↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 00000001404622AA SIZE 00000015 BYTES

                push    rdi
                sub     rsp, 20h
                mov     r11d, ecx
                mov     [r8+28h], edx
                mov     eax, r11d
                lea     r10, [rdx+0FFFh]
                and     rcx, 0FFFFFFFFFFFFF000h
                and     eax, 0FFFh
                add     r10, rax
                mov     [r8+20h], rcx
                shr     r10, 0Ch
                xor     edi, edi
                add     r10w, 6
                mov     [r8], rdi
                shl     r10w, 3
                and     r11d, 0FFFh
                mov     edx, r9d
                mov     [r8+8], r10w
                mov     rcx, r8
                mov     [r8+0Ah], di
                mov     [r8+2Ch], r11d
                call    sub_1403485E0
                test    eax, eax
                js      loc_1404622AA
                mov     eax, edi

loc_1402EDB33:                          ; CODE XREF: sub_1402EDACC+1747E3↓j
                                        ; sub_1402EDACC+1747EE↓j
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402EDACC   endp

algn_1402EDB3A:                         ; DATA XREF: .rdata:000000014006C6A4↑o
                                        ; .pdata:00000001400D2C84↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402EDB40   proc near               ; DATA XREF: .rdata:000000014006C6D4↑o
                                        ; .pdata:00000001400D2C90↑o ...

var_48          = dword ptr -48h
var_40          = byte ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h

; FUNCTION CHUNK AT 00000001404622C0 SIZE 00000063 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 50h
                mov     r15, [rcx]
                mov     rdi, rcx
                mov     rcx, gs:188h
                mov     edx, 0Ch
                lea     rbp, [r15+1958h]
                call    KeSetActualBasePriorityThread
                mov     rcx, r15
                call    sub_1402EC96C
                mov     rdx, rax
                mov     r14, rax
                neg     rdx
                sbb     ebx, ebx
                not     ebx
                and     ebx, 0C000009Ah
                lea     rcx, [rdi+8]
                mov     [rdi+20h], ebx
                xor     r8d, r8d
                xor     edx, edx
                call    KeSetEvent
                test    ebx, ebx
                js      loc_1402EDCC8
                lea     rax, [rbp+20h]
                mov     [rsp+68h+var_28], rax
                lea     rax, [rbp+8]
                mov     [rsp+68h+var_20], rax

loc_1402EDBC3:                          ; CODE XREF: sub_1402EDB40+119↓j
                                        ; sub_1402EDB40+182↓j
                and     [rsp+68h+var_30], 0
                lea     rdx, [rsp+68h+var_28]
                and     [rsp+68h+var_38], 0
                xor     r9d, r9d
                mov     [rsp+68h+var_40], 0
                mov     byte ptr [rsp+68h+var_48], 0
                lea     r8d, [r9+1]
                lea     ecx, [r9+2]
                call    KeWaitForMultipleObjects
                test    eax, eax
                jnz     loc_1402EDCBF
                mov     rcx, [rsp+68h+var_28]
                call    KeResetEvent
                lea     rdi, [rbp+38h]

loc_1402EDC04:                          ; CODE XREF: sub_1402EDB40+173↓j
                lea     rcx, [rbp+48h]
                call    KeAcquireSpinLockRaiseToDpc
                mov     rdx, [rdi+8]
                movzx   ebx, al
                cmp     rdx, rdi
                jz      loc_1402EDCB8
                mov     rsi, [rdi]
                mov     rax, [rsi]
                and     rax, 0FFFFFFFFFFFFFFF8h
                mov     [rdi], rax
                cmp     rsi, rdx
                jnz     loc_1402EDCF8
                and     qword ptr [rdi], 0
                mov     [rdi+8], rdi

loc_1402EDC3B:                          ; CODE XREF: sub_1402EDB40+17A↓j
                                        ; sub_1402EDB40+1D2↓j
                lea     rcx, [rbp+48h]
                call    KeReleaseSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404622C0

loc_1402EDC52:                          ; CODE XREF: sub_1402EDB40+174782↓j
                                        ; sub_1402EDB40+17478E↓j ...
                mov     cr8, rbx
                test    rsi, rsi
                jz      loc_1402EDBC3
                xor     r9d, r9d
                mov     [rsp+68h+var_48], 1
                mov     r8, rbp
                lea     rcx, unk_140D24480
                lea     edx, [r9+3]
                call    sub_1402ED4D8
                mov     r8, r14
                mov     rdx, rsi
                mov     rcx, r15
                mov     rbx, rax
                call    sub_1402EE214
                mov     r8d, eax
                mov     rdx, rsi
                mov     rcx, r15
                call    sub_1402EE190
                mov     r9, rbx
                lea     rcx, unk_140D24480
                mov     r8, rbp
                mov     edx, 3
                call    sub_140210604
                jmp     loc_1402EDC04
; ---------------------------------------------------------------------------

loc_1402EDCB8:                          ; CODE XREF: sub_1402EDB40+D7↑j
                xor     esi, esi
                jmp     loc_1402EDC3B
; ---------------------------------------------------------------------------

loc_1402EDCBF:                          ; CODE XREF: sub_1402EDB40+B0↑j
                cmp     eax, 1
                jnz     loc_1402EDBC3

loc_1402EDCC8:                          ; CODE XREF: sub_1402EDB40+6B↑j
                test    r14, r14
                jz      short loc_1402EDCD8
                mov     rdx, r14
                mov     rcx, r15
                call    sub_1402EE1BC

loc_1402EDCD8:                          ; CODE XREF: sub_1402EDB40+18B↑j
                lea     r11, [rsp+68h+var_18]
                mov     rbx, [r11+20h]
                mov     rbp, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                align 8

loc_1402EDCF8:                          ; CODE XREF: sub_1402EDB40+ED↑j
                mov     rcx, [rdx]
                mov     rax, rcx
                and     ecx, 7
                shr     rax, 3
                dec     rax
                shl     rax, 3
                or      rax, rcx
                mov     [rdx], rax
                jmp     loc_1402EDC3B
sub_1402EDB40   endp

; ---------------------------------------------------------------------------
algn_1402EDD17:                         ; DATA XREF: .rdata:000000014006C6D4↑o
                                        ; .pdata:00000001400D2C90↑o
                align 20h
; Exported entry 1413. MmBuildMdlForNonPagedPool

; =============== S U B R O U T I N E =======================================


                public MmBuildMdlForNonPagedPool
MmBuildMdlForNonPagedPool proc near     ; CODE XREF: sub_1402108D4+E5↑p
                                        ; sub_14039422C:loc_1403942AC↓p ...

var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140462324 SIZE 00000223 BYTES

                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 78h
                mov     rsi, [rcx+20h]
                lea     r15, [rcx+30h]
                mov     edx, [rcx+2Ch]
                xor     ebx, ebx
                add     rdx, rsi
                mov     qword ptr [rcx+10h], 0
                shr     rsi, 9
                mov     r11, 7FFFFFFFF8h
                and     rsi, r11
                mov     [rcx+18h], rdx
                mov     r14, rcx
                mov     [rsp+0B8h+arg_10], rbx
                mov     rdi, 0FFFFFFFFFFFFFFFFh
                mov     rax, 0FFFFF68000000000h
                xor     ebp, ebp
                mov     rax, rax
                mov     ecx, [rcx+28h]
                and     edx, 0FFFh
                add     rcx, 0FFFh
                add     rsi, rax
                add     rcx, rdx
                xor     r12d, r12d
                shr     rcx, 0Ch
                mov     [rsp+0B8h+arg_0], r12d
                lea     r13, [rsi+rcx*8]
                mov     [rsp+0B8h+arg_18], r13
                cmp     rsi, r13
                jnb     loc_1402EDE3E
                mov     r10, 0FFFFFA8000000028h
                mov     r9d, 800h

loc_1402EDDC9:                          ; CODE XREF: MmBuildMdlForNonPagedPool+11C↓j
                mov     rdx, 0FFFFF6FB7DBED000h
                mov     rax, 0FFFFFFFFFh
                test    ebp, ebp
                jz      short loc_1402EDE56
                cmp     ebp, 2
                jge     loc_1402EDF34

loc_1402EDDEA:                          ; CODE XREF: MmBuildMdlForNonPagedPool+37C↓j
                mov     [r15], rdi
                movzx   r8d, word ptr [r14+0Ah]
                test    r9w, r8w
                jnz     short loc_1402EDE1C
                cmp     rdi, rax
                ja      loc_1402EE0B9
                lea     rcx, [rdi+rdi*2]
                add     rcx, rcx
                mov     rax, r10
                mov     rdx, [rax+rcx*8]
                shr     rdx, 32h
                and     edx, 1
                jz      loc_1402EE0B9

loc_1402EDE1C:                          ; CODE XREF: MmBuildMdlForNonPagedPool+D6↑j
                                        ; MmBuildMdlForNonPagedPool+3A2↓j
                add     r15, 8
                add     rsi, 8
                test    rsi, 0FFFh
                jz      loc_1402EE0B2
                cmp     ebp, 1
                jnz     short loc_1402EDE39
                inc     rdi

loc_1402EDE39:                          ; CODE XREF: MmBuildMdlForNonPagedPool+114↑j
                                        ; MmBuildMdlForNonPagedPool+394↓j
                cmp     rsi, r13
                jb      short loc_1402EDDC9

loc_1402EDE3E:                          ; CODE XREF: MmBuildMdlForNonPagedPool+93↑j
                or      word ptr [r14+0Ah], 4
                add     rsp, 78h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402EDE56:                          ; CODE XREF: MmBuildMdlForNonPagedPool+BF↑j
                mov     r12, rsi
                mov     r8, 0FFFFF68000000000h
                shl     r12, 19h
                mov     rax, r8
                shl     rax, 19h
                mov     r10d, 4
                sub     r12, rax
                mov     r9d, r10d
                sar     r12, 10h
                mov     rcx, r12
                shr     rcx, 9
                and     r11, rcx
                mov     rax, r8
                add     r11, rax
                mov     rbp, 7FFFFFFFF8h
                mov     rbx, r11
                mov     [rsp+0B8h+var_88], r11
                shr     rbx, 9
                and     rbx, rbp
                mov     rax, r8
                add     rbx, rax
                mov     rdi, rbx
                mov     [rsp+0B8h+var_80], rbx
                shr     rdi, 9
                and     rdi, rbp
                mov     rax, r8
                add     rdi, rax
                mov     rcx, rdi
                mov     [rsp+0B8h+var_78], rdi
                shr     rcx, 9
                and     rbp, rcx
                mov     rax, r8
                add     rbp, rax
                mov     [rsp+0B8h+var_70], rbp

loc_1402EDEDC:                          ; CODE XREF: MmBuildMdlForNonPagedPool+1E7↓j
                mov     r8, [rsp+r9*8+0B8h+var_90]
                dec     r9
                dec     r10d
                mov     rcx, [r8]
                mov     rax, rdx
                cmp     r8, rax
                jnb     loc_1402EDF99

loc_1402EDEF6:                          ; CODE XREF: MmBuildMdlForNonPagedPool+289↓j
                                        ; MmBuildMdlForNonPagedPool+17460E↓j ...
                test    cl, 1
                jz      short loc_1402EDF09
                test    cl, cl
                js      loc_1402EDFB4
                cmp     r9, 1
                jnz     short loc_1402EDEDC

loc_1402EDF09:                          ; CODE XREF: MmBuildMdlForNonPagedPool+1D9↑j
                                        ; MmBuildMdlForNonPagedPool+297↓j
                mov     rcx, rsi
                call    sub_1402805F0
                mov     rcx, r12
                mov     rbx, rax
                call    sub_140245330
                mov     [rsp+0B8h+arg_0], eax
                mov     r12d, eax
                cmp     eax, 5
                jz      loc_140462440
                mov     ebp, 2

loc_1402EDF34:                          ; CODE XREF: MmBuildMdlForNonPagedPool+C4↑j
                                        ; MmBuildMdlForNonPagedPool+174725↓j
                test    bl, 1
                jz      loc_14046252C
                cmp     ebp, 3
                jz      loc_14046244A

loc_1402EDF46:                          ; CODE XREF: MmBuildMdlForNonPagedPool+174733↓j
                mov     rcx, rsi
                call    sub_1402805F0
                mov     [rsp+0B8h+arg_10], rax
                mov     rdi, rax
                mov     rbx, rax
                test    al, 1
                jz      loc_140462511
                lea     rcx, [rsp+0B8h+arg_10]
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_140462458

loc_1402EDF79:                          ; CODE XREF: MmBuildMdlForNonPagedPool+174742↓j
                                        ; MmBuildMdlForNonPagedPool+1747B0↓j
                shr     rdi, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rdi, rax
                cmp     r12d, 0Ch
                jz      loc_1404624D5
                jmp     loc_1402EE082
; ---------------------------------------------------------------------------

loc_1402EDF99:                          ; CODE XREF: MmBuildMdlForNonPagedPool+1D0↑j
                mov     rax, 0FFFFF6FB7DBED7F8h
                mov     rax, rax
                cmp     r8, rax
                ja      loc_1402EDEF6
                jmp     loc_140462324
; ---------------------------------------------------------------------------

loc_1402EDFB4:                          ; CODE XREF: MmBuildMdlForNonPagedPool+1DD↑j
                test    r10d, r10d
                jz      loc_1402EDF09
                mov     [rsp+0B8h+var_50], rbp
                mov     ebp, 4
                mov     [rsp+0B8h+var_60], rbx
                mov     ebx, ebp
                mov     [rsp+0B8h+var_68], r11
                mov     [rsp+0B8h+var_58], rdi
                mov     r13, 0FFFFF6FB7DBED7F8h

loc_1402EDFE2:                          ; CODE XREF: MmBuildMdlForNonPagedPool+2EA↓j
                mov     r8, [rsp+rbx*8+0B8h+var_70]
                dec     rbx
                dec     ebp
                mov     rcx, [r8]
                mov     rax, rdx
                cmp     r8, rax
                jnb     loc_1402EE0A1

loc_1402EDFFB:                          ; CODE XREF: MmBuildMdlForNonPagedPool+387↓j
                                        ; MmBuildMdlForNonPagedPool+17469C↓j ...
                mov     [rsp+0B8h+arg_8], rcx
                test    rbx, rbx
                jz      short loc_1402EE00C
                test    cl, cl
                jns     short loc_1402EDFE2

loc_1402EE00C:                          ; CODE XREF: MmBuildMdlForNonPagedPool+2E6↑j
                lea     rcx, [rsp+0B8h+arg_8]
                call    sub_1402805F0
                mov     r13, [rsp+0B8h+arg_18]
                mov     rdi, rax
                shr     rdi, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rdi, rax
                test    rbx, rbx
                jz      short loc_1402EE06D
                shr     r12, 0Ch
                mov     ecx, 1
                test    ebp, ebp
                jz      short loc_1402EE06D

loc_1402EE047:                          ; CODE XREF: MmBuildMdlForNonPagedPool+341↓j
                mov     rax, r12
                shr     r12, 9
                and     eax, 1FFh
                imul    rax, rcx
                shl     rcx, 9
                add     rdi, rax
                sub     ebp, 1
                jnz     short loc_1402EE047
                mov     rax, 0FFFFFFFFFh

loc_1402EE06D:                          ; CODE XREF: MmBuildMdlForNonPagedPool+318↑j
                                        ; MmBuildMdlForNonPagedPool+325↑j
                mov     rbx, [rsp+0B8h+arg_10]
                mov     ebp, 1
                mov     r12d, [rsp+0B8h+arg_0]

loc_1402EE082:                          ; CODE XREF: MmBuildMdlForNonPagedPool+274↑j
                                        ; MmBuildMdlForNonPagedPool+1747EC↓j
                mov     r9d, 800h
                mov     r10, 0FFFFFA8000000028h
                mov     r11, 7FFFFFFFF8h
                jmp     loc_1402EDDEA
; ---------------------------------------------------------------------------

loc_1402EE0A1:                          ; CODE XREF: MmBuildMdlForNonPagedPool+2D5↑j
                mov     rax, r13
                cmp     r8, rax
                ja      loc_1402EDFFB
                jmp     loc_1404623B2
; ---------------------------------------------------------------------------

loc_1402EE0B2:                          ; CODE XREF: MmBuildMdlForNonPagedPool+10B↑j
                xor     ebp, ebp
                jmp     loc_1402EDE39
; ---------------------------------------------------------------------------

loc_1402EE0B9:                          ; CODE XREF: MmBuildMdlForNonPagedPool+DB↑j
                                        ; MmBuildMdlForNonPagedPool+F6↑j
                or      r8w, r9w
                mov     [r14+0Ah], r8w
                jmp     loc_1402EDE1C
MmBuildMdlForNonPagedPool endp

; ---------------------------------------------------------------------------
algn_1402EE0C7:                         ; DATA XREF: .rdata:000000014006C7A0↑o
                                        ; .pdata:00000001400D2C9C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402EE0D0   proc near               ; CODE XREF: sub_1402D3840+188D3E↓p
                                        ; sub_1402D3840+188D9D↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140462548 SIZE 00000067 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                call    sub_1402DAA00
                mov     rcx, rbx
                movzx   edi, al
                call    sub_14027B630
                mov     esi, eax
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rax
                mov     ecx, cs:dword_140CFC660
                test    ecx, ecx
                jnz     loc_140462548

loc_1402EE111:                          ; CODE XREF: sub_1402EE0D0+17447B↓j
                                        ; sub_1402EE0D0+174488↓j ...
                mov     cr8, rdi
                mov     rbx, [rsp+28h+arg_0]
                mov     eax, esi
                mov     rsi, [rsp+28h+arg_8]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402EE0D0   endp

algn_1402EE128:                         ; DATA XREF: .rdata:000000014006C7E0↑o
                                        ; .pdata:00000001400D2CA8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402EE130   proc near               ; DATA XREF: .pdata:00000001400D2CB4↑o
                                        ; sub_1402EC824+A5↑o

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                and     dword ptr [rcx+18h], 0
                mov     rbx, rcx
                mov     r8, [rcx+10h]
                mov     rdx, [rcx+8]
                mov     rcx, [rcx]
                call    sub_1402EE214
                mov     rdx, [rbx+10h]
                mov     edi, eax
                mov     rcx, [rbx]
                call    sub_1402EE1BC
                cmp     edi, 0C0000112h
                jz      short loc_1402EE17D
                mov     rdx, [rbx+8]
                mov     r8d, edi
                mov     rcx, [rbx]
                call    sub_1402EE190
                mov     dword ptr [rbx+18h], 1

loc_1402EE17D:                          ; CODE XREF: sub_1402EE130+35↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402EE130   endp

algn_1402EE189:                         ; DATA XREF: .pdata:00000001400D2CB4↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402EE190   proc near               ; CODE XREF: sub_1402EDB40+157↑p
                                        ; sub_1402EE130+41↑p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_10          = dword ptr  18h

; FUNCTION CHUNK AT 0000000140418DF2 SIZE 00000023 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_10], r8d
                mov     [rsp+arg_0], rcx
                sub     rsp, 28h

loc_1402EE19E:                          ; DATA XREF: .rdata:000000014006C830↑o
;   __try { // __except at loc_1402EE1B0
                lea     r9, [rsp+28h+arg_10]
                mov     r8, rdx
                mov     rdx, rcx
                call    sub_14020ECD0
                jmp     short $+2
;   } // starts at 1402EE19E
; ---------------------------------------------------------------------------

loc_1402EE1B0:                          ; CODE XREF: sub_1402EE190+1E↑j
                                        ; DATA XREF: .rdata:000000014006C830↑o
;   __except(loc_140418DF2) // owned by 1402EE19E
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1402EE190
sub_1402EE190   endp

byte_1402EE1B6  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2CC0↑o

; =============== S U B R O U T I N E =======================================


sub_1402EE1BC   proc near               ; CODE XREF: sub_1402EDB40+193↑p
                                        ; sub_1402EE130+2A↑p ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404625B0 SIZE 00000010 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     rbx, rcx
                mov     rdx, [rdx+18h]
                add     rcx, 50h ; 'P'
                call    sub_140212544
                mov     rdx, [rdi+20h]
                lea     rcx, [rbx+90h]
                call    sub_140212054
                lea     rcx, [rbx+0FD0h]
                cmp     word ptr [rcx], 10h
                jnb     loc_1404625B0
                mov     rdx, rdi
                call    ExpInterlockedPushEntrySList

loc_1402EE202:                          ; CODE XREF: sub_1402EE1BC+1743FF↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402EE1BC   endp

byte_1402EE20E  db 6 dup(0CCh)          ; DATA XREF: .rdata:000000014006C860↑o
                                        ; .pdata:00000001400D2CCC↑o

; =============== S U B R O U T I N E =======================================


sub_1402EE214   proc near               ; CODE XREF: sub_1402EDB40+149↑p
                                        ; sub_1402EE130+1C↑p
                                        ; DATA XREF: ...

var_58          = dword ptr -58h
var_54          = dword ptr -54h
var_50          = qword ptr -50h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140418E1B SIZE 0000002A BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 40h
                mov     rbx, r8
                mov     r13, rcx
                xor     r15d, r15d
                mov     [rax-58h], r15d
                lea     r14, [rcx+19C0h]
                mov     [rsp+78h+arg_18], r14
                lock inc dword ptr [r14]
                mov     rax, gs:188h
                or      r12d, 0FFFFFFFFh
                add     [rax+1E6h], r12w
                lea     rsi, [rcx+1788h]
                mov     [rsp+78h+var_50], rsi
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockSharedEx
                nop

loc_1402EE27E:                          ; DATA XREF: .rdata:000000014006C88C↑o
;   __try { // __except at loc_1402EE2C0
                mov     dword ptr [rbx+40h], 2
                mov     r8, [rsp+78h+arg_8]
                mov     rdx, rbx
                lea     rcx, [r13+50h]
                call    sub_1402EE384
                mov     ebx, eax
                mov     rax, [rsp+78h+arg_10]
                mov     edx, [rax+40h]
                mov     [rsp+78h+var_54], edx
                lea     rdx, [r13+1730h]
                lea     rcx, [r13+50h]
                call    sub_1402EE32C
                mov     [rsp+78h+var_58], ebx
                jmp     short loc_1402EE2D4
;   } // starts at 1402EE27E
; ---------------------------------------------------------------------------

loc_1402EE2C0:                          ; DATA XREF: .rdata:000000014006C88C↑o
;   __except(loc_140418E1B) // owned by 1402EE27E
                xor     r15d, r15d
                or      r12d, 0FFFFFFFFh
                mov     r14, [rsp+78h+arg_18]
                mov     rsi, [rsp+78h+var_50]

loc_1402EE2D4:                          ; CODE XREF: sub_1402EE214+AA↑j
                mov     eax, 11h
                lock cmpxchg [rsi], r15
                jz      short loc_1402EE2E8
                mov     rcx, rsi
                call    ExfReleasePushLockShared

loc_1402EE2E8:                          ; CODE XREF: sub_1402EE214+CA↑j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770
                lock add [r14], r12d
                mov     eax, [rsp+78h+var_58]
                mov     ecx, 0C000009Ah
                cmp     eax, 8000000Eh
                cmovz   eax, ecx
                add     rsp, 40h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1402EE214
sub_1402EE214   endp

byte_1402EE324  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2CD8↑o

; =============== S U B R O U T I N E =======================================


sub_1402EE32C   proc near               ; CODE XREF: sub_1402EE214+A1↑p
                                        ; sub_14020F26C+214A0D↓p ...
                push    rbx
                sub     rsp, 20h
                xor     r8d, r8d
                mov     r9, rcx
                lea     ebx, [r8+1]
                test    [rdx+0Ch], bl
                jz      short loc_1402EE34B

loc_1402EE341:                          ; CODE XREF: sub_1402EE32C+37↓j
                                        ; sub_1402EE32C+4E↓j
                mov     eax, r8d
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EE34B:                          ; CODE XREF: sub_1402EE32C+13↑j
                prefetchw byte ptr [rdx+0Ch]
                movzx   eax, word ptr [rdx+0Ch]

loc_1402EE353:                          ; CODE XREF: sub_1402EE32C+33↓j
                movzx   ecx, ax
                or      cx, bx
                lock cmpxchg [rdx+0Ch], cx
                jnz     short loc_1402EE353
                test    bl, al
                jnz     short loc_1402EE341
                mov     rcx, [r9+320h]
                mov     r8d, 2
                call    sub_14020F4F0
                mov     r8d, ebx
                jmp     short loc_1402EE341
sub_1402EE32C   endp

; ---------------------------------------------------------------------------
byte_1402EE37C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2CE4↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1402EE384   proc near               ; CODE XREF: sub_1402EE214+80↑p
                                        ; sub_1402102C0+213FA7↓p
                                        ; DATA XREF: ...

var_50          = qword ptr -50h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = xmmword ptr -30h
var_20          = qword ptr -20h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8

; FUNCTION CHUNK AT 00000001404625C0 SIZE 00000085 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_8], rax
                and     [rbp+var_40], 0
                lea     rax, [rbp+var_40]
                xorps   xmm0, xmm0
                mov     [rbp+var_38], rax
                mov     eax, [r8+8]
                mov     rbx, r8
                mov     byte ptr [r8+8], 0
                mov     r14, rdx
                cmp     qword ptr [rdx+30h], 0
                mov     r15, rcx
                movsd   xmm1, qword ptr [r8+18h]
                movups  [rbp+var_18], xmm0
                movzx   r12d, al
                movups  xmm0, xmmword ptr [r8+8]
                movsd   [rbp+var_20], xmm1
                movups  [rbp+var_30], xmm0
                jz      short loc_1402EE3FA
                mov     rcx, [r8+10h]
                call    MmAreMdlPagesCached
                test    eax, eax
                jz      loc_1404625C0

loc_1402EE3FA:                          ; CODE XREF: sub_1402EE384+63↑j
                                        ; sub_1402EE384+174241↓j
                lea     rax, [rbp+var_18]
                mov     [rsp+70h+var_50], rax
                lea     rsi, [rbp+var_18]
                jmp     short loc_1402EE43A
; ---------------------------------------------------------------------------

loc_1402EE409:                          ; CODE XREF: sub_1402EE384+CC↓j
                cmp     edi, 103h
                lea     rcx, [rsi+10h]
                cmovnz  rcx, rsi
                mov     rsi, rcx
                mov     ecx, dword ptr [rbp+var_30]
                lea     eax, [rcx+1]
                xor     eax, ecx
                movzx   eax, al
                xor     ecx, eax
                movzx   eax, cl
                mov     dword ptr [rbp+var_30], ecx
                cmp     eax, r12d
                jnb     short loc_1402EE457
                inc     dword ptr [rbp+var_20]
                mov     [rsp+70h+var_50], rsi

loc_1402EE43A:                          ; CODE XREF: sub_1402EE384+83↑j
                mov     r9, rbx
                lea     r8, [rbp+var_30]
                mov     rdx, r14
                mov     rcx, r15
                call    sub_1402EE49C
                mov     edi, eax
                test    eax, eax
                jns     short loc_1402EE409
                mov     ecx, dword ptr [rbp+var_30]
                jmp     short loc_1402EE459
; ---------------------------------------------------------------------------

loc_1402EE457:                          ; CODE XREF: sub_1402EE384+AC↑j
                xor     edi, edi

loc_1402EE459:                          ; CODE XREF: sub_1402EE384+D1↑j
                xor     ecx, [rbx+8]
                test    cl, cl
                jz      short loc_1402EE466
                mov     al, byte ptr [rbp+var_30]
                mov     [rbx+8], al

loc_1402EE466:                          ; CODE XREF: sub_1402EE384+DA↑j
                mov     r8, [rbp+var_38]
                lea     rax, [rbp+var_40]
                cmp     r8, rax
                jnz     loc_1404625CA

loc_1402EE477:                          ; CODE XREF: sub_1402EE384+1742BC↓j
                mov     eax, edi
                mov     rcx, [rbp+var_8]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 70h
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
; } // starts at 1402EE384
sub_1402EE384   endp

byte_1402EE495  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014006C934↑o
                                        ; .pdata:00000001400D2CF0↑o

; =============== S U B R O U T I N E =======================================


sub_1402EE49C   proc near               ; CODE XREF: sub_1402EE384+C3↑p
                                        ; sub_14059C7DC+5F↓p
                                        ; DATA XREF: ...

var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_58          = qword ptr -58h
var_50          = byte ptr -50h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140462646 SIZE 0000006D BYTES

                mov     rax, rsp
                mov     [rax+20h], r9
                mov     [rax+18h], r8
                mov     [rax+10h], rdx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 58h
                xor     ebp, ebp
                mov     r13d, r9d
                and     r13d, 2
                mov     [rax-58h], rbp
                or      r13d, 1
                mov     [rax-50h], rbp
                mov     [rsp+98h+arg_0], ebp
                mov     rsi, rcx
                mov     r15d, ebp
                mov     ebx, ebp
                test    r13b, 2
                jnz     loc_140462646
                lea     r9, [rax-58h]
                call    sub_1402EF5B0
                mov     edi, eax
                test    eax, eax
                js      loc_1402EE665
                mov     rdi, [rsp+98h+var_58]

loc_1402EE501:                          ; CODE XREF: sub_1402EE49C+1741AE↓j
                mov     r14d, [rdi]
                mov     ebp, [rsi+328h]
                mov     ecx, [rsi+32Ch]
                and     ebp, r14d
                shr     r14d, cl
                test    dword ptr [rsi+308h], 40000h
                jz      short loc_1402EE53D
                xor     r8d, r8d
                lea     rcx, [rsp+98h+var_50]
                xor     edx, edx
                call    sub_1402EE6C0
                mov     [rsp+98h+arg_0], eax
                mov     ebx, 1

loc_1402EE53D:                          ; CODE XREF: sub_1402EE49C+84↑j
                mov     ecx, [rdi]
                mov     r12, [rsp+98h+arg_20]
                mov     rax, [rsp+98h+arg_10]
                mov     [r12], ecx
                mov     ecx, 1000h
                mov     edx, [rdi+4]
                and     edx, 0FFFh
                cmova   ecx, edx
                mov     [r12+4], cx
                mov     ecx, 0FFh
                movzx   eax, word ptr [rax]
                and     ax, cx
                mov     [r12+6], ax
                cmp     [rsi+308h], r15b
                jnz     loc_14046264F
                mov     eax, [rdi+8]
                mov     [r12+8], eax

loc_1402EE590:                          ; CODE XREF: sub_1402EE49C+1741BE↓j
                                        ; sub_1402EE49C+1741D5↓j
                test    dword ptr [rsi+308h], 40000h
                jz      loc_140462676
                mov     eax, 8

loc_1402EE5A5:                          ; CODE XREF: sub_1402EE49C+1741E6↓j
                shl     ebp, 4
                cmp     eax, 8
                jnz     loc_14046269F
                mov     rcx, [rsi+320h]
                mov     r8d, ebp
                mov     edx, r14d
                mov     dword ptr [rsp+98h+var_78], 1
                call    sub_1402EEEBC
                mov     r15, rax
                cmp     rax, 3
                jbe     loc_140462687
                mov     rcx, rax

loc_1402EE5DB:                          ; CODE XREF: sub_1402EE49C+174212↓j
                mov     rdx, [rsp+98h+arg_8]
                mov     rax, [rsp+98h+arg_10]
                mov     r9, [rsp+98h+arg_18]
                mov     [rsp+98h+var_68], rdx
                mov     [rdx+38h], rax
                mov     rax, [rax+8]
                mov     rdx, [rdx+10h]
                mov     r8d, r13d
                or      r8, rcx
                mov     [rsp+98h+var_70], r12
                mov     rcx, rsi
                mov     [rsp+98h+var_78], rax
                call    sub_1402EF2C8
                xor     ebp, ebp
                mov     edi, eax
                test    eax, eax
                cmovns  edi, ebp
                test    r15, r15
                jz      short loc_1402EE64A
                mov     r9, [rsi+320h]
                test    byte ptr [r9+1785h], 4
                jz      short loc_1402EE679
                mov     edx, r14d
                mov     dword ptr [rsp+98h+var_70], ebp
                mov     rcx, r9
                call    sub_1402EED24

loc_1402EE64A:                          ; CODE XREF: sub_1402EE49C+18C↑j
                                        ; sub_1402EE49C+1FA↓j ...
                test    ebx, ebx
                jz      short loc_1402EE665
                mov     edx, [rsp+98h+arg_0]
                lea     rcx, [rsp+98h+var_50]
                mov     r8d, 1
                call    sub_1402EE6C0

loc_1402EE665:                          ; CODE XREF: sub_1402EE49C+5A↑j
                                        ; sub_1402EE49C+1B0↑j
                mov     eax, edi
                add     rsp, 58h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EE679:                          ; CODE XREF: sub_1402EE49C+19D↑j
                mov     rax, [r9+1848h]
                mov     rcx, [rax+r14*8]
                mov     r10, rcx
                and     rcx, 0FFFFFFFFFFFFFFFEh
                and     r10, 0FFFFFFFFFFFFFFF8h
                mov     [rax+r14*8], rcx
                test    cl, 3
                jnz     short loc_1402EE64A
                mov     r8, gs:188h
                lea     rcx, [r9+19D0h]
                mov     r9, r10
                mov     edx, 5
                call    sub_140210604
                jmp     short loc_1402EE64A
sub_1402EE49C   endp

; ---------------------------------------------------------------------------
algn_1402EE6B7:                         ; DATA XREF: .rdata:000000014006C960↑o
                                        ; .pdata:00000001400D2CFC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402EE6C0   proc near               ; CODE XREF: sub_1402EE49C+90↑p
                                        ; sub_1402EE49C+1C4↑p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                mov     rax, rcx
                xor     ebx, ebx
                mov     rcx, [rcx]
                test    rcx, rcx
                jnz     short loc_1402EE6DF
                mov     rcx, gs:188h
                mov     [rax], rcx

loc_1402EE6DF:                          ; CODE XREF: sub_1402EE6C0+11↑j
                test    r8d, r8d
                jnz     short loc_1402EE6F4
                call    sub_1402EEC3C
                mov     ebx, eax

loc_1402EE6EB:                          ; CODE XREF: sub_1402EE6C0+39↓j
                mov     eax, ebx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402EE6F4:                          ; CODE XREF: sub_1402EE6C0+22↑j
                call    sub_1402EEBD0
                jmp     short loc_1402EE6EB
sub_1402EE6C0   endp

; ---------------------------------------------------------------------------
byte_1402EE6FB  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2D08↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1402EE704   proc near               ; CODE XREF: sub_1406932DC+14F↓p
                                        ; DATA XREF: .rdata:000000014006CA60↑o ...

arg_0           = qword ptr  40h
arg_10          = qword ptr  50h
arg_18          = qword ptr  58h

; FUNCTION CHUNK AT 00000001404626B4 SIZE 000002A7 BYTES

                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 20h
                and     [rbp+arg_0], 0
                mov     r12, rdx
                and     [rbp+arg_18], 0
                mov     r14, rcx
                and     [rbp+arg_10], 0
                mov     esi, 2
                or      rbx, 0FFFFFFFFFFFFFFFFh

loc_1402EE734:                          ; CODE XREF: sub_1402EE704+174012↓j
                lea     rcx, dword_140C4C800
                call    ExAcquireSpinLockExclusive
                movzx   edi, al
                mov     rax, [r14+28h]
                test    rax, rax
                jz      short loc_1402EE754
                mov     r15, [rax]
                test    r15, r15
                jnz     short loc_1402EE784

loc_1402EE754:                          ; CODE XREF: sub_1402EE704+46↑j
                lea     rcx, dword_140C4C800
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404628FB

loc_1402EE76E:                          ; CODE XREF: sub_1402EE704+1F3↓j
                                        ; sub_1402EE704+174019↓j ...
                mov     cr8, rdi

loc_1402EE772:                          ; CODE XREF: sub_1402EE704+1741F2↓j
                xor     eax, eax

loc_1402EE774:                          ; CODE XREF: sub_1402EE704+1DE↓j
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402EE784:                          ; CODE XREF: sub_1402EE704+4E↑j
                lea     rsi, [r15+48h]
                mov     rcx, rsi
                call    ExTryAcquireSpinLockExclusiveAtDpcLevel
                lea     rcx, dword_140C4C800
                test    eax, eax
                jz      loc_1404626B4
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, [r15+38h]
                test    al, 3
                jnz     loc_1402EE8E7
                mov     r14, [r15+88h]
                test    r14, r14
                jz      loc_1402EE8E7
                lea     r9, [rbp+arg_0]
                mov     rcx, r14
                lea     r8, [rbp+arg_18]
                call    sub_1402DBC80
                test    eax, eax
                js      loc_1402EE8E7
                mov     rbx, [rbp+arg_0]
                mov     al, [rbx+22h]
                test    al, 20h
                jnz     loc_140462889
                and     al, 0C0h
                cmp     al, 40h ; '@'
                jnz     loc_140462889
                test    [rbx+23h], al
                jnz     loc_140462889
                mov     rcx, rbx
                call    sub_1402D9F7C
                test    eax, eax
                jnz     loc_140462889
                mov     rcx, r14
                call    sub_1402805F0
                mov     [rbp+arg_10], rax
                mov     rbx, rax
                test    al, 1
                jnz     loc_1402EE902
                mov     rax, cs:qword_140C4DDC0
                test    rax, rax
                jz      short loc_1402EE83C
                test    bl, 10h
                jnz     loc_1404627D7
                not     rax
                and     rbx, rax

loc_1402EE83C:                          ; CODE XREF: sub_1402EE704+127↑j
                                        ; sub_1402EE704+1740D7↓j
                mov     r14d, 1

loc_1402EE842:                          ; CODE XREF: sub_1402EE704+212↓j
                shr     rbx, 0Ch
                lea     rsi, [r12+r12*2]
                mov     rax, 0FFFFFFFFFh
                shl     rsi, 4
                and     rbx, rax
                mov     rax, 0FFFFFA8000000000h
                add     rsi, rax
                lock bts qword ptr [rsi+18h], 3Fh ; '?'
                jb      loc_1404627E0
                mov     r9d, 4
                xor     r8d, r8d
                mov     rdx, rbx
                mov     rcx, r12
                call    sub_14025B390
                lea     rcx, [r15+48h]
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                mov     r15d, 2
                test    eax, eax
                jnz     loc_140462846

loc_1402EE8A6:                          ; CODE XREF: sub_1402EE704+174144↓j
                                        ; sub_1402EE704+174153↓j ...
                mov     cr8, r15
                cmp     r14d, 1
                jnz     short loc_1402EE8B9
                mov     rcx, [rbp+arg_0]
                call    sub_1402EF8B0

loc_1402EE8B9:                          ; CODE XREF: sub_1402EE704+1AA↑j
                mov     rdx, 7FFFFFFFFFFFFFFFh
                lock and [rsi+18h], rdx
                mov     rcx, [rbp+arg_0]
                lock and [rcx+18h], rdx
                mov     rcx, [rbp+arg_18]
                mov     dl, dil
                call    sub_140297330
                mov     eax, 1
                jmp     loc_1402EE774
; ---------------------------------------------------------------------------

loc_1402EE8E7:                          ; CODE XREF: sub_1402EE704+A6↑j
                                        ; sub_1402EE704+B6↑j ...
                mov     rcx, rsi
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      loc_1402EE76E
                jmp     loc_14046271B
; ---------------------------------------------------------------------------

loc_1402EE902:                          ; CODE XREF: sub_1402EE704+117↑j
                lea     rcx, [rbp+arg_10]
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_140462747

loc_1402EE913:                          ; CODE XREF: sub_1402EE704+17404D↓j
                                        ; sub_1402EE704+17406A↓j ...
                xor     r14d, r14d
                jmp     loc_1402EE842
sub_1402EE704   endp

; ---------------------------------------------------------------------------
byte_1402EE91B  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014006CA60↑o
                                        ; .pdata:00000001400D2D14↑o

; =============== S U B R O U T I N E =======================================


sub_1402EE924   proc near               ; CODE XREF: sub_1406932DC+FB↓p
                                        ; DATA XREF: .rdata:000000014006CA84↑o ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014046295C SIZE 00000091 BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 40h
                and     dword ptr [rdx], 0
                lea     r8, [rax+8]
                mov     rbx, rdx
                mov     byte ptr [rax+8], 0
                mov     rsi, rcx
                xorps   xmm0, xmm0
                mov     rcx, [rcx+28h]
                mov     edx, 1
                movups  xmmword ptr [rax-18h], xmm0
                call    sub_1402D48D0
                mov     rcx, rax
                test    rax, rax
                jnz     short loc_1402EE973

loc_1402EE962:                          ; CODE XREF: sub_1402EE924+AC↓j
                                        ; sub_1402EE924+1740C4↓j
                mov     rbx, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EE973:                          ; CODE XREF: sub_1402EE924+3C↑j
                cmp     dword ptr [rax+5Ch], 0
                jnz     short loc_1402EE9D2
                mov     rax, [rax+70h]
                cmp     rax, 1
                ja      short loc_1402EE9D2

loc_1402EE983:                          ; CODE XREF: sub_1402EE924+B4↓j
                mov     edi, [rcx+58h]
                add     rcx, 48h ; 'H'
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14046295C

loc_1402EE99D:                          ; CODE XREF: sub_1402EE924+17403A↓j
                                        ; sub_1402EE924+174046↓j
                mov     bl, [rsp+48h+arg_0]

loc_1402EE9A1:                          ; CODE XREF: sub_1402EE924+174053↓j
                                        ; sub_1402EE924+17405B↓j ...
                movzx   eax, bl
                mov     cr8, rax
                mov     rcx, [rsi+28h]
                lea     rax, [rsp+48h+var_18]
                test    edi, edi
                jnz     loc_1404629C8
                mov     dword ptr [rsp+48h+var_20], 1
                xor     r8d, r8d
                xor     edx, edx
                mov     [rsp+48h+var_28], rax
                call    sub_1402D4688
                jmp     short loc_1402EE962
; ---------------------------------------------------------------------------

loc_1402EE9D2:                          ; CODE XREF: sub_1402EE924+53↑j
                                        ; sub_1402EE924+5D↑j
                mov     dword ptr [rbx], 1
                jmp     short loc_1402EE983
sub_1402EE924   endp

; ---------------------------------------------------------------------------
algn_1402EE9DA:                         ; DATA XREF: .rdata:000000014006CA84↑o
                                        ; .pdata:00000001400D2D20↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402EE9E0   proc near               ; CODE XREF: sub_1406932DC+3F6↓p
                                        ; sub_140757D1C+645↓p ...
                test    byte ptr [rcx+34h], 4
                setz    cl
                bt      cs:dword_140C50640, 1Fh
                setnb   al
                test    al, cl
                setz    al
                retn
sub_1402EE9E0   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1402EE9F9:                         ; DATA XREF: .pdata:00000001400D2D2C↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402EEA00   proc near               ; CODE XREF: sub_140692964+74↓p
                                        ; sub_140693F08+26E↓p ...
                mov     eax, 14Ch
                cmp     cx, ax
                jz      short loc_1402EEA14
                mov     eax, 8664h
                cmp     cx, ax
                jnz     short loc_1402EEA1B

loc_1402EEA14:                          ; CODE XREF: sub_1402EEA00+8↑j
                mov     eax, 1
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EEA1B:                          ; CODE XREF: sub_1402EEA00+12↑j
                xor     eax, eax
                retn
sub_1402EEA00   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_1402EEA1F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2D38↑o

; =============== S U B R O U T I N E =======================================


sub_1402EEA28   proc near               ; CODE XREF: sub_140657AB8+5F↓p
                                        ; sub_140694400+11E↓p
                                        ; DATA XREF: ...
                and     qword ptr [rdx+8], 0
                cmp     ecx, 1
                jz      short loc_1402EEA8D
                cmp     ecx, 2
                jz      short loc_1402EEAAC
                cmp     ecx, 3
                jz      short loc_1402EEA64
                lea     rax, qword_140C4C9D0
                mov     [rdx], rax
                mov     rax, 7FFFFFFF0000h
                mov     [r8], rax
                test    r9, r9
                jz      short locret_1402EEA62
                mov     rax, cs:qword_140C4C9E0

loc_1402EEA5F:                          ; CODE XREF: sub_1402EEA28+63↓j
                                        ; sub_1402EEA28+82↓j
                mov     [r9], rax

locret_1402EEA62:                       ; CODE XREF: sub_1402EEA28+2E↑j
                                        ; sub_1402EEA28+5A↓j ...
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402EEA64:                          ; CODE XREF: sub_1402EEA28+12↑j
                add     ecx, 0FFFFFFFDh
                lea     rax, unk_140C4CA08
                shl     rcx, 6
                add     rcx, rax
                mov     [rdx], rcx

loc_1402EEA78:                          ; CODE XREF: sub_1402EEA28+99↓j
                mov     qword ptr [r8], 78000000h
                test    r9, r9
                jz      short locret_1402EEA62
                mov     rax, cs:qword_140C4CA48
                jmp     short loc_1402EEA5F
; ---------------------------------------------------------------------------

loc_1402EEA8D:                          ; CODE XREF: sub_1402EEA28+8↑j
                mov     qword ptr [r8], 78000000h
                lea     rax, qword_140C4CA60
                mov     [rdx], rax
                test    r9, r9
                jz      short locret_1402EEA62
                mov     rax, cs:qword_140C4CA70
                jmp     short loc_1402EEA5F
; ---------------------------------------------------------------------------

loc_1402EEAAC:                          ; CODE XREF: sub_1402EEA28+D↑j
                lea     rax, unk_140C4CA08
                mov     [rdx], rax
                lea     rax, qword_140C4CA60
                mov     [rdx+8], rax
                jmp     short loc_1402EEA78
sub_1402EEA28   endp

; ---------------------------------------------------------------------------
byte_1402EEAC3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2D44↑o

; =============== S U B R O U T I N E =======================================


sub_1402EEACC   proc near               ; CODE XREF: sub_1402A4FB0+254↑p
                                        ; sub_140694940+CC↓p
                                        ; DATA XREF: ...

var_18          = dword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r14
                sub     rsp, 30h
                mov     esi, r8d
                mov     r14, rdx
                mov     rdi, rcx
                test    r8b, 4
                jz      short loc_1402EEB17
                cmp     qword ptr [rcx+20h], 0
                jz      short loc_1402EEB17

loc_1402EEAFB:                          ; CODE XREF: sub_1402EEACC+66↓j
                                        ; sub_1402EEACC+9C↓j
                mov     rbx, [rsp+38h+arg_0]
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                mov     rdi, [rsp+38h+arg_18]
                add     rsp, 30h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EEB17:                          ; CODE XREF: sub_1402EEACC+26↑j
                                        ; sub_1402EEACC+2D↑j
                mov     rbp, gs:188h
                mov     rcx, [rbp+0B8h]
                call    sub_140270D30
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1402EEAFB
                mov     r8d, esi
                mov     rdx, rax
                mov     rcx, rbp
                call    sub_1402EEB70
                test    eax, eax
                jz      short loc_1402EEB5C
                mov     r8, [rdi+18h]
                mov     r9, r14
                mov     rdx, rdi
                mov     [rsp+38h+var_18], esi
                mov     rcx, rbx
                call    sub_14026EFEC

loc_1402EEB5C:                          ; CODE XREF: sub_1402EEACC+78↑j
                lea     rcx, [rbx+168h]
                call    sub_14024C380
                jmp     short loc_1402EEAFB
sub_1402EEACC   endp

; ---------------------------------------------------------------------------
algn_1402EEB6A:                         ; DATA XREF: .pdata:00000001400D2D50↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402EEB70   proc near               ; CODE XREF: sub_14026FB10+1AF↑p
                                        ; PfFileInfoNotify+4B9↑p ...

; FUNCTION CHUNK AT 00000001404629EE SIZE 00000022 BYTES

                sub     rsp, 28h
                mov     r9b, [rcx+518h]
                mov     r10, rdx
                shr     r9b, 6
                mov     r11, rcx
                test    r8b, 2
                setz    al
                and     r9b, al
                test    r9b, 1
                jnz     short loc_1402EEBC6
                call    sub_1402C4F40
                cmp     eax, 2
                jl      short loc_1402EEBBE
                mov     rax, [r10+1B0h]
                xor     ecx, ecx
                test    rax, rax
                jnz     loc_1404629EE

loc_1402EEBB1:                          ; CODE XREF: sub_1402EEB70+173E9B↓j
                mov     ecx, 1

loc_1402EEBB6:                          ; CODE XREF: sub_1402EEB70+58↓j
                                        ; sub_1402EEB70+173E81↓j ...
                mov     eax, ecx
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402EEBBE:                          ; CODE XREF: sub_1402EEB70+2D↑j
                lock inc dword ptr [r10+150h]

loc_1402EEBC6:                          ; CODE XREF: sub_1402EEB70+23↑j
                xor     ecx, ecx
                jmp     short loc_1402EEBB6
sub_1402EEB70   endp

; ---------------------------------------------------------------------------
algn_1402EEBCA:                         ; DATA XREF: .rdata:000000014006CBF0↑o
                                        ; .pdata:00000001400D2D5C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402EEBD0   proc near               ; CODE XREF: sub_1402EE6C0:loc_1402EE6F4↑p
                                        ; sub_140692020+1F7↓p ...
                sub     rsp, 28h
                dec     word ptr [rcx+1E6h]
                mov     eax, [rcx+518h]
                and     eax, 0FFFFF1FFh
                cmp     edx, 0FFFFFFFFh
                jnz     short loc_1402EEC00
                btr     eax, 8

loc_1402EEBEF:                          ; CODE XREF: sub_1402EEBD0+35↓j
                mov     [rcx+518h], eax
                call    sub_140245770
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 20h

loc_1402EEC00:                          ; CODE XREF: sub_1402EEBD0+19↑j
                shl     edx, 9
                or      eax, edx
                jmp     short loc_1402EEBEF
sub_1402EEBD0   endp

; ---------------------------------------------------------------------------
algn_1402EEC07:                         ; DATA XREF: .pdata:00000001400D2D68↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402EEC10   proc near               ; CODE XREF: sub_140694E60+422↓p
                                        ; sub_1406955B0+232↓p
                                        ; DATA XREF: ...
                push    rbx
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rcx, [rcx+8]
                test    rcx, rcx
                jz      short loc_1402EEC2E
                xor     edx, edx
                call    ExFreePoolWithTag
                and     qword ptr [rbx+8], 0

loc_1402EEC2E:                          ; CODE XREF: sub_1402EEC10+10↑j
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402EEC10   endp

byte_1402EEC35  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2D74↑o

; =============== S U B R O U T I N E =======================================


sub_1402EEC3C   proc near               ; CODE XREF: sub_1402EE6C0+24↑p
                                        ; sub_140692020+1C8↓p ...
                push    rbx
                sub     rsp, 20h
                dec     word ptr [rcx+1E6h]
                movzx   r8d, byte ptr [rcx+519h]
                mov     eax, [rcx+518h]
                shl     edx, 9
                test    r8b, 1
                jnz     short loc_1402EEC7D
                or      ebx, 0FFFFFFFFh
                bts     eax, 8

loc_1402EEC67:                          ; CODE XREF: sub_1402EEC3C+4E↓j
                or      eax, edx
                mov     [rcx+518h], eax
                call    sub_140245770
                mov     eax, ebx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EEC7D:                          ; CODE XREF: sub_1402EEC3C+22↑j
                mov     ebx, r8d
                shr     ebx, 1
                and     ebx, 7
                and     eax, 0FFFFF1FFh
                jmp     short loc_1402EEC67
sub_1402EEC3C   endp

; ---------------------------------------------------------------------------
byte_1402EEC8C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2D80↑o

; =============== S U B R O U T I N E =======================================


sub_1402EEC94   proc near               ; CODE XREF: sub_1406932DC+469↓p
                                        ; DATA XREF: .rdata:000000014006CCFC↑o ...

arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_10          = dword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140462A10 SIZE 000000C0 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 20h
                mov     rdi, rdx
                mov     byte ptr [rax+10h], 0
                lea     rdx, [rax+10h]
                mov     r8d, 80000000h
                mov     rsi, rcx
                call    sub_1402D6810
                mov     r8d, 1000h
                xor     edx, edx
                sub     r8, rdi
                mov     rbx, rax
                lea     rcx, [rax+rdi]
                call    memset
                mov     r8d, 80000000h
                mov     dl, 2
                mov     rcx, rbx
                call    sub_1402432B0
                test    rdi, 1FFh
                jnz     loc_140462A10

loc_1402EECF1:                          ; CODE XREF: sub_1402EEC94+173DCB↓j
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140462A64

loc_1402EECFF:                          ; CODE XREF: sub_1402EEC94+173DD2↓j
                                        ; sub_1402EEC94+173DDE↓j
                mov     bl, [rsp+28h+arg_8]

loc_1402EED03:                          ; CODE XREF: sub_1402EEC94+173DEB↓j
                                        ; sub_1402EEC94+173DF3↓j ...
                movzx   eax, bl
                mov     cr8, rax
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402EEC94   endp

byte_1402EED1B  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014006CCFC↑o
                                        ; .pdata:00000001400D2D8C↑o

; =============== S U B R O U T I N E =======================================


sub_1402EED24   proc near               ; CODE XREF: sub_1402EE49C+1A9↑p
                                        ; sub_140332CBC+36↓p ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_28          = dword ptr  30h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rdi, [rcx+1848h]
                lea     rsi, [rcx+1788h]
                mov     ebp, [rsp+48h+arg_28]
                xor     r8d, r8d
                mov     r13d, [rcx+1840h]
                mov     rax, 7FFFFFFFFFFF0000h
                mov     ebx, edx
                mov     r14, rcx
                or      edx, 0FFFFFFFFh
                mov     r15d, r8d
                mov     r12, [rdi+rbx*8]
                and     r12, rax
                test    bpl, 8
                jz      short loc_1402EEDA2
                mov     rax, gs:188h
                lea     r15d, [r8+1]
                add     [rax+1E6h], dx
                xor     edx, edx
                mov     rcx, rsi
                call    ExAcquirePushLockSharedEx
                xor     r8d, r8d
                or      edx, 0FFFFFFFFh

loc_1402EEDA2:                          ; CODE XREF: sub_1402EED24+58↑j
                test    bpl, 4
                jz      short loc_1402EEDFF
                cmp     [rdi+rbx*8], r8
                jl      loc_1402EEE66
                shr     ebp, 4
                mov     r8, r12
                and     ebp, 7
                mov     rcx, r14
                mov     edx, ebp
                call    sub_14033352C
                mov     rdx, [r14+1950h]
                lea     rbx, [r14+18D8h]
                mov     r8, rbx
                mov     rdi, rax
                mov     rcx, [rax]
                call    sub_1403612AC
                mov     r9, [rdi]
                mov     r8, rbx
                mov     rcx, [r14+1950h]
                mov     edx, 2
                call    sub_140210604
                xor     ecx, ecx
                mov     [rdi], rcx
                jmp     short loc_1402EEE68
; ---------------------------------------------------------------------------

loc_1402EEDFF:                          ; CODE XREF: sub_1402EED24+82↑j
                test    bpl, 2
                jz      short loc_1402EEE11
                mov     eax, 7FFFh

loc_1402EEE0A:                          ; CODE XREF: sub_1402EED24+115↓j
                lock and [rdi+rbx*8], ax
                jmp     short loc_1402EEE66
; ---------------------------------------------------------------------------

loc_1402EEE11:                          ; CODE XREF: sub_1402EED24+DF↑j
                test    bpl, 1
                jnz     short loc_1402EEE66
                mov     ecx, 2000h
                test    [rdi+rbx*8], cx
                jz      short loc_1402EEE3B
                mov     rax, gs:188h
                cmp     rax, [r14+1958h]
                jnz     short loc_1402EEE3B
                mov     eax, 0FFFFDFFFh
                jmp     short loc_1402EEE0A
; ---------------------------------------------------------------------------

loc_1402EEE3B:                          ; CODE XREF: sub_1402EED24+FC↑j
                                        ; sub_1402EED24+10E↑j
                mov     eax, edx
                lock xadd [rdi+rbx*8], ax
                add     ax, dx
                mov     ecx, 1FFFh
                test    cx, ax
                jnz     short loc_1402EEE66
                cmp     [rdi+rbx*8], r8
                jl      short loc_1402EEE66
                mov     edx, 1
                mov     rcx, r13
                mov     r8d, edx
                call    sub_1402EF11C

loc_1402EEE66:                          ; CODE XREF: sub_1402EED24+88↑j
                                        ; sub_1402EED24+EB↑j ...
                xor     ecx, ecx

loc_1402EEE68:                          ; CODE XREF: sub_1402EED24+D9↑j
                test    r15d, r15d
                jz      short loc_1402EEE97
                mov     eax, 11h
                lock cmpxchg [rsi], rcx
                jz      short loc_1402EEE81
                mov     rcx, rsi
                call    ExfReleasePushLockShared

loc_1402EEE81:                          ; CODE XREF: sub_1402EED24+153↑j
                mov     rcx, rsi
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770

loc_1402EEE97:                          ; CODE XREF: sub_1402EED24+147↑j
                mov     rbx, [rsp+48h+arg_8]
                mov     rbp, [rsp+48h+arg_10]
                mov     rsi, [rsp+48h+arg_18]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402EED24   endp

byte_1402EEEB5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2D98↑o

; =============== S U B R O U T I N E =======================================


sub_1402EEEBC   proc near               ; CODE XREF: sub_1402EE49C+12A↑p
                                        ; sub_140332DD0+C5↓p ...

var_18          = dword ptr -18h
arg_20          = dword ptr  28h

                sub     rsp, 38h
                test    byte ptr [rcx+1785h], 4
                mov     eax, [rsp+38h+arg_20]
                mov     [rsp+38h+var_18], eax
                jz      short loc_1402EEEDC
                call    sub_1402EEEEC

loc_1402EEED6:                          ; CODE XREF: sub_1402EEEBC+25↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402EEEDC:                          ; CODE XREF: sub_1402EEEBC+13↑j
                call    sub_140599808
                jmp     short loc_1402EEED6
sub_1402EEEBC   endp

; ---------------------------------------------------------------------------
byte_1402EEEE3  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2DA4↑o

; =============== S U B R O U T I N E =======================================


sub_1402EEEEC   proc near               ; CODE XREF: sub_1402EEEBC+15↑p
                                        ; sub_140336A30+1F1↓p ...

var_48          = dword ptr -48h
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_20          = dword ptr  28h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], r8d
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     ebx, [rsp+68h+arg_20]
                mov     rbp, rcx
                xor     ecx, ecx
                mov     edi, edx
                mov     r13d, ecx
                mov     rsi, 7FFFFFFFFFFF0000h
                mov     rax, [rbp+1848h]
                lea     r9d, [rcx+1]
                lea     r14, [rax+rdi*8]
                test    bl, 40h
                jz      short loc_1402EEF69
                mov     rax, gs:188h
                mov     r13d, r9d
                dec     word ptr [rax+1E6h]
                lea     rcx, [rbp+1788h]
                xor     edx, edx
                call    ExAcquirePushLockSharedEx
                xor     ecx, ecx
                test    [r14], rsi
                jnz     short loc_1402EEF63
                mov     esi, ecx
                jmp     loc_1402EEFF1
; ---------------------------------------------------------------------------

loc_1402EEF63:                          ; CODE XREF: sub_1402EEEEC+6E↑j
                mov     r9d, 1

loc_1402EEF69:                          ; CODE XREF: sub_1402EEEEC+46↑j
                mov     r15, [r14]
                mov     r12d, [rbp+1840h]
                and     r15, rsi
                test    bl, 8
                jz      short loc_1402EEFB3
                movzx   eax, word ptr [r14]
                mov     rsi, rcx
                mov     ecx, 4000h
                test    cx, ax
                jz      short loc_1402EEF9A
                mov     ecx, 0BFFFh
                and     ax, cx
                mov     [r14], ax
                jmp     short loc_1402EEFEA
; ---------------------------------------------------------------------------

loc_1402EEF9A:                          ; CODE XREF: sub_1402EEEEC+9E↑j
                xor     r8d, r8d
                mov     rdx, r14
                mov     rcx, rbp
                call    sub_140331814
                xor     ecx, ecx
                test    eax, eax
                jnz     short loc_1402EEFEC
                lea     esi, [rcx+3]
                jmp     short loc_1402EEFEC
; ---------------------------------------------------------------------------

loc_1402EEFB3:                          ; CODE XREF: sub_1402EEEEC+8D↑j
                test    bl, 10h
                jz      short loc_1402EEFD1
                mov     r9, r15
                mov     [rsp+68h+var_48], ebx
                mov     r8, r14
                mov     edx, edi
                mov     rcx, rbp
                call    sub_140332FD8
                mov     rsi, rax
                jmp     short loc_1402EEFEA
; ---------------------------------------------------------------------------

loc_1402EEFD1:                          ; CODE XREF: sub_1402EEEEC+CA↑j
                test    bl, 4
                jz      short loc_1402EF03B
                mov     eax, 0FFFF8000h
                lock or [r14], ax

loc_1402EEFE0:                          ; CODE XREF: sub_1402EEEEC+157↓j
                                        ; sub_1402EEEEC+1E5↓j
                mov     esi, [rsp+68h+arg_10]
                add     rsi, r15

loc_1402EEFEA:                          ; CODE XREF: sub_1402EEEEC+AC↑j
                                        ; sub_1402EEEEC+E3↑j ...
                xor     ecx, ecx

loc_1402EEFEC:                          ; CODE XREF: sub_1402EEEEC+C0↑j
                                        ; sub_1402EEEEC+C5↑j
                test    r13d, r13d
                jz      short loc_1402EF022

loc_1402EEFF1:                          ; CODE XREF: sub_1402EEEEC+72↑j
                lea     rbx, [rbp+1788h]
                mov     eax, 11h
                lock cmpxchg [rbx], rcx
                jz      short loc_1402EF00C
                mov     rcx, rbx
                call    ExfReleasePushLockShared

loc_1402EF00C:                          ; CODE XREF: sub_1402EEEEC+116↑j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770

loc_1402EF022:                          ; CODE XREF: sub_1402EEEEC+103↑j
                mov     rbx, [rsp+68h+arg_8]
                mov     rax, rsi
                add     rsp, 30h
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

loc_1402EF03B:                          ; CODE XREF: sub_1402EEEEC+E8↑j
                mov     esi, 2
                test    sil, bl
                jnz     short loc_1402EEFE0
                movzx   edi, word ptr [r14]
                mov     r8d, 1FFFh
                movzx   eax, di
                and     ax, r8w
                cmp     ax, r8w
                jz      loc_1402EF109

loc_1402EF060:                          ; CODE XREF: sub_1402EEEEC+218↓j
                lea     ebx, [r9+rdi]
                mov     edx, ecx
                xor     bx, di
                and     bx, r8w
                xor     bx, di
                test    r8w, di
                jnz     short loc_1402EF0C5
                cmp     [r14], rcx
                jl      short loc_1402EF0C5
                xor     r8d, r8d
                mov     edx, r9d
                mov     rcx, r12
                call    sub_1402EF11C
                xor     ecx, ecx
                mov     edx, eax
                test    eax, eax
                jnz     short loc_1402EF0B9
                mov     rcx, gs:188h
                cmp     rcx, [rbp+1958h]
                jnz     loc_1402EEFEA
                mov     eax, 0E000h
                and     bx, ax
                mov     eax, 2000h
                or      bx, ax
                xor     ecx, ecx

loc_1402EF0B9:                          ; CODE XREF: sub_1402EEEEC+1A3↑j
                mov     r8d, 1FFFh
                mov     r9d, 1

loc_1402EF0C5:                          ; CODE XREF: sub_1402EEEEC+188↑j
                                        ; sub_1402EEEEC+18D↑j
                movzx   eax, di
                lock cmpxchg [r14], bx
                movzx   edi, ax
                jz      loc_1402EEFE0
                test    edx, edx
                jz      short loc_1402EF0F1
                mov     r8d, r9d
                mov     edx, r9d
                mov     rcx, r12
                call    sub_1402EF11C
                xor     ecx, ecx
                mov     r8d, 1FFFh

loc_1402EF0F1:                          ; CODE XREF: sub_1402EEEEC+1ED↑j
                movzx   eax, di
                and     ax, r8w
                cmp     ax, r8w
                jz      short loc_1402EF109
                mov     r9d, 1
                jmp     loc_1402EF060
; ---------------------------------------------------------------------------

loc_1402EF109:                          ; CODE XREF: sub_1402EEEEC+16E↑j
                                        ; sub_1402EEEEC+210↑j
                mov     esi, 1
                jmp     loc_1402EEFEA
sub_1402EEEEC   endp

; ---------------------------------------------------------------------------
byte_1402EF113  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2DB0↑o

; =============== S U B R O U T I N E =======================================


sub_1402EF11C   proc near               ; CODE XREF: sub_140210604+9F↑p
                                        ; sub_1402ED4D8+C5↑p ...
                push    rbx
                sub     rsp, 20h
                mov     eax, edx
                shr     rcx, 0Ch
                mov     ebx, 1
                and     eax, ebx
                mov     r9d, eax
                or      r9d, 2
                and     dl, 2
                cmovz   r9d, eax
                mov     edx, r9d
                test    r8d, r8d
                jnz     short loc_1402EF155
                call    sub_1402EF168
                mov     ebx, eax

loc_1402EF14C:                          ; CODE XREF: sub_1402EF11C+41↓j
                mov     eax, ebx
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EF155:                          ; CODE XREF: sub_1402EF11C+27↑j
                xor     r8d, r8d
                call    sub_1402EF1F8
                jmp     short loc_1402EF14C
sub_1402EF11C   endp

; ---------------------------------------------------------------------------
byte_1402EF15F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400D2DBC↑o

; =============== S U B R O U T I N E =======================================


sub_1402EF168   proc near               ; CODE XREF: sub_1402EF11C+29↑p
                                        ; DATA XREF: .rdata:000000014006CD60↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140462AD0 SIZE 00000013 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                xor     edi, edi
                mov     ebp, edx
                mov     rsi, rcx
                test    dl, 2
                jnz     short loc_1402EF1CA

loc_1402EF188:                          ; CODE XREF: sub_1402EF168+7D↓j
                mov     ebx, 1
                test    bl, bpl
                jz      short loc_1402EF1A8
                mov     r8d, ebx
                lea     rcx, unk_140C50C00
                mov     rdx, rsi
                call    sub_140232160
                test    eax, eax
                jz      short loc_1402EF1EB

loc_1402EF1A8:                          ; CODE XREF: sub_1402EF168+28↑j
                xor     edi, edi

loc_1402EF1AA:                          ; CODE XREF: sub_1402EF168+85↓j
                test    edi, edi
                jnz     loc_140462AD0

loc_1402EF1B2:                          ; CODE XREF: sub_1402EF168+81↓j
                                        ; sub_1402EF168+173976↓j
                mov     rbp, [rsp+28h+arg_8]
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402EF1CA:                          ; CODE XREF: sub_1402EF168+1E↑j
                xor     r8d, r8d
                lea     rcx, unk_140C50C00
                mov     rdx, rsi
                call    sub_1402D4174
                test    eax, eax
                jz      short loc_1402EF1E7
                mov     edi, 2
                jmp     short loc_1402EF188
; ---------------------------------------------------------------------------

loc_1402EF1E7:                          ; CODE XREF: sub_1402EF168+76↑j
                xor     ebx, ebx
                jmp     short loc_1402EF1B2
; ---------------------------------------------------------------------------

loc_1402EF1EB:                          ; CODE XREF: sub_1402EF168+3E↑j
                xor     ebx, ebx
                jmp     short loc_1402EF1AA
sub_1402EF168   endp

; ---------------------------------------------------------------------------
byte_1402EF1EF  db 9 dup(0CCh)          ; DATA XREF: .rdata:000000014006CD60↑o
                                        ; .pdata:00000001400D2DC8↑o

; =============== S U B R O U T I N E =======================================


sub_1402EF1F8   proc near               ; CODE XREF: sub_1402EF11C+3C↑p
                                        ; sub_1402EF168+173970↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140462AE4 SIZE 00000093 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     edi, edx
                mov     rdx, rcx
                test    dil, 2
                jnz     short loc_1402EF22B

loc_1402EF20D:                          ; CODE XREF: sub_1402EF1F8+81↓j
                                        ; sub_1402EF1F8+95↓j ...
                test    dil, 1
                jz      short loc_1402EF21F
                lea     rcx, unk_140C50C00
                call    sub_14026B700

loc_1402EF21F:                          ; CODE XREF: sub_1402EF1F8+19↑j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EF22B:                          ; CODE XREF: sub_1402EF1F8+13↑j
                test    r8d, r8d
                jnz     loc_140462AE4
                mov     rbx, gs:20h
                or      r10d, 0FFFFFFFFh
                mov     r8, rdx
                movsxd  r9, dword ptr [rbx+831Ch]
                cmp     r9d, r10d
                jz      short loc_1402EF28A
                add     rcx, r9
                mov     r11d, 100h
                cmp     rcx, r11
                ja      short loc_1402EF280

loc_1402EF25E:                          ; CODE XREF: sub_1402EF1F8+173974↓j
                cmp     rdx, 80000h
                jnb     short loc_1402EF280
                lea     ecx, [r9+rdx]
                mov     eax, r9d
                lock cmpxchg [rbx+831Ch], ecx
                movsxd  r9, eax
                jz      short loc_1402EF20D
                jmp     loc_140462B5C
; ---------------------------------------------------------------------------

loc_1402EF280:                          ; CODE XREF: sub_1402EF1F8+64↑j
                                        ; sub_1402EF1F8+6D↑j ...
                mov     ecx, 0C0h
                cmp     r9d, ecx
                jg      short loc_1402EF2A1

loc_1402EF28A:                          ; CODE XREF: sub_1402EF1F8+56↑j
                                        ; sub_1402EF1F8+AC↓j ...
                test    r8, r8
                jz      loc_1402EF20D
                lock xadd cs:qword_140C52800, r8
                jmp     loc_1402EF20D
; ---------------------------------------------------------------------------

loc_1402EF2A1:                          ; CODE XREF: sub_1402EF1F8+90↑j
                cmp     r9d, r10d
                jz      short loc_1402EF28A
                mov     eax, r9d
                lock cmpxchg [rbx+831Ch], ecx
                jnz     short loc_1402EF28A
                lea     eax, [r9-0C0h]
                movsxd  r8, eax
                add     r8, rdx
                jmp     short loc_1402EF28A
sub_1402EF1F8   endp

; ---------------------------------------------------------------------------
algn_1402EF2C2:                         ; DATA XREF: .rdata:000000014006CD80↑o
                                        ; .pdata:00000001400D2DD4↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1402EF2C8   proc near               ; CODE XREF: sub_1402EE49C+17B↑p
                                        ; sub_14059B3AC+C1↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 0000000140462B78 SIZE 0000000A BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 30h
                and     [rsp+48h+arg_18], 0
                mov     rax, r9
                neg     rax
                mov     rsi, r8
                mov     rbp, rdx
                mov     r14, rcx
                sbb     rdi, rdi
                and     rdi, r9
                neg     r9
                sbb     ebx, ebx
                and     ebx, 4
                cmp     ebx, 4
                jb      loc_140462B78
                mov     rcx, [rsp+48h+arg_20]
                lea     rdx, [rsp+48h+arg_18]
                call    sub_1402EF574
                mov     ecx, [rdi+8]
                mov     edx, ebx
                or      edx, 10h
                mov     r8, rax
                and     ecx, 8000000h
                cmovz   edx, ebx
                mov     ebx, edx

loc_1402EF32A:                          ; CODE XREF: sub_1402EF2C8+1738B5↓j
                test    r8, r8
                jz      short loc_1402EF381
                mov     rdx, [rsp+48h+arg_28]
                mov     rax, [rsp+48h+arg_30]
                mov     [rsp+48h+var_20], rax
                mov     [rsp+48h+var_28], rdx
                movzx   ecx, word ptr [rdx+6]
                mov     rdx, rbp
                shl     rcx, 0Ch
                add     rcx, r8
                mov     r8, rsi
                mov     r9, rcx
                or      r9, 1
                cmp     ebx, 10h
                cmovb   r9, rcx
                mov     rcx, r14
                call    sub_1402EF390

loc_1402EF36D:                          ; CODE XREF: sub_1402EF2C8+BE↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                add     rsp, 30h
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EF381:                          ; CODE XREF: sub_1402EF2C8+65↑j
                mov     eax, 0C000009Ah
                jmp     short loc_1402EF36D
sub_1402EF2C8   endp

; ---------------------------------------------------------------------------
algn_1402EF388:                         ; DATA XREF: .rdata:000000014006CDA8↑o
                                        ; .pdata:00000001400D2DE0↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402EF390   proc near               ; CODE XREF: sub_1402EF2C8+A0↑p
                                        ; DATA XREF: .rdata:000000014006CDDC↑o ...

var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_78          = dword ptr -78h
var_70          = dword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = qword ptr -50h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140462B82 SIZE 00000116 BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 78h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_50], rax
                mov     r12, [rsp+0B8h+arg_20]
                mov     rbp, r9
                mov     r9d, [rcx+338h]
                xor     eax, eax
                mov     r13, [rsp+0B8h+arg_28]
                xor     r10d, r10d
                mov     [rsp+0B8h+var_68], rdx
                mov     r14, rcx
                movzx   edx, word ptr [r12+4]
                mov     rbx, r8
                dec     edx
                mov     [rsp+0B8h+var_60], rax
                lea     rdi, [r9+r8]
                mov     [rsp+0B8h+var_58], eax
                mov     r8, [rcx+3F8h]
                mov     esi, r10d
                mov     [rsp+0B8h+var_78], r10d
                mov     r15, rbp
                mov     ecx, [r8+8]
                add     edx, ecx
                neg     ecx
                and     edx, ecx
                mov     [rsp+0B8h+var_70], edx
                test    bpl, 1
                jnz     loc_140462B82

loc_1402EF419:                          ; CODE XREF: sub_1402EF390+1737FA↓j
                mov     rcx, r8
                test    dil, 3
                jz      short loc_1402EF43E
                mov     eax, edi
                and     rbx, 0FFFFFFFFFFFFFFFCh
                and     rdi, 0FFFFFFFFFFFFFFFCh
                test    al, 2
                jnz     loc_140462B8F
                cmp     [r8+18h], r10d
                jnz     loc_140462B9B

loc_1402EF43E:                          ; CODE XREF: sub_1402EF390+90↑j
                                        ; sub_1402EF390+173832↓j
                cmp     [rcx+18h], r10d
                jnz     loc_140462BC7

loc_1402EF448:                          ; CODE XREF: sub_1402EF390+173875↓j
                test    dword ptr [r14+308h], 40000h
                jz      short loc_1402EF49F
                mov     rbx, [r14+320h]
                lea     rax, [r13+40h]
                add     rbx, 1788h
                test    rax, rax
                jz      loc_140462C31
                mov     eax, 11h
                lock cmpxchg [rbx], r10
                jz      short loc_1402EF484
                mov     rcx, rbx
                call    ExfReleasePushLockShared

loc_1402EF484:                          ; CODE XREF: sub_1402EF390+EA↑j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, gs:188h
                call    sub_140245770

loc_1402EF49A:                          ; CODE XREF: sub_1402EF390+1738BC↓j
                mov     esi, 2

loc_1402EF49F:                          ; CODE XREF: sub_1402EF390+C3↑j
                movzx   eax, word ptr [r12+4]
                mov     ebx, 1000h
                cmp     eax, ebx
                jnb     loc_1402EF55D
                mov     rcx, [rsp+0B8h+var_68]
                mov     r9, rdi
                mov     [rsp+0B8h+var_88], rcx
                mov     r8d, ebx
                lea     rcx, [rsp+0B8h+var_78]
                mov     rdx, r15
                mov     [rsp+0B8h+var_90], rcx
                movzx   ecx, word ptr [r14+3E0h]
                mov     dword ptr [rsp+0B8h+var_98], eax
                call    RtlDecompressBufferEx
                test    eax, eax
                js      loc_140462C5C
                cmp     [rsp+0B8h+var_78], ebx
                jnz     loc_140462C5C
                cmp     r15, rbp
                jnz     loc_140462C51

loc_1402EF4FB:                          ; CODE XREF: sub_1402EF390+1DB↓j
                xor     eax, eax
                mov     ebx, eax

loc_1402EF4FF:                          ; CODE XREF: sub_1402EF390+17389C↓j
                mov     r15d, eax

loc_1402EF502:                          ; CODE XREF: sub_1402EF390+1738DA↓j
                test    esi, esi
                jz      short loc_1402EF533
                mov     rax, gs:188h
                mov     rcx, [r14+320h]
                dec     word ptr [rax+1E6h]
                add     rcx, 1788h
                xor     edx, edx
                call    ExAcquirePushLockSharedEx
                mov     dword ptr [r13+40h], 2

loc_1402EF533:                          ; CODE XREF: sub_1402EF390+174↑j
                test    r15d, r15d
                jnz     loc_140462C6F

loc_1402EF53C:                          ; CODE XREF: sub_1402EF390+173903↓j
                mov     eax, ebx
                mov     rcx, [rsp+0B8h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 78h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EF55D:                          ; CODE XREF: sub_1402EF390+11C↑j
                mov     r8, rax
                mov     rdx, rdi

loc_1402EF563:                          ; CODE XREF: sub_1402EF390+173806↓j
                                        ; sub_1402EF390+1738C7↓j
                mov     rcx, rbp
                call    memmove
                jmp     short loc_1402EF4FB
; } // starts at 1402EF390
sub_1402EF390   endp

; ---------------------------------------------------------------------------
byte_1402EF56D  db 7 dup(0CCh)          ; DATA XREF: .rdata:000000014006CDDC↑o
                                        ; .pdata:00000001400D2DEC↑o

; =============== S U B R O U T I N E =======================================


sub_1402EF574   proc near               ; CODE XREF: sub_1402106B0+3F↑p
                                        ; sub_1402EF2C8+47↑p ...

var_18          = dword ptr -18h
var_10          = dword ptr -10h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140462C98 SIZE 00000021 BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 30h
                test    byte ptr [rcx+0Ah], 5
                mov     rdi, rdx
                mov     rbx, rcx
                jz      loc_140462C98
                mov     rax, [rcx+18h]

loc_1402EF592:                          ; CODE XREF: sub_1402EF574+173740↓j
                test    rax, rax
                jz      short loc_1402EF59C
                mov     ecx, [rbx+28h]
                mov     [rdi], ecx

loc_1402EF59C:                          ; CODE XREF: sub_1402EF574+21↑j
                mov     rbx, [rsp+38h+arg_0]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402EF574   endp

algn_1402EF5A8:                         ; DATA XREF: .rdata:000000014006CDFC↑o
                                        ; .pdata:00000001400D2DF8↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402EF5B0   proc near               ; CODE XREF: sub_1402EE49C+51↑p
                                        ; DATA XREF: .rdata:000000014006CE28↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140462CBA SIZE 00000014 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r14
                push    r15
                sub     rsp, 20h
                cmp     byte ptr [r8], 0
                mov     r15, r9
                mov     rbx, [rdx+18h]
                mov     r14, r8
                mov     rsi, rdx
                mov     rdi, rcx
                jz      short loc_1402EF646
                mov     rax, [rcx+320h]
                mov     r10d, [rax+1794h]
                cmp     [rdx+28h], r10d
                jnz     short loc_1402EF646
                mov     rdx, rbx
                call    sub_1402EF81C
                mov     rdx, rax
                cmp     rax, 0FFFFFFFFFFFFFFFFh
                jz      loc_140462CBA
                test    rax, rax
                jz      loc_140462CC4
                mov     eax, [r14+10h]
                cmp     [rdx], eax
                jnz     loc_140462CC4

loc_1402EF61D:                          ; CODE XREF: sub_1402EF5B0+D6↓j
                mov     rcx, rdi
                call    sub_1402EF6AC
                mov     [r15], rax
                xor     eax, eax

loc_1402EF62A:                          ; CODE XREF: sub_1402EF5B0+B4↓j
                                        ; sub_1402EF5B0+17370F↓j ...
                mov     rbx, [rsp+28h+arg_0]
                mov     rsi, [rsp+28h+arg_8]
                mov     rdi, [rsp+28h+arg_10]
                mov     r14, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r15
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402EF646:                          ; CODE XREF: sub_1402EF5B0+2D↑j
                                        ; sub_1402EF5B0+41↑j
                mov     eax, [rbx+20h]
                test    al, 1
                jz      short loc_1402EF697

loc_1402EF64D:                          ; CODE XREF: sub_1402EF5B0+F2↓j
                or      eax, 1
                mov     r8, rbx
                mov     [rbx+20h], eax
                mov     rcx, rdi
                mov     edx, [r14+10h]
                call    sub_1402123B0
                test    eax, eax
                js      short loc_1402EF62A
                mov     rax, [rdi+320h]
                mov     ecx, [rax+1794h]
                mov     [rsi+28h], ecx
                mov     eax, [rbx+18h]
                cmp     eax, 0FFFFFFFFh
                jnz     short loc_1402EF688

loc_1402EF67E:                          ; CODE XREF: sub_1402EF5B0+DA↓j
                lea     rax, [rbx+8]

loc_1402EF682:                          ; CODE XREF: sub_1402EF5B0+E5↓j
                mov     rdx, [rax+8]
                jmp     short loc_1402EF61D
; ---------------------------------------------------------------------------

loc_1402EF688:                          ; CODE XREF: sub_1402EF5B0+CC↑j
                test    eax, eax
                jz      short loc_1402EF67E
                dec     eax
                shl     rax, 4
                add     rax, [rbx]
                jmp     short loc_1402EF682
; ---------------------------------------------------------------------------

loc_1402EF697:                          ; CODE XREF: sub_1402EF5B0+9B↑j
                mov     rdx, rbx
                call    sub_140212544
                mov     eax, [rbx+20h]
                jmp     short loc_1402EF64D
sub_1402EF5B0   endp

; ---------------------------------------------------------------------------
byte_1402EF6A4  db 8 dup(0CCh)          ; DATA XREF: .rdata:000000014006CE28↑o
                                        ; .pdata:00000001400D2E04↑o

; =============== S U B R O U T I N E =======================================


sub_1402EF6AC   proc near               ; CODE XREF: sub_1402EF5B0+70↑p
                                        ; sub_14059B714+EC↓p ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                mov     r9d, [rdx+4]
                mov     r10, rcx
                mov     r11d, [rcx+1C8h]
                mov     r8d, r9d
                mov     ecx, r11d
                mov     edx, 1
                shr     r8d, cl
                mov     ebx, [r10+1CCh]
                mov     eax, ebx
                mov     edi, [r10+1D0h]
                and     eax, r9d
                mov     esi, [r10+1D8h]
                bsr     ecx, r8d
                imul    eax, edi
                shl     edx, cl
                xor     rdx, r8
                add     rdx, rdx
                mov     rcx, [r10+rcx*8+0C0h]
                mov     r8, [rcx+rdx*8]
                add     r8, rax

loc_1402EF70F:                          ; CODE XREF: sub_1402EF6AC+BA↓j
                and     [rsp+arg_0], 0
                add     r8, rsi
                cmp     dword ptr [r8], 0FFFFFFFFh
                jz      short loc_1402EF731
                mov     rbx, [rsp+arg_8]
                mov     rax, r8
                mov     rsi, [rsp+arg_10]
                mov     rdi, [rsp+arg_18]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402EF731:                          ; CODE XREF: sub_1402EF6AC+6F↑j
                mov     r9d, [r8+4]
                mov     ecx, r11d
                mov     edx, r9d
                mov     r8d, 1
                shr     edx, cl
                bsr     ecx, edx
                shl     r8d, cl
                xor     r8, rdx
                add     r8, r8
                mov     rdx, [r10+rcx*8+0C0h]
                mov     ecx, ebx
                and     ecx, r9d
                imul    ecx, edi
                mov     r8, [rdx+r8*8]
                add     r8, rcx
                jmp     short loc_1402EF70F
sub_1402EF6AC   endp

; ---------------------------------------------------------------------------
algn_1402EF768:                         ; DATA XREF: .pdata:00000001400D2E10↑o
                align 10h
; Exported entry 2063. RtlDecompressBufferEx

; =============== S U B R O U T I N E =======================================


