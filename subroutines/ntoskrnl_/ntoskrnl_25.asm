ntoskrnl_25     proc near               ; CODE XREF: sub_1407AA7C0+58↓p
                                        ; DATA XREF: .pdata:00000001400DEA80↑o
                sub     rsp, 28h
                lea     rax, ExUpdateLicenseData
                xor     ecx, ecx
                mov     cs:qword_140D2D490, rax
                lea     rdx, unk_140D2D370
                lea     rax, ntoskrnl_27
                mov     cs:qword_140D2D498, rax
                lea     rax, ntoskrnl_28
                mov     cs:qword_140D2D4A0, rax
                mov     rax, cs:SeExports
                mov     cs:qword_140D2D4A8, rax
                call    cs:ClipSpInitialize
                nop     dword ptr [rax+rax+00h]
                call    sub_1407AB8BC
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
ntoskrnl_25     endp

byte_1403B815C  db 8 dup(0CCh)          ; DATA XREF: .pdata:00000001400DEA80↑o

; =============== S U B R O U T I N E =======================================


sub_1403B8164   proc near               ; CODE XREF: sub_1403C9B80+E92F9↓p
                                        ; sub_14050A634+228↓p ...

arg_0           = qword ptr  8

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                mov     rdi, rcx
                mov     ebx, 0C0000002h
                mov     rcx, cs:qword_140C1D8D0
                call    sub_140309D44
                test    rax, rax
                jz      short loc_1403B81A7
                mov     rax, [rax+20h]
                xor     edx, edx
                mov     rcx, rdi
                call    sub_1404079D0
                mov     rcx, cs:qword_140C1D8D0
                mov     ebx, eax
                add     rcx, 40h ; '@'
                call    sub_14024C380

loc_1403B81A7:                          ; CODE XREF: sub_1403B8164+21↑j
                mov     eax, ebx
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B8164   endp

byte_1403B81B5  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DEA8C↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403B81BC   proc near               ; CODE XREF: sub_140A60D0C+33↓p
                                        ; DATA XREF: .pdata:00000001400DEA98↑o

var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_8           = dword ptr  28h
arg_10          = dword ptr  30h
arg_18          = dword ptr  38h

; __unwind { // __GSHandlerCheck
                mov     [rsp-18h+arg_18], r9d
                mov     [rsp-18h+arg_10], r8d
                mov     [rsp-18h+arg_8], edx
                push    rbp
                push    rbx
                push    rdi
                mov     rbp, rsp
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+var_10], rax
                mov     rdi, cs:qword_140C50B90
                xor     ebx, ebx
                test    rdi, rdi
                jz      short loc_1403B8268
                lea     rdx, qword_14000D750
                mov     rcx, rdi
                call    EtwEventEnabled
                test    al, al
                jz      short loc_1403B8268
                lea     rax, [rbp+arg_8]
                mov     [rbp+var_38], 4
                mov     [rbp+var_40], rax
                lea     rdx, qword_14000D750
                lea     rax, [rbp+arg_10]
                mov     [rbp+var_28], 4
                mov     [rbp+var_30], rax
                xor     r9d, r9d
                lea     rax, [rbp+arg_18]
                mov     [rbp+var_18], 4
                mov     [rbp+var_20], rax
                xor     r8d, r8d
                lea     rax, [rbp+var_40]
                mov     rcx, rdi
                mov     [rsp+80h+var_48], rax
                mov     [rsp+80h+var_50], 3
                mov     [rsp+80h+var_58], rbx
                mov     [rsp+80h+var_60], rbx
                call    EtwWriteEx
                mov     ebx, eax

loc_1403B8268:                          ; CODE XREF: sub_1403B81BC+35↑j
                                        ; sub_1403B81BC+48↑j
                mov     eax, ebx
                mov     rcx, [rbp+var_10]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 80h
                pop     rdi
                pop     rbx
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403B81BC
sub_1403B81BC   endp

algn_1403B8282:                         ; DATA XREF: .pdata:00000001400DEA98↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403B8288   proc near               ; CODE XREF: sub_140A610CC+20↓p
                                        ; sub_140A610CC+6C↓p
                                        ; DATA XREF: ...

var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rsi
                mov     [rsp+arg_8], edx
                push    rdi
                sub     rsp, 60h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+68h+var_18], rax
                mov     rdi, cs:qword_140C50B90
                xor     ebx, ebx
                mov     rsi, rcx
                test    rdi, rdi
                jz      short loc_1403B830C
                mov     rdx, rcx
                mov     rcx, rdi
                call    EtwEventEnabled
                test    al, al
                jz      short loc_1403B830C
                lea     rax, [rsp+68h+arg_8]
                mov     [rsp+68h+var_20], 4
                mov     [rsp+68h+var_28], rax
                xor     r9d, r9d
                lea     rax, [rsp+68h+var_28]
                xor     r8d, r8d
                mov     [rsp+68h+var_30], rax
                mov     rdx, rsi
                mov     [rsp+68h+var_38], 1
                mov     rcx, rdi
                mov     [rsp+68h+var_40], rbx
                mov     [rsp+68h+var_48], rbx
                call    EtwWriteEx
                mov     ebx, eax

loc_1403B830C:                          ; CODE XREF: sub_1403B8288+31↑j
                                        ; sub_1403B8288+40↑j
                mov     eax, ebx
                mov     rcx, [rsp+68h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+68h+var_8]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403B8288
sub_1403B8288   endp

byte_1403B832E  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400DEAA4↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1403B8334   proc near               ; CODE XREF: sub_140A5FD74+50C↓p
                                        ; sub_140A5FD74+26EC4↓p ...

var_40          = qword ptr -40h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = qword ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  40h
arg_8           = dword ptr  48h
arg_10          = qword ptr  50h

                mov     [rsp-38h+arg_0], rbx
                mov     [rsp-38h+arg_8], edx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 60h
                xor     edi, edi
                mov     [rbp+var_18], 6E006Ch
                mov     r15, r9
                mov     [rbp+var_30], rdi
                mov     r12, r8
                mov     [rbp+arg_10], rdi
                mov     r13, rcx
                mov     [rbp+var_28], rdi
                lea     rax, aRegistryMachin_5 ; "\\Registry\\Machine\\System\\CurrentCon"...
                mov     [rbp+var_20], rdi
                mov     r9d, 20019h
                mov     [rbp+var_10], rax
                lea     r8, [rbp+var_18]
                xor     edx, edx
                lea     rcx, [rbp+arg_10]
                mov     ebx, edi
                call    sub_1407AC120
                mov     r14d, eax
                test    eax, eax
                js      short loc_1403B83F7
                mov     rcx, [rbp+arg_10]
                lea     r9, [rbp+var_30]
                xor     r8d, r8d
                lea     rdx, aPollbootpartit ; "PollBootPartitionTimeout"
                call    sub_140739D08
                mov     r14d, eax
                test    eax, eax
                js      short loc_1403B83EE
                mov     rcx, [rbp+var_30]
                cmp     dword ptr [rcx+0Ch], 4
                jnz     short loc_1403B83E1
                mov     eax, [rcx+8]
                mov     ebx, [rax+rcx]
                cmp     ebx, 0C8h
                jnb     short loc_1403B83D5
                mov     ebx, edi
                jmp     short loc_1403B83E7
; ---------------------------------------------------------------------------

loc_1403B83D5:                          ; CODE XREF: sub_1403B8334+9B↑j
                mov     eax, 2BF20h
                cmp     ebx, eax
                cmova   ebx, eax
                jmp     short loc_1403B83E7
; ---------------------------------------------------------------------------

loc_1403B83E1:                          ; CODE XREF: sub_1403B8334+8D↑j
                mov     r14d, 0C0000001h

loc_1403B83E7:                          ; CODE XREF: sub_1403B8334+9F↑j
                                        ; sub_1403B8334+AB↑j
                xor     edx, edx
                call    ExFreePoolWithTag

loc_1403B83EE:                          ; CODE XREF: sub_1403B8334+83↑j
                mov     rcx, [rbp+arg_10]
                call    ZwClose

loc_1403B83F7:                          ; CODE XREF: sub_1403B8334+65↑j
                lea     rcx, [rbp+var_28]
                mov     [rbp+var_30], 0FFFFFFFFFFE17B80h
                call    RtlFreeUnicodeString
                lea     r8, [rbp+var_28]
                mov     rdx, r15
                mov     rcx, r13
                mov     rax, r12
                call    sub_1404079D0
                mov     esi, eax
                test    eax, eax
                jns     short loc_1403B8462
                test    r14d, r14d
                cmovns  edi, ebx

loc_1403B8426:                          ; CODE XREF: sub_1403B8334+128↓j
                test    edi, edi
                jle     short loc_1403B845E
                lea     r8, [rbp+var_30]
                xor     edx, edx
                xor     ecx, ecx
                call    KeDelayExecutionThread
                lea     rcx, [rbp+var_28]
                sub     edi, 0C8h
                call    RtlFreeUnicodeString
                lea     r8, [rbp+var_28]
                mov     rdx, r15
                mov     rcx, r13
                mov     rax, r12
                call    sub_1404079D0
                mov     esi, eax
                test    eax, eax
                js      short loc_1403B8426

loc_1403B845E:                          ; CODE XREF: sub_1403B8334+F4↑j
                test    esi, esi
                js      short loc_1403B8486

loc_1403B8462:                          ; CODE XREF: sub_1403B8334+EA↑j
                lea     rcx, [rbp+var_28]
                call    RtlFreeUnicodeString
                mov     rbx, [rsp+60h+arg_0]
                xor     eax, eax
                add     rsp, 60h
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

loc_1403B8486:                          ; CODE XREF: sub_1403B8334+12C↑j
                xor     edx, edx
                lea     ecx, [rdx+15h]
                call    sub_14036DD28
                movsxd  rax, [rbp+arg_8]
                lea     rdx, [rbp+var_28]
                xor     r9d, r9d
                movsxd  r8, esi
                mov     [rsp+60h+var_40], rax
                lea     ecx, [r9+7Bh]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B8334   endp

byte_1403B84AD  db 7 dup(0CCh)          ; DATA XREF: .pdata:00000001400DEAB0↑o

; =============== S U B R O U T I N E =======================================


sub_1403B84B4   proc near               ; CODE XREF: sub_14077E8F8+35F↓p
                                        ; sub_14077E8F8+3EB↓p ...

var_18          = xmmword ptr -18h

                push    rbx
                sub     rsp, 30h
                mov     rbx, rcx
                xorps   xmm0, xmm0
                lea     rcx, [rsp+38h+var_18]
                movups  [rsp+38h+var_18], xmm0
                call    RtlInitString
                mov     r8b, 1
                lea     rdx, [rsp+38h+var_18]
                mov     rcx, rbx
                call    RtlAnsiStringToUnicodeString
                add     rsp, 30h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B84B4   endp

byte_1403B84E6  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400DEABC↑o

; =============== S U B R O U T I N E =======================================


sub_1403B84EC   proc near               ; CODE XREF: sub_14077E8F8+351↓p
                                        ; sub_14077E8F8+3DD↓p ...

arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404ABF50 SIZE 00000011 BYTES

                mov     [rsp+arg_10], r8
                mov     [rsp+arg_18], r9
                push    rbx
                push    rsi
                push    rdi
                sub     rsp, 30h
                xor     edi, edi
                lea     rax, [rdx-1]
                cmp     rax, 7FFFFFFEh
                mov     rsi, rcx
                mov     ecx, 0C000000Dh
                cmova   edi, ecx
                test    edi, edi
                js      loc_1404ABF50
                lea     rbx, [rdx-1]
                mov     rcx, rsi
                mov     rdx, rbx
                lea     r9, [rsp+48h+arg_18]
                xor     edi, edi
                call    _vsnprintf
                test    eax, eax
                js      short loc_1403B8550
                cdqe
                cmp     rax, rbx
                ja      short loc_1403B8550
                jz      short loc_1403B854A

loc_1403B853F:                          ; CODE XREF: sub_1403B84EC+62↓j
                                        ; sub_1403B84EC+6D↓j ...
                mov     eax, edi
                add     rsp, 30h
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403B854A:                          ; CODE XREF: sub_1403B84EC+51↑j
                mov     [rbx+rsi], dil
                jmp     short loc_1403B853F
; ---------------------------------------------------------------------------

loc_1403B8550:                          ; CODE XREF: sub_1403B84EC+48↑j
                                        ; sub_1403B84EC+4F↑j
                mov     [rbx+rsi], dil
                mov     edi, 80000005h
                jmp     short loc_1403B853F
sub_1403B84EC   endp

; ---------------------------------------------------------------------------
byte_1403B855B  db 15h dup(0CCh)        ; DATA XREF: .rdata:00000001400A46F4↑o
                                        ; .pdata:00000001400DEAC8↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1403B8570   proc near               ; DATA XREF: .rdata:00000001400A4854↑o
                                        ; .pdata:00000001400DEAD4↑o ...

var_A0          = dword ptr -0A0h
var_98          = dword ptr -98h
var_90          = xmmword ptr -90h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = qword ptr -60h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_2C          = dword ptr -2Ch
var_28          = xmmword ptr -28h
var_18          = qword ptr -18h
var_10          = byte ptr -10h

; FUNCTION CHUNK AT 00000001404ABF62 SIZE 00000045 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 0B0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+57h+var_18], rax
                mov     rsi, [r8+98h]
                xorps   xmm1, xmm1
                mov     r14, [r8+0B8h]
                xor     eax, eax
                mov     [rbp+57h+var_60], rax
                xorps   xmm0, xmm0
                mov     rbx, r8
                mov     r15d, edx
                mov     edi, ecx
                movups  [rbp+57h+var_58], xmm0
                movups  [rbp+57h+var_48], xmm0
                movups  [rbp+57h+var_90], xmm1
                movups  [rbp+57h+var_80], xmm1
                movups  [rbp+57h+var_70], xmm1
                test    rsi, rsi
                jz      loc_1404ABF62
                mov     rcx, rsi
                call    PsGetThreadServerSilo
                mov     r11, rax

loc_1403B85E7:                          ; CODE XREF: sub_1403B8570+F39F5↓j
                mov     dl, [r14]
                mov     ecx, [rbx+10h]
                cmp     dl, 9
                jz      loc_1403B8775
                mov     eax, [rbx+38h]
                xor     r10d, r10d
                cmp     dl, 3
                mov     dword ptr [rbp+57h+var_90], r15d
                mov     dword ptr [rbp+57h+var_90+4], ecx
                setnz   r10b
                mov     qword ptr [rbp+57h+var_70], rbx
                mov     dword ptr [rbp+57h+var_90+8], eax
                add     r10w, 10Ah
                mov     rax, [r14+18h]
                mov     qword ptr [rbp+57h+var_80], rax
                mov     rax, [r14+8]
                and     dword ptr [rbp+57h+var_90+0Ch], 0
                mov     qword ptr [rbp+57h+var_70+8], rax
                test    rsi, rsi
                jz      loc_1404ABF6A
                mov     eax, [rsi+480h]

