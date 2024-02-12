EtwWriteString  proc near               ; DATA XREF: .pdata:00000001400F93FC↑o

var_E0          = qword ptr -0E0h
var_D8          = word ptr -0D8h
var_D0          = word ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = word ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_5C          = dword ptr -5Ch
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = xmmword ptr -38h
var_28          = qword ptr -28h
var_20          = byte ptr -20h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_20          = qword ptr  30h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                mov     [rsp-8+arg_10], rsi
                push    rbp
                push    rdi
                push    r12
                push    r14
                push    r15
                lea     rbp, [rsp-2Fh]
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+4Fh+var_28], rax
                xor     r12d, r12d
                xorps   xmm0, xmm0
                mov     rax, rcx
                mov     [rbp+4Fh+var_70], r12
                neg     rax
                mov     r15, r9
                mov     rdi, r8
                mov     sil, dl
                sbb     rbx, rbx
                mov     r9d, r12d
                movups  [rbp+4Fh+var_48], xmm0
                movups  [rbp+4Fh+var_38], xmm0
                and     rbx, rcx
                jnz     short loc_1405A5BE2
                mov     eax, 0C0000008h
                jmp     loc_1405A5EAD
; ---------------------------------------------------------------------------

loc_1405A5BE2:                          ; CODE XREF: EtwWriteString+56↑j
                mov     rax, [rbx+68h]
                movups  [rbp+4Fh+var_58], xmm0
                mov     byte ptr [rbp+4Fh+var_58+4], sil
                mov     qword ptr [rbp+4Fh+var_58+8], rdi
                lea     rcx, [rax+1Ch]
                neg     rax
                sbb     r14, r14
                and     r14, rcx
                mov     rcx, [rbp+4Fh+arg_20]
                mov     [rbp+4Fh+var_68], rcx
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_1405A5C0B:                          ; CODE XREF: EtwWriteString+93↓j
                inc     rax
                cmp     [rcx+rax*2], r12w
                jnz     short loc_1405A5C0B
                mov     r10b, [rbx+64h]
                lea     eax, ds:2[rax*2]
                mov     [rbp+4Fh+var_60], eax
                mov     [rbp+4Fh+var_5C], r12d
                test    r10b, r10b
                jz      loc_1405A5CB3
                mov     r11, [rbx+20h]
                lea     rcx, [r11+60h]
                call    sub_140252AD0
                test    al, al
                jz      short loc_1405A5CB3
                lea     rax, [rbp+4Fh+var_70]
                xor     r8d, r8d
                mov     [rsp+100h+var_80], rax
                mov     dl, r10b
                movzx   eax, word ptr [rbx+62h]
                mov     rcx, r11
                mov     [rsp+100h+var_88], r14
                mov     [rsp+100h+var_90], ax
                lea     rax, [rbp+4Fh+var_48]
                mov     [rsp+100h+var_98], r12
                mov     [rsp+100h+var_A0], rax
                lea     rax, [rbp+4Fh+var_68]
                mov     [rsp+100h+var_A8], r12
                mov     [rsp+100h+var_B0], rax
                mov     eax, 4
                mov     [rsp+100h+var_B8], 1
                mov     [rsp+100h+var_C0], r12
                mov     [rsp+100h+var_C8], r15
                mov     [rsp+100h+var_D0], r12w
                mov     [rsp+100h+var_D8], ax
                lea     rax, [rbp+4Fh+var_58]
                mov     [rsp+100h+var_E0], rax
                call    sub_14024F4C0
                mov     r9d, eax

loc_1405A5CB3:                          ; CODE XREF: EtwWriteString+AA↑j
                                        ; EtwWriteString+BF↑j
                mov     r10b, [rbx+65h]
                test    r10b, r10b
                jz      loc_1405A5D4D
                mov     r11, [rbx+28h]
                mov     r8, rdi
                mov     dl, sil
                lea     rcx, [r11+60h]
                call    sub_140252AD0
                test    al, al
                jz      short loc_1405A5D4D
                mov     rcx, [rbx+20h]
                lea     rax, [rbp+4Fh+var_70]
                mov     [rsp+100h+var_80], rax
                xor     r9d, r9d
                movzx   eax, word ptr [rbx+62h]
                xor     r8d, r8d
                mov     [rsp+100h+var_88], r14
                mov     dl, r10b
                mov     [rsp+100h+var_90], ax
                lea     rax, [rbp+4Fh+var_48]
                mov     [rsp+100h+var_98], r11
                mov     [rsp+100h+var_A0], rax
                lea     rax, [rbp+4Fh+var_68]
                mov     [rsp+100h+var_A8], r12
                mov     [rsp+100h+var_B0], rax
                mov     eax, 4
                mov     [rsp+100h+var_B8], 1
                mov     [rsp+100h+var_C0], r12
                mov     [rsp+100h+var_C8], r15
                mov     [rsp+100h+var_D0], r12w
                mov     [rsp+100h+var_D8], ax
                lea     rax, [rbp+4Fh+var_58]
                mov     [rsp+100h+var_E0], rax
                call    sub_14024F4C0
                mov     r9d, eax

