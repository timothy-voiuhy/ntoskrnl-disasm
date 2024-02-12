EtwWriteEx      proc near               ; CODE XREF: sub_140209DB8+9C↑p
                                        ; EtwWrite+27↑p ...

var_F8          = qword ptr -0F8h
var_F0          = word ptr -0F0h
var_E8          = word ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = dword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = word ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = qword ptr -58h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 0000000140435982 SIZE 00000181 BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rsi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0E8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+118h+var_58], rax
                mov     r11, [rsp+118h+arg_38]
                mov     rbx, rcx
                mov     r12, [rsp+118h+arg_20]
                xor     ecx, ecx
                mov     r13, [rsp+118h+arg_28]
                xorps   xmm0, xmm0
                mov     [rsp+118h+var_88], r11
                mov     r15d, r9d
                mov     [rsp+118h+var_80], rcx
                mov     r14, r8
                mov     rsi, rdx
                mov     r9d, ecx
                movups  [rsp+118h+var_78], xmm0
                movups  [rsp+118h+var_68], xmm0
                test    rbx, rbx
                jz      loc_140435982
                mov     rax, [rbx+68h]
                movzx   edx, byte ptr [rbx+64h]
                test    rax, rax
; } // starts at 14024ED60

loc_14024EDE4:                          ; DATA XREF: .rdata:0000000140059178↑o
                                        ; .rdata:000000014005918C↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+118h+var_38], rbp
                mov     ebp, [rsp+118h+arg_30]
                mov     [rsp+118h+var_40], rdi
                lea     rdi, [rax+1Ch]
                cmovz   rdi, rcx
                test    dl, dl
                jz      short loc_14024EE36
                mov     r10, [rbx+20h]
                mov     r8, [rsi+8]
                cmp     [r10+60h], ecx
                jz      short loc_14024EE36
                movzx   eax, byte ptr [r10+64h]
                cmp     [rsi+4], al
                ja      loc_14043598C

loc_14024EE23:                          ; CODE XREF: EtwWriteEx+1E6C34↓j
                mov     eax, [r10+68h]
                test    al, 40h
                jz      short loc_14024EE30
                test    r8, r8
                jz      short loc_14024EE9D

loc_14024EE30:                          ; CODE XREF: EtwWriteEx+C9↑j
                test    [r10+70h], r8
                jnz     short loc_14024EE8C

loc_14024EE36:                          ; CODE XREF: EtwWriteEx+A5↑j
                                        ; EtwWriteEx+B3↑j ...
                movzx   r10d, byte ptr [rbx+65h]
                test    r10b, r10b
                jnz     loc_14024EF0A

loc_14024EE44:                          ; CODE XREF: EtwWriteEx+1C1↓j
                                        ; EtwWriteEx+23E↓j
                mov     rax, [rbx+20h]
                cmp     qword ptr [rax+190h], 0
                jnz     loc_140435999

loc_14024EE56:                          ; CODE XREF: EtwWriteEx+1E6CFE↓j
                                        ; EtwWriteEx+1E6D22↓j ...
                mov     rdi, [rsp+118h+var_40]
                mov     eax, r9d
                mov     rbp, [rsp+118h+var_38]
; } // starts at 14024EDE4

loc_14024EE69:                          ; CODE XREF: EtwWriteEx+1E6C27↓j
                                        ; DATA XREF: .pdata:00000001400CCBB8↑o ...
; __unwind { // __GSHandlerCheck
                mov     rcx, [rsp+118h+var_58]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 0E8h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 4
; } // starts at 14024EE69

loc_14024EE8C:                          ; CODE XREF: EtwWriteEx+D4↑j
                                        ; DATA XREF: .pdata:00000001400CCBC4↑o ...
; __unwind { // __GSHandlerCheck
                mov     rcx, [r10+78h]
                mov     rax, rcx
                and     rax, r8
                cmp     rax, rcx
                jnz     short loc_14024EE36
                xor     ecx, ecx

loc_14024EE9D:                          ; CODE XREF: EtwWriteEx+CE↑j
                lea     rax, [rsp+118h+var_80]
                mov     r9d, r15d
                mov     [rsp+118h+var_98], rax
                mov     r8, r14
                movzx   eax, word ptr [rbx+62h]
                mov     [rsp+118h+var_A0], rdi
                mov     [rsp+118h+var_A8], ax
                lea     rax, [rsp+118h+var_78]
                mov     [rsp+118h+var_B0], rcx
                mov     [rsp+118h+var_B8], rax
                mov     [rsp+118h+var_C0], rcx
                mov     [rsp+118h+var_C8], r11
                mov     [rsp+118h+var_D0], ebp
                mov     [rsp+118h+var_D8], r13
                mov     [rsp+118h+var_E0], r12
                mov     [rsp+118h+var_E8], cx
                mov     [rsp+118h+var_F0], cx
                mov     rcx, r10
                mov     [rsp+118h+var_F8], rsi
                call    sub_14024F4C0
                mov     r9d, eax
                jmp     loc_14024EE36
; ---------------------------------------------------------------------------

loc_14024EF0A:                          ; CODE XREF: EtwWriteEx+DE↑j
                mov     r11, [rbx+28h]
                mov     r8, [rsi+8]
                movzx   edx, byte ptr [rsi+4]
                lea     rcx, [r11+60h]
                call    sub_140252AD0
                test    al, al
                jz      loc_14024EE44
                xor     ecx, ecx
                lea     rax, [rsp+118h+var_80]
                mov     [rsp+118h+var_98], rax
                mov     r9d, r15d
                movzx   eax, word ptr [rbx+62h]
                mov     r8, r14
                mov     [rsp+118h+var_A0], rdi
                movzx   edx, r10b
                mov     [rsp+118h+var_A8], ax
                lea     rax, [rsp+118h+var_78]
                mov     [rsp+118h+var_B0], r11
                mov     [rsp+118h+var_B8], rax
                mov     rax, [rsp+118h+var_88]
                mov     [rsp+118h+var_C0], rcx
                mov     [rsp+118h+var_C8], rax
                mov     [rsp+118h+var_D0], ebp
                mov     [rsp+118h+var_D8], r13
                mov     [rsp+118h+var_E0], r12
                mov     [rsp+118h+var_E8], cx
                mov     [rsp+118h+var_F0], cx
                mov     rcx, [rbx+20h]
                mov     [rsp+118h+var_F8], rsi
                call    sub_14024F4C0
                mov     r9d, eax
                jmp     loc_14024EE44
; } // starts at 14024EE8C
EtwWriteEx      endp

; ---------------------------------------------------------------------------
algn_14024EFA3:                         ; DATA XREF: .pdata:00000001400CCBD0↑o
                align 10h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=4Fh

sub_14024EFB0   proc near               ; CODE XREF: sub_14028ECD0+6F↓p
                                        ; sub_14028EEC0+126↓p ...

var_E0          = qword ptr -0E0h
var_D0          = byte ptr -0D0h
var_CC          = dword ptr -0CCh
var_C8          = dword ptr -0C8h
var_C4          = dword ptr -0C4h
var_C0          = dword ptr -0C0h
var_B8          = xmmword ptr -0B8h
var_A8          = qword ptr -0A8h
var_A0          = dword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
arg_10          = qword ptr  20h
arg_20          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140435B04 SIZE 00000092 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-1Fh]
                sub     rsp, 0D0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+4Fh+var_38], rax
                xor     eax, eax
                mov     [rbp+4Fh+var_88], r9
                xor     r12d, r12d
                mov     [rbp+4Fh+var_80], rcx
                test    dword ptr cs:xmmword_140CFC480+8, 400000h
                xorps   xmm1, xmm1
                xorps   xmm0, xmm0
                mov     [rbp+4Fh+var_A8], rax
                mov     rdi, r9
                mov     [rbp+4Fh+var_98], r12
                mov     rbx, r8
                mov     r13d, edx
                mov     r14, rcx
                movups  [rbp+4Fh+var_B8], xmm0
                movups  [rbp+4Fh+var_68], xmm1
                movups  [rbp+4Fh+var_58], xmm1
                jnz     loc_140435B04
                mov     [rsp+100h+var_D0], al

loc_14024F021:                          ; CODE XREF: sub_14024EFB0+1E6B68↓j
                lea     rsi, [r14+2F08h]
                lea     r15, [r14+2FB0h]
                test    r13d, r13d
                jnz     loc_14024F396
                movzx   eax, word ptr [rbx]
                mov     [rsi], ax
                movzx   eax, word ptr [rbx+2]
                mov     [rsi+2], ax
                movzx   eax, r12w
                mov     [rsi+4], r12d
                cmp     r12w, [rbx]
                jnb     short loc_14024F07D
                nop     dword ptr [rax+00h]
                nop     dword ptr [rax+rax+00000000h]

loc_14024F060:                          ; CODE XREF: sub_14024EFB0+CB↓j
                movzx   ecx, ax
                inc     ax
                lea     rdx, ds:0[rcx*8]
                mov     rcx, [rdx+rbx+8]
                mov     [rdx+rsi+8], rcx
                cmp     ax, [rbx]
                jb      short loc_14024F060

loc_14024F07D:                          ; CODE XREF: sub_14024EFB0+A2↑j
                mov     r12, [rbp+4Fh+arg_20]

loc_14024F081:                          ; CODE XREF: sub_14024EFB0+413↓j
                                        ; sub_14024EFB0+42C↓j ...
                mov     rax, r12
                lea     rcx, [r15+8]
                and     eax, 0Fh
                mov     rbx, rdi
                movzx   edi, cs:word_140CFB000
                xor     edx, edx
                mov     [r14+2D84h], edi
                mov     r8d, 0A0h
                shl     rbx, 7
                or      rbx, rax
                mov     eax, [r14+24h]
                mov     [rbp+4Fh+var_C0], eax
                mov     eax, 1
                mov     [r14+2D80h], eax
                mov     qword ptr [r15], 140001h
                call    memset
                xor     r10d, r10d
                xorps   xmm0, xmm0
                mov     [rbp+4Fh+var_C4], r10d
                mov     ecx, r10d
                mov     [rbp+4Fh+var_C8], ecx
                mov     eax, r10d
                mov     [rbp+4Fh+var_CC], eax
                mov     r9d, r10d
                mov     r11d, r10d
                movups  [rbp+4Fh+var_78], xmm0
                test    edi, edi
                jz      loc_14024F300
                lea     r14, cs:140000000h

loc_14024F0F9:                          ; CODE XREF: sub_14024EFB0+337↓j
                mov     eax, r11d
                xorps   xmm0, xmm0
                movups  [rbp+4Fh+var_48], xmm0
                mov     rax, ds:rva qword_140D23380[r14+rax*8]
                movzx   ecx, word ptr [rax+90h]
                mov     rdx, [rax+88h]
                xor     eax, eax
                mov     word ptr [rbp+4Fh+var_78+8], cx
                mov     dword ptr [rbp+4Fh+var_78+0Ah], eax
                mov     word ptr [rbp+4Fh+var_78+0Eh], ax
                cmp     [rsi], cx
                jbe     loc_14024F408
                mov     r8, [rsi+rcx*8+8]
                and     r8, rdx
                mov     qword ptr [rbp+4Fh+var_78], r8
                jz      loc_14024F40C
                mov     rdi, r10
                mov     word ptr [rbp+4Fh+var_A8], cx
                mov     qword ptr [rbp+4Fh+var_B8+8], r8
                mov     r9d, ecx
                mov     qword ptr [rbp+4Fh+var_B8], r10

loc_14024F153:                          ; CODE XREF: sub_14024EFB0+297↓j
                                        ; sub_14024EFB0+1E6BA1↓j
                mov     [rbp+4Fh+var_A0], r10d
                lea     ecx, [r9+1]
                test    r8, r8
                jz      loc_14024F2C0