loc_1403B863A:                          ; CODE XREF: sub_1403B8570+F39FD↓j
                mov     dword ptr [rbp+57h+var_60], eax
                mov     eax, edi
                and     eax, 0FFFF0000h
                cmp     eax, 56530000h
                jz      loc_1403B87BB
                and     edi, 0FFFFFFh
                cmp     edi, 535242h
                jnz     loc_1403B873E

loc_1403B8661:                          ; CODE XREF: sub_1403B8570+1DA↓j
                mov     dword ptr [rbp+57h+var_90+0Ch], 2

loc_1403B8668:                          ; CODE XREF: sub_1403B8570+1D4↓j
                                        ; sub_1403B8570+252↓j
                test    cl, 8
                jnz     loc_1403B874F
                mov     rcx, [rbx+0C0h]
                test    rcx, rcx
                jnz     loc_1403B8768
                movzx   edx, byte ptr [rbx+43h]
                movsx   r9d, byte ptr [rbx+42h]
                cmp     edx, r9d
                jg      short loc_1403B86B6
                lea     r8, [r14+30h]

loc_1403B8693:                          ; CODE XREF: sub_1403B8570+13B↓j
                mov     rcx, [r8]
                test    rcx, rcx
                jnz     loc_1403B8768
                inc     dl
                add     r8, 48h ; 'H'
                movzx   eax, dl
                cmp     eax, r9d
                jle     short loc_1403B8693

loc_1403B86AD:                          ; CODE XREF: sub_1403B8570+246↓j
                test    rcx, rcx
                jnz     loc_1403B8768

loc_1403B86B6:                          ; CODE XREF: sub_1403B8570+11D↑j
                                        ; sub_1403B8570+1E6↓j
                and     qword ptr [rbp+57h+var_80+8], 0

loc_1403B86BB:                          ; CODE XREF: sub_1403B8570+200↓j
                lea     rax, [rbp+57h+var_90]
                mov     [rbp+57h+var_30], 34h ; '4'
                movzx   edi, r10w

loc_1403B86CA:                          ; CODE XREF: sub_1403B8570+236↓j
                and     [rbp+57h+var_2C], 0
                lea     rdx, [rbp+57h+var_38]
                mov     r14d, 100h
                mov     [rsp+0C0h+var_98], 401803h
                mov     r9d, r14d
                mov     [rbp+57h+var_38], rax
                mov     r8d, 1
                mov     word ptr [rsp+0C0h+var_A0], di
                mov     rcx, r11
                call    sub_1402A98AC
                mov     rax, cs:qword_140CFB008
                add     rax, 11A4h
                jz      short loc_1403B8714
                mov     eax, [rax]
                test    r14d, eax
                jnz     loc_1404ABF72

loc_1403B8714:                          ; CODE XREF: sub_1403B8570+197↑j
                                        ; sub_1403B8570+F3A32↓j
                mov     rcx, [rbp+57h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0C0h+var_10]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403B873E:                          ; CODE XREF: sub_1403B8570+EB↑j
                cmp     edi, 536D64h
                jnz     loc_1403B8668
                jmp     loc_1403B8661
; ---------------------------------------------------------------------------

loc_1403B874F:                          ; CODE XREF: sub_1403B8570+FB↑j
                mov     rax, [rbx+18h]
                test    rax, rax
                jz      loc_1403B86B6
                mov     rcx, [rax+0C0h]
                test    rcx, rcx
                jz      short loc_1403B87AB

loc_1403B8768:                          ; CODE XREF: sub_1403B8570+10B↑j
                                        ; sub_1403B8570+129↑j ...
                mov     rax, [rcx+18h]
                mov     qword ptr [rbp+57h+var_80+8], rax
                jmp     loc_1403B86BB
; ---------------------------------------------------------------------------

loc_1403B8775:                          ; CODE XREF: sub_1403B8570+80↑j
                mov     dword ptr [rbp+57h+var_58], r15d
                mov     edi, 10Eh
                mov     dword ptr [rbp+57h+var_58+4], ecx
                mov     rcx, [r14+8]
                mov     qword ptr [rbp+57h+var_58+8], rcx
                mov     qword ptr [rbp+57h+var_48], rbx
                test    rsi, rsi
                jz      short loc_1403B87C7
                mov     eax, [rsi+480h]

loc_1403B8798:                          ; CODE XREF: sub_1403B8570+25A↓j
                mov     dword ptr [rbp+57h+var_48+8], eax
                lea     rax, [rbp+57h+var_58]
                mov     [rbp+57h+var_30], 1Ch
                jmp     loc_1403B86CA
; ---------------------------------------------------------------------------

loc_1403B87AB:                          ; CODE XREF: sub_1403B8570+1F6↑j
                mov     rax, [rax+0B8h]
                mov     rcx, [rax+30h]
                jmp     loc_1403B86AD
; ---------------------------------------------------------------------------

loc_1403B87BB:                          ; CODE XREF: sub_1403B8570+D9↑j
                mov     dword ptr [rbp+57h+var_90+0Ch], 1
                jmp     loc_1403B8668
; ---------------------------------------------------------------------------

loc_1403B87C7:                          ; CODE XREF: sub_1403B8570+220↑j
                or      eax, 0FFFFFFFFh
                jmp     short loc_1403B8798
; } // starts at 1403B8570
sub_1403B8570   endp

; ---------------------------------------------------------------------------
byte_1403B87CC  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A4854↑o
                                        ; .pdata:00000001400DEAD4↑o

; =============== S U B R O U T I N E =======================================


sub_1403B87D4   proc near               ; CODE XREF: sub_1402E7BF4+1E1↑p
                                        ; DATA XREF: .rdata:00000001400A4880↑o ...

var_88          = qword ptr -88h
var_80          = qword ptr -80h
var_78          = dword ptr -78h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = dword ptr  18h
arg_18          = dword ptr  20h
arg_20          = qword ptr  28h

; FUNCTION CHUNK AT 00000001404ABFA8 SIZE 00000186 BYTES

                mov     [rsp+arg_18], r9d
                mov     [rsp+arg_10], r8d
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 68h
                mov     r13, [rsp+0A8h+arg_20]
                xor     r15d, r15d
                xor     r11d, r11d
                mov     [rsp+0A8h+arg_8], r15
                and     [rsp+0A8h+var_60], r11
                mov     eax, r8d
                shr     eax, 3
                mov     rdi, rdx
                and     dword ptr [r13+0], 0
                lea     esi, [r15+1]
                mov     [rsp+0A8h+var_68], r11
                mov     rbx, rcx
                lea     r10d, [r15+2]
                cmp     eax, esi
                jnz     loc_1403B8A4F
                xor     esi, esi

loc_1403B8831:                          ; CODE XREF: sub_1403B87D4+27E↓j
                                        ; sub_1403B87D4+28C↓j
                mov     rax, 0FFFFFFFFFh
                mov     rdx, 0FFFFFA8000000028h
                cmp     rbx, rax
                ja      loc_1404ABFA8
                lea     rcx, [rcx+rcx*2]
                add     rcx, rcx
                mov     rax, rdx
                mov     r12, [rax+rcx*8]
                shr     r12, 32h
                and     r12d, 1
                jnz     loc_1404ABFB0

loc_1403B886A:                          ; CODE XREF: sub_1403B87D4+F37D7↓j
                xor     edx, edx

loc_1403B886C:                          ; CODE XREF: sub_1403B87D4+F37EA↓j
                xor     r14d, r14d
                mov     [rsp+0A8h+var_58], rdx
                mov     ebp, 3
                test    rdi, rdi
                jz      loc_1403B8942
                lea     r13, [rdx+22h]

loc_1403B8886:                          ; CODE XREF: sub_1403B87D4+113↓j
                lea     r8, [r14+rbx]
                mov     rax, 0FFFFFFFFFh
                cmp     r8, rax
                ja      short loc_1403B88C4
                lea     rcx, [r8+r8*2]
                mov     rax, 0FFFFFA8000000028h
                add     rcx, rcx
                mov     rax, rax
                mov     rcx, [rax+rcx*8]
                mov     rax, 4000000000000h
                test    rax, rcx
                jnz     loc_1404ABFC3

loc_1403B88C4:                          ; CODE XREF: sub_1403B87D4+C3↑j
                test    rdx, rdx
                jnz     short loc_1403B8932
                test    r14, r14
                jz      short loc_1403B88E9

loc_1403B88CE:                          ; CODE XREF: sub_1403B87D4+157↓j
                                        ; sub_1403B87D4+F3852↓j
                inc     r14
                add     r13, 30h ; '0'
                cmp     r14, rdi
                jnb     short loc_1403B8932
                mov     rdx, [rsp+0A8h+var_58]
                mov     r9d, [rsp+0A8h+arg_18]
                jmp     short loc_1403B8886
; ---------------------------------------------------------------------------

loc_1403B88E9:                          ; CODE XREF: sub_1403B87D4+F8↑j
                mov     r15, cr8
                mov     cr8, r10
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404AC02B

loc_1403B88FF:                          ; CODE XREF: sub_1403B87D4+F3859↓j
                                        ; sub_1403B87D4+F3863↓j ...
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402E81F0
                mov     r11, rax
                mov     [rsp+0A8h+var_68], rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404AC06D

loc_1403B8920:                          ; CODE XREF: sub_1403B87D4+F389B↓j
                                        ; sub_1403B87D4+F38A7↓j ...
                movzx   eax, r15b
                mov     cr8, rax
                test    r11, r11
                jz      short loc_1403B88CE
                jmp     loc_1404AC0F3
; ---------------------------------------------------------------------------

loc_1403B8932:                          ; CODE XREF: sub_1403B87D4+F3↑j
                                        ; sub_1403B87D4+104↑j ...
                mov     r15, [rsp+0A8h+arg_8]
                mov     r13, [rsp+0A8h+arg_20]

loc_1403B8942:                          ; CODE XREF: sub_1403B87D4+A8↑j
                cmp     r14, rdi
                jnz     loc_1403B8A3A
                test    r12d, r12d
                jnz     loc_1403B89D4
                test    r11, r11
                jnz     short loc_1403B89D4
                and     [rsp+0A8h+arg_0], r11d
                lea     rax, [rsp+0A8h+var_60]
                mov     [rsp+0A8h+var_80], rax
                lea     ecx, [r12+1]
                lea     rax, [rsp+0A8h+arg_0]
                mov     r9d, esi
                mov     r8, rdi
                mov     [rsp+0A8h+var_88], rax
                mov     rdx, rbx
                call    sub_1402E7DF4
                test    eax, eax
                js      loc_1403B8A3A
                mov     edx, [rsp+0A8h+arg_0]
                lea     eax, [rdx-1]
                test    edx, eax
                mov     rdx, rbx
                jnz     loc_1404AC0FF
                mov     rax, 0FFFFFFFFFh
                and     rdx, rax
                mov     rax, [rsp+0A8h+var_60]
                sub     rdx, [rax+28h]
                mov     rcx, [rax+30h]
                movzx   eax, word ptr [rcx+rdx*2]
                movzx   ebp, ax
                shr     ebp, 0Eh
                mov     word ptr [rsp+0A8h+arg_20], ax

loc_1403B89D4:                          ; CODE XREF: sub_1403B87D4+17A↑j
                                        ; sub_1403B87D4+183↑j
                mov     rcx, rbx
                call    sub_14027DEC0
                mov     esi, 1
                mov     rcx, rdi
                mov     r8d, esi
                mov     r9d, [rax+8]
                add     r9d, esi
                lea     edx, [rsi+8]
                call    sub_1403B8D44
                mov     r15, rax
                test    rax, rax
                jz      loc_1404AC106
                lea     ecx, [rsi+2]
                call    sub_1402A46FC
                mov     rcx, rax
                mov     [rsp+0A8h+var_78], ebp
                mov     eax, [rsp+0A8h+arg_10]
                mov     r9, rdi
                mov     dword ptr [rsp+0A8h+var_80], eax
                mov     r8, rbx
                mov     rdx, r15
                mov     dword ptr [rsp+0A8h+var_88], esi
                call    sub_1403B8A6C
                cmp     [rsp+0A8h+var_60], 0
                jz      short loc_1403B8A3A
                or      [r13+0], esi

loc_1403B8A3A:                          ; CODE XREF: sub_1403B87D4+171↑j
                                        ; sub_1403B87D4+1B9↑j ...
                mov     rax, r15
                add     rsp, 68h
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

loc_1403B8A4F:                          ; CODE XREF: sub_1403B87D4+55↑j
                cmp     eax, 3
                jnz     loc_1403B8831
                test    r8b, 7
                cmovnz  esi, r10d
                jmp     loc_1403B8831
sub_1403B87D4   endp

; ---------------------------------------------------------------------------
byte_1403B8A65  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A4880↑o
                                        ; .pdata:00000001400DEAE0↑o

; =============== S U B R O U T I N E =======================================


sub_1403B8A6C   proc near               ; CODE XREF: sub_1403B87D4+255↑p
                                        ; sub_1402A3920+1A738D↓p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h
arg_20          = dword ptr  28h
arg_28          = dword ptr  30h
arg_30          = dword ptr  38h

; FUNCTION CHUNK AT 00000001404AC12E SIZE 00000145 BYTES

                mov     [rsp+arg_10], r8
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 28h
                mov     eax, [rsp+68h+arg_20]
                lea     r12, qword_14001A848
                mov     ebp, [rsp+68h+arg_28]
                mov     rsi, rdx
                mov     r10, r9
                shr     rsi, 9
                xor     edx, edx
                mov     rdi, 0FFFFF68000000000h
                mov     r12, [r12+rax*8]
                mov     r9, r8
                mov     rax, r10
                mov     [rsp+68h+arg_8], r12
                div     r12
                mov     r15, rcx
                and     ebp, 7
                mov     r8, rax
                mov     [rsp+68h+arg_18], rax
                mov     rbx, rax
                mov     rax, 7FFFFFFFF8h
                and     rsi, rax
                imul    r8, r12
                mov     rcx, rdi
                add     rsi, rcx
                mov     rax, 0FFFFFFFFFh
                cmp     r9, rax
                ja      short loc_1403B8B1F
                lea     rcx, [r9+r9*2]
                add     rcx, rcx
                mov     rax, 0FFFFFA8000000028h
                mov     rax, [rax+rcx*8]
                shr     rax, 32h
                and     eax, 1
                jnz     loc_1404AC12E