loc_1405A5D4D:                          ; CODE XREF: EtwWriteString+13A↑j
                                        ; EtwWriteString+155↑j
                mov     rax, [rbx+20h]
                cmp     [rax+190h], r12
                jz      loc_1405A5EAA
                mov     r10b, [rbx+66h]
                xorps   xmm0, xmm0
                movups  [rbp+4Fh+var_48], xmm0
                movups  [rbp+4Fh+var_38], xmm0
                test    r10b, r10b
                jz      loc_1405A5E05
                mov     r11, [rax+190h]
                mov     r8, rdi
                mov     dl, sil
                lea     rcx, [r11+60h]
                call    sub_140252AD0
                test    al, al
                jz      short loc_1405A5E05
                lea     rax, [rbp+4Fh+var_70]
                xor     r9d, r9d
                mov     [rsp+100h+var_80], rax
                xor     r8d, r8d
                movzx   eax, word ptr [rbx+62h]
                mov     dl, r10b
                mov     [rsp+100h+var_88], r14
                mov     rcx, r11
                mov     [rsp+100h+var_90], ax
                lea     rax, [rbp+4Fh+var_48]
                mov     [rsp+100h+var_98], r12
                mov     [rsp+100h+var_A0], rax
                lea     rax, [rbp+4Fh+var_68]
                mov     [rsp+100h+var_A8], r12
                mov     [rsp+100h+var_B0], rax
                mov     eax, 4
                mov     [rsp+100h+var_B8], 1
                mov     [rsp+100h+var_C0], r12
                mov     [rsp+100h+var_C8], r15
                mov     [rsp+100h+var_D0], r12w
                mov     [rsp+100h+var_D8], ax
                lea     rax, [rbp+4Fh+var_58]
                mov     [rsp+100h+var_E0], rax
                call    sub_14024F4C0
                mov     r9d, eax

loc_1405A5E05:                          ; CODE XREF: EtwWriteString+1F0↑j
                                        ; EtwWriteString+20E↑j
                cmp     [rbx+67h], r12b
                jz      loc_1405A5EAA
                mov     rax, [rbx+28h]
                mov     r8, rdi
                mov     dl, sil
                mov     r10, [rax+190h]
                lea     rcx, [r10+60h]
                call    sub_140252AD0
                test    al, al
                jz      short loc_1405A5EAA
                mov     rcx, [rbx+20h]
                lea     rax, [rbp+4Fh+var_70]
                mov     dl, [rbx+65h]
                xor     r9d, r9d
                mov     [rsp+100h+var_80], rax
                xor     r8d, r8d
                movzx   eax, word ptr [rbx+62h]
                mov     rcx, [rcx+190h]
                mov     [rsp+100h+var_88], r14
                mov     [rsp+100h+var_90], ax
                lea     rax, [rbp+4Fh+var_48]
                mov     [rsp+100h+var_98], r10
                mov     [rsp+100h+var_A0], rax
                lea     rax, [rbp+4Fh+var_68]
                mov     [rsp+100h+var_A8], r12
                mov     [rsp+100h+var_B0], rax
                mov     eax, 4
                mov     [rsp+100h+var_B8], 1
                mov     [rsp+100h+var_C0], r12
                mov     [rsp+100h+var_C8], r15
                mov     [rsp+100h+var_D0], r12w
                mov     [rsp+100h+var_D8], ax
                lea     rax, [rbp+4Fh+var_58]
                mov     [rsp+100h+var_E0], rax
                call    sub_14024F4C0
                mov     r9d, eax