loc_14024F164:                          ; CODE XREF: sub_14024EFB0+1E6B85↓j
                movzx   r9d, word ptr [rbp+4Fh+var_A8]
                bsf     rdx, r8
                mov     ecx, r9d
                movzx   eax, dl
                btr     r8, rax
                shl     ecx, 6
                movzx   eax, dl
                add     ecx, eax
                mov     qword ptr [rbp+4Fh+var_B8+8], r8
                mov     [rbp+4Fh+var_A0], edx
                mov     eax, ds:rva dword_140D024D0[r14+rcx*4]
                mov     r8d, eax
                mov     [rbp+4Fh+var_90], rax
                mov     r10, ds:rva qword_140CFDCC0[r14+rax*8]
                prefetchw byte ptr [r10+8C40h]
                mov     edx, [rbp+4Fh+var_C0]
                add     rdx, 2BBh
                shl     rdx, 6
                add     rdx, r10
                prefetchw byte ptr [rdx]
                test    rdi, rdi
                jz      loc_14024F24C

loc_14024F1C2:                          ; CODE XREF: sub_14024EFB0+303↓j
                mov     [rdx+30h], rdi
                cmp     r12, 5
                jz      loc_14024F376

loc_14024F1D0:                          ; CODE XREF: sub_14024EFB0+3E1↓j
                mov     [rdx+8], rbx
                mov     rax, [r10+8C40h]

loc_14024F1DB:                          ; CODE XREF: sub_14024EFB0+23D↓j
                mov     rcx, rax
                mov     [rdx], rax
                lock cmpxchg [r10+8C40h], rdx
                cmp     rax, rcx
                jnz     short loc_14024F1DB
                test    rax, rax
                jnz     loc_14024F43C
                mov     r8d, ds:rva dword_140D010D0[r14+r8*4]
                mov     ecx, r8d
                movzx   eax, word ptr [r15]
                and     r8d, 3Fh
                shr     ecx, 6
                mov     [rbp+4Fh+var_C8], 1
                cmp     eax, ecx
                jbe     loc_140435B3A

loc_14024F21D:                          ; CODE XREF: sub_14024EFB0+1E6B91↓j
                lea     rdx, [r15+rcx*8]
                mov     eax, r8d
                mov     rcx, [rdx+8]
                bts     rcx, rax
                mov     [rdx+8], rcx

loc_14024F230:                          ; CODE XREF: sub_14024EFB0+493↓j
                mov     rax, [r10+84B8h]
                test    rax, rax
                jnz     loc_140435B46
                mov     r8, qword ptr [rbp+4Fh+var_B8+8]
                xor     r10d, r10d
                jmp     loc_14024F153
; ---------------------------------------------------------------------------

loc_14024F24C:                          ; CODE XREF: sub_14024EFB0+20C↑j
                mov     r8, qword ptr [rbp+4Fh+var_78]
                lea     rdi, [rdx+38h]
                mov     rax, r8
                mov     rcx, 5555555555555555h
                shr     rax, 1
                and     rax, rcx
                sub     r8, rax
                mov     rax, 3333333333333333h
                mov     rcx, r8
                and     r8, rax
                shr     rcx, 2
                and     rcx, rax
                add     rcx, r8
                mov     r8, [rbp+4Fh+var_90]
                mov     rax, rcx
                shr     rax, 4
                add     rax, rcx
                mov     rcx, 0F0F0F0F0F0F0F0Fh
                and     rax, rcx
                mov     rcx, 101010101010101h
                imul    rax, rcx
                shr     rax, 38h
                mov     [rdi], eax
                jmp     loc_14024F1C2
; ---------------------------------------------------------------------------
                align 20h

loc_14024F2C0:                          ; CODE XREF: sub_14024EFB0+1AE↑j
                                        ; sub_14024EFB0+1E6B7F↓j
                movzx   eax, word ptr [rbp+4Fh+var_A8]
                inc     ax
                movzx   edx, ax
                mov     word ptr [rbp+4Fh+var_A8], dx
                cmp     edx, ecx
                jb      loc_140435B1D
                mov     r9d, [rbp+4Fh+var_C4]

loc_14024F2DA:                          ; CODE XREF: sub_14024EFB0+463↓j
                movzx   eax, cs:word_140CFB000
                inc     r11d
                cmp     r11d, eax
                jb      loc_14024F0F9
                mov     r14, [rbp+4Fh+var_80]
                test    r9d, r9d
                jnz     loc_14024F418

loc_14024F2FA:                          ; CODE XREF: sub_14024EFB0+47A↓j
                mov     ecx, [rbp+4Fh+var_C8]
                mov     eax, [rbp+4Fh+var_CC]

loc_14024F300:                          ; CODE XREF: sub_14024EFB0+13C↑j
                cmp     r12, 5
                jz      short loc_14024F30E
                test    eax, eax
                jnz     loc_14024F448

loc_14024F30E:                          ; CODE XREF: sub_14024EFB0+354↑j
                lea     eax, [r13-1]
                cmp     eax, 1
                jbe     loc_14024F3FC
                inc     dword ptr [r14+84D0h]

loc_14024F322:                          ; CODE XREF: sub_14024EFB0+453↓j
                mov     rcx, rsi
                call    sub_14024F474
                mov     r8d, 0E1h
                mov     rdx, rsi
                mov     ecx, r13d
                call    HalRequestIpiSpecifyVector
                test    eax, eax
                js      loc_140435B56

loc_14024F343:                          ; CODE XREF: sub_14024EFB0+49A↓j
                                        ; sub_14024EFB0+4B9↓j
                cmp     [rsp+100h+var_D0], 0
                jnz     loc_140435B78

loc_14024F34E:                          ; CODE XREF: sub_14024EFB0+487↓j
                                        ; sub_14024EFB0+1E6BE1↓j
                mov     rcx, [rbp+4Fh+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+100h+arg_10]
                add     rsp, 0D0h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14024F376:                          ; CODE XREF: sub_14024EFB0+21A↑j
                mov     rax, [rbp+4Fh+var_88]
                movups  xmm0, xmmword ptr [rax]
                movups  xmmword ptr [rdx+10h], xmm0
                movups  xmm1, xmmword ptr [rax+10h]
                movups  xmmword ptr [rdx+20h], xmm1
                mov     rax, [rdx+28h]
                mov     [rbp+4Fh+var_98], rax
                jmp     loc_14024F1D0
; ---------------------------------------------------------------------------

loc_14024F396:                          ; CODE XREF: sub_14024EFB0+82↑j
                lea     rdx, word_140CFC840
                mov     rcx, rsi
                call    KeCopyAffinityEx
                cmp     r13d, 1
                jnz     short loc_14024F3B7
                mov     edx, [r14+24h]
                mov     rcx, rsi
                call    KeRemoveProcessorAffinityEx

loc_14024F3B7:                          ; CODE XREF: sub_14024EFB0+3F9↑j
                mov     r12, [rbp+4Fh+arg_20]
                mov     eax, 80000000h
                test    rax, r12
                jz      loc_14024F081
                lea     rcx, dword_140C2B260
                btr     r12d, 1Fh
                call    KeIsEmptyAffinityEx
                test    eax, eax
                jnz     loc_14024F081
                xor     r13d, r13d
                lea     rdx, dword_140C2B260
                mov     r8, rsi
                mov     rcx, rsi
                call    KeSubtractAffinityEx
                jmp     loc_14024F081
; ---------------------------------------------------------------------------

loc_14024F3FC:                          ; CODE XREF: sub_14024EFB0+365↑j
                inc     dword ptr [r14+84CCh]
                jmp     loc_14024F322
; ---------------------------------------------------------------------------

loc_14024F408:                          ; CODE XREF: sub_14024EFB0+179↑j
                mov     qword ptr [rbp+4Fh+var_78], r10

loc_14024F40C:                          ; CODE XREF: sub_14024EFB0+18B↑j
                inc     r9d
                mov     [rbp+4Fh+var_C4], r9d
                jmp     loc_14024F2DA
; ---------------------------------------------------------------------------

loc_14024F418:                          ; CODE XREF: sub_14024EFB0+344↑j
                neg     r9d
                mov     eax, r9d
                lock xadd [r14+2D84h], eax
                add     eax, r9d
                jnz     loc_14024F2FA
                mov     [r14+2D80h], r10d
                jmp     loc_14024F34E
; ---------------------------------------------------------------------------

loc_14024F43C:                          ; CODE XREF: sub_14024EFB0+242↑j
                mov     [rbp+4Fh+var_CC], 1
                jmp     loc_14024F230
; ---------------------------------------------------------------------------

loc_14024F448:                          ; CODE XREF: sub_14024EFB0+358↑j
                test    ecx, ecx
                jz      loc_14024F343
                inc     dword ptr [r14+84D0h]
                mov     rcx, r15
                call    sub_14024F474
                mov     rdx, r15
                xor     ecx, ecx
                call    HalRequestIpi
                jmp     loc_14024F343
; } // starts at 14024EFB0
sub_14024EFB0   endp

; ---------------------------------------------------------------------------
byte_14024F46E  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140059204↑o
                                        ; .pdata:00000001400CCBDC↑o

; =============== S U B R O U T I N E =======================================


sub_14024F474   proc near               ; CODE XREF: sub_14024EFB0+375↑p
                                        ; sub_14024EFB0+4AA↑p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = word ptr -18h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140435B96 SIZE 000000DC BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+18h], rsi
                push    rdi
                sub     rsp, 40h
                mov     rbx, gs:20h
                xor     esi, esi
                mov     rdi, rcx
                mov     [rax-16h], esi
                mov     [rax-12h], si
                mov     [rax+10h], esi
                cmp     [rbx+84B8h], rsi
                jnz     loc_140435B96

loc_14024F4A9:                          ; CODE XREF: sub_14024F474+1E6729↓j
                                        ; sub_14024F474+1E675A↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rsi, [rsp+48h+arg_10]
                add     rsp, 40h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14024F474   endp

algn_14024F4BA:                         ; DATA XREF: .rdata:0000000140059228↑o
                                        ; .pdata:00000001400CCBE8↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=320h

sub_14024F4C0   proc near               ; CODE XREF: EtwWriteEx+19D↑p
                                        ; EtwWriteEx+236↑p ...