loc_1403B8B1F:                          ; CODE XREF: sub_1403B8A6C+8F↑j
                mov     eax, [rsp+68h+arg_30]

loc_1403B8B26:                          ; CODE XREF: sub_1403B8A6C+F36D3↓j
                test    eax, eax
                jnz     loc_1403B8C8E
                or      ebp, 8

loc_1403B8B31:                          ; CODE XREF: sub_1403B8A6C+225↓j
                                        ; sub_1403B8A6C+22E↓j
                or      ebp, 0A0000000h
                mov     [rsp+68h+arg_28], ebp
                test    rdx, rdx
                jnz     loc_1403B8C9F

loc_1403B8B47:                          ; CODE XREF: sub_1403B8A6C+2CB↓j
                shr     rsi, 9
                mov     rdx, 7FFFFFFFF8h
                and     rsi, rdx
                mov     rax, rdi
                add     rsi, rax
                cmp     [rsp+68h+arg_20], 1
                jb      loc_1404AC1A7

loc_1403B8B6C:                          ; CODE XREF: sub_1403B8A6C+F375A↓j
                bts     ebp, 1Ah
                mov     rdx, r9
                mov     r8d, ebp
                xor     ecx, ecx
                call    sub_140280E60
                xor     ebp, ebp
                lea     r13, [rsi+rbx*8]
                cmp     [rsp+68h+arg_20], 1
                mov     rdi, rax
                mov     rcx, r15
                jb      loc_1404AC1CB
                call    sub_140231340

loc_1403B8B9C:                          ; CODE XREF: sub_1403B8A6C+F3772↓j
                mov     byte ptr [rsp+68h+arg_28], al
                mov     r14b, al
                cmp     rsi, r13
                jnb     short loc_1403B8C1C
                shl     r12, 0Ch
                mov     r14, r12

loc_1403B8BB2:                          ; CODE XREF: sub_1403B8A6C+1A6↓j
                cmp     [rsp+68h+arg_20], 1
                jb      short loc_1403B8BD2
                test    rbp, rbp
                jz      loc_1403B8C57
                test    rsi, 0FFFh
                jz      loc_1404AC1E3

loc_1403B8BD2:                          ; CODE XREF: sub_1403B8A6C+14E↑j
                                        ; sub_1403B8A6C+21D↓j
                mov     rcx, rsi
                mov     rbx, rdi
                xor     r12d, r12d
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_1404AC1F4

loc_1403B8BE8:                          ; CODE XREF: sub_1403B8A6C+F379E↓j
                                        ; sub_1403B8A6C+F37C3↓j ...
                mov     [rsi], rbx
                test    r12d, r12d
                jnz     loc_1404AC251

loc_1403B8BF4:                          ; CODE XREF: sub_1403B8A6C+F37F1↓j
                lea     rax, [r14+rdi]
                mov     rcx, 0FFFFFFFFF000h
                xor     rax, rdi
                add     rsi, 8
                and     rax, rcx
                xor     rdi, rax
                cmp     rsi, r13
                jb      short loc_1403B8BB2
                mov     r14b, byte ptr [rsp+68h+arg_28]

loc_1403B8C1C:                          ; CODE XREF: sub_1403B8A6C+13D↑j
                cmp     [rsp+68h+arg_20], 1
                jb      loc_1404AC262
                test    rbp, rbp
                jz      short loc_1403B8C3A
                mov     rdx, rbp
                mov     rcx, r15
                call    sub_140312B40

loc_1403B8C3A:                          ; CODE XREF: sub_1403B8A6C+1C1↑j
                mov     dl, r14b
                mov     rcx, r15
                call    sub_140226960

loc_1403B8C45:                          ; CODE XREF: sub_1403B8A6C+F3802↓j
                add     rsp, 28h
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

loc_1403B8C57:                          ; CODE XREF: sub_1403B8A6C+153↑j
                                        ; sub_1403B8A6C+F3783↓j
                mov     rax, 7FFFFFFFF8h
                mov     rbp, rsi
                shr     rbp, 9
                and     rbp, rax
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                add     rbp, rax
                xor     r8d, r8d
                mov     rdx, rbp
                mov     rcx, r15
                call    sub_140225CC0
                jmp     loc_1403B8BD2
; ---------------------------------------------------------------------------

loc_1403B8C8E:                          ; CODE XREF: sub_1403B8A6C+BC↑j
                cmp     eax, 2
                jnz     loc_1403B8B31
                or      ebp, 18h
                jmp     loc_1403B8B31
; ---------------------------------------------------------------------------

loc_1403B8C9F:                          ; CODE XREF: sub_1403B8A6C+D5↑j
                lea     r14, [rsi+r8*8]
                xor     ecx, ecx
                lea     rdx, [r8+r9]
                mov     r8d, ebp
                lea     r13, [rsi+r10*8]
                call    sub_140280E60
                mov     rbx, rax
                cmp     r14, r13
                jnb     short loc_1403B8D27
                mov     rbp, 0FFFFFFFFF000h
                mov     r15, 8000000000000000h

loc_1403B8CD1:                          ; CODE XREF: sub_1403B8A6C+29E↓j
                mov     rcx, r14
                mov     rdi, rbx
                xor     r12d, r12d
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_1404AC144

loc_1403B8CE7:                          ; CODE XREF: sub_1403B8A6C+F36EE↓j
                                        ; sub_1403B8A6C+F3713↓j ...
                mov     [r14], rdi
                test    r12d, r12d
                jnz     loc_1404AC196

loc_1403B8CF3:                          ; CODE XREF: sub_1403B8A6C+F3736↓j
                lea     rax, [rbx+1000h]
                add     r14, 8
                xor     rax, rbx
                and     rax, rbp
                xor     rbx, rax
                cmp     r14, r13
                jb      short loc_1403B8CD1
                mov     ebp, [rsp+68h+arg_28]
                mov     r15, [rsp+68h+arg_0]
                mov     r12, [rsp+68h+arg_8]
                mov     rdi, 0FFFFF68000000000h

loc_1403B8D27:                          ; CODE XREF: sub_1403B8A6C+24F↑j
                mov     rbx, [rsp+68h+arg_18]
                mov     r9, [rsp+68h+arg_10]
                jmp     loc_1403B8B47
sub_1403B8A6C   endp

; ---------------------------------------------------------------------------
byte_1403B8D3C  db 8 dup(0CCh)          ; DATA XREF: .rdata:00000001400A48AC↑o
                                        ; .pdata:00000001400DEAEC↑o

; =============== S U B R O U T I N E =======================================


sub_1403B8D44   proc near               ; CODE XREF: sub_1403B87D4+21D↑p
                                        ; sub_1402A3920+1A6F5B↓p ...

var_38          = dword ptr -38h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404AC274 SIZE 0000002F BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                mov     r15, rcx
                cmp     edx, 9
                mov     ecx, 0Dh
                mov     ebp, edx
                cmovnz  ecx, edx
                mov     rax, r15
                shr     rax, 9
                mov     edx, ecx
                mov     [rsp+58h+arg_8], ecx
                mov     r12, r15
                and     r12, 0FFFFFFFFFFFFFE00h
                mov     ebx, r9d
                test    r15, 1FFh
                mov     r13d, r8d
                lea     rdi, [rax+1]
                cmovz   rdi, rax
                mov     ecx, edi
                call    sub_1402EA560
                mov     r14, rax
                test    rax, rax
                jz      loc_1403B8E54
                mov     rsi, rax
                mov     rax, 7FFFFFFFF8h
                shr     rsi, 9
                and     rsi, rax
                mov     rax, 0FFFFF68000000000h
                add     rsi, rax
                lea     eax, [rbp-0Ch]
                neg     eax
                sbb     r8d, r8d
                add     r8d, 3
                test    r13d, r13d
                jz      loc_1404AC274

loc_1403B8DE5:                          ; CODE XREF: sub_1403B8D44+F353C↓j
                lea     r13, [rsi+r12*8]
                mov     [rsp+58h+var_38], ebx
                lea     rdx, [r13-8]
                mov     r9d, ebp
                mov     rcx, rsi
                call    sub_1402A43FC
                test    eax, eax
                jz      loc_1404AC285
                cmp     r15, r12
                jnz     short loc_1403B8E2A

loc_1403B8E09:                          ; CODE XREF: sub_1403B8D44+109↓j
                mov     rax, r14

loc_1403B8E0C:                          ; CODE XREF: sub_1403B8D44+112↓j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_10]
                mov     rsi, [rsp+58h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403B8E2A:                          ; CODE XREF: sub_1403B8D44+C3↑j
                xor     r8d, r8d
                mov     [rsp+58h+var_38], ebx
                cmp     ebp, 0Ch
                lea     rdx, [r15-1]
                lea     rdx, [rsi+rdx*8]
                mov     r9d, ebp
                setz    r8b
                mov     rcx, r13
                call    sub_1402A43FC
                test    eax, eax
                jnz     short loc_1403B8E09
                jmp     loc_1404AC285
; ---------------------------------------------------------------------------

loc_1403B8E54:                          ; CODE XREF: sub_1403B8D44+65↑j
                                        ; sub_1403B8D44+F355A↓j
                xor     eax, eax
                jmp     short loc_1403B8E0C
sub_1403B8D44   endp

; ---------------------------------------------------------------------------
algn_1403B8E58:                         ; DATA XREF: .rdata:00000001400A48DC↑o
                                        ; .pdata:00000001400DEAF8↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=47h

sub_1403B8E60   proc near               ; DATA XREF: .pdata:00000001400DEB04↑o
                                        ; sub_140793698:loc_1407938E4↓o ...

var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = word ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_8           = qword ptr  18h
arg_20          = dword ptr  30h
arg_28          = word ptr  38h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+47h+var_28], rax
                xor     r15d, r15d
                mov     rbx, r9
                mov     [rbp+47h+var_60], r15
                mov     rsi, r8
                mov     [rbp+47h+var_70], r15w
                mov     r14, rdx
                test    rcx, rcx
                jnz     short loc_1403B8EC1
                call    sub_1403F2884
                test    eax, eax
                jz      short loc_1403B8EAE
                mov     edi, r15d
                jmp     short loc_1403B8EC8
; ---------------------------------------------------------------------------

loc_1403B8EAE:                          ; CODE XREF: sub_1403B8E60+47↑j
                mov     rcx, gs:188h
                call    PsGetThreadServerSilo
                mov     rdi, rax
                jmp     short loc_1403B8EC8
; ---------------------------------------------------------------------------

loc_1403B8EC1:                          ; CODE XREF: sub_1403B8E60+3E↑j
                mov     rdi, [rcx+870h]

loc_1403B8EC8:                          ; CODE XREF: sub_1403B8E60+4C↑j
                                        ; sub_1403B8E60+5F↑j
                movzx   ecx, word ptr [rsi]
                mov     eax, 2000h
                cmp     ecx, eax
                mov     [rbp+47h+var_68], r14
                movzx   r14d, [rbp+47h+arg_28]
                cmova   ecx, eax
                mov     [rbp+47h+var_50], 8
                lea     rax, [rbp+47h+var_68]
                mov     [rbp+47h+var_40], ecx
                mov     [rbp+47h+var_58], rax
                mov     rax, [rsi+8]
                mov     esi, 3
                mov     [rbp+47h+var_48], rax
                lea     rax, [rbp+47h+var_70]
                mov     [rbp+47h+var_38], rax
                mov     rax, cs:qword_140CFB008
                mov     [rbp+47h+var_3C], r15d
                mov     [rbp+47h+var_30], 2
                add     rax, 11A4h
                jz      loc_1403B8FEE
                mov     eax, [rax]
                bt      eax, 9
                jnb     loc_1403B8FEE
                mov     eax, 420h
                cmp     r14w, ax
                jnz     short loc_1403B8FB3
                mov     rcx, cs:qword_140C19998
                lea     rax, [rbp+47h+var_58]
                mov     [rsp+0B0h+var_78], rax
                lea     rdx, qword_14002FA38
                mov     [rsp+0B0h+var_80], esi
                xor     r9d, r9d
                mov     [rsp+0B0h+var_88], r15
                xor     r8d, r8d
                mov     [rsp+0B0h+var_90], r15
                call    EtwWriteEx

loc_1403B8F6C:                          ; CODE XREF: sub_1403B8E60+197↓j
                mov     dword ptr [rsp+0B0h+var_88], 401802h
                lea     rdx, [rbp+47h+var_58]
                mov     r9d, 200h
                mov     word ptr [rsp+0B0h+var_90], r14w
                mov     r8d, esi
                mov     rcx, rdi
                call    sub_1402A98AC

loc_1403B8F8F:                          ; CODE XREF: sub_1403B8E60+1A5↓j
                                        ; sub_1403B8E60+1C6↓j ...
                mov     rcx, [rbp+47h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+0B0h+arg_8]
                add     rsp, 90h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403B8FB3:                          ; CODE XREF: sub_1403B8E60+DA↑j
                mov     eax, 423h
                cmp     r14w, ax
                jnz     short loc_1403B8FEE
                mov     rcx, cs:qword_140C19998
                lea     rax, [rbp+47h+var_58]
                mov     [rsp+0B0h+var_78], rax
                lea     rdx, qword_14002EE08
                mov     [rsp+0B0h+var_80], esi
                xor     r9d, r9d
                mov     [rsp+0B0h+var_88], r15
                xor     r8d, r8d
                mov     [rsp+0B0h+var_90], r15
                call    EtwWriteEx

loc_1403B8FEE:                          ; CODE XREF: sub_1403B8E60+BF↑j
                                        ; sub_1403B8E60+CB↑j ...
                mov     ecx, 424h
                cmp     r14w, cx
                jnz     loc_1403B8F6C
                test    rbx, rbx
                jz      short loc_1403B900C
                cmp     rbx, rdi
                jnz     short loc_1403B8F8F
                test    rbx, rbx
                jnz     short loc_1403B9015

loc_1403B900C:                          ; CODE XREF: sub_1403B8E60+1A0↑j
                lea     rax, unk_140D24540
                jmp     short loc_1403B901C
; ---------------------------------------------------------------------------

loc_1403B9015:                          ; CODE XREF: sub_1403B8E60+1AA↑j
                mov     rax, [rbx+4F8h]