loc_1405A5EAA:                          ; CODE XREF: EtwWriteString+1D8↑j
                                        ; EtwWriteString+289↑j ...
                mov     eax, r9d

loc_1405A5EAD:                          ; CODE XREF: EtwWriteString+5D↑j
                mov     rcx, [rbp+4Fh+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+100h+var_20]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405A5B80
EtwWriteString  endp

algn_1405A5ED6:                         ; DATA XREF: .pdata:00000001400F93FC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1405A5EE0   proc near               ; DATA XREF: .pdata:00000001400F9408↑o
                                        ; sub_14024F4C0+F64↑o

var_258         = qword ptr -258h
var_250         = word ptr -250h
var_248         = word ptr -248h
var_240         = qword ptr -240h
var_238         = qword ptr -238h
var_230         = dword ptr -230h
var_228         = qword ptr -228h
var_220         = qword ptr -220h
var_218         = qword ptr -218h
var_210         = qword ptr -210h
var_208         = word ptr -208h
var_200         = qword ptr -200h
var_1F8         = qword ptr -1F8h
var_1E8         = qword ptr -1E8h
var_1D8         = byte ptr -1D8h
var_1B0         = xmmword ptr -1B0h
var_188         = qword ptr -188h
var_158         = dword ptr -158h
var_154         = byte ptr -154h
var_152         = word ptr -152h
var_150         = dword ptr -150h
var_148         = xmmword ptr -148h
var_50          = qword ptr -50h
var_28          = qword ptr -28h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                sub     rsp, 260h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+278h+var_28], rax
                mov     rbx, [rsp+278h+arg_20]
                xor     ebp, ebp
                mov     [rdx], rbp
                mov     rdi, r9
                xor     edx, edx
                mov     rsi, r8
                call    ExFreePoolWithTag
                mov     eax, [rdi]
                lea     rcx, [rsp+278h+var_1D8]
                mov     dword ptr [rsp+278h+var_1E8], eax
                xor     edx, edx
                mov     eax, [rbx]
                mov     r8d, 1A8h
                mov     dword ptr [rsp+278h+var_1E8+4], eax
                call    memset
                movups  xmm0, cs:xmmword_14000B938
                mov     rax, [rsp+278h+var_1E8]
                lea     rcx, [rsp+278h+var_1D8]
                mov     [rsp+278h+var_1F8], rbp
                xor     r9d, r9d
                mov     [rsp+278h+var_200], rbp
                xor     r8d, r8d
                mov     [rsp+278h+var_208], bp
                mov     dl, 1
                mov     [rsp+278h+var_210], rbp
                mov     [rsp+278h+var_218], rbp
                mov     [rsp+278h+var_220], rbp
                mov     [rsp+278h+var_228], rbp
                mov     [rsp+278h+var_230], ebp
                mov     [rsp+278h+var_188], rax
                mov     rax, cs:qword_140CFB008
                mov     [rsp+278h+var_238], rbp
                mov     [rsp+278h+var_50], rax
                movzx   eax, word ptr [rsi]
                mov     [rsp+278h+var_240], rbp
                mov     [rsp+278h+var_152], ax
                lea     rax, qword_14002ED30
                movdqu  [rsp+278h+var_1B0], xmm0
                mov     [rsp+278h+var_248], bp
                movdqa  xmm0, cs:xmmword_14001DF10
                mov     [rsp+278h+var_250], bp
                mov     [rsp+278h+var_258], rax
                mov     [rsp+278h+var_158], 1
                mov     [rsp+278h+var_150], 44h ; 'D'
                mov     [rsp+278h+var_154], 0FFh
                movdqa  [rsp+278h+var_148], xmm0
                call    sub_14024F4C0
                mov     rcx, [rsp+278h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+278h+arg_10]
                add     rsp, 260h
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1405A5EE0
sub_1405A5EE0   endp

byte_1405A602E  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400F9408↑o

; =============== S U B R O U T I N E =======================================


sub_1405A6034   proc near               ; CODE XREF: sub_14024F4C0+97A↑p
                                        ; sub_140688E20+5A0↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = byte ptr  28h