var_960         = qword ptr -960h
var_958         = qword ptr -958h
var_950         = byte ptr -950h
var_948         = qword ptr -948h
var_930         = byte ptr -930h
var_370         = dword ptr -370h
var_350         = word ptr -350h
var_348         = dword ptr -348h
var_340         = qword ptr -340h
var_338         = qword ptr -338h
var_330         = byte ptr -330h
var_320         = byte ptr -320h
var_31F         = byte ptr -31Fh
var_318         = byte ptr -318h
var_310         = dword ptr -310h
var_30C         = dword ptr -30Ch
var_308         = word ptr -308h
var_304         = word ptr -304h
var_300         = byte ptr -300h
var_2FF         = byte ptr -2FFh
var_2FC         = dword ptr -2FCh
var_2F8         = dword ptr -2F8h
var_2F4         = word ptr -2F4h
var_2F0         = dword ptr -2F0h
var_2E8         = qword ptr -2E8h
var_2E0         = qword ptr -2E0h
var_2D8         = word ptr -2D8h
var_2D4         = dword ptr -2D4h
var_2D0         = dword ptr -2D0h
var_2C8         = qword ptr -2C8h
var_2C0         = qword ptr -2C0h
var_2B8         = qword ptr -2B8h
var_2B0         = qword ptr -2B0h
var_2A8         = qword ptr -2A8h
var_2A0         = qword ptr -2A0h
var_298         = qword ptr -298h
var_290         = qword ptr -290h
var_288         = qword ptr -288h
var_280         = qword ptr -280h
var_278         = qword ptr -278h
var_270         = qword ptr -270h
var_268         = qword ptr -268h
var_260         = qword ptr -260h
var_258         = qword ptr -258h
var_250         = qword ptr -250h
var_248         = qword ptr -248h
var_240         = qword ptr -240h
var_238         = qword ptr -238h
var_230         = qword ptr -230h
var_228         = qword ptr -228h
var_220         = qword ptr -220h
var_218         = qword ptr -218h
var_210         = qword ptr -210h
var_208         = qword ptr -208h
var_200         = xmmword ptr -200h
var_1F0         = qword ptr -1F0h
var_1E8         = qword ptr -1E8h
var_1E0         = byte ptr -1E0h
var_60          = dword ptr -60h
var_50          = qword ptr -50h
arg_18          = dword ptr  28h
arg_20          = qword ptr  30h
arg_28          = word ptr  38h
arg_30          = word ptr  40h
arg_38          = qword ptr  48h
arg_40          = qword ptr  50h
arg_48          = dword ptr  58h
arg_50          = qword ptr  60h
arg_58          = qword ptr  68h
arg_60          = qword ptr  70h
arg_68          = qword ptr  78h
arg_70          = word ptr  80h
arg_78          = qword ptr  88h
arg_80          = qword ptr  90h

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp-8+arg_18], r9d
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 338h
                lea     rbp, [rsp+50h]
                mov     rax, cs:__security_cookie
                xor     rax, rbp
                mov     [rbp+320h+var_50], rax
                mov     rsi, r8
                mov     rdi, rcx
                mov     rax, [rbp+320h+arg_40]
                mov     [rbp+320h+var_1E8], rax
                mov     r13, [rbp+320h+arg_68]
                mov     [rbp+320h+var_288], rcx
                mov     [rbp+320h+var_318], dl
                mov     rax, [rbp+320h+arg_20]
                mov     [rbp+320h+var_2C0], rax
                mov     rax, [rbp+320h+arg_50]
                mov     [rbp+320h+var_280], rax
                mov     rax, [rbp+320h+arg_60]
                mov     [rbp+320h+var_238], rax
                mov     rax, [rbp+320h+arg_78]
                mov     [rbp+320h+var_240], rax
                mov     rax, [rbp+320h+arg_80]
                mov     [rbp+320h+var_210], rax
                xor     r12d, r12d
                mov     [rbp+320h+var_2D0], r12d
                xor     edx, edx
                mov     r8d, 188h
                lea     rcx, [rbp+320h+var_1E0]
                call    memset
                mov     [rbp+320h+var_2F0], r12d
                mov     r14d, r12d
                mov     [rbp+320h+var_2C8], r12
                mov     [rbp+320h+var_278], r12
                mov     [rbp+320h+var_2A0], r12
                mov     [rbp+320h+var_248], r12
                movzx   ebx, [rbp+320h+arg_70]
                movzx   eax, bx
                mov     ecx, 200h
                and     ax, cx
                mov     [rbp+320h+var_2D8], ax
                mov     eax, 400h
                and     bx, ax
                call    sub_1402B95B0
                mov     rcx, [rax+360h]
                mov     [rbp+320h+var_290], rcx
                mov     [rbp+320h+var_258], rcx
                cmp     [rbp+320h+arg_48], 80h
                jbe     short loc_14024F5DF
                mov     eax, 0C000000Dh
                jmp     loc_14025093B
; ---------------------------------------------------------------------------

loc_14024F5DF:                          ; CODE XREF: sub_14024F4C0+113↑j
                test    r13, r13
                cmovz   r13, rdi
                mov     [rbp+320h+var_2B0], r13
                cmp     [rbp+320h+var_240], r12
                jnz     short loc_14024F5F9
                movzx   eax, r12w
                jmp     short loc_14024F60D
; ---------------------------------------------------------------------------

loc_14024F5F9:                          ; CODE XREF: sub_14024F4C0+131↑j
                test    bx, bx
                jnz     short loc_14024F60A
                mov     rax, [rbp+320h+var_240]
                movzx   eax, word ptr [rax]
                jmp     short loc_14024F60D
; ---------------------------------------------------------------------------

loc_14024F60A:                          ; CODE XREF: sub_14024F4C0+13C↑j
                mov     eax, r12d

loc_14024F60D:                          ; CODE XREF: sub_14024F4C0+137↑j
                                        ; sub_14024F4C0+148↑j
                mov     [rbp+320h+var_308], ax
                mov     [rbp+320h+var_320], r12b
                mov     r15, [rdi+188h]
                mov     [rbp+320h+var_2E8], r15
                mov     [rbp+320h+var_260], r15
                mov     rcx, [rbp+320h+var_210]
                test    rcx, rcx
                jz      short loc_14024F646
                mov     rax, [rcx]
                test    rax, rax
                jz      short loc_14024F646
                mov     [rbp+320h+var_248], rax
                mov     [rbp+320h+var_320], 4

loc_14024F646:                          ; CODE XREF: sub_14024F4C0+171↑j
                                        ; sub_14024F4C0+179↑j
                mov     rcx, gs:188h
                mov     [rbp+320h+var_250], rcx
                mov     rax, [rbp+320h+arg_58]
                test    rax, rax
                cmovz   rax, rcx
                mov     [rbp+320h+arg_58], rax
                call    sub_14024B150
                test    al, al
                jnz     short loc_14024F67A
                mov     [rbp+320h+var_31F], 0Fh
                jmp     short loc_14024F681
; ---------------------------------------------------------------------------

loc_14024F67A:                          ; CODE XREF: sub_14024F4C0+1B2↑j
                mov     rax, cr8
                mov     [rbp+320h+var_31F], al

loc_14024F681:                          ; CODE XREF: sub_14024F4C0+1B8↑j
                movzx   eax, [rbp+320h+var_31F]
                mov     [rbp+320h+var_300], al
                mov     [rbp+320h+var_2FF], r12b
                cmp     al, 1
                jnb     short loc_14024F6A2
                mov     rax, [rbp+320h+var_250]
                dec     word ptr [rax+1E4h]
                mov     [rbp+320h+var_2FF], 1

loc_14024F6A2:                          ; CODE XREF: sub_14024F4C0+1CE↑j
                not     sil
                and     [rbp+320h+var_318], sil
                mov     r9d, 50h ; 'P'
                mov     rsi, r13

loc_14024F6B2:                          ; CODE XREF: sub_14024F4C0+50C↓j
                                        ; sub_14024F4C0+B3A↓j
                mov     r11, [rbp+320h+var_2C0]
                mov     r8d, 1

loc_14024F6BC:                          ; CODE XREF: sub_14024F4C0+337↓j
                                        ; sub_14024F4C0+13B6↓j ...
                movzx   ecx, [rbp+320h+var_318]
                bsf     edx, ecx
                mov     [rbp+320h+var_2F0], edx
                jz      loc_14024F9EE
                mov     rdi, r8
                mov     [rbp+320h+var_2A8], r8
                xorps   xmm0, xmm0
                xor     eax, eax
                movups  [rbp+320h+var_200], xmm0
                mov     [rbp+320h+var_1F0], rax
                mov     [rbp+320h+var_218], r12
                mov     r15d, r9d
                mov     [rbp+320h+var_2F8], r9d
                mov     [rbp+320h+var_30C], r9d
                mov     [rbp+320h+var_2B8], r12
                mov     [rbp+320h+var_298], r12
                xor     bl, bl
                mov     byte ptr [rbp+320h+var_304], bl
                mov     [rbp+320h+var_2F4], r12w
                mov     [rbp+320h+var_2FC], r12d
                mov     [rbp+320h+var_270], r12
                mov     [rbp+320h+var_208], r12
                dec     cl
                and     [rbp+320h+var_318], cl
                mov     r12d, edx
                lea     r13, [rdx+4]
                shl     r13, 5
                add     r13, rsi
                cmp     [rbp+320h+var_238], rax
                jz      short loc_14024F76F
                movzx   eax, word ptr [r13+6]
                mov     ecx, eax
                shr     ecx, 5
                and     eax, 8000001Fh
                jge     short loc_14024F753
                dec     eax
                or      eax, 0FFFFFFE0h
                inc     eax

loc_14024F753:                          ; CODE XREF: sub_14024F4C0+28A↑j
                movzx   edx, al
                mov     rax, [rbp+320h+var_238]
                mov     ecx, [rax+rcx*4]
                bt      ecx, edx
                mov     r9d, 50h ; 'P'
                jb      loc_14024F7F0

loc_14024F76F:                          ; CODE XREF: sub_14024F4C0+279↑j
                mov     r8, [r11+8]
                movzx   edx, byte ptr [r11+4]
                mov     rcx, r13
                call    sub_140252AD0
                test    al, al
                mov     r8d, 1
                lea     r9d, [r8+4Fh]
                jz      short loc_14024F7F0
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    byte ptr [rbp+320h+arg_18], 2
                jnz     short loc_14024F7B0
                cmp     dword ptr [rcx+460h], 0
                jge     short loc_14024F7BA

loc_14024F7B0:                          ; CODE XREF: sub_14024F4C0+2E5↑j
                test    dword ptr [r13+8], 200h
                jnz     short loc_14024F7F0

loc_14024F7BA:                          ; CODE XREF: sub_14024F4C0+2EE↑j
                mov     rcx, [rsi+180h]
                test    rcx, rcx
                jz      short loc_14024F7FC
                imul    rax, r12, 68h ; 'h'
                mov     ecx, [rax+rcx]
                mov     eax, ecx
                and     eax, 80000200h
                cmp     eax, 80000200h
                jz      short loc_14024F7E9
                and     ecx, 80000100h
                cmp     ecx, 80000100h
                jnz     short loc_14024F7FC

loc_14024F7E9:                          ; CODE XREF: sub_14024F4C0+319↑j
                mov     al, 1
                jmp     short loc_14024F7FE
; ---------------------------------------------------------------------------
                align 10h

loc_14024F7F0:                          ; CODE XREF: sub_14024F4C0+2A9↑j
                                        ; sub_14024F4C0+2CC↑j ...
                xor     r12d, r12d
                mov     r15, [rbp+320h+var_2E8]
                jmp     loc_14024F6BC
; ---------------------------------------------------------------------------

loc_14024F7FC:                          ; CODE XREF: sub_14024F4C0+304↑j
                                        ; sub_14024F4C0+327↑j
                xor     al, al

loc_14024F7FE:                          ; CODE XREF: sub_14024F4C0+32B↑j
                test    al, al
                jz      short loc_14024F84A
                movzx   ecx, word ptr [r11]
                xor     r8d, r8d
                movzx   eax, [rbp+320h+var_31F]
                mov     [rsp+370h+var_330], al
                mov     byte ptr [rsp+370h+var_338], bl
                mov     rax, [rbp+320h+var_280]
                mov     [rsp+370h+var_340], rax
                mov     eax, [rbp+320h+arg_48]
                mov     [rsp+370h+var_348], eax
                mov     [rsp+370h+var_350], cx
                mov     r9, r11
                mov     edx, [rbp+320h+var_2F0]
                mov     rcx, rsi
                call    sub_14024EB80
                test    al, al
                jz      loc_14024F9C0
                mov     r11, [rbp+320h+var_2C0]

loc_14024F84A:                          ; CODE XREF: sub_14024F4C0+340↑j
                cmp     [rbp+320h+var_2D8], 0
                jz      loc_14024F8F8
                mov     r9, [r11+8]
                movzx   r10d, byte ptr [r11+4]
                xor     ecx, ecx
                mov     rdx, [rsi+180h]
                test    rdx, rdx
                jz      loc_14024F8F8
                imul    r8, r12, 68h ; 'h'
                mov     eax, [r8+rdx]
                and     eax, 80000400h
                cmp     eax, 80000400h
                jnz     short loc_14024F889
                mov     rcx, [r8+rdx+60h]

loc_14024F889:                          ; CODE XREF: sub_14024F4C0+3C2↑j
                test    rcx, rcx
                jz      short loc_14024F8F8
                movzx   eax, byte ptr [rcx+1]
                cmp     r10b, al
                jbe     short loc_14024F89B
                test    al, al
                jnz     short loc_14024F8F8

loc_14024F89B:                          ; CODE XREF: sub_14024F4C0+3D5↑j
                test    r9, r9
                jz      short loc_14024F8B5
                test    [rcx+8], r9
                jz      short loc_14024F8F8
                mov     rcx, [rcx+10h]
                mov     rax, rcx
                and     rax, r9
                cmp     rax, rcx
                jnz     short loc_14024F8F8