loc_1403B901C:                          ; CODE XREF: sub_1403B8E60+1B3↑j
                mov     rdx, [rax+360h]
                test    rdx, rdx
                jz      loc_1403B8F8F
                mov     r8d, [rbp+47h+arg_20]
                mov     r9d, esi
                mov     dword ptr [rsp+0B0h+var_88], 401802h
                mov     word ptr [rsp+0B0h+var_90], cx
                lea     rcx, [rbp+47h+var_58]
                call    sub_14024AA80
                jmp     loc_1403B8F8F
; } // starts at 1403B8E60
sub_1403B8E60   endp

; ---------------------------------------------------------------------------
algn_1403B904E:                         ; DATA XREF: .pdata:00000001400DEB04↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: noreturn

sub_1403B9060   proc near               ; DATA XREF: .rdata:00000001400A49DC↑o
                                        ; .pdata:00000001400DEB10↑o ...

var_C8          = byte ptr -0C8h
var_C0          = byte ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_88          = byte ptr -88h
var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404AC2A4 SIZE 00000079 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    r15
                sub     rsp, 0E0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0E8h+var_18], rax
                mov     rcx, gs:188h
                mov     edx, 11h
                call    KeSetPriorityThread
                mov     rax, cs:qword_140CFCAD0
                lea     r15, qword_140CFDCC0
                mov     ecx, 8F0D180h
                mov     ebx, 8
                mul     rcx
                mov     cl, cs:byte_140CFC5BA
                lea     rax, word_140C31EC0
                mov     [rsp+0E8h+var_A0], rax
                lea     esi, [rbx-7]
                mov     rax, cs:qword_140C526C0
                shr     rdx, cl
                add     rax, 60h ; '`'
                mov     cs:dword_140C2AF00, edx
                or      ebp, 0FFFFFFFFh
                mov     [rsp+0E8h+var_98], rax

loc_1403B90E9:                          ; CODE XREF: sub_1403B9060+184↓j
                                        ; sub_1403B9060+1C6↓j ...
                and     [rsp+0E8h+var_B0], 0
                lea     rdx, [rsp+0E8h+var_A0]
                and     [rsp+0E8h+var_B8], 0
                xor     r9d, r9d
                mov     [rsp+0E8h+var_C0], 0
                mov     r8d, esi
                mov     [rsp+0E8h+var_C8], 0
                lea     ecx, [r9+2]
                call    KeWaitForMultipleObjects
                test    eax, eax
                jnz     loc_1403B92F6
                xor     edx, edx
                lea     r8d, [rax+68h]
                lea     rcx, [rsp+0E8h+var_88]
                call    memset
                mov     edx, 0D1h
                lea     r9, [rsp+0E8h+var_88]
                xor     r8d, r8d
                mov     cl, 2
                call    sub_14034DB1C
                mov     eax, cs:dword_140CEC0F8
                cmp     eax, esi
                jg      loc_1404AC2A4

loc_1403B914D:                          ; CODE XREF: sub_1403B9060+F3253↓j
                                        ; sub_1403B9060+F32A4↓j ...
                mov     eax, cs:dword_140C4C444
                test    eax, eax
                jz      short loc_1403B916A
                sub     eax, esi
                jz      loc_1403B9243
                cmp     eax, esi
                jnz     short loc_1403B917D
                call    sub_1403240A0
                jmp     short loc_1403B917D
; ---------------------------------------------------------------------------

loc_1403B916A:                          ; CODE XREF: sub_1403B9060+F5↑j
                lea     rdx, qword_140C168D8
                lea     rcx, qword_140C16910

loc_1403B9178:                          ; CODE XREF: sub_1403B9060+1F1↓j
                call    sub_140323FA0

loc_1403B917D:                          ; CODE XREF: sub_1403B9060+101↑j
                                        ; sub_1403B9060+108↑j
                mov     eax, cs:dword_140C4C444
                add     eax, esi
                mov     cs:dword_140C4C444, eax
                cmp     eax, 3
                jz      loc_1403B9237

loc_1403B9194:                          ; CODE XREF: sub_1403B9060+1DE↓j
                cmp     cs:byte_140C197B5, 0
                jz      short loc_1403B91A9
                add     cs:dword_140C198C8, ebp
                jz      loc_1403B9292

loc_1403B91A9:                          ; CODE XREF: sub_1403B9060+13B↑j
                                        ; sub_1403B9060+246↓j ...
                xor     edx, edx
                lea     rcx, unk_140C50C00
                call    sub_1402144B0
                cmp     cs:qword_140C1DEC0, 0
                jz      short loc_1403B91D9
                mov     eax, cs:dword_140C0F1EC
                test    eax, eax
                jz      short loc_1403B91D9
                add     eax, ebp
                mov     cs:dword_140C0F1EC, eax
                jz      loc_1403B92BF

loc_1403B91D9:                          ; CODE XREF: sub_1403B9060+15F↑j
                                        ; sub_1403B9060+169↑j ...
                add     ebx, ebp
                jz      short loc_1403B9256

loc_1403B91DD:                          ; CODE XREF: sub_1403B9060+205↓j
                                        ; sub_1403B9060+22D↓j
                cmp     cs:byte_140C24EE0, 0
                jz      loc_1403B90E9
                mov     rax, 0FFFFF78000000320h
                mov     rcx, 0FFFFF78000000004h
                mov     rax, [rax]
                mov     ecx, [rcx]
                mov     edx, eax
                imul    rdx, rcx
                shr     rax, 20h
                shr     rdx, 18h
                imul    rax, rcx
                shl     rax, 8
                add     rdx, rax
                shr     rdx, 0Ch
                cmp     cs:dword_140C2AF04, edx
                jz      loc_1403B90E9
                mov     cs:dword_140C2AF04, edx
                jmp     loc_1403B90E9
; ---------------------------------------------------------------------------

loc_1403B9237:                          ; CODE XREF: sub_1403B9060+12E↑j
                and     cs:dword_140C4C444, 0
                jmp     loc_1403B9194
; ---------------------------------------------------------------------------

loc_1403B9243:                          ; CODE XREF: sub_1403B9060+F9↑j
                lea     rdx, qword_140C16900
                lea     rcx, qword_140C168F0
                jmp     loc_1403B9178
; ---------------------------------------------------------------------------

loc_1403B9256:                          ; CODE XREF: sub_1403B9060+17B↑j
                mov     ebx, 8
                xor     eax, eax
                lock cmpxchg cs:dword_140CF4410, esi
                jnz     loc_1403B91DD
                xor     r8d, r8d
                lea     rcx, dword_140C31E40
                mov     edx, esi
                call    KeSetEvent
                xor     r8d, r8d
                lea     rcx, word_140C31EA0
                mov     edx, esi
                call    KePulseEvent
                jmp     loc_1403B91DD
; ---------------------------------------------------------------------------

loc_1403B9292:                          ; CODE XREF: sub_1403B9060+143↑j
                mov     cs:dword_140C198C8, 8
                xor     eax, eax
                lock cmpxchg cs:dword_140C19864, esi
                jnz     loc_1403B91A9
                mov     edx, esi
                lea     rcx, qword_140C19880
                call    ExQueueWorkItem
                jmp     loc_1403B91A9
; ---------------------------------------------------------------------------

loc_1403B92BF:                          ; CODE XREF: sub_1403B9060+173↑j
                prefetchw byte ptr cs:dword_140C1DED0
                mov     eax, cs:dword_140C1DED0

loc_1403B92CC:                          ; CODE XREF: sub_1403B9060+279↓j
                mov     ecx, eax
                or      ecx, 5
                lock cmpxchg cs:dword_140C1DED0, ecx
                jnz     short loc_1403B92CC
                test    al, 4
                jnz     loc_1403B91D9
                mov     edx, esi
                lea     rcx, qword_140C1DEE0
                call    ExQueueWorkItem
                jmp     loc_1403B91D9
; ---------------------------------------------------------------------------

loc_1403B92F6:                          ; CODE XREF: sub_1403B9060+B5↑j
                cmp     eax, esi
                jnz     loc_1403B90E9
                mov     edx, esi
                lea     rcx, unk_140C50C00
                call    sub_1402144B0
                jmp     loc_1403B90E9
; } // starts at 1403B9060
sub_1403B9060   endp

; ---------------------------------------------------------------------------
algn_1403B9311:                         ; DATA XREF: .rdata:00000001400A49DC↑o
                                        ; .pdata:00000001400DEB10↑o
                align 20h

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=0E0h

sub_1403B9320   proc near               ; DATA XREF: .rdata:00000001400A4A18↑o
                                        ; .pdata:00000001400DEB1C↑o ...

var_1C0         = byte ptr -1C0h
var_1B8         = qword ptr -1B8h
var_1B0         = qword ptr -1B0h
var_1A8         = xmmword ptr -1A8h
var_190         = qword ptr -190h
var_188         = qword ptr -188h
var_180         = qword ptr -180h
var_178         = qword ptr -178h
var_170         = qword ptr -170h
var_168         = qword ptr -168h
var_160         = qword ptr -160h
var_158         = qword ptr -158h
var_150         = byte ptr -150h
var_30          = qword ptr -30h
var_20          = byte ptr -20h

; FUNCTION CHUNK AT 00000001404AC31E SIZE 00000196 BYTES

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-0E8h]
                sub     rsp, 1C0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+0E0h+var_30], rax
                xor     r13d, r13d
                lea     r12, [rcx+3E8h]
                xor     eax, eax
                mov     [rsp+1E0h+var_188], r13
                mov     [rsp+1E0h+var_190], rax
                xorps   xmm0, xmm0
                lea     rax, [rcx+178h]
                mov     [rbp+0E0h+var_158], r12
                mov     [rsp+1E0h+var_180], rax
                mov     rbx, rcx
                lea     rax, [rcx+190h]
                mov     edi, r13d
                mov     [rsp+1E0h+var_178], rax
                mov     r15b, r13b
                lea     rax, [rcx+1A8h]
                mov     [rsp+1E0h+var_170], rax
                lea     rax, [rcx+1C0h]
                mov     [rsp+1E0h+var_168], rax
                lea     rax, [rcx+1D8h]
                mov     [rbp+0E0h+var_160], rax
                movups  [rsp+1E0h+var_1A8+8], xmm0

loc_1403B93BD:                          ; CODE XREF: sub_1403B9320+1EC↓j
                                        ; sub_1403B9320+28B↓j
                mov     sil, r13b
                test    r15b, r15b
                jz      short loc_1403B93CD
                mov     rcx, rbx
                call    sub_1402F9FAC

loc_1403B93CD:                          ; CODE XREF: sub_1403B9320+A3↑j
                mov     r9d, 8
                lea     rax, [rbp+0E0h+var_150]
                mov     qword ptr [rsp+1E0h+var_1A8], rax
                lea     rdx, [rsp+1E0h+var_180]
                mov     [rsp+1E0h+var_1B0], r13
                mov     byte ptr [rsp+1E0h+var_1B8], r13b
                lea     r8d, [r9-7]
                mov     [rsp+1E0h+var_1C0], r13b
                lea     ecx, [r9-2]
                call    KeWaitForMultipleObjects
                test    eax, eax
                jz      loc_1404AC337
                sub     eax, 1
                jz      loc_1403B9542
                sub     eax, 1
                jnz     loc_1403B95B0
                lea     edi, [rax+4]

loc_1403B941A:                          ; CODE XREF: sub_1403B9320+22A↓j
                                        ; sub_1403B9320+F3027↓j
                prefetchw byte ptr [rbx+3C8h]
                mov     rax, [rbx+3C8h]
                lea     rcx, [rax+1]

loc_1403B942C:                          ; CODE XREF: sub_1403B9320+F302F↓j
                cmp     rcx, 1
                jbe     loc_1404AC461
                lock cmpxchg [rbx+3C8h], rcx
                mov     rcx, rax
                jnz     loc_1404AC34C
                cmp     cs:dword_140C486C0, r13d
                mov     r15b, 1
                ja      loc_1403B9511

loc_1403B9458:                          ; CODE XREF: sub_1403B9320+1FF↓j
                                        ; sub_1403B9320+210↓j ...
                mov     dl, sil
                mov     rcx, rbx
                call    sub_1402888A0
                lea     r14, [rbx+80h]
                mov     rcx, r14
                lea     rdx, [rsp+1E0h+var_1A8+8]
                call    KeAcquireInStackQueuedSpinLock
                test    edi, edi
                jz      short loc_1403B94A7
                cmp     edi, 2
                jbe     loc_1403B954F
                cmp     edi, 4
                jnz     loc_1403B9573
                cmp     [rbx+27Bh], r13b
                jnz     loc_1403B958A
                cmp     [rbx+27Ah], r13b
                jnz     loc_1403B958A

loc_1403B94A7:                          ; CODE XREF: sub_1403B9320+159↑j
                                        ; sub_1403B9320+248↓j ...
                mov     r8b, r15b
                mov     edx, edi
                mov     rcx, rbx
                call    sub_1403577CC
                lea     rcx, [rsp+1E0h+var_1A8+8]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   esi, byte ptr [rsp+1E0h+var_190]
                test    eax, eax
                jnz     loc_1404AC3CB

loc_1403B94D1:                          ; CODE XREF: sub_1403B9320+F30AE↓j
                                        ; sub_1403B9320+F30BA↓j ...
                mov     cr8, rsi
                lea     rdx, [rsp+1E0h+var_188]
                mov     rcx, rbx
                call    sub_1402F9A50
                test    eax, eax
                js      loc_1404AC434
                mov     rcx, [rsp+1E0h+var_188]
                mov     edx, 0E0h
                cmp     edi, 8
                lea     eax, [rdx+20h]
                mov     byte ptr [rcx+78h], 3
                cmovnz  edx, eax
                mov     [rcx+10h], edi
                add     rdx, rbx
                call    sub_1402F93B0
                jmp     loc_1403B93BD
; ---------------------------------------------------------------------------

loc_1403B9511:                          ; CODE XREF: sub_1403B9320+132↑j
                lea     rax, qword_140C487B0
                cmp     cs:qword_140C487B0, rax
                jz      loc_1403B9458
                mov     rax, cs:qword_140CFC760
                cmp     rbx, [rax+8]
                jnz     loc_1403B9458
                mov     ecx, edi
                call    sub_140392504
                jmp     loc_1403B9458
; ---------------------------------------------------------------------------

loc_1403B9542:                          ; CODE XREF: sub_1403B9320+E8↑j
                mov     edi, 2

loc_1403B9547:                          ; CODE XREF: sub_1403B9320+29C↓j
                                        ; sub_1403B9320+F3012↓j
                mov     sil, 1
                jmp     loc_1403B941A
