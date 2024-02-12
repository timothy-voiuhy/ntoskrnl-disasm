IoCleanupIrp    proc near               ; DATA XREF: .rdata:0000000140099C38↑o
                                        ; .pdata:00000001400DC398↑o

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014049D48A SIZE 0000002E BYTES

                sub     rsp, 38h
                xor     eax, eax
                cmp     word ptr [rcx], 6
                jnz     loc_14049D48A
                test    byte ptr [rcx+47h], 40h
                mov     [rcx], ax
                jnz     loc_14049D4A5

loc_14038FECD:                          ; CODE XREF: IoCleanupIrp+10D603↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCleanupIrp    endp

byte_14038FED3  db 9 dup(0CCh)          ; DATA XREF: .rdata:0000000140099C38↑o
                                        ; .pdata:00000001400DC398↑o

; =============== S U B R O U T I N E =======================================


sub_14038FEDC   proc near               ; CODE XREF: sub_14028EEC0+33C↑p
                                        ; std::time_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::_Getint(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,int,int,int &)+12F↑p ...

var_28          = byte ptr -28h
var_20          = dword ptr -20h
var_18          = qword ptr -18h
arg_20          = byte ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 000000014049D4B8 SIZE 0000002B BYTES

                push    rbx
                sub     rsp, 40h
                mov     r10, rcx
                test    rdx, rdx
                jz      short loc_14038FEF7
                call    sub_14039040C
                test    al, al
                jnz     loc_14049D4B8

loc_14038FEF7:                          ; CODE XREF: sub_14038FEDC+C↑j
                mov     rax, [rsp+48h+arg_30]
                mov     rcx, r10
                mov     bl, [rsp+48h+arg_20]
                mov     [rsp+48h+var_18], rax
                mov     eax, [rsp+48h+arg_28]
                mov     [rsp+48h+var_20], eax
                mov     [rsp+48h+var_28], bl
                call    sub_14038FF2C

loc_14038FF1C:                          ; CODE XREF: sub_14038FEDC+10D602↓j
                mov     al, bl
                add     rsp, 40h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14038FEDC   endp

byte_14038FF25  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140099C54↑o
                                        ; .pdata:00000001400DC3A4↑o

; =============== S U B R O U T I N E =======================================


sub_14038FF2C   proc near               ; CODE XREF: sub_14038FEDC+3B↑p
                                        ; DATA XREF: .rdata:0000000140099C70↑o ...

var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
arg_20          = byte ptr  28h
arg_28          = dword ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 000000014049D4E4 SIZE 00000024 BYTES

                push    rbx
                sub     rsp, 50h
                xor     eax, eax
                xorps   xmm0, xmm0
                mov     bl, r9b
                mov     [rsp+58h+var_18], rax
                movups  [rsp+58h+var_28], xmm0
                cmp     [rsp+58h+arg_20], al
                jz      short loc_14038FF60
                mov     r9b, r8b
                mov     r8, rdx
                mov     rdx, rcx
                lea     rcx, [rsp+58h+var_28]
                call    sub_140390318

loc_14038FF60:                          ; CODE XREF: sub_14038FF2C+1F↑j
                mov     r10, [rsp+58h+arg_30]
                mov     r9d, [rsp+58h+arg_28]
                mov     rdx, r10
                mov     ecx, r9d
                call    sub_140390558
                mov     r11d, eax
                cmp     eax, 0Bh
                ja      loc_14049D4E4
                mov     edx, r9d
                mov     cl, bl
                call    sub_14039052C
                test    al, al
                jz      loc_14049D4E4
                mov     r8b, [rsp+58h+arg_20]
                lea     rcx, [rsp+58h+var_28]
                mov     [rsp+58h+var_30], r11d
                mov     dl, bl
                mov     [rsp+58h+var_38], r10
                call    sub_14038FFC4

loc_14038FFB7:                          ; CODE XREF: sub_14038FF2C+10D5D7↓j
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_14038FF2C   endp

byte_14038FFBE  db 6 dup(0CCh)          ; DATA XREF: .rdata:0000000140099C70↑o
                                        ; .pdata:00000001400DC3B0↑o

; =============== S U B R O U T I N E =======================================


sub_14038FFC4   proc near               ; CODE XREF: sub_14038FF2C+86↑p
                                        ; DATA XREF: .pdata:00000001400DC3BC↑o

var_A8          = dword ptr -0A8h
var_98          = qword ptr -98h
var_88          = xmmword ptr -88h
var_78          = qword ptr -78h
var_70          = byte ptr -70h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_20          = qword ptr  28h
arg_28          = dword ptr  30h

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 0C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0C8h+var_18], rax
                mov     rdi, [rsp+0C8h+arg_20]
                mov     ebx, r9d
                mov     sil, dl
                test    r8b, r8b
                jz      short loc_140390078
                mov     eax, [rsp+0C8h+arg_28]
                movups  xmm0, xmmword ptr [rcx]
                mov     [rsp+0C8h+var_98], 3
                movsd   xmm1, qword ptr [rcx+10h]
                lea     ebp, ds:18h[rax*8]
                movaps  [rsp+0C8h+var_88], xmm0
                and     eax, 0FFFh
                movsd   [rsp+0C8h+var_78], xmm1
                mov     dword ptr [rsp+0C8h+var_98+4], eax
                mov     eax, cs:dword_140CFC40C
                shr     eax, 0Dh
                and     eax, 1
                jnz     short loc_140390046
                or      qword ptr [r11-80h], 8

loc_140390046:                          ; CODE XREF: sub_14038FFC4+7B↑j
                lea     r9, [rsp+0C8h+var_70]
                mov     r8b, al
                mov     rdx, rdi
                mov     ecx, ebx
                call    sub_1403904DC
                bts     dword ptr [rsp+0C8h+var_98], 10h
                lea     rdx, [rsp+0C8h+var_88]
                mov     rcx, [rsp+0C8h+var_98]
                xor     r9d, r9d
                and     [rsp+0C8h+var_A8], 0
                mov     r8d, ebp
                call    HvlInvokeFastExtendedHypercall

loc_140390078:                          ; CODE XREF: sub_14038FFC4+3A↑j
                test    sil, sil
                jnz     short loc_1403900A7

loc_14039007D:                          ; CODE XREF: sub_14038FFC4+ED↓j
                mov     rcx, [rsp+0C8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0C8h+var_8]
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403900A7:                          ; CODE XREF: sub_14038FFC4+B7↑j
                mov     edx, ebx
                mov     rcx, rdi
                call    sub_140390574
                jmp     short loc_14039007D
; } // starts at 14038FFC4
sub_14038FFC4   endp

; ---------------------------------------------------------------------------
algn_1403900B3:                         ; DATA XREF: .pdata:00000001400DC3BC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403900C0   proc near               ; CODE XREF: sub_140225CC0+37D↑p
                                        ; sub_14022CA60+535↑p ...

arg_8           = qword ptr  10h

                sub     rsp, 28h
                mov     [rsp+28h+arg_8], 8
                xor     r8d, r8d
                mov     edx, ecx
                mov     dword ptr [rsp+28h+arg_8], 10008h
                mov     rcx, [rsp+28h+arg_8]
                call    HvlInvokeHypercall
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403900C0   endp

algn_1403900EA:                         ; DATA XREF: .pdata:00000001400DC3C8↑o
                align 10h
; Exported entry 704. HvlUpdatePerformanceStateCountersForLp

; =============== S U B R O U T I N E =======================================