loc_14024F8B5:                          ; CODE XREF: sub_14024F4C0+3DE↑j
                mov     rax, [r11+8]
                movzx   ecx, byte ptr [r11+4]
                mov     [rsp+370h+var_330], bl
                mov     [rsp+370h+var_338], rax
                mov     byte ptr [rsp+370h+var_340], cl
                movzx   eax, [rbp+320h+var_31F]
                mov     byte ptr [rsp+370h+var_348], al
                mov     byte ptr [rsp+370h+var_350], bl
                mov     r9, [rbp+320h+var_280]
                mov     r8d, [rbp+320h+arg_48]
                mov     edx, [rbp+320h+var_2F0]
                mov     rcx, rsi
                call    sub_1405ABDF4
                test    al, al
                jz      loc_14024F9C0

loc_14024F8F8:                          ; CODE XREF: sub_14024F4C0+38F↑j
                                        ; sub_14024F4C0+3AA↑j ...
                movzx   esi, word ptr [r13+6]
                mov     [rbp+320h+var_2D4], esi
                cmp     [rbp+320h+var_31F], 2
                jnb     short loc_14024F95F
                lea     rbx, ds:0[rsi*8]
                mov     rax, [rbp+320h+var_2E8]
                mov     rcx, [rax+1C0h]
                mov     edx, 1
                mov     rcx, [rcx+rbx]
                call    ExAcquireRundownProtectionCacheAwareEx
                mov     rdx, [rbp+320h+var_2E8]
                test    al, al
                jz      short loc_14024F987
                cmp     esi, [rdx+10h]
                jnb     short loc_14024F94D
                lfence
                mov     rax, [rdx+1C8h]
                mov     rdi, [rbx+rax]
                mov     [rbp+320h+var_2A8], rdi
                mov     bl, 1
                mov     byte ptr [rbp+320h+var_304], bl
                jmp     short loc_14024F98B
; ---------------------------------------------------------------------------

loc_14024F94D:                          ; CODE XREF: sub_14024F4C0+472↑j
                mov     edi, 1
                mov     [rbp+320h+var_2A8], rdi
                movzx   ebx, dil
                mov     byte ptr [rbp+320h+var_304], bl
                jmp     short loc_14024F98B
; ---------------------------------------------------------------------------

loc_14024F95F:                          ; CODE XREF: sub_14024F4C0+444↑j
                mov     rdx, [rbp+320h+var_2E8]
                cmp     esi, [rdx+10h]
                jnb     short loc_14024F97C
                lfence
                mov     rax, [rdx+1C8h]
                mov     rdi, [rax+rsi*8]
                mov     [rbp+320h+var_2A8], rdi
                jmp     short loc_14024F98B
; ---------------------------------------------------------------------------

loc_14024F97C:                          ; CODE XREF: sub_14024F4C0+4A6↑j
                mov     edi, 1
                mov     [rbp+320h+var_2A8], rdi
                jmp     short loc_14024F98B
; ---------------------------------------------------------------------------

loc_14024F987:                          ; CODE XREF: sub_14024F4C0+46D↑j
                movzx   ebx, byte ptr [rbp+320h+var_304]

loc_14024F98B:                          ; CODE XREF: sub_14024F4C0+48B↑j
                                        ; sub_14024F4C0+49D↑j ...
                test    dil, 1
                jz      loc_14024FA68
                test    bl, bl
                jz      short loc_14024F9AE
                mov     rcx, [rdx+1C0h]
                mov     edx, 1
                mov     rcx, [rcx+rsi*8]
                call    ExReleaseRundownProtectionCacheAwareEx

loc_14024F9AE:                          ; CODE XREF: sub_14024F4C0+4D7↑j
                cmp     esi, 3
                jz      short loc_14024F9D1
                mov     rsi, [rbp+320h+var_2B0]
                nop     word ptr [rax+rax+00000000h]

loc_14024F9C0:                          ; CODE XREF: sub_14024F4C0+380↑j
                                        ; sub_14024F4C0+432↑j
                xor     r12d, r12d
                mov     r15, [rbp+320h+var_2E8]
                lea     r9d, [r12+50h]
                jmp     loc_14024F6B2
; ---------------------------------------------------------------------------

loc_14024F9D1:                          ; CODE XREF: sub_14024F4C0+4F1↑j
                mov     r15, [rbp+320h+var_2E8]
                mov     eax, [r15+0FE4h]
                mov     ecx, 0C00002FEh
                mov     edx, 0C0000008h
                test    eax, eax
                cmovz   ecx, edx
                mov     [rbp+320h+var_2D0], ecx

loc_14024F9EE:                          ; CODE XREF: sub_14024F4C0+206↑j
                                        ; sub_14024F4C0+B47↓j
                test    [rbp+320h+var_320], 2
                jz      short loc_14024FA0B
                mov     rdx, [rbp+320h+var_2A0]
                add     rdx, 0FFFFFFFFFFFFFFF0h
                lea     rcx, xmmword_140C53BD0
                call    ExpInterlockedPushEntrySList

loc_14024FA0B:                          ; CODE XREF: sub_14024F4C0+532↑j
                cmp     [rbp+320h+var_2D0], 0
                jl      loc_140250897
                mov     eax, [rbp+320h+var_60]
                test    eax, eax
                jz      loc_1402508D6
                lea     rbx, [rbp+320h+var_1E0]
                mov     edi, eax
                nop     dword ptr [rax+00h]

loc_14024FA30:                          ; CODE XREF: sub_14024F4C0+5A1↓j
                lea     rcx, [rbx+10h]
                call    sub_1402BCD10
                cmp     [rbp+320h+var_31F], 2
                jnb     short loc_14024FA59
                mov     rax, [rbx]
                mov     eax, [rax]
                mov     rcx, [r15+1C0h]
                mov     edx, 1
                mov     rcx, [rcx+rax*8]
                call    ExReleaseRundownProtectionCacheAwareEx

loc_14024FA59:                          ; CODE XREF: sub_14024F4C0+57D↑j
                add     rbx, 30h ; '0'
                sub     rdi, 1
                jnz     short loc_14024FA30
                jmp     loc_1402508D6
; ---------------------------------------------------------------------------

loc_14024FA68:                          ; CODE XREF: sub_14024F4C0+4CF↑j
                mov     rcx, [rbp+320h+var_1E8]
                mov     rax, rcx
                neg     rax
                sbb     ebx, ebx
                and     ebx, 8
                mov     dword ptr [rbp+320h+var_2E0], ebx
                mov     edi, 68h ; 'h'
                test    rcx, rcx
                mov     eax, 50h ; 'P'
                cmovz   edi, eax
                mov     r14d, edi
                mov     [rbp+320h+var_310], edi
                test    dword ptr [r13+8], 0FFFFFF9Fh
                jz      loc_14024FE82
                cmp     cs:byte_140C197B4, 0
                jnz     short loc_14024FAD3
                test    byte ptr [rbp+320h+arg_18], 1
                jnz     short loc_14024FAD3
                call    sub_1402BE148
                test    eax, eax
                jz      short loc_14024FAD3
                mov     rax, [rbp+320h+var_250]
                cmp     byte ptr [rax+51Eh], 0
                jnz     short loc_14024FAD3
                mov     eax, 80h
                jmp     short loc_14024FAD5
; ---------------------------------------------------------------------------

loc_14024FAD3:                          ; CODE XREF: sub_14024F4C0+5E8↑j
                                        ; sub_14024F4C0+5F1↑j ...
                xor     eax, eax

loc_14024FAD5:                          ; CODE XREF: sub_14024F4C0+611↑j
                or      ebx, eax
                mov     dword ptr [rbp+320h+var_2E0], ebx
                call    sub_1403F858C
                mov     edx, [r13+8]
                mov     ecx, edx
                and     ecx, 800h
                test    eax, eax
                jz      short loc_14024FB04
                mov     [rbp+320h+var_310], edi
                test    ecx, ecx
                jz      short loc_14024FB3E
                mov     rax, [rbp+320h+var_290]
                test    rax, rax
                jz      short loc_14024FB3E
                jmp     short loc_14024FB14
; ---------------------------------------------------------------------------

loc_14024FB04:                          ; CODE XREF: sub_14024F4C0+62D↑j
                test    ecx, ecx
                jnz     short loc_14024FB0D
                mov     [rbp+320h+var_310], edi
                jmp     short loc_14024FB3E
; ---------------------------------------------------------------------------

loc_14024FB0D:                          ; CODE XREF: sub_14024F4C0+646↑j
                mov     rax, [rbp+320h+var_290]

loc_14024FB14:                          ; CODE XREF: sub_14024F4C0+642↑j
                cmp     rax, cs:qword_140CFB008
                mov     [rbp+320h+var_310], edi
                jz      short loc_14024FB3E
                movzx   r14d, word ptr [rax+1068h]
                add     r14d, 0Fh
                bts     ebx, 8
                and     r14d, 0FFFFFFF8h
                add     r14d, edi
                mov     [rbp+320h+var_310], r14d
                mov     dword ptr [rbp+320h+var_2E0], ebx

loc_14024FB3E:                          ; CODE XREF: sub_14024F4C0+634↑j
                                        ; sub_14024F4C0+640↑j ...
                test    dl, 1
                jz      loc_14024FBF5
                test    bl, bl
                jns     loc_14024FBF5
                mov     rcx, [rbp+320h+var_2C8]
                test    rcx, rcx
                jnz     loc_14024FBE5
                mov     rsi, gs:20h
                mov     rdi, [rsi+880h]
                inc     dword ptr [rdi+14h]
                mov     rcx, rdi
                call    ExpInterlockedPopEntrySList
                mov     rcx, rax
                mov     [rbp+320h+var_2C8], rax
                test    rax, rax
                jnz     short loc_14024FBC1
                inc     dword ptr [rdi+18h]
                mov     rdi, [rsi+888h]
                inc     dword ptr [rdi+14h]
                mov     rcx, rdi
                call    ExpInterlockedPopEntrySList
                mov     rcx, rax
                mov     [rbp+320h+var_2C8], rax
                test    rax, rax
                jnz     short loc_14024FBC1
                inc     dword ptr [rdi+18h]
                mov     edx, [rdi+2Ch]
                mov     rax, [rdi+30h]
                mov     r8d, [rdi+28h]
                mov     ecx, [rdi+24h]
                call    sub_1404079D0
                mov     rcx, rax
                mov     [rbp+320h+var_2C8], rax

loc_14024FBC1:                          ; CODE XREF: sub_14024F4C0+6C1↑j
                                        ; sub_14024F4C0+6E2↑j
                test    rcx, rcx
                jz      short loc_14024FBCB
                mov     eax, [rsi+24h]
                mov     [rcx], eax

loc_14024FBCB:                          ; CODE XREF: sub_14024F4C0+704↑j
                mov     [rbp+320h+var_278], rcx
                test    rcx, rcx
                jz      short loc_14024FBF5
                call    sub_14061B888
                mov     rcx, [rbp+320h+var_2C8]
                test    rcx, rcx
                jz      short loc_14024FBF5

loc_14024FBE5:                          ; CODE XREF: sub_14024F4C0+696↑j
                or      ebx, 2
                mov     dword ptr [rbp+320h+var_2E0], ebx
                movzx   eax, word ptr [rcx]
                add     r14d, eax
                mov     [rbp+320h+var_310], r14d

loc_14024FBF5:                          ; CODE XREF: sub_14024F4C0+681↑j
                                        ; sub_14024F4C0+689↑j ...
                mov     eax, [r13+8]
                test    al, 2
                jz      short loc_14024FC0B
                or      ebx, 1
                mov     dword ptr [rbp+320h+var_2E0], ebx
                add     r14d, 10h
                mov     [rbp+320h+var_310], r14d

loc_14024FC0B:                          ; CODE XREF: sub_14024F4C0+73B↑j
                test    al, al
                jns     short loc_14024FC35
                call    KeGetEffectiveIrql
                cmp     al, 2
                jb      short loc_14024FC27
                mov     rax, gs:20h
                cmp     byte ptr [rax+20h], 0
                jnz     short loc_14024FC35