; ---------------------------------------------------------------------------

loc_1403B954F:                          ; CODE XREF: sub_1403B9320+15E↑j
                                        ; sub_1403B9320+F3037↓j
                cmp     [rbx+27Ch], r13b
                jnz     short loc_1403B956E
                cmp     [rbx+27Dh], r13b
                jnz     short loc_1403B956E
                cmp     [rbx+27Eh], r13b
                jz      loc_1403B94A7

loc_1403B956E:                          ; CODE XREF: sub_1403B9320+236↑j
                                        ; sub_1403B9320+23F↑j
                mov     al, r15b
                jmp     short loc_1403B9582
; ---------------------------------------------------------------------------

loc_1403B9573:                          ; CODE XREF: sub_1403B9320+167↑j
                cmp     edi, 8
                jnz     loc_1404AC354
                mov     al, [rbx+27Ah]

loc_1403B9582:                          ; CODE XREF: sub_1403B9320+251↑j
                test    al, al
                jz      loc_1403B94A7

loc_1403B958A:                          ; CODE XREF: sub_1403B9320+174↑j
                                        ; sub_1403B9320+181↑j ...
                lea     rcx, [rsp+1E0h+var_1A8+8]
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                mov     eax, cs:dword_140CFC660
                movzx   esi, byte ptr [rsp+1E0h+var_190]
                test    eax, eax
                jnz     loc_1404AC362

loc_1403B95A7:                          ; CODE XREF: sub_1403B9320+F3045↓j
                                        ; sub_1403B9320+F3051↓j ...
                mov     cr8, rsi
                jmp     loc_1403B93BD
; ---------------------------------------------------------------------------

loc_1403B95B0:                          ; CODE XREF: sub_1403B9320+F1↑j
                sub     eax, 1
                jnz     loc_1404AC31E
                lea     edi, [rax+8]
                jmp     short loc_1403B9547
; } // starts at 1403B9320
sub_1403B9320   endp

; ---------------------------------------------------------------------------
byte_1403B95BE  db 12h dup(0CCh)        ; DATA XREF: .rdata:00000001400A4A18↑o
                                        ; .pdata:00000001400DEB1C↑o

; =============== S U B R O U T I N E =======================================


sub_1403B95D0   proc near               ; DATA XREF: .rdata:00000001400A4B30↑o
                                        ; .pdata:00000001400DEB28↑o ...

var_28          = dword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 00000001404AC4B4 SIZE 00000107 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                and     dword ptr [rax+20h], 0
                mov     rdi, r9
                or      eax, 0FFFFFFFFh
                mov     rbp, r8
                mov     rsi, rdx
                lock xadd [r9], eax
                dec     eax
                mov     ebx, eax
                not     ebx
                and     ebx, 80000000h
                test    eax, 7FFFFFFFh
                jz      short loc_1403B9646

loc_1403B9610:                          ; CODE XREF: sub_1403B95D0+59↓j
                mov     eax, [rdi]
                and     eax, 80000000h
                cmp     eax, ebx
                jz      loc_1404AC572
                lea     rcx, [rsp+48h+arg_18]
                call    sub_1402C8C70
                jmp     short loc_1403B9610
; ---------------------------------------------------------------------------

loc_1403B962B:                          ; CODE XREF: sub_1403B95D0+74↓j
                                        ; sub_1403B95D0+F2FE6↓j
                mov     eax, [rdi]
                and     eax, 80000000h
                cmp     eax, ebx
                jz      loc_1404AC593
                lea     rcx, [rsp+48h+var_28]
                call    sub_1402C8C70
                jmp     short loc_1403B962B
; ---------------------------------------------------------------------------

loc_1403B9646:                          ; CODE XREF: sub_1403B95D0+3E↑j
                mov     eax, [r9+4]
                mov     ecx, 1
                or      eax, ebx
                mov     [r9], eax
                call    sub_1402A46FC
                mov     rcx, rax
                mov     r14, rax
                call    sub_1402325E0
                mov     rcx, rax
                mov     rbx, rax
                call    ExAcquireSpinLockExclusive
                and     dword ptr [rbx+4], 0
                lea     rcx, dword_140C50CC8
                mov     r15b, al
                call    ExAcquireSpinLockExclusive
                cmp     cs:qword_140C50C28, 0
                jnz     loc_1404AC4B4
                mov     rcx, rsi
                call    sub_1403B96D8
                xor     ecx, ecx

loc_1403B969A:                          ; CODE XREF: sub_1403B95D0+F2F5B↓j
                mov     [rsi+10h], ecx
                lea     rcx, dword_140C50CC8
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                mov     ebx, 2
                test    eax, eax
                jnz     loc_1404AC530

loc_1403B96BC:                          ; CODE XREF: sub_1403B95D0+F2F62↓j
                                        ; sub_1403B95D0+F2F70↓j ...
                mov     cr8, rbx
                mov     dl, r15b
                mov     rcx, r14
                call    sub_140234180
                nop
                jmp     loc_1404AC572
sub_1403B95D0   endp

; ---------------------------------------------------------------------------
algn_1403B96D1:                         ; DATA XREF: .rdata:00000001400A4B30↑o
                                        ; .pdata:00000001400DEB28↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403B96D8   proc near               ; CODE XREF: sub_1403B95D0+C3↑p
                                        ; DATA XREF: .rdata:00000001400A4B5C↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404AC5BC SIZE 0000005F BYTES

                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 28h
                cmp     qword ptr [rcx], 0
                jnz     short loc_1403B96F6
                mov     cs:byte_140C50CCC, 1

loc_1403B96F6:                          ; CODE XREF: sub_1403B96D8+15↑j
                xor     ebx, ebx
                mov     ebp, 1000h
                mov     r15, 0FFFFFFFFFFFFF000h

loc_1403B9704:                          ; CODE XREF: sub_1403B96D8+191↓j
                mov     r10, 0FFFFF68000000000h
                mov     r11, 7FFFFFFFF8h
                mov     r9, 1000000000h

loc_1403B9722:                          ; CODE XREF: sub_1403B96D8+12D↓j
                                        ; sub_1403B96D8+13B↓j
                mov     r8, 0FFFFFA8000000000h

loc_1403B972C:                          ; CODE XREF: sub_1403B96D8+D8↓j
                cmp     rbx, r9
                jz      loc_1403B995C
                mov     rax, cs:qword_140CFC4A8
                test    rax, rax
                jnz     loc_1404AC5BC

loc_1403B9745:                          ; CODE XREF: sub_1403B96D8+F2F2F↓j
                mov     rax, r9
                sub     rax, rbx

loc_1403B974B:                          ; CODE XREF: sub_1403B96D8+F2F3E↓j
                mov     rcx, rbx
                test    rax, rax
                jz      loc_1403B995C
                lea     rbx, [rax+rbx]
                lea     rdx, [rcx+rcx*2]
                mov     [rsp+68h+arg_18], rbx
                shl     rdx, 4
                mov     rax, 0FFFFFA8000000FFFh
                add     rdx, rax
                shr     rdx, 9
                and     rdx, r11
                mov     rax, r10
                add     rdx, rax
                lea     r12, [rbx+rbx*2]
                mov     [rsp+68h+arg_8], rdx
                shl     r12, 4
                mov     rax, r8
                add     r12, rax
                shr     r12, 9
                and     r12, r11
                mov     rax, r10
                add     r12, rax
                mov     [rsp+68h+arg_10], r12
                cmp     rdx, r12
                jnb     loc_1403B972C

loc_1403B97B6:                          ; CODE XREF: sub_1403B96D8+18B↓j
                mov     rax, r12
                lea     rcx, [rsp+68h+arg_8]
                sub     rax, rdx
                mov     r9d, 1
                sar     rax, 3
                lea     rdx, [rsp+68h+arg_0]
                shl     rax, 0Ch
                mov     r8b, 2
                mov     [rsp+68h+arg_0], rax
                call    sub_1403B9980
                mov     r10, 0FFFFF68000000000h
                mov     rdi, rax
                mov     r9, 1000000000h
                mov     r11, 7FFFFFFFF8h
                test    rax, rax
                jz      loc_1403B9722
                mov     rsi, [rsp+68h+arg_0]
                and     rsi, r15
                jz      loc_1403B9722
                mov     r12, 0FFFFFA8000000000h
                mov     rbx, 2AAAAAAAAAAAAAABh

loc_1403B982D:                          ; CODE XREF: sub_1403B96D8+171↓j
                cmp     qword ptr [rdi], 0
                jz      short loc_1403B986E

loc_1403B9833:                          ; CODE XREF: sub_1403B96D8+1AA↓j
                mov     r14, rbp

loc_1403B9836:                          ; CODE XREF: sub_1403B96D8+276↓j
                lea     rax, [r14+0FFFh]
                and     rax, r15
                add     rdi, rax
                sub     rsi, rax
                cmp     rsi, rbp
                jnb     short loc_1403B982D
                mov     rdx, [rsp+68h+arg_8]
                mov     r12, [rsp+68h+arg_10]
                mov     rbx, [rsp+68h+arg_18]
                cmp     rdx, r12
                jb      loc_1403B97B6
                jmp     loc_1403B9704
; ---------------------------------------------------------------------------

loc_1403B986E:                          ; CODE XREF: sub_1403B96D8+159↑j
                xor     r8d, r8d
                mov     rdx, rsi
                mov     rcx, rdi
                call    RtlCompareMemoryUlong
                mov     r14, rax
                cmp     rax, rbp
                jb      short loc_1403B9833
                mov     r13, rdi
                mov     rcx, r12
                mov     rdx, rdi
                mov     rax, rbx
                sub     rdx, rcx
                imul    rdx
                sar     rdx, 3
                mov     rcx, rdx
                shr     rcx, 3Fh
                add     rdx, rcx
                lea     rbp, [rdx+rdx*2]
                shl     rbp, 4
                mov     rax, r12
                add     rbp, rax
                cmp     rbp, rdi
                jz      short loc_1403B98DC
                mov     rcx, rbp
                call    sub_14029B5F0
                test    al, al
                jz      loc_1403B9953
                xor     r8d, r8d
                mov     rcx, rbp
                lea     edx, [r8+30h]
                call    RtlCompareMemoryUlong
                cmp     rax, 30h ; '0'
                jnz     short loc_1403B9953

loc_1403B98DC:                          ; CODE XREF: sub_1403B96D8+1DD↑j
                                        ; sub_1403B96D8+282↓j
                mov     rbp, r14
                and     rbp, r15
                add     rbp, rdi
                mov     rax, r12
                mov     rcx, rbp
                sub     rcx, rax
                mov     rax, rbx
                imul    rcx
                sar     rdx, 3
                mov     rax, rdx
                shr     rax, 3Fh
                add     rdx, rax
                lea     r15, [rdx+rdx*2]
                shl     r15, 4
                mov     rax, r12
                add     r15, rax
                cmp     r15, rbp
                jz      short loc_1403B9937
                lea     rcx, [r15+30h]
                call    sub_14029B5F0
                test    al, al
                jz      short loc_1403B996E
                xor     r8d, r8d
                mov     rcx, r15
                lea     edx, [r8+30h]
                call    RtlCompareMemoryUlong
                cmp     rax, 30h ; '0'
                jnz     short loc_1403B996E

loc_1403B9937:                          ; CODE XREF: sub_1403B96D8+23B↑j
                                        ; sub_1403B96D8+29D↓j
                mov     rdx, rbp
                mov     rcx, r13
                call    sub_1403B9B68
                mov     ebp, 1000h
                mov     r15, 0FFFFFFFFFFFFF000h
                jmp     loc_1403B9836
; ---------------------------------------------------------------------------

loc_1403B9953:                          ; CODE XREF: sub_1403B96D8+1E9↑j
                                        ; sub_1403B96D8+202↑j
                lea     r13, [rdi+1000h]
                jmp     short loc_1403B98DC
; ---------------------------------------------------------------------------

loc_1403B995C:                          ; CODE XREF: sub_1403B96D8+57↑j
                                        ; sub_1403B96D8+79↑j
                add     rsp, 28h
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

loc_1403B996E:                          ; CODE XREF: sub_1403B96D8+248↑j
                                        ; sub_1403B96D8+25D↑j
                sub     rbp, 1000h
                jmp     short loc_1403B9937
sub_1403B96D8   endp

; ---------------------------------------------------------------------------
algn_1403B9977:                         ; DATA XREF: .rdata:00000001400A4B5C↑o
                                        ; .pdata:00000001400DEB34↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403B9980   proc near               ; CODE XREF: sub_1403B96D8+104↑p
                                        ; sub_14052E4E4+7C↓p
                                        ; DATA XREF: ...

var_68          = dword ptr -68h
var_60          = qword ptr -60h
var_58          = dword ptr -58h
var_50          = qword ptr -50h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = byte ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 00000001404AC61C SIZE 0000011D BYTES

                mov     rax, rsp
                mov     [rax+20h], r9d
                mov     [rax+18h], r8b
                mov     [rax+10h], rdx
                mov     [rax+8], rcx
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 48h
                mov     rdi, [rcx]
                xor     ebx, ebx
                mov     [rax-58h], ebx
                mov     r11, 7FFFFFFFF8h
                mov     r10, 0FFFFF68000000000h
                test    rdi, rdi
                jz      loc_1404AC61C

loc_1403B99C8:                          ; CODE XREF: sub_1403B9980+F2CB0↓j
                mov     rax, [rdx]
                test    rax, rax
                jz      loc_1404AC635
                shr     rax, 0Ch
                lea     rsi, [rdi+rax*8]
                mov     r12, rsi
                shl     r12, 19h
                mov     rax, r10
                shl     rax, 19h
                sub     r12, rax
                sar     r12, 10h

loc_1403B99F1:                          ; CODE XREF: sub_1403B9980+F2CE9↓j
                sub     rsi, 8

loc_1403B99F5:                          ; CODE XREF: sub_1403B9980+F2CE3↓j
                mov     eax, r9d
                mov     ecx, 1
                neg     eax
                sbb     r13d, r13d
                and     r13d, 4
                add     r13d, 3
                call    sub_1402A46FC
                mov     [rsp+88h+var_50], rax
                mov     rbp, rbx
                mov     r14, rbx
                mov     r15, rbx
                cmp     rdi, rsi
                ja      loc_1403B9AEC

loc_1403B9A26:                          ; CODE XREF: sub_1403B9980+F2D44↓j
                test    rbp, rbp
                jnz     loc_1404AC66E