arg_28          = qword ptr  30h

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     r15, [r9]
                xor     edi, edi
                add     r15, 10h
                xor     r13d, r13d
                xor     ebx, ebx
                mov     rsi, r9
                mov     r12d, r8d
                mov     r14d, edx
                mov     rbp, rcx
                cmp     [rsp+48h+arg_20], bl
                jz      short loc_1405A608F
                mov     r8d, 300h
                mov     edx, r12d
                mov     rcx, r15
                call    RtlWalkFrameChain
                mov     edi, eax
                cmp     eax, 3
                ja      short loc_1405A608C
                xor     edi, edi
                jmp     short loc_1405A608F
; ---------------------------------------------------------------------------

loc_1405A608C:                          ; CODE XREF: sub_1405A6034+52↑j
                add     edi, 0FFFFFFFDh

loc_1405A608F:                          ; CODE XREF: sub_1405A6034+3A↑j
                                        ; sub_1405A6034+56↑j
                test    dword ptr [rbp+74h], 400h
                mov     r8d, 1
                jnz     loc_1405A613A
                mov     eax, [rbp+510h]
                test    r8b, al
                jnz     loc_1405A613A
                call    KeGetEffectiveIrql
                mov     r8d, 1
                cmp     al, 2
                jnz     short loc_1405A60D0
                mov     rax, gs:20h
                cmp     [rax+20h], bl
                jnz     short loc_1405A613A
                jmp     short loc_1405A6102
; ---------------------------------------------------------------------------

loc_1405A60D0:                          ; CODE XREF: sub_1405A6034+8A↑j
                jnb     short loc_1405A613A
                cmp     [rbp+51Eh], bl
                jnz     short loc_1405A6102
                mov     rax, gs:188h
                cmp     [rax+24Ah], r8b
                jz      short loc_1405A6102
                and     r14d, r8d
                jz      short loc_1405A6113
                mov     rax, gs:188h
                cmp     [rax+1E4h], ebx
                jz      short loc_1405A6113

loc_1405A6102:                          ; CODE XREF: sub_1405A6034+9A↑j
                                        ; sub_1405A6034+A4↑j ...
                mov     rbx, r8
                lock xadd cs:qword_140C12E18, rbx
                add     rbx, r8
                jmp     short loc_1405A613A
; ---------------------------------------------------------------------------

loc_1405A6113:                          ; CODE XREF: sub_1405A6034+BB↑j
                                        ; sub_1405A6034+CC↑j
                test    r14d, r14d
                jnz     short loc_1405A613A
                mov     edx, r12d
                lea     rcx, [r15+rdi*8]
                sub     edx, edi
                call    RtlWalkFrameChain
                mov     rcx, [rsp+48h+arg_28]
                lea     r8d, [r14+1]
                mov     r13d, eax
                test    rcx, rcx
                jz      short loc_1405A613A
                mov     rbx, [rcx]

loc_1405A613A:                          ; CODE XREF: sub_1405A6034+68↑j
                                        ; sub_1405A6034+77↑j ...
                add     di, r13w
                jnz     short loc_1405A6167
                test    rbx, rbx
                jnz     short loc_1405A6167
                cmp     r12d, 100h
                jnz     short loc_1405A6161
                mov     rdx, [rsi]
                lea     rcx, xmmword_140C53BD0
                sub     rdx, 10h
                call    ExpInterlockedPushEntrySList

loc_1405A6161:                          ; CODE XREF: sub_1405A6034+118↑j
                and     qword ptr [rsi], 0
                jmp     short loc_1405A61A6
; ---------------------------------------------------------------------------

loc_1405A6167:                          ; CODE XREF: sub_1405A6034+10A↑j
                                        ; sub_1405A6034+10F↑j
                mov     rax, [rsi]
                add     di, r8w
                shl     di, 3
                mov     [rax+8], rbx
                mov     rcx, [rsi]
                lea     edx, [rdi+8]
                mov     [rcx], dx
                mov     ecx, 6
                mov     rax, [rsi]
                mov     [rax+2], cx
                mov     ecx, 0FFFEh
                mov     rax, [rsi]
                mov     [rax+6], di
                mov     rax, [rsi]
                and     [rax+4], cx
                mov     rax, [rsi]
                and     [rax+4], r8w

loc_1405A61A6:                          ; CODE XREF: sub_1405A6034+131↑j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405A6034   endp

algn_1405A61C4:                         ; DATA XREF: .pdata:00000001400F9414↑o
                align 10h
; Exported entry 142. EtwSendTraceBuffer

; =============== S U B R O U T I N E =======================================