loc_14024FC27:                          ; CODE XREF: sub_14024F4C0+756↑j
                or      ebx, 20h
                mov     dword ptr [rbp+320h+var_2E0], ebx
                add     r14d, 10h
                mov     [rbp+320h+var_310], r14d

loc_14024FC35:                          ; CODE XREF: sub_14024F4C0+74D↑j
                                        ; sub_14024F4C0+765↑j
                mov     eax, [r13+8]
                bt      eax, 8
                jnb     short loc_14024FC4D
                or      ebx, 40h
                mov     dword ptr [rbp+320h+var_2E0], ebx
                add     r14d, 10h
                mov     [rbp+320h+var_310], r14d

loc_14024FC4D:                          ; CODE XREF: sub_14024F4C0+77D↑j
                test    al, 4
                jz      loc_14024FE82
                cmp     cs:byte_140C197B4, 0
                jnz     loc_14024FE82
                mov     r13, [rbp+320h+var_2B0]
                mov     rcx, [r13+180h]
                test    rcx, rcx
                jz      short loc_14024FCA7
                imul    rax, r12, 68h ; 'h'
                mov     ecx, [rax+rcx]
                mov     eax, ecx
                and     eax, 80001000h
                cmp     eax, 80001000h
                jz      short loc_14024FCA3
                mov     eax, ecx
                and     eax, 80002000h
                cmp     eax, 80002000h
                jz      short loc_14024FCA3
                and     ecx, 80004000h
                cmp     ecx, 80004000h
                jnz     short loc_14024FCA7

loc_14024FCA3:                          ; CODE XREF: sub_14024F4C0+7C5↑j
                                        ; sub_14024F4C0+7D3↑j
                mov     al, 1
                jmp     short loc_14024FCA9
; ---------------------------------------------------------------------------

loc_14024FCA7:                          ; CODE XREF: sub_14024F4C0+7B0↑j
                                        ; sub_14024F4C0+7E1↑j
                xor     al, al

loc_14024FCA9:                          ; CODE XREF: sub_14024F4C0+7E5↑j
                mov     r12, [rbp+320h+var_2C0]
                test    al, al
                jz      loc_14024FD47
                mov     r9, [r12+8]
                movzx   r8d, byte ptr [r12+4]
                movzx   esi, [rbp+320h+var_300]
                cmp     sil, 2
                setb    al
                mov     byte ptr [rsp+370h+var_350], al
                mov     edi, [rbp+320h+var_2F0]
                mov     edx, edi
                mov     rcx, r13
                call    sub_1405AC248
                test    al, al
                jz      loc_14024FE82
                movzx   ecx, word ptr [r12]
                cmp     sil, 2
                setb    r9b
                mov     r8d, edi
                mov     rdx, r13
                call    sub_1405AC364
                test    al, al
                jz      loc_14024FE82
                mov     rax, [r12+8]
                movzx   ecx, byte ptr [r12+4]
                mov     [rsp+370h+var_330], 1
                mov     [rsp+370h+var_338], rax
                mov     byte ptr [rsp+370h+var_340], cl
                mov     byte ptr [rsp+370h+var_348], sil
                mov     byte ptr [rsp+370h+var_350], 0
                mov     r9, [rbp+320h+var_280]
                mov     r8d, [rbp+320h+arg_48]
                mov     edx, edi
                mov     rcx, r13
                call    sub_1405ABDF4
                test    al, al
                jz      loc_14024FE82

loc_14024FD47:                          ; CODE XREF: sub_14024F4C0+7EF↑j
                test    [rbp+320h+var_320], 1
                jnz     loc_14024FE66
                mov     edi, 100h
                call    sub_1405A6EB0
                mov     [rbp+320h+var_2A0], rax
                xor     esi, esi
                test    rax, rax
                jnz     short loc_14024FDBE
                mov     [rbp+320h+var_228], rsi
                mov     [rbp+320h+var_220], rsi
                lea     rdx, [rbp+320h+var_228]
                lea     rcx, [rbp+320h+var_220]
                call    IoGetStackLimits
                lea     rax, [rbp+320h+var_228]
                sub     rax, [rbp+320h+var_220]
                cmp     rax, 1440h
                jbe     short loc_14024FDBE
                mov     eax, [rsp+370h+var_370]
                mov     eax, 610h
                sub     rsp, rax
                lea     rcx, [rsp+980h+var_930]
                mov     eax, [rcx]
                mov     [rbp+320h+var_2A0], rcx
                mov     edi, 0C0h

loc_14024FDBE:                          ; CODE XREF: sub_14024F4C0+8A7↑j
                                        ; sub_14024F4C0+8DE↑j
                cmp     [rbp+320h+var_2A0], 0
                jz      loc_14024FE62
                mov     r8, rsi
                mov     cl, 1
                mov     rax, [rbp+320h+var_2A8]
                mov     eax, [rax+340h]
                bt      eax, 1Eh
                movzx   ecx, cl
                cmovb   ecx, esi
                mov     rdx, [rbp+320h+var_288]
                mov     rax, [rdx+28h]
                cmp     rax, qword ptr cs:xmmword_14000B938
                jnz     short loc_14024FE1A
                mov     rax, [rdx+30h]
                cmp     rax, qword ptr cs:xmmword_14000B938+8
                jnz     short loc_14024FE1A
                cmp     word ptr [r12], 12h
                jnz     short loc_14024FE1A
                or      ebx, 10h
                mov     dword ptr [rbp+320h+var_2E0], ebx
                lea     r8, [rdx+50h]
                xor     cl, cl

loc_14024FE1A:                          ; CODE XREF: sub_14024F4C0+937↑j
                                        ; sub_14024F4C0+944↑j ...
                mov     [rsp+980h+var_958], r8
                mov     byte ptr [rsp+980h+var_960], cl
                lea     r9, [rbp+320h+var_2A0]
                mov     r8d, edi
                mov     edx, [rbp+320h+arg_18]
                mov     rcx, [rbp+320h+var_250]
                call    sub_1405A6034
                cmp     [rbp+320h+var_2A0], 0
                jz      short loc_14024FE55
                cmp     edi, 100h
                jnz     short loc_14024FE55
                mov     cl, 2
                jmp     short loc_14024FE57
; ---------------------------------------------------------------------------

loc_14024FE55:                          ; CODE XREF: sub_14024F4C0+987↑j
                                        ; sub_14024F4C0+98F↑j
                xor     cl, cl

loc_14024FE57:                          ; CODE XREF: sub_14024F4C0+993↑j
                movzx   eax, [rbp+320h+var_320]
                and     al, 0FDh
                or      al, cl
                mov     [rbp+320h+var_320], al

loc_14024FE62:                          ; CODE XREF: sub_14024F4C0+906↑j
                or      [rbp+320h+var_320], 1

loc_14024FE66:                          ; CODE XREF: sub_14024F4C0+88B↑j
                mov     rax, [rbp+320h+var_2A0]
                test    rax, rax
                jz      short loc_14024FE82
                or      ebx, 4
                mov     dword ptr [rbp+320h+var_2E0], ebx
                movzx   eax, word ptr [rax]
                add     r14d, eax
                mov     [rbp+320h+var_310], r14d

loc_14024FE82:                          ; CODE XREF: sub_14024F4C0+5DB↑j
                                        ; sub_14024F4C0+78F↑j ...
                mov     eax, [rbp+320h+var_60]
                lea     rcx, [rax+rax*2]
                shl     rcx, 4
                lea     rdi, [rbp+320h+var_1E0]
                add     rdi, rcx
                mov     [rbp+320h+var_230], rdi
                mov     ecx, [rbp+320h+arg_48]
                test    ecx, ecx
                jz      short loc_14024FF04
                mov     rdx, [rbp+320h+var_280]
                add     rdx, 8
                mov     r8d, ecx
                movzx   edi, [rbp+320h+var_2F4]
                mov     ebx, [rbp+320h+var_2FC]

loc_14024FEC0:                          ; CODE XREF: sub_14024F4C0+A38↓j
                cmp     [rbp+320h+var_2D8], 0
                jnz     short loc_14024FECB
                xor     al, al
                jmp     short loc_14024FECF
; ---------------------------------------------------------------------------

loc_14024FECB:                          ; CODE XREF: sub_14024F4C0+A05↑j
                movzx   eax, byte ptr [rdx+4]

loc_14024FECF:                          ; CODE XREF: sub_14024F4C0+A09↑j
                movzx   ecx, al
                test    al, al
                jz      short loc_14024FEE9
                cmp     ecx, 1
                jnz     short loc_14024FEF0
                add     di, [rdx]
                mov     [rbp+320h+var_2F4], di
                inc     ebx
                mov     [rbp+320h+var_2FC], ebx
                jmp     short loc_14024FEF0
; ---------------------------------------------------------------------------

loc_14024FEE9:                          ; CODE XREF: sub_14024F4C0+A14↑j
                add     r14d, [rdx]
                mov     [rbp+320h+var_310], r14d

loc_14024FEF0:                          ; CODE XREF: sub_14024F4C0+A19↑j
                                        ; sub_14024F4C0+A27↑j
                add     rdx, 10h
                sub     r8, 1
                jnz     short loc_14024FEC0
                mov     ebx, dword ptr [rbp+320h+var_2E0]
                mov     rdi, [rbp+320h+var_230]

loc_14024FF04:                          ; CODE XREF: sub_14024F4C0+9E9↑j
                cmp     [rbp+320h+var_2FC], 0
                jz      short loc_14024FF1B
                movzx   eax, [rbp+320h+var_2F4]
                add     eax, 0Fh
                and     eax, 0FFFFFFF8h
                add     r14d, eax
                mov     [rbp+320h+var_310], r14d

loc_14024FF1B:                          ; CODE XREF: sub_14024F4C0+A48↑j
                movzx   r13d, [rbp+320h+var_308]
                test    r13w, r13w
                jz      short loc_14024FF34
                lea     eax, [r13+0Fh]
                and     eax, 0FFFFFFF8h
                add     r14d, eax
                mov     [rbp+320h+var_310], r14d

loc_14024FF34:                          ; CODE XREF: sub_14024F4C0+A64↑j
                mov     [rdi+28h], r14d
                xor     r12d, r12d
                mov     dword ptr [rsp+980h+var_960], r12d
                lea     r9, [rbp+320h+var_218]
                lea     r8, [rbp+320h+var_200]
                mov     edx, r14d
                mov     rcx, [rbp+320h+var_2A8]
                call    sub_14024B170
                mov     rsi, rax
                mov     [rbp+320h+var_2E0], rax
                test    rax, rax
                jnz     loc_14025000C
                mov     edx, r14d
                mov     rdi, [rbp+320h+var_2A8]
                mov     rcx, rdi
                call    sub_14036CADC
                mov     ebx, eax
                lea     rdx, qword_14000F5A8
                mov     rcx, cs:qword_140C19990
                call    EtwEventEnabled
                test    al, al
                jz      short loc_14024FFB0
                lea     r8, [rdi+98h]
                mov     rcx, [rbp+320h+var_288]
                add     rcx, 28h ; '('
                mov     r9d, ebx
                mov     rdx, [rbp+320h+var_2C0]
                call    sub_1405AAA74

loc_14024FFB0:                          ; CODE XREF: sub_14024F4C0+AD0↑j
                mov     ecx, [rbp+320h+var_2D0]
                test    ecx, ecx
                js      short loc_14024FFC4
                test    dword ptr [rdi+0Ch], 8000000h
                cmovz   ecx, ebx
                mov     [rbp+320h+var_2D0], ecx

loc_14024FFC4:                          ; CODE XREF: sub_14024F4C0+AF5↑j
                mov     r15, [rbp+320h+var_2E8]
                cmp     byte ptr [rbp+320h+var_304], r12b
                jz      short loc_14024FFE6
                mov     eax, [rbp+320h+var_2D4]
                mov     rcx, [r15+1C0h]
                mov     edx, 1
                mov     rcx, [rcx+rax*8]
                call    ExReleaseRundownProtectionCacheAwareEx