loc_1403B9A2F:                          ; CODE XREF: sub_1403B9980+F2CFC↓j
                mov     r9b, [rsp+88h+arg_10]
                lea     rax, [rsp+88h+var_58]
                mov     [rsp+88h+var_60], rax
                xor     r8d, r8d
                mov     rdx, rsi
                mov     [rsp+88h+var_68], r13d
                mov     rcx, rdi
                call    sub_1402A7DC0
                mov     rdi, rax
                test    rax, rax
                jz      loc_1404AC6FF
                mov     r11, 7FFFFFFFF8h
                mov     r10, 0FFFFF68000000000h
                cmp     [rsp+88h+arg_18], ebx
                jz      loc_1404AC681

loc_1403B9A81:                          ; CODE XREF: sub_1403B9980+F2D11↓j
                mov     eax, [rsp+88h+var_58]
                test    eax, eax
                jz      loc_1404AC696
                mov     r14, rdi
                mov     rcx, rdi
                test    eax, eax
                jz      short loc_1403B9AB5
                mov     edx, eax

loc_1403B9A99:                          ; CODE XREF: sub_1403B9980+133↓j
                test    rbp, rbp
                jnz     loc_1404AC709

loc_1403B9AA2:                          ; CODE XREF: sub_1403B9980+F2D96↓j
                shr     rcx, 9
                and     rcx, r11
                mov     rax, r10
                add     rcx, rax
                sub     rdx, 1
                jnz     short loc_1403B9A99

loc_1403B9AB5:                          ; CODE XREF: sub_1403B9980+115↑j
                add     rcx, 8
                call    sub_14027F590
                mov     rcx, rdi
                mov     r15, rax
                call    sub_14027F590
                sub     r15, rax
                sub     rsi, rdi
                mov     rax, [rsp+88h+var_50]
                mov     rcx, r15
                sar     rsi, 3
                shr     rcx, 0Ch
                lea     rdx, [rsi+1]
                cmp     rcx, rdx
                ja      loc_1404AC71B

loc_1403B9AEC:                          ; CODE XREF: sub_1403B9980+A0↑j
                                        ; sub_1403B9980+F2D4A↓j ...
                test    rbp, rbp
                jnz     loc_1404AC728

loc_1403B9AF5:                          ; CODE XREF: sub_1403B9980+F2DB4↓j
                test    r14, r14
                jz      short loc_1403B9B5D
                mov     rax, r15
                shr     rax, 0Ch
                lea     rdi, [r14+rax*8]
                shl     r14, 19h
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                shl     rax, 19h
                mov     rbx, r12
                sub     r14, rax
                sar     r14, 10h
                sub     rbx, r14
                lea     rax, [r15+r14]
                cmp     rax, r12
                cmovbe  rbx, r15

loc_1403B9B32:                          ; CODE XREF: sub_1403B9980+1E0↓j
                mov     rax, [rsp+88h+arg_8]
                mov     [rax], rbx
                mov     rax, [rsp+88h+arg_0]
                mov     [rax], rdi
                mov     rax, r14
                add     rsp, 48h
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

loc_1403B9B5D:                          ; CODE XREF: sub_1403B9980+178↑j
                mov     r14, rbx
                jmp     short loc_1403B9B32
sub_1403B9980   endp

; ---------------------------------------------------------------------------
algn_1403B9B62:                         ; DATA XREF: .rdata:00000001400A4B88↑o
                                        ; .pdata:00000001400DEB40↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1403B9B68   proc near               ; CODE XREF: sub_1403B96D8+265↑p
                                        ; DATA XREF: .rdata:00000001400A4BB4↑o ...

var_78          = qword ptr -78h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
arg_0           = dword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404AC73A SIZE 00000164 BYTES

                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 58h
                mov     rax, cs:qword_140CFC6E0
                xorps   xmm0, xmm0
                shl     rax, 0Ch
                mov     r15, rdx
                add     rax, cs:qword_140CFC510
                mov     rdi, rcx
                cmp     rdx, rax
                movups  [rsp+98h+var_70], xmm0
                cmova   r15, rax
                movups  [rsp+98h+var_60], xmm0
                cmp     rcx, r15
                jnb     loc_1403B9DC5
                xor     esi, esi
                xor     r12d, r12d
                xor     r14d, r14d
                mov     [rsp+98h+var_78], r14

loc_1403B9BBB:                          ; CODE XREF: sub_1403B9B68+1C8↓j
                mov     rcx, rdi
                call    sub_140260090
                mov     rbx, rdi
                mov     ebp, eax
                shr     rbx, 9
                mov     r10, 7FFFFFFFF8h
                and     rbx, r10
                mov     r9, 0FFFFF68000000000h
                mov     rcx, r9
                mov     edx, 1
                add     rbx, rcx
                mov     [rsp+98h+arg_18], rdx
                lea     r13d, [rdx+2]
                test    eax, eax
                jg      loc_1403B9E32

loc_1403B9C02:                          ; CODE XREF: sub_1403B9B68+2EA↓j
                                        ; sub_1403B9B68+306↓j
                mov     rcx, rdx
                shl     rcx, 0Ch
                lea     rax, [rcx-1]
                test    rdi, rax
                jnz     loc_1403B9E73
                mov     rax, r15
                sub     rax, rdi
                cmp     rax, rcx
                jb      loc_1403B9E73
                test    byte ptr [rbx], 20h
                jnz     loc_1403B9DD7

loc_1403B9C2E:                          ; CODE XREF: sub_1403B9B68+2C5↓j
                mov     [rsp+98h+arg_0], ebp
                cmp     ebp, 4
                jge     loc_1403B9D22
                lea     rcx, [rsp+98h+arg_10]
                call    sub_1402433C0
                mov     [rsp+98h+arg_8], eax

loc_1403B9C52:                          ; CODE XREF: sub_1403B9B68+F2CF6↓j
                mov     rcx, rbx
                call    sub_1402805F0
                mov     r14, rax
                mov     [rsp+98h+arg_10], rax
                mov     rdi, rax
                cmp     ebp, [rsp+98h+arg_0]
                jnz     loc_1404AC755

loc_1403B9C75:                          ; CODE XREF: sub_1403B9B68+F2BF1↓j
                                        ; sub_1403B9B68+F2C07↓j
                mov     r8d, r13d
                mov     edx, ebp
                mov     rcx, rbx
                call    sub_1403B9FA4
                add     rsi, [rsp+98h+arg_18]
                cmp     [rsp+98h+arg_8], 0
                jnz     loc_1404AC774

loc_1403B9C98:                          ; CODE XREF: sub_1403B9B68+F2C16↓j
                                        ; sub_1403B9B68+F2C33↓j ...
                shr     rdi, 0Ch
                mov     rax, 0FFFFFFFFFh
                and     rdi, rax
                lea     rdx, [rdi+rdi*2]
                mov     rdi, 0FFFFFA8000000000h
                shl     rdx, 4
                mov     rax, rdi
                add     rdx, rax
                mov     ecx, r13d
                mov     rax, qword ptr [rsp+rcx*8+98h+var_70]
                mov     [rdx], rax
                mov     qword ptr [rsp+rcx*8+98h+var_70], rdx
                cmp     ebp, 3
                jz      loc_1404AC812
                mov     r14, [rsp+98h+var_78]

loc_1403B9CDF:                          ; CODE XREF: sub_1403B9B68+F2CB9↓j
                mov     edx, ebp
                mov     rcx, rbx
                call    sub_1403B9ECC
                mov     rcx, rbx
                and     rcx, 0FFFFFFFFFFFFF000h
                call    sub_1402C78A0
                lea     rcx, [rax+rax*2]
                add     rcx, rcx
                mov     rax, rdi
                mov     rax, [rax+rcx*8+18h]
                mov     rcx, 3FFFFFFFFFFFFFFFh
                and     rax, rcx
                cmp     rax, 1
                jz      loc_1404AC826
                add     rbx, 8

loc_1403B9D22:                          ; CODE XREF: sub_1403B9B68+D0↑j
                                        ; sub_1403B9B68+F2CFC↓j
                mov     rcx, rbx

loc_1403B9D25:                          ; CODE XREF: sub_1403B9B68+F2D05↓j
                call    sub_14027F590
                mov     rdi, rax

loc_1403B9D2D:                          ; CODE XREF: sub_1403B9B68+315↓j
                cmp     rdi, r15
                jb      loc_1403B9BBB
                test    r12, r12
                jnz     loc_1404AC872

loc_1403B9D3F:                          ; CODE XREF: sub_1403B9B68+F2D16↓j
                mov     rax, rsi
                neg     rax
                lock xadd cs:qword_140C4EE58, rax
                xor     r8d, r8d
                lea     rdx, [rsp+98h+var_70]
                lea     rcx, unk_140C50C00
                call    sub_1402FFFC8
                mov     rdx, rsi
                lea     rcx, unk_140C50C00
                call    sub_14026B700
                mov     r8, gs:20h
                or      r10d, 0FFFFFFFFh
                movsxd  rdx, dword ptr [r8+831Ch]
                cmp     edx, r10d
                jz      loc_1403B9EAF
                lea     rcx, [rsi+rdx]
                mov     r9d, 100h
                cmp     rcx, r9
                ja      loc_1403B9E88

loc_1403B9DA1:                          ; CODE XREF: sub_1403B9B68+F2D2B↓j
                cmp     rsi, 80000h
                jnb     loc_1403B9E88
                lea     ecx, [rdx+rsi]
                mov     eax, edx
                lock cmpxchg [r8+831Ch], ecx
                movsxd  rdx, eax
                jnz     loc_1404AC883

loc_1403B9DC5:                          ; CODE XREF: sub_1403B9B68+40↑j
                                        ; sub_1403B9B68+34A↓j ...
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

loc_1403B9DD7:                          ; CODE XREF: sub_1403B9B68+C0↑j
                mov     rax, rbx
                mov     rcx, r15
                shr     rax, 3
                mov     edx, 200h
                and     eax, 1FFh
                shr     rcx, 9
                sub     rdx, rax
                and     rcx, r10
                mov     rax, r9
                add     rcx, rax
                test    ebp, ebp
                jg      loc_1404AC73A

loc_1403B9E03:                          ; CODE XREF: sub_1403B9B68+F2BE8↓j
                mov     rax, rbx
                mov     r8, 0FFFFFFFFF000h
                xor     rax, rcx
                test    r8, rax
                jnz     short loc_1403B9E22
                mov     rdx, rcx
                sub     rdx, rbx
                sar     rdx, 3

loc_1403B9E22:                          ; CODE XREF: sub_1403B9B68+2AE↑j
                mov     r8d, ebp
                mov     rcx, rbx
                call    sub_1403BA0BC
                jmp     loc_1403B9C2E
; ---------------------------------------------------------------------------

loc_1403B9E32:                          ; CODE XREF: sub_1403B9B68+94↑j
                mov     rcx, rbp
                or      r8d, 0FFFFFFFFh

loc_1403B9E39:                          ; CODE XREF: sub_1403B9B68+2E4↓j
                shr     rbx, 9
                add     r13d, r8d
                and     rbx, r10
                mov     rax, r9
                add     rbx, rax
                sub     rcx, rdx
                jnz     short loc_1403B9E39
                cmp     r13d, 3
                jz      loc_1403B9C02
                add     r13d, r8d
                lea     rdx, qword_14001A848
                mov     rdx, [rdx+r13*8]
                mov     [rsp+98h+arg_18], rdx
                jmp     loc_1403B9C02
; ---------------------------------------------------------------------------

loc_1403B9E73:                          ; CODE XREF: sub_1403B9B68+A8↑j
                                        ; sub_1403B9B68+B7↑j
                mov     rcx, rdi
                call    sub_1403BA1A8
                test    eax, eax
                jnz     loc_1403B9D2D
                jmp     loc_1404AC869
; ---------------------------------------------------------------------------

loc_1403B9E88:                          ; CODE XREF: sub_1403B9B68+233↑j
                                        ; sub_1403B9B68+240↑j ...
                mov     ecx, 0C0h
                cmp     edx, ecx
                jle     short loc_1403B9EAF
                cmp     edx, r10d
                jz      short loc_1403B9EAF
                mov     eax, edx
                lock cmpxchg [r8+831Ch], ecx
                jnz     short loc_1403B9EAF
                lea     eax, [rdx-0C0h]
                movsxd  rcx, eax
                add     rsi, rcx

loc_1403B9EAF:                          ; CODE XREF: sub_1403B9B68+220↑j
                                        ; sub_1403B9B68+327↑j ...
                test    rsi, rsi
                jz      loc_1403B9DC5
                lock xadd cs:qword_140C52800, rsi
                jmp     loc_1403B9DC5
sub_1403B9B68   endp

; ---------------------------------------------------------------------------
byte_1403B9EC6  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400A4BB4↑o
                                        ; .pdata:00000001400DEB4C↑o

; =============== S U B R O U T I N E =======================================


sub_1403B9ECC   proc near               ; CODE XREF: sub_1403B9B68+17C↑p
                                        ; DATA XREF: .rdata:00000001400A4BE4↑o ...

var_D8          = byte ptr -0D8h
var_D0          = dword ptr -0D0h
var_C0          = qword ptr -0C0h
var_18          = qword ptr -18h
var_8           = byte ptr -8
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404AC89E SIZE 000000C5 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rsi
                push    rdi
                sub     rsp, 0F0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0F8h+var_18], rax
                mov     rax, cs:qword_140C4EC50
                mov     rdi, rcx
                cmp     cs:qword_140C4EC48, rax
                movsxd  rbx, edx
                jnz     loc_1404AC927
                xor     edx, edx
                lea     rcx, [rsp+0F8h+var_D8]
                mov     r8d, 0B8h
                call    memset
                mov     rcx, rdi
                call    sub_1402805F0
                and     [rsp+0F8h+var_C0], 0
                mov     [rsp+0F8h+var_D0], 14h
                test    ebx, ebx
                jnz     loc_1404AC89E

loc_1403B9F3A:                          ; CODE XREF: sub_1403B9ECC+F29D4↓j
                mov     r8, rdi
                lea     rcx, [rsp+0F8h+var_D8]
                mov     edx, ebx
                call    sub_14032CA10

loc_1403B9F49:                          ; CODE XREF: sub_1403B9ECC+F29EA↓j
                mov     rbx, cs:qword_14001D278
                mov     rcx, rdi
                xor     esi, esi
                call    sub_1402433C0
                test    eax, eax
                jnz     loc_1404AC8BB

loc_1403B9F62:                          ; CODE XREF: sub_1403B9ECC+F2A04↓j
                                        ; sub_1403B9ECC+F2A29↓j ...
                mov     [rdi], rbx
                test    esi, esi
                jnz     loc_1404AC916