loc_14024FFE6:                          ; CODE XREF: sub_14024F4C0+B0C↑j
                cmp     ebx, 0C0000095h
                mov     r14, [rbp+320h+var_2C8]
                mov     rsi, [rbp+320h+var_2B0]
                mov     r9d, 50h ; 'P'
                jnz     loc_14024F6B2
                mov     [rbp+320h+var_2D0], 0C0000095h
                jmp     loc_14024F9EE
; ---------------------------------------------------------------------------

loc_14025000C:                          ; CODE XREF: sub_14024F4C0+AA4↑j
                mov     rax, [rbp+320h+var_2A8]
                mov     [rdi], rax
                mov     [rdi+8], rsi
                movups  xmm0, [rbp+320h+var_200]
                movups  xmmword ptr [rdi+10h], xmm0
                movsd   xmm1, [rbp+320h+var_1F0]
                movsd   qword ptr [rdi+20h], xmm1
                inc     [rbp+320h+var_60]
                mov     eax, [rax+14h]
                or      eax, r14d
                mov     [rsi], eax
                lea     r12, [rsi+4]
                mov     [rbp+320h+var_268], r12
                movzx   eax, [rbp+320h+arg_28]
                mov     [r12], ax
                movzx   eax, [rbp+320h+arg_30]
                mov     [rsi+6], ax
                mov     rax, [rbp+320h+var_288]
                movups  xmm0, xmmword ptr [rax+28h]
                movups  xmmword ptr [rsi+18h], xmm0
                mov     rax, [rbp+320h+var_2C0]
                movups  xmm0, xmmword ptr [rax]
                movups  xmmword ptr [rsi+28h], xmm0
                mov     rax, [rbp+320h+arg_38]
                test    rax, rax
                jz      short loc_14025008A
                movups  xmm0, xmmword ptr [rax]
                jmp     short loc_140250091
; ---------------------------------------------------------------------------

loc_14025008A:                          ; CODE XREF: sub_14024F4C0+BC3↑j
                movups  xmm0, cs:xmmword_14000A340

loc_140250091:                          ; CODE XREF: sub_14024F4C0+BC8↑j
                movups  xmmword ptr [rsi+40h], xmm0
                mov     rax, [rbp+320h+var_218]
                mov     [rsi+10h], rax
                mov     rcx, [rbp+320h+arg_58]
                mov     eax, [rcx+480h]
                mov     [rsi+8], eax
                mov     eax, [rcx+478h]
                mov     [rsi+0Ch], eax
                mov     eax, [rcx+28Ch]
                mov     [rsi+38h], eax
                mov     eax, [rcx+2DCh]
                mov     [rsi+3Ch], eax
                test    ebx, ebx
                jz      loc_1402504AD
                bt      ebx, 8
                jnb     loc_140250182
                lea     r9, [rsi+50h]
                mov     [rbp+320h+var_2B8], r9
                mov     r15, [rbp+320h+var_290]
                movzx   esi, word ptr [r15+1068h]
                add     si, 0Fh
                mov     eax, 0FFF8h
                and     si, ax
                mov     [r9], si
                mov     eax, 10h
                mov     [r9+2], ax
                movzx   eax, word ptr [r15+1068h]
                mov     [r9+6], ax
                xor     eax, eax
                mov     [r9+4], ax
                movzx   r8d, word ptr [r15+1068h]
                sub     si, r8w
                sub     si, 8
                lea     rdi, [r9+8]
                mov     rdx, [r15+1060h]
                mov     rcx, rdi
                call    memmove
                movzx   r8d, si
                movzx   ecx, word ptr [r15+1068h]
                add     rcx, rdi
                xor     edx, edx
                call    memset
                or      word ptr [r12], 1
                mov     rdi, [rbp+320h+var_2B8]
                movzx   r15d, word ptr [rdi]
                add     r15d, 50h ; 'P'
                mov     [rbp+320h+var_2F8], r15d
                mov     [rbp+320h+var_30C], r15d
                mov     [rbp+320h+var_298], rdi
                mov     rsi, [rbp+320h+var_2E0]
                jmp     short loc_140250186
; ---------------------------------------------------------------------------

loc_140250182:                          ; CODE XREF: sub_14024F4C0+C17↑j
                mov     rdi, [rbp+320h+var_2B8]

loc_140250186:                          ; CODE XREF: sub_14024F4C0+CC0↑j
                test    bl, 8
                jz      short loc_1402501D6
                mov     ecx, r15d
                add     rcx, rsi
                mov     dword ptr [rcx], 10018h
                mov     dword ptr [rcx+4], 100000h
                mov     rax, [rbp+320h+arg_40]
                movups  xmm0, xmmword ptr [rax]
                movups  xmmword ptr [rcx+8], xmm0
                or      word ptr [r12], 1
                add     r15d, 18h
                mov     [rbp+320h+var_2F8], r15d
                mov     [rbp+320h+var_30C], r15d
                test    rdi, rdi
                jz      short loc_1402501C8
                or      word ptr [rdi+4], 1

loc_1402501C8:                          ; CODE XREF: sub_14024F4C0+D01↑j
                mov     rdi, rcx
                mov     [rbp+320h+var_2B8], rcx
                mov     [rbp+320h+var_298], rcx

loc_1402501D6:                          ; CODE XREF: sub_14024F4C0+CC9↑j
                test    bl, 2
                jz      short loc_140250226
                mov     edi, r15d
                add     rdi, rsi
                mov     rax, [rbp+320h+var_2C8]
                movzx   r8d, word ptr [rax]
                mov     rdx, rax
                mov     rcx, rdi
                call    memmove
                or      word ptr [r12], 1
                mov     rax, [rbp+320h+var_2C8]
                movzx   eax, word ptr [rax]
                add     r15d, eax
                mov     [rbp+320h+var_2F8], r15d
                mov     [rbp+320h+var_30C], r15d
                mov     r9, [rbp+320h+var_2B8]
                test    r9, r9
                jz      short loc_14025021B
                or      word ptr [r9+4], 1

loc_14025021B:                          ; CODE XREF: sub_14024F4C0+D53↑j
                mov     [rbp+320h+var_2B8], rdi
                mov     [rbp+320h+var_298], rdi

loc_140250226:                          ; CODE XREF: sub_14024F4C0+D19↑j
                test    bl, 1
                jz      short loc_140250293
                mov     edi, r15d
                add     rdi, rsi
                mov     dword ptr [rdi], 30010h
                mov     dword ptr [rdi+4], 40000h
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                call    sub_140245840
                xor     r10d, r10d
                mov     ecx, r10d
                cmp     eax, 0FFFFFFFFh
                cmovnz  ecx, eax
                mov     [rdi+8], ecx
                or      word ptr [r12], 1
                add     r15d, 10h
                mov     [rbp+320h+var_2F8], r15d
                mov     [rbp+320h+var_30C], r15d
                mov     r9, [rbp+320h+var_2B8]
                test    r9, r9
                jz      short loc_140250283
                or      word ptr [r9+4], 1

loc_140250283:                          ; CODE XREF: sub_14024F4C0+DBB↑j
                mov     [rbp+320h+var_2B8], rdi
                mov     [rbp+320h+var_298], rdi
                movzx   r13d, [rbp+320h+var_308]

loc_140250293:                          ; CODE XREF: sub_14024F4C0+D69↑j
                test    bl, 20h
                jz      short loc_140250305
                mov     edx, r15d
                add     rdx, rsi
                mov     dword ptr [rdx], 0D0010h
                mov     dword ptr [rdx+4], 80000h
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     rax, 0FFFFF780000002C4h
                mov     eax, [rax]
                shl     rax, 30h
                or      rax, [rcx+8F8h]
                mov     [rdx+8], rax
                or      word ptr [r12], 1
                add     r15d, 10h
                mov     [rbp+320h+var_2F8], r15d
                mov     [rbp+320h+var_30C], r15d
                test    rdi, rdi
                jz      short loc_1402502F2
                or      word ptr [rdi+4], 1

loc_1402502F2:                          ; CODE XREF: sub_14024F4C0+E2B↑j
                mov     rdi, rdx
                mov     [rbp+320h+var_2B8], rdx
                mov     [rbp+320h+var_298], rdx
                movzx   r13d, [rbp+320h+var_308]

loc_140250305:                          ; CODE XREF: sub_14024F4C0+DD6↑j
                test    bl, 40h
                jz      loc_1402503B4
                mov     r8d, r15d
                add     r8, rsi
                mov     dword ptr [r8], 0A0010h
                mov     dword ptr [r8+4], 80000h
                test    [rbp+320h+var_320], 4
                jnz     short loc_14025037F
                mov     rcx, gs:20h
                mov     rax, [rcx+8328h]
                mov     edx, 1
                lock xadd [rax+8], rdx
                inc     rdx
                mov     eax, [rcx+24h]
                shl     rax, 30h
                mov     rcx, 0FFFFFFFFFFFFh
                and     rdx, rcx
                or      rax, rdx
                mov     [rbp+320h+var_248], rax
                or      [rbp+320h+var_320], 4
                mov     rcx, [rbp+320h+var_210]
                movzx   r13d, [rbp+320h+var_308]
                test    rcx, rcx
                jz      short loc_140250386
                mov     [rcx], rax
                jmp     short loc_140250386
; ---------------------------------------------------------------------------

loc_14025037F:                          ; CODE XREF: sub_14024F4C0+E67↑j
                mov     rax, [rbp+320h+var_248]

loc_140250386:                          ; CODE XREF: sub_14024F4C0+EB8↑j
                                        ; sub_14024F4C0+EBD↑j
                mov     [r8+8], rax
                or      word ptr [r12], 1
                add     r15d, 10h
                mov     [rbp+320h+var_2F8], r15d
                mov     [rbp+320h+var_30C], r15d
                test    rdi, rdi
                jz      short loc_1402503A6
                or      word ptr [rdi+4], 1

loc_1402503A6:                          ; CODE XREF: sub_14024F4C0+EDF↑j
                mov     rdi, r8
                mov     [rbp+320h+var_2B8], r8
                mov     [rbp+320h+var_298], r8

loc_1402503B4:                          ; CODE XREF: sub_14024F4C0+E48↑j
                test    bl, 4
                jz      loc_1402504B1
                mov     edi, r15d
                add     rdi, rsi
                mov     rax, [rbp+320h+var_2A0]
                movzx   r8d, word ptr [rax]
                mov     rdx, rax
                mov     rcx, rdi
                call    memmove
                cmp     qword ptr [rdi+8], 0
                jz      loc_140250476
                test    bl, 10h
                jnz     loc_140250476
                mov     rax, [rbp+320h+var_2E8]
                cmp     rax, cs:qword_140CFB008
                jnz     short loc_14025046E
                mov     edx, 58h ; 'X'
                mov     ecx, 200h
                mov     r8d, 41777445h
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      short loc_14025046E
                mov     edx, [rbp+320h+var_2D4]
                mov     [rsp+980h+var_948], rdx
                mov     [rsp+980h+var_950], 0
                lea     rax, sub_1405A5EE0
                mov     [rsp+980h+var_958], rax
                mov     [rsp+980h+var_960], 0
                mov     r9, rax
                xor     r8d, r8d
                mov     rdx, [rbp+320h+arg_58]
                mov     rcx, rbx
                call    KeInitializeApc
                mov     r8d, [rdi+0Ch]
                mov     edx, [rdi+8]
                xor     r9d, r9d
                mov     rcx, rbx
                call    KeInsertQueueApc
                test    al, al
                jnz     short loc_140250476
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_14025046E:                          ; CODE XREF: sub_14024F4C0+F38↑j
                                        ; sub_14024F4C0+F55↑j
                mov     qword ptr [rdi+8], 0

loc_140250476:                          ; CODE XREF: sub_14024F4C0+F1E↑j
                                        ; sub_14024F4C0+F27↑j ...
                or      word ptr [r12], 1
                mov     rax, [rbp+320h+var_2A0]
                movzx   ecx, word ptr [rax]
                add     r15d, ecx
                mov     [rbp+320h+var_2F8], r15d
                mov     [rbp+320h+var_30C], r15d
                mov     r9, [rbp+320h+var_2B8]
                test    r9, r9
                jz      short loc_1402504A0
                or      word ptr [r9+4], 1

loc_1402504A0:                          ; CODE XREF: sub_14024F4C0+FD8↑j
                mov     [rbp+320h+var_2B8], rdi
                mov     [rbp+320h+var_298], rdi
                jmp     short loc_1402504B1
; ---------------------------------------------------------------------------

loc_1402504AD:                          ; CODE XREF: sub_14024F4C0+C0D↑j
                mov     rdi, [rbp+320h+var_2B8]

loc_1402504B1:                          ; CODE XREF: sub_14024F4C0+EF7↑j
                                        ; sub_14024F4C0+FEB↑j
                test    r13w, r13w
                jz      loc_140250596
                mov     edi, r15d
                add     rdi, rsi
                mov     [rbp+320h+var_230], rdi
                lea     esi, [r13+0Fh]
                mov     eax, 0FFF8h
                and     si, ax
                mov     [rdi], si
                mov     dword ptr [rdi+2], 0Ch
                mov     [rdi+6], r13w
                sub     si, r13w
                sub     si, 8
                mov     [rbp+320h+var_304], si
                lea     r15, [rdi+8]

loc_1402504F3:                          ; DATA XREF: .rdata:000000014005925C↑o
;   __try { // __except at loc_140250522
                movzx   ebx, r13w
                mov     r8d, ebx
                mov     rdx, [rbp+320h+var_240]
                mov     rcx, r15
                call    memmove
                movzx   r8d, si
                lea     rcx, [rbx+r15]
                xor     edx, edx
                call    memset
                mov     r15d, [rbp+320h+var_2F8]
                mov     r9, [rbp+320h+var_2B8]
                jmp     short loc_14025057B
;   } // starts at 1402504F3
; ---------------------------------------------------------------------------

loc_140250522:                          ; DATA XREF: .rdata:000000014005925C↑o
;   __except(1) // owned by 1402504F3
                movzx   ecx, [rbp+320h+var_304]
                movzx   eax, [rbp+320h+var_308]
                add     ecx, eax
                movsxd  r8, ecx
                mov     rdi, [rbp+320h+var_230]
                lea     rcx, [rdi+8]
                xor     edx, edx
                call    memset
                mov     rax, [rbp+320h+var_278]
                mov     [rbp+320h+var_2C8], rax
                mov     rax, [rbp+320h+var_260]
                mov     [rbp+320h+var_2E8], rax
                mov     rcx, [rbp+320h+var_258]
                mov     [rbp+320h+var_290], rcx
                mov     r14d, [rbp+320h+var_310]
                mov     r15d, [rbp+320h+var_30C]
                mov     r9, [rbp+320h+var_298]
                mov     r12, [rbp+320h+var_268]

loc_14025057B:                          ; CODE XREF: sub_14024F4C0+1060↑j
                or      word ptr [r12], 1
                movzx   eax, word ptr [rdi]
                add     r15d, eax
                mov     [rbp+320h+var_30C], r15d
                test    r9, r9
                jz      short loc_140250596
                or      word ptr [r9+4], 1

loc_140250596:                          ; CODE XREF: sub_14024F4C0+FF5↑j
                                        ; sub_14024F4C0+10CE↑j
                mov     r10d, [rbp+320h+var_2FC]
                mov     rsi, [rbp+320h+var_2E0]
                test    r10d, r10d
                jz      short loc_14025060D
                mov     ebx, r15d
                add     rbx, rsi
                movzx   ecx, [rbp+320h+var_2F4]
                lea     edx, [rcx+0Fh]
                mov     eax, 0FFF8h
                and     dx, ax
                mov     [rbx], dx
                mov     dword ptr [rbx+2], 0Bh
                mov     [rbx+6], cx
                sub     dx, cx
                sub     dx, 8
                lea     r13, [rbx+8]
                mov     [rbp+320h+var_270], r13
                add     rcx, r13
                mov     [rbp+320h+var_208], rcx
                movzx   r8d, dx
                xor     edx, edx
                call    memset
                or      word ptr [r12], 1
                movzx   eax, word ptr [rbx]
                add     r15d, eax
                mov     [rbp+320h+var_30C], r15d
                mov     r10d, [rbp+320h+var_2FC]
                test    rdi, rdi
                jz      short loc_140250614
                or      word ptr [rdi+4], 1
                jmp     short loc_140250614
; ---------------------------------------------------------------------------

loc_14025060D:                          ; CODE XREF: sub_14024F4C0+10E1↑j
                mov     r13, [rbp+320h+var_270]

loc_140250614:                          ; CODE XREF: sub_14024F4C0+1144↑j
                                        ; sub_14024F4C0+114B↑j
                xor     r12d, r12d
                mov     edi, r12d

loc_14025061A:                          ; CODE XREF: sub_14024F4C0+12A7↓j
                                        ; sub_14024F4C0+132F↓j
                mov     [rbp+320h+var_2F0], edi
                cmp     edi, [rbp+320h+arg_48]
                jnb     loc_1402507F4
                mov     ecx, edi
                add     rcx, rcx
                mov     rax, [rbp+320h+var_280]
                mov     edx, [rax+rcx*8+8]
                mov     [rbp+320h+var_2F8], edx
                mov     r9, [rax+rcx*8]
                cmp     [rbp+320h+var_2D8], 0
                jnz     short loc_14025064C
                xor     r8b, r8b
                jmp     short loc_140250652
; ---------------------------------------------------------------------------

loc_14025064C:                          ; CODE XREF: sub_14024F4C0+1185↑j
                movzx   r8d, byte ptr [rax+rcx*8+0Ch]

loc_140250652:                          ; CODE XREF: sub_14024F4C0+118A↑j
                movzx   ecx, r8b
                test    r8b, r8b
                jz      loc_14025076C
                sub     ecx, 1
                jz      short loc_1402506C1
                cmp     ecx, 2
                jnz     loc_1402507E6
                cmp     edx, 8
                jnz     loc_1402507E6

loc_140250676:                          ; DATA XREF: .rdata:000000014005926C↑o
;   __try { // __except at loc_140250682
                mov     rax, [r9]
                mov     [rsi+10h], rax
                jmp     loc_1402507E6
;   } // starts at 140250676
; ---------------------------------------------------------------------------

loc_140250682:                          ; DATA XREF: .rdata:000000014005926C↑o
;   __except(1) // owned by 140250676
                xor     r12d, r12d
                mov     rcx, [rbp+320h+var_278]
                mov     [rbp+320h+var_2C8], rcx
                mov     rcx, [rbp+320h+var_260]
                mov     [rbp+320h+var_2E8], rcx
                mov     rdx, [rbp+320h+var_258]
                mov     [rbp+320h+var_290], rdx
                mov     r14d, [rbp+320h+var_310]
                mov     edi, [rbp+320h+var_2F0]
                mov     r15d, [rbp+320h+var_30C]
                mov     rsi, [rbp+320h+var_2E0]
                mov     r10d, [rbp+320h+var_2FC]
                jmp     loc_1402507E6
; ---------------------------------------------------------------------------

loc_1402506C1:                          ; CODE XREF: sub_14024F4C0+11A2↑j
                test    r13, r13
                jz      loc_14025095F
                mov     rbx, rdx
                mov     [rbp+320h+var_268], rdx
                lea     rax, [rdx+r13]
                cmp     rax, [rbp+320h+var_208]
                ja      loc_14025095F
                test    r10d, r10d
                jz      loc_14025095F

loc_1402506EE:                          ; DATA XREF: .rdata:000000014005927C↑o
;   __try { // __except at loc_1402506FE
                mov     r8, rdx
                mov     rdx, r9
                mov     rcx, r13
                call    memmove
                jmp     short loc_140250750
;   } // starts at 1402506EE
; ---------------------------------------------------------------------------

loc_1402506FE:                          ; DATA XREF: .rdata:000000014005927C↑o
;   __except(1) // owned by 1402506EE
                mov     r8d, [rbp+320h+var_2F8]
                xor     edx, edx
                mov     r13, [rbp+320h+var_270]
                mov     rcx, r13
                call    memset
                xor     r12d, r12d
                mov     rax, [rbp+320h+var_278]
                mov     [rbp+320h+var_2C8], rax
                mov     rax, [rbp+320h+var_260]
                mov     [rbp+320h+var_2E8], rax
                mov     rax, [rbp+320h+var_258]
                mov     [rbp+320h+var_290], rax
                mov     r14d, [rbp+320h+var_310]
                mov     edi, [rbp+320h+var_2F0]
                mov     r15d, [rbp+320h+var_30C]
                mov     rbx, [rbp+320h+var_268]
                mov     rsi, [rbp+320h+var_2E0]

loc_140250750:                          ; CODE XREF: sub_14024F4C0+123C↑j
                add     r13, rbx
                mov     [rbp+320h+var_270], r13
                mov     r10d, [rbp+320h+var_2FC]
                dec     r10d
                mov     [rbp+320h+var_2FC], r10d
                inc     edi
                jmp     loc_14025061A
; ---------------------------------------------------------------------------

loc_14025076C:                          ; CODE XREF: sub_14024F4C0+1199↑j
                mov     ecx, r15d
                add     rcx, rsi
                mov     [rbp+320h+var_268], rcx
                add     r15d, edx
                mov     [rbp+320h+var_30C], r15d
                cmp     r15d, r14d
                ja      loc_14025097A

loc_140250789:                          ; DATA XREF: .rdata:000000014005928C↑o
;   __try { // __except at loc_14025079A
                mov     r8, rdx
                mov     rdx, r9
                call    memmove
                mov     r10d, [rbp+320h+var_2FC]
                jmp     short loc_1402507E6
;   } // starts at 140250789
; ---------------------------------------------------------------------------

loc_14025079A:                          ; DATA XREF: .rdata:000000014005928C↑o
;   __except(1) // owned by 140250789
                mov     r8d, [rbp+320h+var_2F8]
                xor     edx, edx
                mov     rcx, [rbp+320h+var_268]
                call    memset
                xor     r12d, r12d
                mov     rax, [rbp+320h+var_278]
                mov     [rbp+320h+var_2C8], rax
                mov     rax, [rbp+320h+var_260]
                mov     [rbp+320h+var_2E8], rax
                mov     rax, [rbp+320h+var_258]
                mov     [rbp+320h+var_290], rax
                mov     r14d, [rbp+320h+var_310]
                mov     edi, [rbp+320h+var_2F0]
                mov     r15d, [rbp+320h+var_30C]
                mov     rsi, [rbp+320h+var_2E0]
                mov     r10d, [rbp+320h+var_2FC]

loc_1402507E6:                          ; CODE XREF: sub_14024F4C0+11A7↑j
                                        ; sub_14024F4C0+11B0↑j ...
                inc     edi
                mov     r13, [rbp+320h+var_270]
                jmp     loc_14025061A
; ---------------------------------------------------------------------------

loc_1402507F4:                          ; CODE XREF: sub_14024F4C0+1163↑j
                mov     rbx, [rbp+320h+var_2A8]
                test    dword ptr [rbx+0Ch], 80000h
                jz      short loc_14025082B
                cmp     cs:KdDebuggerNotPresent, 0
                jnz     short loc_140250813
                cmp     cs:byte_140C0F430, 0
                jz      short loc_14025081C

loc_140250813:                          ; CODE XREF: sub_14024F4C0+1348↑j
                cmp     cs:byte_140C40743, 0
                jz      short loc_14025082B

loc_14025081C:                          ; CODE XREF: sub_14024F4C0+1351↑j
                lea     rdx, [rbp+320h+var_200]
                mov     rcx, rbx
                call    sub_1405AAE2C

loc_14025082B:                          ; CODE XREF: sub_14024F4C0+133F↑j
                                        ; sub_14024F4C0+135A↑j
                cmp     qword ptr [rbx+4F8h], 0
                jz      short loc_140250852
                mov     r8, [rbp+320h+var_288]
                add     r8, 28h ; '('
                xor     r9d, r9d
                lea     rdx, [rbp+320h+var_200]
                mov     rcx, rbx
                call    sub_1405AB93C