loc_1403B9F6D:                          ; CODE XREF: sub_1403B9ECC+F2A56↓j
                lea     rcx, [rsp+0F8h+var_D8]
                call    sub_14028EDB0

loc_1403B9F77:                          ; CODE XREF: sub_1403B9ECC+F2A92↓j
                mov     rcx, [rsp+0F8h+var_18]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0F8h+var_8]
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403B9ECC
sub_1403B9ECC   endp

byte_1403B9F9D  db 7 dup(0CCh)          ; DATA XREF: .rdata:00000001400A4BE4↑o
                                        ; .pdata:00000001400DEB58↑o

; =============== S U B R O U T I N E =======================================


sub_1403B9FA4   proc near               ; CODE XREF: sub_1403B9B68+115↑p
                                        ; DATA XREF: .pdata:00000001400DEB64↑o

var_38          = qword ptr -38h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_18          = dword ptr  20h

                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 30h
                mov     edi, r8d
                mov     esi, edx
                call    sub_1402805F0
                lea     rcx, [rsp+58h+var_38]
                mov     [rsp+58h+var_38], rax
                call    sub_1402805F0
                shr     rax, 0Ch
                mov     r15, 0FFFFFFFFFh
                and     rax, r15
                mov     r14, 0FFFFFA8000000000h
                lea     rbx, [rax+rax*2]
                shl     rbx, 4
                mov     rax, r14
                add     rbx, rax
                mov     rbp, 7FFFFFFFFFFFFFFFh
                test    esi, esi
                jnz     short loc_1403BA039
                cmp     edi, 3
                jnz     short loc_1403BA039
                and     [rsp+58h+arg_8], esi
                jmp     short loc_1403BA022
; ---------------------------------------------------------------------------

loc_1403BA00F:                          ; CODE XREF: sub_1403B9FA4+7C↓j
                                        ; sub_1403B9FA4+85↓j
                lea     rcx, [rsp+58h+arg_8]
                call    sub_1402C8C70
                mov     rax, [rbx+18h]
                test    rax, rax
                js      short loc_1403BA00F

loc_1403BA022:                          ; CODE XREF: sub_1403B9FA4+69↑j
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jb      short loc_1403BA00F
                mov     eax, 0FFFFh
                add     [rbx+20h], ax
                lock and [rbx+18h], rbp

loc_1403BA039:                          ; CODE XREF: sub_1403B9FA4+5E↑j
                                        ; sub_1403B9FA4+63↑j
                mov     rax, [rbx+28h]
                and     rax, r15
                lea     rdi, [rax+rax*2]
                shl     rdi, 4
                mov     rax, r14
                add     rdi, rax
                and     [rsp+58h+arg_18], 0
                jmp     short loc_1403BA068
; ---------------------------------------------------------------------------

loc_1403BA055:                          ; CODE XREF: sub_1403B9FA4+C2↓j
                                        ; sub_1403B9FA4+CB↓j
                lea     rcx, [rsp+58h+arg_18]
                call    sub_1402C8C70
                mov     rax, [rdi+18h]
                test    rax, rax
                js      short loc_1403BA055

loc_1403BA068:                          ; CODE XREF: sub_1403B9FA4+AF↑j
                lock bts qword ptr [rdi+18h], 3Fh ; '?'
                jb      short loc_1403BA055
                mov     rax, [rdi+18h]
                mov     rdx, 3FFFFFFFFFFFFFFFh
                lea     rcx, [rax-1]
                xor     rcx, rax
                and     rcx, rdx
                xor     rcx, rax
                mov     [rdi+18h], rcx
                lock and [rdi+18h], rbp
                test    esi, esi
                jnz     short loc_1403BA0A4
                mov     rax, cs:qword_14001D278
                mov     [rbx+10h], rax

loc_1403BA0A4:                          ; CODE XREF: sub_1403B9FA4+F3↑j
                mov     rbx, [rsp+58h+arg_0]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403B9FA4   endp

byte_1403BA0B6  db 6 dup(0CCh)          ; DATA XREF: .pdata:00000001400DEB64↑o

; =============== S U B R O U T I N E =======================================


sub_1403BA0BC   proc near               ; CODE XREF: sub_1403B9B68+2C0↑p
                                        ; sub_1403B9B68+F2C01↓p
                                        ; DATA XREF: ...

var_E8          = byte ptr -0E8h
var_E0          = dword ptr -0E0h
var_D0          = qword ptr -0D0h
var_28          = qword ptr -28h
var_18          = byte ptr -18h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001404AC964 SIZE 00000032 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_10], rbx
                mov     [rsp+arg_18], rbp
                push    rsi
                push    rdi
                push    r14
                sub     rsp, 0F0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+108h+var_28], rax
                mov     r14d, r8d
                mov     rbx, rdx
                mov     rdi, rcx
                xor     edx, edx
                mov     r8d, 0B8h
                lea     rcx, [rsp+108h+var_E8]
                call    memset
                and     [rsp+108h+var_D0], 0
                mov     rbp, rdi
                shl     rbp, 19h
                mov     [rsp+108h+var_E0], 14h
                mov     rax, 0FFFFF68000000000h
                shl     rax, 19h
                sub     rbp, rax
                sar     rbp, 10h
                test    rbx, rbx
                jz      short loc_1403BA152
                mov     rsi, rbx

loc_1403BA130:                          ; CODE XREF: sub_1403BA0BC+94↓j
                mov     rcx, rdi
                call    sub_1402805F0
                test    al, 20h
                jz      short loc_1403BA148
                mov     rcx, rax
                and     rcx, 0FFFFFFFFFFFFFFDFh
                lock cmpxchg [rdi], rcx

loc_1403BA148:                          ; CODE XREF: sub_1403BA0BC+7E↑j
                add     rdi, 8
                sub     rsi, 1
                jnz     short loc_1403BA130

loc_1403BA152:                          ; CODE XREF: sub_1403BA0BC+6F↑j
                test    r14d, r14d
                jnz     loc_1404AC964
                xor     r9d, r9d
                lea     rcx, [rsp+108h+var_E8]
                mov     r8, rbx
                mov     rdx, rbp
                call    sub_1402882E0

loc_1403BA16E:                          ; CODE XREF: sub_1403BA0BC+F28B5↓j
                                        ; sub_1403BA0BC+F28D5↓j
                lea     rcx, [rsp+108h+var_E8]
                call    sub_14028EDB0
                mov     rcx, [rsp+108h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+108h+var_18]
                mov     rbx, [r11+30h]
                mov     rbp, [r11+38h]
                mov     rsp, r11
                pop     r14
                pop     rdi
                pop     rsi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1403BA0BC
sub_1403BA0BC   endp

algn_1403BA1A1:                         ; DATA XREF: .rdata:00000001400A4C30↑o
                                        ; .pdata:00000001400DEB70↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=1B0h

sub_1403BA1A8   proc near               ; CODE XREF: sub_1403B9B68+30E↑p
                                        ; DATA XREF: .pdata:00000001400DEB7C↑o

var_290         = dword ptr -290h
var_280         = qword ptr -280h
var_278         = qword ptr -278h
var_270         = dword ptr -270h
var_268         = dword ptr -268h
var_264         = dword ptr -264h
var_260         = qword ptr -260h
var_258         = qword ptr -258h
var_250         = qword ptr -250h
var_248         = qword ptr -248h
var_240         = qword ptr -240h
var_238         = qword ptr -238h
var_230         = qword ptr -230h
var_220         = byte ptr -220h
var_200         = qword ptr -200h
var_1E8         = dword ptr -1E8h
var_110         = byte ptr -110h
var_F0          = byte ptr -0F0h
var_E8          = dword ptr -0E8h
var_D8          = qword ptr -0D8h
var_30          = qword ptr -30h
var_20          = byte ptr -20h

; __unwind { // __GSHandlerCheck
                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-1B8h]
                sub     rsp, 290h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1B0h+var_30], rax
                mov     rbx, rcx
                xor     edi, edi
                lea     rcx, [rbp+1B0h+var_F0]
                mov     qword ptr [rsp+2B0h+var_270], rdi
                xor     edx, edx
                mov     byte ptr [rsp+2B0h+var_280], dil
                mov     r8d, 0B8h
                call    memset
                xor     edx, edx
                lea     rcx, [rbp+1B0h+var_220]
                mov     r8d, 128h
                call    memset
                mov     rcx, rbx
                mov     [rbp+1B0h+var_E8], 14h
                mov     [rbp+1B0h+var_D8], rdi
                call    sub_140260090
                mov     rsi, rbx
                mov     [rsp+2B0h+var_268], eax
                shr     rsi, 12h
                mov     edi, eax
                and     esi, 3FFFFFF8h
                mov     rax, 0FFFFF6FB40000000h
                add     rsi, rax
                mov     rdx, 0FFFFF68000000000h
                mov     r12d, 1
                mov     r15d, 200000h
                mov     r8, 7FFFFFFFF8h
                cmp     edi, r12d
                jz      short loc_1403BA28A
                lea     ecx, [rdi-1]

loc_1403BA274:                          ; CODE XREF: sub_1403BA1A8+E0↓j
                shr     rsi, 9
                and     rsi, r8
                mov     rax, rdx
                add     rsi, rax
                shl     r15, 9
                sub     rcx, r12
                jnz     short loc_1403BA274

loc_1403BA28A:                          ; CODE XREF: sub_1403BA1A8+C7↑j
                mov     rcx, rsi
                call    sub_1402805F0
                lea     rcx, [rsp+2B0h+var_250]
                mov     [rsp+2B0h+var_250], rax
                mov     r14, rax
                call    sub_1402805F0
                mov     r13, rax
                mov     [rbp+1B0h+var_1E8], 4
                mov     rax, 0FFFFFFFFFh
                shr     r13, 0Ch
                and     r13, rax
                lea     rax, unk_140C50C00
                mov     rcx, r13
                mov     [rbp+1B0h+var_200], rax
                mov     [rsp+2B0h+var_240], r13
                call    sub_14027DEC0
                lea     r8, [rbp+1B0h+var_110]
                mov     rcx, rbx
                mov     edx, [rax+8]
                add     edx, r12d
                call    sub_140353FDC
                lea     r8, [rsp+2B0h+var_270]
                mov     rdx, r12
                lea     rcx, [rbp+1B0h+var_220]
                call    sub_140303AA0
                test    eax, eax
                jns     short loc_1403BA308
                xor     eax, eax
                jmp     loc_1403BA6F3
; ---------------------------------------------------------------------------

loc_1403BA308:                          ; CODE XREF: sub_1403BA1A8+157↑j
                mov     rcx, qword ptr [rsp+2B0h+var_270]
                mov     rax, 0FFFFFA8000000000h
                and     qword ptr [rcx], 0
                mov     rax, rax
                sub     rcx, rax
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    rcx
                mov     rcx, rsi
                mov     rbx, rdx
                shr     rcx, 9
                sar     rbx, 3
                mov     rax, rbx
                shr     rax, 3Fh
                add     rbx, rax
                mov     rax, 7FFFFFFFF8h
                and     rcx, rax
                mov     [rsp+2B0h+var_258], rbx
                mov     rax, 0FFFFF68000000000h
                mov     rax, rax
                add     rcx, rax
                call    sub_1402805F0
                lea     rcx, [rsp+2B0h+var_278]
                mov     [rsp+2B0h+var_278], rax
                call    sub_1402805F0
                shr     rax, 0Ch
                mov     rcx, 0FFFFFFFFFh
                and     rax, rcx
                mov     r8d, 80000004h
                mov     [rsp+2B0h+var_238], rax
                bt      r14, 8
                jnb     short loc_1403BA3AB
                cmp     edi, r12d
                mov     eax, 0A0000004h
                cmovz   r8d, eax

loc_1403BA3AB:                          ; CODE XREF: sub_1403BA1A8+1F5↑j
                mov     rcx, rsi
                mov     rax, 0FFFFF68000000000h
                shl     rcx, 19h
                mov     rax, rax
                shl     rax, 19h
                mov     rdx, r13
                sub     rcx, rax
                mov     [rbp+1B0h+var_230], rcx
                sar     rcx, 10h
                call    sub_140280E60
                mov     r8d, 80000000h
                mov     [rsp+2B0h+var_278], rax
                lea     rdx, [rsp+2B0h+var_280]
                mov     rcx, rbx
                mov     rdi, rax
                call    sub_1402D6810
                mov     [rsp+2B0h+var_248], rax
                mov     r12, rax
                mov     r14, rdi
                mov     r13, 8000000000000000h

loc_1403BA406:                          ; CODE XREF: sub_1403BA1A8+30D↓j
                and     dword ptr [rsp+2B0h+var_280+4], 0
                mov     rcx, r12
                mov     rbx, r14
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_1403BA466
                call    sub_140349680
                test    eax, eax
                jz      short loc_1403BA43B
                cmp     byte ptr cs:word_140C4DE88+1, 0
                mov     eax, 1
                jnz     short loc_1403BA46A
                test    al, r14b

loc_1403BA434:                          ; CODE XREF: sub_1403BA1A8+2BC↓j
                jz      short loc_1403BA46A
                or      rbx, r13
                jmp     short loc_1403BA46A
; ---------------------------------------------------------------------------

loc_1403BA43B:                          ; CODE XREF: sub_1403BA1A8+279↑j
                mov     rax, gs:188h
                mov     rdi, [rsp+2B0h+var_278]
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_1403BA466
                mov     eax, dword ptr [rsp+2B0h+var_280+4]
                test    r14b, 1
                jmp     short loc_1403BA434
; ---------------------------------------------------------------------------

loc_1403BA466:                          ; CODE XREF: sub_1403BA1A8+270↑j
                                        ; sub_1403BA1A8+2B2↑j
                mov     eax, dword ptr [rsp+2B0h+var_280+4]

loc_1403BA46A:                          ; CODE XREF: sub_1403BA1A8+287↑j
                                        ; sub_1403BA1A8:loc_1403BA434↑j ...
                mov     [r12], rbx
                test    eax, eax
                jz      short loc_1403BA47D
                mov     rdx, rbx
                mov     rcx, r12
                call    sub_140349620

loc_1403BA47D:                          ; CODE XREF: sub_1403BA1A8+2C8↑j
                mov     rax, rdi
                mov     rcx, 0FFFFFFFFF000h
                and     rax, 0FFFFFFFFFFFFF000h
                add     r12, 8
                add     rax, 1000h
                xor     rax, rdi
                and     rax, rcx
                xor     rax, rdi
                mov     [rsp+2B0h+var_278], rax
                mov     rdi, rax
                mov     r14, rax
                test    r12, 0FFFh
                jnz     loc_1403BA406
                mov     dl, byte ptr [rsp+2B0h+var_280]
                mov     r8d, 80000000h
                mov     rcx, [rsp+2B0h+var_248]
                call    sub_1402432B0
                mov     r14d, [rsp+2B0h+var_268]
                mov     ecx, 84000004h
                mov     r13, [rsp+2B0h+var_240]
                cmp     r14d, 1
                mov     eax, 80000004h
                mov     rdx, r13
                cmovz   ecx, eax
                mov     rax, [rsp+2B0h+var_250]
                mov     r8d, ecx
                and     eax, 100h
                bts     r8d, 1Dh
                test    rax, rax
                cmovz   r8d, ecx
                mov     rcx, rsi
                bts     r8d, 1Bh
                call    sub_140280E60
                mov     rdi, [rsp+2B0h+var_258]
                mov     r9d, 0A00h
                mov     r8, [rsp+2B0h+var_238]
                mov     rcx, rdi
                mov     rdx, rsi
                mov     [rsp+2B0h+var_278], rax
                call    sub_140303908
                and     [rsp+2B0h+var_264], 0
                mov     rbx, qword ptr [rsp+2B0h+var_270]
                jmp     short loc_1403BA552
; ---------------------------------------------------------------------------

loc_1403BA53F:                          ; CODE XREF: sub_1403BA1A8+3A8↓j
                                        ; sub_1403BA1A8+3B1↓j
                lea     rcx, [rsp+2B0h+var_264]
                call    sub_1402C8C70
                mov     rax, [rbx+18h]
                test    rax, rax
                js      short loc_1403BA53F

loc_1403BA552:                          ; CODE XREF: sub_1403BA1A8+395↑j
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jb      short loc_1403BA53F
                mov     rax, [rbx+18h]
                mov     rdx, 3FFFFFFFFFFFFFFFh
                lea     rcx, [rax+200h]
                xor     rcx, rax
                and     rcx, rdx
                xor     rcx, rax
                mov     rax, 7FFFFFFFFFFFFFFFh
                mov     [rbx+18h], rcx
                lock and [rbx+18h], rax
                mov     r8, [rsp+2B0h+var_278]
                mov     rax, 0FFFFFFFFFh
                and     rdi, rax
                mov     r9d, r14d
                mov     rax, 0FFFF000000000FFFh
                mov     [rsp+2B0h+var_258], rdi
                and     r8, rax
                mov     rdx, rsi
                mov     rax, rdi
                mov     rcx, rsi
                shl     rax, 0Ch
                or      r8, rax
                mov     [rsp+2B0h+var_278], r8
                call    sub_1403793AC
                mov     edx, 3
                cmp     r14d, edx
                jnz     short loc_1403BA5E6
                mov     r8, rsi
                lea     rcx, [rbp+1B0h+var_F0]
                call    sub_14034A590

loc_1403BA5E6:                          ; CODE XREF: sub_1403BA1A8+42D↑j
                lea     rdi, ds:0[r13*2]
                mov     rax, 0FFFFFA8000000000h
                add     rdi, r13
                shl     rdi, 4
                mov     rax, rax
                mov     rsi, [rbp+1B0h+var_230]
                add     rdi, rax
                mov     r14, [rsp+2B0h+var_258]
                add     rsi, 10000000h
                sar     rsi, 10h
                mov     r12d, 200h
                lea     rbx, [rdi+6000h]

loc_1403BA626:                          ; CODE XREF: sub_1403BA1A8+50D↓j
                sub     rbx, 30h ; '0'
                sub     rsi, 8
                and     dword ptr [rsp+2B0h+var_260], 0
                mov     qword ptr [rsp+2B0h+var_270], rbx
                jmp     short loc_1403BA64D
; ---------------------------------------------------------------------------

loc_1403BA63A:                          ; CODE XREF: sub_1403BA1A8+4A3↓j
                                        ; sub_1403BA1A8+4AC↓j
                lea     rcx, [rsp+2B0h+var_260]
                call    sub_1402C8C70
                mov     rax, [rbx+18h]
                test    rax, rax
                js      short loc_1403BA63A

loc_1403BA64D:                          ; CODE XREF: sub_1403BA1A8+490↑j
                lock bts qword ptr [rbx+18h], 3Fh ; '?'
                jb      short loc_1403BA63A
                mov     rbx, qword ptr [rsp+2B0h+var_270]
                test    byte ptr [rbx+23h], 10h
                jnz     short loc_1403BA69B
                mov     rcx, 1000000000h
                test    [rbx+28h], rcx
                jz      short loc_1403BA67F
                xor     r9d, r9d
                mov     rdx, rbx
                mov     rcx, rdi
                call    sub_1403F59E4

loc_1403BA67F:                          ; CODE XREF: sub_1403BA1A8+4C7↑j
                mov     [rbx+8], rsi
                mov     rcx, 0FFFFFFF000000000h
                mov     rax, [rbx+28h]
                and     rax, rcx
                or      rax, r14
                mov     [rbx+28h], rax

loc_1403BA69B:                          ; CODE XREF: sub_1403BA1A8+4B7↑j
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rbx+18h], rax
                sub     r12, 1
                jz      short loc_1403BA6BA
                mov     rbx, qword ptr [rsp+2B0h+var_270]
                jmp     loc_1403BA626
; ---------------------------------------------------------------------------

loc_1403BA6BA:                          ; CODE XREF: sub_1403BA1A8+506↑j
                cmp     [rsp+2B0h+var_268], 1
                jnz     short loc_1403BA6E2
                shr     r15, 0Ch
                lea     rcx, unk_140C50C00
                mov     r8, r15
                mov     [rsp+2B0h+var_290], 1
                xor     r9d, r9d
                mov     rdx, r13
                call    sub_1402D6AAC

loc_1403BA6E2:                          ; CODE XREF: sub_1403BA1A8+517↑j
                lea     rcx, [rbp+1B0h+var_F0]
                call    sub_14028EDB0
                mov     eax, 1

loc_1403BA6F3:                          ; CODE XREF: sub_1403BA1A8+15B↑j
                mov     rcx, [rbp+1B0h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+2B0h+var_20]
                mov     rbx, [r11+38h]
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
; } // starts at 1403BA1A8
sub_1403BA1A8   endp

algn_1403BA724:                         ; DATA XREF: .pdata:00000001400DEB7C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1403BA730   proc near               ; DATA XREF: .rdata:00000001400059C8↑o
                                        ; .pdata:00000001400DEB88↑o
                sub     rsp, 28h
                call    sub_1403BA748
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403BA730   endp

byte_1403BA73F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400DEB88↑o

; =============== S U B R O U T I N E =======================================


sub_1403BA748   proc near               ; CODE XREF: sub_1403BA730+4↑p
                                        ; sub_1407ADEE0+D0↓p
                                        ; DATA XREF: ...

var_28          = qword ptr -28h
var_20          = qword ptr -20h
var_18          = byte ptr -18h
var_10          = qword ptr -10h
arg_0           = qword ptr  8

; FUNCTION CHUNK AT 00000001404AC996 SIZE 00000028 BYTES

                mov     [rsp+arg_0], rcx
                sub     rsp, 48h
                and     dword ptr [rsp+48h+arg_0], 0
                lea     rcx, dword_140C4BE00
                call    ExAcquireFastMutex
                cmp     cs:qword_140C50658, 0
                jnz     short loc_1403BA7BD
                xor     r9d, r9d
                xor     r8d, r8d
                mov     edx, 50434146h
                xor     ecx, ecx
                call    sub_1402E6AA0
                test    rax, rax
                jz      loc_1404AC996
                mov     edx, [rax+24h]
                xor     ecx, ecx
                lea     rax, [rsp+48h+arg_0]
                mov     r9d, 53434146h
                mov     [rsp+48h+var_10], rax
                mov     [rsp+48h+var_18], 0
                and     [rsp+48h+var_20], 0
                lea     r8d, [rcx+21h]
                and     [rsp+48h+var_28], 0
                call    sub_1402E6FA8
                mov     cs:qword_140C50658, rax

loc_1403BA7BD:                          ; CODE XREF: sub_1403BA748+22↑j
                lea     rcx, dword_140C4BE00
                call    KeReleaseGuardedMutex
                mov     rax, cs:qword_140C50658
                add     rsp, 48h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403BA748   endp

byte_1403BA7D6  db 6 dup(0CCh)          ; DATA XREF: .rdata:00000001400A4D10↑o
                                        ; .pdata:00000001400DEB94↑o

; =============== S U B R O U T I N E =======================================


sub_1403BA7DC   proc near               ; CODE XREF: sub_1409A1940+3F↓p
                                        ; DATA XREF: .pdata:00000001400DEBA0↑o

var_78          = qword ptr -78h
var_68          = word ptr -68h
var_5A          = byte ptr -5Ah
var_28          = qword ptr -28h
var_18          = byte ptr -18h

; __unwind { // __GSHandlerCheck
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 80h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+98h+var_28], rax
                xor     edx, edx
                lea     rcx, [r11-68h]
                lea     r8d, [rdx+40h]
                call    memset
                xor     ebx, ebx
                xor     esi, esi
                lea     r15d, [rbx+1]

loc_1403BA81D:                          ; CODE XREF: sub_1403BA7DC+B5↓j
                xor     bpl, bpl

loc_1403BA820:                          ; CODE XREF: sub_1403BA7DC+AA↓j
                xor     dil, dil
                movzx   r14d, bpl
                and     r14d, 1Fh

loc_1403BA82B:                          ; CODE XREF: sub_1403BA7DC+E9↓j
                mov     eax, ebx
                movzx   ecx, dil
                and     ecx, 7
                mov     dword ptr [rsp+98h+var_78], 2
                shl     ecx, 5
                lea     r8, [rsp+98h+var_68]
                mov     ebx, ecx
                and     eax, 0FFFFFF00h
                or      ebx, eax
                xor     r9d, r9d
                mov     rax, cs:qword_140C00630
                or      ebx, r14d
                mov     edx, ebx
                mov     ecx, esi
                call    sub_1404079D0
                test    eax, eax
                jz      short loc_1403BA87A
                movzx   eax, [rsp+98h+var_68]
                mov     ecx, 0FFFDh
                sub     ax, r15w
                cmp     ax, cx
                jbe     short loc_1403BA8CD

loc_1403BA87A:                          ; CODE XREF: sub_1403BA7DC+89↑j
                test    dil, dil

loc_1403BA87D:                          ; CODE XREF: sub_1403BA7DC+136↓j
                jnz     short loc_1403BA8BE

loc_1403BA87F:                          ; CODE XREF: sub_1403BA7DC+EF↓j
                add     bpl, r15b
                cmp     bpl, 20h ; ' '
                jb      short loc_1403BA820
                add     esi, r15d
                cmp     esi, 0FFh
                jbe     short loc_1403BA81D
                mov     rcx, [rsp+98h+var_28]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+98h+var_18]
                mov     rbx, [r11+20h]
                mov     rbp, [r11+28h]
                mov     rsi, [r11+30h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1403BA8BE:                          ; CODE XREF: sub_1403BA7DC:loc_1403BA87D↑j
                                        ; sub_1403BA7DC+113↓j ...
                add     dil, r15b
                cmp     dil, 8
                jb      loc_1403BA82B
                jmp     short loc_1403BA87F
; ---------------------------------------------------------------------------

loc_1403BA8CD:                          ; CODE XREF: sub_1403BA7DC+9C↑j
                mov     rax, cs:qword_140C00630
                lea     r8, [rsp+98h+var_68]
                xor     r9d, r9d
                mov     dword ptr [rsp+98h+var_78], 10h
                mov     edx, ebx
                mov     ecx, esi
                call    sub_1404079D0
                test    eax, eax
                jz      short loc_1403BA8BE
                and     [rsp+98h+var_78], 0
                lea     r9, [rsp+98h+var_68]
                mov     r8d, ebx
                mov     edx, esi
                xor     ecx, ecx
                call    sub_1403CA208
                test    dil, dil
                jnz     short loc_1403BA8BE
                test    [rsp+98h+var_5A], 80h
                jmp     loc_1403BA87D
; } // starts at 1403BA7DC
sub_1403BA7DC   endp

; ---------------------------------------------------------------------------
algn_1403BA917:                         ; DATA XREF: .pdata:00000001400DEBA0↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1403BA920   proc near               ; CODE XREF: sub_14078566C+2CD↓p
                                        ; sub_1408D9E30+44↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 00000001404AC9BE SIZE 00000064 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                push    rdi
                push    r14
                push    r15
                sub     rsp, 20h
                xor     r15d, r15d
                mov     rdi, rcx
                mov     esi, r15d
                test    rcx, rcx
                jz      loc_1403BA9D6

loc_1403BA94A:                          ; CODE XREF: sub_1403BA920+B0↓j
                mov     r14, [rdi]
                mov     rax, 0FFFFFA8000000000h
                mov     rcx, rdi
                sub     rcx, rax
                mov     rax, 2AAAAAAAAAAAAAABh
                imul    rcx
                mov     rcx, rdi
                mov     rbx, rdx
                sar     rbx, 3
                mov     rax, rbx
                shr     rax, 3Fh
                add     rbx, rax
                call    sub_1402DAA00
                movzx   ebp, al
                mov     edx, 2
                mov     rax, 0C000000000000000h
                mov     [rdi+20h], r15w
                and     [rdi+18h], rax
                mov     rcx, rbx
                call    sub_140292A50
                mov     rax, 7FFFFFFFFFFFFFFFh
                lock and [rdi+18h], rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_1404AC9BE

loc_1403BA9C3:                          ; CODE XREF: sub_1403BA920+F20A0↓j
                                        ; sub_1403BA920+F20AC↓j ...
                mov     cr8, rbp
                inc     rsi
                mov     rdi, r14
                test    r14, r14
                jnz     loc_1403BA94A

loc_1403BA9D6:                          ; CODE XREF: sub_1403BA920+24↑j
                mov     rbx, [rsp+38h+arg_0]
                mov     rax, rsi
                mov     rsi, [rsp+38h+arg_10]
                mov     rbp, [rsp+38h+arg_8]
                add     rsp, 20h
                pop     r15
                pop     r14
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1403BA920   endp

algn_1403BA9F3:                         ; DATA XREF: .rdata:00000001400A4ED8↑o
                                        ; .pdata:00000001400DEBAC↑o
                align 20h
; Exported entry 669. HalWheaUpdateCmciPolicy

; =============== S U B R O U T I N E =======================================