loc_140250852:                          ; CODE XREF: sub_14024F4C0+1373↑j
                mov     rcx, [rbp+320h+var_238]
                test    rcx, rcx
                mov     r14, [rbp+320h+var_2C8]
                mov     r11, [rbp+320h+var_2C0]
                mov     r15, [rbp+320h+var_2E8]
                mov     rsi, [rbp+320h+var_2B0]
                mov     r8d, 1
                lea     r9d, [r8+4Fh]
                jz      loc_14024F6BC
                mov     edx, [rbp+320h+var_2D4]
                mov     eax, edx
                shr     eax, 5
                lea     rcx, [rcx+rax*4]
                and     edx, 1Fh
                mov     eax, [rcx]
                bts     eax, edx
                mov     [rcx], eax
                jmp     loc_14024F6BC
; ---------------------------------------------------------------------------

loc_140250897:                          ; CODE XREF: sub_14024F4C0+54F↑j
                mov     r8, [rbp+320h+var_2C0]
                mov     rdx, [r8+8]
                movzx   ecx, byte ptr [r8+4]
                cmp     [rbp+320h+var_300], 2
                setb    al
                mov     byte ptr [rsp+370h+var_338], al
                mov     [rsp+370h+var_340], r8
                mov     eax, [rbp+320h+var_2D0]
                mov     [rsp+370h+var_348], eax
                movzx   eax, [rbp+320h+var_318]
                mov     byte ptr [rsp+370h+var_350], al
                lea     r9, [rbp+320h+var_1E0]
                mov     r8, [rbp+320h+var_288]
                call    sub_14036C844

loc_1402508D6:                          ; CODE XREF: sub_14024F4C0+55D↑j
                                        ; sub_14024F4C0+5A3↑j
                cmp     [rbp+320h+var_2FF], 0
                jz      short loc_1402508E8
                mov     rcx, [rbp+320h+var_250]
                call    sub_14021E1F0

loc_1402508E8:                          ; CODE XREF: sub_14024F4C0+141A↑j
                test    r14, r14
                jz      short loc_140250938
                mov     rdx, gs:20h
                mov     rcx, [rdx+880h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jb      short loc_140250930
                inc     dword ptr [rcx+20h]
                mov     rcx, [rdx+888h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jb      short loc_140250930
                inc     dword ptr [rcx+20h]
                mov     rax, [rcx+38h]
                mov     rcx, r14
                call    sub_1404079D0
                jmp     short loc_140250938
; ---------------------------------------------------------------------------

loc_140250930:                          ; CODE XREF: sub_14024F4C0+1447↑j
                                        ; sub_14024F4C0+145D↑j
                mov     rdx, r14
                call    ExpInterlockedPushEntrySList

loc_140250938:                          ; CODE XREF: sub_14024F4C0+142B↑j
                                        ; sub_14024F4C0+146E↑j
                mov     eax, [rbp+320h+var_2D0]

loc_14025093B:                          ; CODE XREF: sub_14024F4C0+11A↑j
                mov     rcx, [rbp+320h+var_50]
                xor     rcx, rbp
                call    __security_check_cookie
                lea     rsp, [rbp+2E8h]
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

loc_14025095F:                          ; CODE XREF: sub_14024F4C0+1204↑j
                                        ; sub_14024F4C0+121F↑j ...
                mov     r9d, r14d
                mov     r8d, r15d
                mov     [rsp+980h+var_960], r12
                mov     edx, 5
                mov     ecx, 11Dh
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14025097A:                          ; CODE XREF: sub_14024F4C0+12C3↑j
                mov     r9d, r14d
                mov     r8d, r15d
                mov     [rsp+980h+var_960], r12
                mov     edx, 5
                mov     ecx, 11Dh
                call    KeBugCheckEx
                nop
; } // starts at 14024F4C0
sub_14024F4C0   endp ; sp-analysis failed


loc_140250995:                          ; DATA XREF: .pdata:00000001400CCBF4↑o
                int     3               ; Trap to Debugger
                int     3               ; Trap to Debugger
                int     3               ; Trap to Debugger
                int     3               ; Trap to Debugger
                int     3               ; Trap to Debugger
                int     3               ; Trap to Debugger
                int     3               ; Trap to Debugger
                int     3               ; Trap to Debugger
                int     3               ; Trap to Debugger
                int     3               ; Trap to Debugger
                int     3               ; Trap to Debugger

; =============== S U B R O U T I N E =======================================


sub_1402509A0   proc near               ; DATA XREF: .rdata:0000000140008F78↑o
                                        ; .rdata:00000001400592B8↑o ...

arg_0           = byte ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 0000000140435C72 SIZE 00000015 BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                push    rdi
                sub     rsp, 20h
                mov     rbx, [rcx+88h]
                mov     rdx, cs:qword_140C4BFB0
                mov     rcx, rdx
                movzx   esi, byte ptr [rbx+29h]
                call    sub_140250E40
                mov     rcx, rax
                mov     rax, [rdx+78h]
                call    sub_1404079D0
                mov     eax, 1
                lock xadd cs:dword_140C11084, eax
                inc     eax
                lea     rcx, unk_140C48D00
                and     eax, 0Fh
                lea     rax, [rax+rax*2]
                lea     rdi, [rcx+rax*8]
                lea     rcx, [rsp+28h+arg_0]
                call    sub_140250BC0
                mov     [rdi], rax
                mov     eax, gs:1A4h
                mov     [rdi+8], eax
                mov     rax, gs:20h
                movzx   ecx, byte ptr [rax+22h]
                and     cl, 1
                mov     [rdi+0Ch], cl
                mov     rax, gs:18h
                movzx   ecx, byte ptr [rax+0D6h]
                mov     [rdi+0Dh], cl
                mov     rax, gs:20h
                movzx   ecx, byte ptr [rax+21h]
                mov     eax, cs:dword_140C314C0
                mov     [rdi+0Eh], cl
                mov     [rdi+10h], eax
                mov     rax, gs:18h
                cmp     byte ptr [rax+0D6h], 0
                jnz     loc_140435C72
                mov     rax, gs:20h
                test    byte ptr [rax+22h], 1
                jz      loc_140250B4A
                movzx   edx, sil
                mov     rcx, rbx
                call    KeClockInterruptNotify
                mov     rax, gs:20h
                cmp     byte ptr [rax+21h], 0
                jz      loc_140250B4A
                mov     rcx, cs:qword_140C4BFB0
                mov     rdi, 0FFFFF78000000008h
                mov     rdx, [rdi]
                mov     eax, [rcx+3Ch]
                sub     eax, edx
                cmp     eax, 47868C00h
                jbe     short loc_140250AC5
                lea     eax, [rdx+47868C00h]
                mov     byte ptr cs:dword_140C4A5E8+1, 1
                mov     [rcx+3Ch], eax

loc_140250AC5:                          ; CODE XREF: sub_1402509A0+113↑j
                mov     eax, cs:dword_140C4A5E8
                test    eax, eax
                jz      short loc_140250AF2
                cmp     byte ptr cs:dword_140C4A5E8, 0
                jz      loc_140250BA0

loc_140250ADC:                          ; CODE XREF: sub_1402509A0+20D↓j
                mov     edx, eax
                mov     word ptr cs:dword_140C4A5E8, 0
                shr     edx, 8
                movzx   ecx, al
                call    sub_1403615B8

loc_140250AF2:                          ; CODE XREF: sub_1402509A0+12D↑j
                                        ; sub_1402509A0+207↓j
                mov     rax, gs:20h
                cmp     byte ptr [rax+21h], 0
                jnz     short loc_140250B5D

loc_140250B01:                          ; CODE XREF: sub_1402509A0+1C5↓j
                                        ; sub_1402509A0+1EE↓j ...
                mov     eax, gs:1A4h
                lea     rdx, [rax+rax*2]
                mov     rax, cs:qword_140C4AE48
                lea     rbx, [rax+rdx*8]
                cmp     [rbx], rbx
                jz      short loc_140250B4A
                mov     rax, [rdi]
                sub     rax, [rbx+10h]
                cmp     rax, 4C4B40h
                jb      short loc_140250B4A
                mov     rax, cs:off_140C007D8
                xor     edx, edx
                xor     ecx, ecx
                call    sub_1404079D0
                mov     rax, ds:0FFFFF78000000008h
                mov     [rbx+10h], rax

loc_140250B4A:                          ; CODE XREF: sub_1402509A0+D0↑j
                                        ; sub_1402509A0+EF↑j ...
                mov     rbx, [rsp+28h+arg_8]
                mov     al, 1
                mov     rsi, [rsp+28h+arg_10]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140250B5D:                          ; CODE XREF: sub_1402509A0+15F↑j
                cmp     cs:qword_140C4BEE8, 0
                jz      short loc_140250B01
                mov     rax, [rdi]
                sub     rax, cs:qword_140C4A490
                cmp     rax, cs:qword_140C4A480
                jbe     short loc_140250B86
                mov     rax, cs:off_140C008C0
                call    sub_1404079D0

loc_140250B86:                          ; CODE XREF: sub_1402509A0+1D8↑j
                cmp     cs:qword_140C4A480, 0FFFFFFFFFFFFFFFFh
                jnz     loc_140250B01
                xor     ecx, ecx
                call    sub_1404C2980
                jmp     loc_140250B01
; ---------------------------------------------------------------------------

loc_140250BA0:                          ; CODE XREF: sub_1402509A0+136↑j
                cmp     byte ptr cs:dword_140C4A5E8+1, 0
                jz      loc_140250AF2
                jmp     loc_140250ADC
sub_1402509A0   endp

; ---------------------------------------------------------------------------
algn_140250BB2:                         ; DATA XREF: .rdata:00000001400592B8↑o
                                        ; .pdata:00000001400CCC00↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140250BC0   proc near               ; CODE XREF: sub_140214830+47↑p
                                        ; sub_1402509A0+5B↑p ...

arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 20h
                mov     rsi, rcx
                xor     r15d, r15d
                mov     r14, 0FFFFF78000000340h
                mov     r12, 0FFFFF78000000350h
                mov     r13, 0FFFFF78000000008h

loc_140250C00:                          ; CODE XREF: sub_140250BC0+BA↓j
                                        ; sub_140250BC0+BE↓j
                mov     rbx, [r14]
                test    bl, 1
                jnz     short loc_140250C78
                mov     rdi, [r12]
                xor     ecx, ecx
                mov     rbp, [r13+0]
                call    KeQueryPerformanceCounter
                mov     rdx, rax
                mov     rax, [r14]
                cmp     rax, rbx
                jnz     short loc_140250C7C
                mov     [rsi], rdx
                cmp     rdx, rdi
                jbe     short loc_140250C80
                mov     al, ds:0FFFFF78000000369h
                sub     rdx, rdi
                mov     r8, 0FFFFF78000000360h
                dec     rdx
                mov     r8, [r8]
                test    al, al
                jz      short loc_140250C50
                movzx   ecx, al
                shl     rdx, cl

loc_140250C50:                          ; CODE XREF: sub_140250BC0+88↑j
                mov     rax, r8
                mul     rdx
                lea     rax, [rdx+rbp]

loc_140250C5A:                          ; CODE XREF: sub_140250BC0+C4↓j
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
                align 8

loc_140250C78:                          ; CODE XREF: sub_140250BC0+46↑j
                pause
                jmp     short loc_140250C00
; ---------------------------------------------------------------------------

loc_140250C7C:                          ; CODE XREF: sub_140250BC0+60↑j
                pause
                jmp     short loc_140250C00
; ---------------------------------------------------------------------------

loc_140250C80:                          ; CODE XREF: sub_140250BC0+68↑j
                lea     rax, [r15+rbp]
                jmp     short loc_140250C5A
sub_140250BC0   endp

; ---------------------------------------------------------------------------
algn_140250C86:                         ; DATA XREF: .pdata:00000001400CCC0C↑o
                align 10h
; Exported entry 1340. KeStallExecutionProcessor

; =============== S U B R O U T I N E =======================================


