RtlInitString   proc near               ; CODE XREF: sub_1403B40A8+45↓p
                                        ; sub_1403B7C60+25↓p ...
                and     qword ptr [rcx], 0 ; RtlInitAnsiString
                mov     [rcx+8], rdx
                test    rdx, rdx
                jz      short locret_1402041C3
                or      rax, 0FFFFFFFFFFFFFFFFh

loc_1402041A1:                          ; CODE XREF: RtlInitString+18↓j
                inc     rax
                cmp     byte ptr [rdx+rax], 0
                jnz     short loc_1402041A1
                cmp     rax, 0FFFFh
                mov     edx, 0FFFEh
                cmovnb  rax, rdx
                mov     [rcx], ax
                inc     ax
                mov     [rcx+2], ax

locret_1402041C3:                       ; CODE XREF: RtlInitString+B↑j
                retn
RtlInitString   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1402041C5:                         ; DATA XREF: .pdata:00000001400C93FC↑o
                align 10h
; Exported entry 1890. PsIsProtectedProcess

; =============== S U B R O U T I N E =======================================


                public PsIsProtectedProcess
PsIsProtectedProcess proc near          ; CODE XREF: sub_14067EC44+1EFF↓p
                                        ; NtQueryInformationProcess+735↓p
                                        ; DATA XREF: ...
                test    byte ptr [rcx+87Ah], 7
                mov     eax, 0
                setnbe  al
                retn
PsIsProtectedProcess endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1402041E1:                         ; DATA XREF: .pdata:00000001400C9408↑o
                align 8

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame

sub_1402041E8   proc near               ; CODE XREF: sub_140206434+99↓p
                                        ; sub_140206434+21AB21↓p
                                        ; DATA XREF: ...

var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
var_s0          = byte ptr  0

; FUNCTION CHUNK AT 000000014041FACA SIZE 0000028D BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r12
                push    rbp
                push    r13
                push    r14
                mov     rbp, rsp
                sub     rsp, 70h
                xor     eax, eax
                xorps   xmm0, xmm0
                and     [r8], eax
                xorps   xmm1, xmm1
                mov     rbx, rdx
                mov     [rbp+var_30], rax
                xor     edx, edx
                mov     [rbp+var_8], rax
                xor     r13d, r13d
                xor     r12d, r12d
                mov     rdi, r8
                movups  [rbp+var_50], xmm0
                movups  [rbp+var_40], xmm0
                movups  [rbp+var_28], xmm1
                movups  [rbp+var_18], xmm1
                test    ecx, ecx
                jz      loc_14041FBC0
                sub     ecx, 1
                jnz     loc_14041FACA
                cmp     dword ptr [rbx+0Ch], 1
                jz      short loc_140204259
                cmp     dword ptr [rbx+34h], 1
                jnz     loc_14041FB6A

loc_140204259:                          ; CODE XREF: sub_1402041E8+65↑j
                                        ; sub_1402041E8+21B98E↓j
                lea     rsi, [rbx+28h]

loc_14020425D:                          ; CODE XREF: sub_1402041E8+B7↓j
                mov     r14d, [rbx+30h]
                lea     rdx, [rbp+var_50]
                mov     rcx, rsi
                call    sub_140204400
                mov     edx, eax
                cmp     eax, 8000001Ah
                jz      short loc_1402042AA
                test    eax, eax
                js      short loc_1402042A5
                cmp     word ptr [rbx], 4
                jz      loc_14041FB7B

loc_140204284:                          ; CODE XREF: sub_1402041E8+21B9D3↓j
                xor     r9d, r9d
                lea     rcx, [rbp+var_50]
                mov     r8, rdi
                mov     rdx, rbx
                call    sub_1402042D4
                mov     edx, eax
                test    eax, eax
                js      short loc_1402042A5
                cmp     dword ptr [rdi], 1
                jz      short loc_14020425D

loc_1402042A1:                          ; CODE XREF: sub_1402041E8+21B97D↓j
                                        ; sub_1402041E8+21BA81↓j ...
                test    edx, edx
                jns     short loc_1402042AC

loc_1402042A5:                          ; CODE XREF: sub_1402041E8+90↑j
                                        ; sub_1402041E8+B2↑j ...
                or      dword ptr [rdi], 0FFFFFFFFh
                jmp     short loc_1402042AC
; ---------------------------------------------------------------------------

loc_1402042AA:                          ; CODE XREF: sub_1402041E8+8C↑j
                                        ; sub_1402041E8+21B902↓j
                xor     edx, edx

loc_1402042AC:                          ; CODE XREF: sub_1402041E8+BB↑j
                                        ; sub_1402041E8+C0↑j ...
                lea     r11, [rsp+70h+var_s0]
                mov     eax, edx
                mov     rbx, [r11+20h]
                mov     rsi, [r11+28h]
                mov     rdi, [r11+30h]
                mov     r12, [r11+38h]
                mov     rsp, r11
                pop     r14
                pop     r13
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1402041E8   endp

byte_1402042CD  db 7 dup(0CCh)          ; DATA XREF: .rdata:0000000140045BF8↑o
                                        ; .pdata:00000001400C9414↑o

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

sub_1402042D4   proc near               ; CODE XREF: sub_1402041E8+A9↑p
                                        ; sub_1402041E8+21B965↓p ...

var_A0          = xmmword ptr -0A0h
var_90          = xmmword ptr -90h
var_80          = qword ptr -80h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = qword ptr -50h
var_48          = word ptr -48h
var_44          = byte ptr -44h
var_40          = dword ptr -40h
var_38          = qword ptr -38h
var_30          = dword ptr -30h
var_28          = qword ptr -28h
var_20          = byte ptr -20h

; FUNCTION CHUNK AT 000000014041FD58 SIZE 000000B8 BYTES

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-5Fh]
                sub     rsp, 0A0h
                movups  xmm1, xmmword ptr [rcx+10h]
                xor     eax, eax
                mov     r13b, r9b
                xorps   xmm0, xmm0
                mov     [rbp+57h+var_80], rax
                movups  [rbp+57h+var_A0], xmm0
                xor     r15d, r15d
                mov     r14, r8
                movups  [rbp+57h+var_90], xmm0
                mov     rsi, rdx
                mov     [r8], r15d
                movups  xmm0, xmmword ptr [rcx]
                movaps  [rbp+57h+var_60], xmm1
                movaps  [rbp+57h+var_70], xmm0
                movsd   xmm0, qword ptr [rcx+20h]
                movsd   [rbp+57h+var_50], xmm0

loc_140204330:                          ; CODE XREF: sub_1402042D4+E2↓j
                                        ; sub_1402042D4+21BADC↓j
                mov     r12d, [rsi+8]
                lea     rdx, [rbp+57h+var_48]
                mov     rcx, rsi
                call    sub_140204400
                mov     ebx, eax
                cmp     eax, 8000001Ah
                jz      loc_1402043EC
                test    eax, eax
                js      loc_1402043F1
                movzx   edi, word ptr [rbp+57h+var_70]
                cmp     di, 4
                jz      loc_14041FD58
                movzx   r15d, [rbp+57h+var_48]

loc_140204368:                          ; CODE XREF: sub_1402042D4+21BAD1↓j
                lea     rcx, [rbp+57h+var_70]
                call    sub_1402064E4
                test    al, al
                jz      loc_14041FDAA
                cmp     dword ptr [rbp+57h+var_70+0Ch], 1
                cmovz   di, r15w
                xor     r15d, r15d
                test    di, di
                jz      short loc_1402043B2
                cmp     di, 2
                jbe     loc_14041FDFD
                cmp     di, 3
                jnz     loc_14041FDC0
                mov     r8, r14
                lea     rdx, [rbp+57h+var_70]
                mov     cl, 80h
                call    sub_140204518

loc_1402043AC:                          ; CODE XREF: sub_1402042D4+21BB24↓j
                mov     ebx, eax
                test    eax, eax
                js      short loc_1402043F1

loc_1402043B2:                          ; CODE XREF: sub_1402042D4+B4↑j
                                        ; sub_1402042D4+21BB02↓j ...
                cmp     dword ptr [r14], 1
                jnz     loc_140204330

loc_1402043BC:                          ; CODE XREF: sub_1402042D4+21BAE7↓j
                test    ebx, ebx
                js      short loc_1402043F1

loc_1402043C0:                          ; CODE XREF: sub_1402042D4+11B↓j
                                        ; sub_1402042D4+121↓j
                mov     rcx, rsi
                call    sub_14035A7D8
                lea     r11, [rsp+0C0h+var_20]
                mov     eax, ebx
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rdi, [r11+40h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 4

loc_1402043EC:                          ; CODE XREF: sub_1402042D4+73↑j
                                        ; sub_1402042D4+21BA97↓j
                mov     ebx, r15d
                jmp     short loc_1402043C0
; ---------------------------------------------------------------------------

loc_1402043F1:                          ; CODE XREF: sub_1402042D4+7B↑j
                                        ; sub_1402042D4+DC↑j ...
                or      dword ptr [r14], 0FFFFFFFFh
                jmp     short loc_1402043C0
sub_1402042D4   endp

; ---------------------------------------------------------------------------
algn_1402043F7:                         ; DATA XREF: .rdata:0000000140045C78↑o
                                        ; .pdata:00000001400C9420↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140204400   proc near               ; CODE XREF: sub_1402041E8+80↑p
                                        ; sub_1402042D4+67↑p ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 000000014041FE10 SIZE 0000003F BYTES

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 20h
                mov     rbx, rcx
                mov     rdi, rdx
                xor     ecx, ecx
                and     [rsp+28h+arg_0], ecx
                cmp     dword ptr [rbx+0Ch], 1
                mov     eax, [rbx+8]
                jz      short loc_14020446D
                test    eax, eax
                jz      short loc_14020449A

loc_140204423:                          ; CODE XREF: sub_140204400+9D↓j
                cmp     eax, [rbx+4]
                jnb     loc_1402044C0
                mov     rcx, [rbx+10h]
                call    sub_140205958
                mov     ecx, eax
                movzx   eax, word ptr [rbx]
                mov     [rdi], ax
                mov     al, [rbx+4]
                mov     [rdi+4], al
                mov     eax, [rbx+18h]
                mov     [rdi+18h], eax
                mov     rax, [rbx+10h]
                and     qword ptr [rdi+20h], 0
                mov     [rdi+10h], rax
                mov     eax, [rbx+0Ch]
                mov     [rdi+0Ch], eax

loc_14020445C:                          ; CODE XREF: sub_140204400+B7↓j
                inc     dword ptr [rbx+8]

loc_14020445F:                          ; CODE XREF: sub_140204400+98↓j
                                        ; sub_140204400+BE↓j ...
                mov     rbx, [rsp+28h+arg_8]
                mov     eax, ecx
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14020446D:                          ; CODE XREF: sub_140204400+1D↑j
                cmp     [rbx+4], cl
                jnz     loc_14041FE10
                test    eax, eax
                jnz     short loc_1402044B9
                mov     eax, [rbx+18h]
                mov     [rbx+8], eax
                movups  xmm0, xmmword ptr [rbx]
                movups  xmmword ptr [rdx], xmm0
                movups  xmm1, xmmword ptr [rbx+10h]
                movups  xmmword ptr [rdx+10h], xmm1
                movsd   xmm0, qword ptr [rbx+20h]
                movsd   qword ptr [rdx+20h], xmm0
                jmp     short loc_14020445F
; ---------------------------------------------------------------------------

loc_14020449A:                          ; CODE XREF: sub_140204400+21↑j
                cmp     [rbx+4], ecx
                jbe     short loc_140204423
                movups  xmm0, xmmword ptr [rbx]
                movups  xmmword ptr [rdx], xmm0
                movups  xmm1, xmmword ptr [rbx+10h]
                movups  xmmword ptr [rdx+10h], xmm1
                movsd   xmm0, qword ptr [rbx+20h]
                movsd   qword ptr [rdx+20h], xmm0
                jmp     short loc_14020445C
; ---------------------------------------------------------------------------

loc_1402044B9:                          ; CODE XREF: sub_140204400+78↑j
                                        ; sub_140204400+21BA15↓j
                mov     ecx, 8000001Ah
                jmp     short loc_14020445F
; ---------------------------------------------------------------------------

loc_1402044C0:                          ; CODE XREF: sub_140204400+26↑j
                neg     eax
                sbb     ecx, ecx
                and     ecx, 0BFFFFDF5h
                add     ecx, 0C0000225h
                jmp     short loc_14020445F
sub_140204400   endp

; ---------------------------------------------------------------------------
algn_1402044D2:                         ; DATA XREF: .rdata:0000000140045C98↑o
                                        ; .pdata:00000001400C942C↑o
                align 8

; =============== S U B R O U T I N E =======================================


sub_1402044D8   proc near               ; CODE XREF: sub_140204518+50↓p
                                        ; sub_1405C1CF0+7A↓p
                                        ; DATA XREF: ...

; FUNCTION CHUNK AT 000000014041FE50 SIZE 00000031 BYTES

                mov     r8d, 1
                cmp     [rcx+0Ch], r8d
                jnz     loc_14041FE50
                mov     rax, [rcx+38h]

loc_1402044EC:                          ; CODE XREF: sub_1402044D8+21B980↓j
                mov     r8b, [rax+24h]
                and     r8b, 2

loc_1402044F4:                          ; CODE XREF: sub_1402044D8+21B98B↓j
                                        ; sub_1402044D8+21B99B↓j ...
                mov     [rdx], r8b
                mov     rax, cr8
                test    r8b, r8b
                jnz     short loc_140204504
                cmp     al, 2
                jnb     short loc_140204508

loc_140204504:                          ; CODE XREF: sub_1402044D8+26↑j
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140204508:                          ; CODE XREF: sub_1402044D8+2A↑j
                mov     eax, 0C00000BBh
                retn
sub_1402044D8   endp

; ---------------------------------------------------------------------------
                db 0CCh
byte_14020450F  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400C9438↑o

; =============== S U B R O U T I N E =======================================


sub_140204518   proc near               ; CODE XREF: sub_1402042D4+D3↑p
                                        ; sub_140206434+21AB0D↓p
                                        ; DATA XREF: ...

var_48          = byte ptr -48h
var_44          = dword ptr -44h
var_40          = qword ptr -40h
var_38          = byte ptr -38h
var_30          = byte ptr -30h
var_28          = byte ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = byte ptr  20h

; FUNCTION CHUNK AT 000000014041FE82 SIZE 000000BF BYTES

; __unwind { // __C_specific_handler
                mov     rax, rsp
                mov     [rax+8], rsi
                mov     [rax+10h], rdi
                mov     [rax+18h], r8
                push    r12
                push    r13
                push    r14
                sub     rsp, 50h
                mov     rdi, r8
                mov     rsi, rdx
                mov     r14b, cl
                and     word ptr [rax-48h], 0
                mov     byte ptr [rax+20h], 0
                lea     rax, [rax-30h]
                mov     ecx, 2

loc_14020454C:                          ; CODE XREF: sub_140204518+40↓j
                and     qword ptr [rax], 0
                lea     rax, [rax+10h]
                sub     rcx, 1
                jnz     short loc_14020454C
                and     [r8], ecx
                lea     rdx, [rsp+68h+arg_18]
                mov     rcx, rsi
                call    sub_1402044D8
                mov     [rsp+68h+var_44], eax
                test    eax, eax
                js      loc_14041FE82
                xor     r13d, r13d
                lea     rdx, [rsp+68h+var_38]
                mov     [rsp+68h+var_40], rdx
                lea     r12, [rsi+10h]

loc_14020458A:                          ; CODE XREF: sub_140204518+DB↓j
                cmp     dword ptr [r12-4], 1
                jz      loc_1402046A5
                cmp     [rsp+68h+arg_18], 0
                jnz     loc_14041FE8D

loc_1402045A4:                          ; CODE XREF: sub_140204518+195↓j
                setz    dl
                movsxd  rcx, r13d
                lea     r9, [rsp+68h+var_48]
                add     r9, rcx
                mov     rax, rcx
                shl     rax, 4
                lea     r8, [rsp+68h+var_38]
                add     r8, rax
                lea     rax, [rcx+rcx*4]
                lea     rcx, [rsi+rax*8]
                call    sub_140206060
                mov     [rsp+68h+var_44], eax
                test    eax, eax
                js      loc_14041FE82
                mov     rdx, [rsp+68h+var_40]

loc_1402045DF:                          ; CODE XREF: sub_140204518+21B984↓j
                inc     r13d
                add     r12, 28h ; '('
                add     rdx, 10h
                mov     [rsp+68h+var_40], rdx
                cmp     r13d, 2
                jl      short loc_14020458A
                lea     eax, [r14-80h]
                cmp     al, 1
                ja      loc_14041FEDD
                cmp     dword ptr [rsi+0Ch], 2
                jz      short loc_140204611
                cmp     dword ptr [rsi+34h], 2
                jnz     loc_14041FEA1

loc_140204611:                          ; CODE XREF: sub_140204518+ED↑j
                                        ; DATA XREF: .rdata:0000000140045CC4↑o
;   __try { // __except at loc_140204648
                cmp     dword ptr [rsi+34h], 1
                jz      short loc_140204623
                lea     rdx, [rsp+68h+var_28]
                lea     rcx, [rsp+68h+var_38]
                jmp     short loc_14020462D
; ---------------------------------------------------------------------------

loc_140204623:                          ; CODE XREF: sub_140204518+FD↑j
                lea     rdx, [rsp+68h+var_38]
                lea     rcx, [rsp+68h+var_28]

loc_14020462D:                          ; CODE XREF: sub_140204518+109↑j
                cmp     [rsp+68h+arg_18], 0
                setz    r8b
                xor     r9d, r9d
                call    FsRtlIsNameInExpression
                movzx   ecx, al
                mov     [rdi], ecx
                jmp     short loc_140204658
;   } // starts at 140204611
; ---------------------------------------------------------------------------

loc_140204648:                          ; DATA XREF: .rdata:0000000140045CC4↑o
;   __except(1) // owned by 140204611
                mov     r14d, eax
                mov     rax, [rsp+68h+arg_10]
                or      dword ptr [rax], 0FFFFFFFFh
                jmp     short loc_140204667
; ---------------------------------------------------------------------------

loc_140204658:                          ; CODE XREF: sub_140204518+12E↑j
                                        ; sub_140204518+21B9B1↓j
                cmp     r14b, 81h
                mov     r14d, [rsp+68h+var_44]
                jz      loc_14041FECE

loc_140204667:                          ; CODE XREF: sub_140204518+13E↑j
                                        ; sub_140204518+21B970↓j ...
                xor     edi, edi
                lea     rsi, [rsp+68h+var_30]

loc_14020466E:                          ; CODE XREF: sub_140204518+172↓j
                cmp     [rsp+rdi+68h+var_48], 0
                jz      short loc_14020467F
                xor     edx, edx
                mov     rcx, [rsi]
                call    ExFreePoolWithTag

loc_14020467F:                          ; CODE XREF: sub_140204518+15B↑j
                inc     rdi
                add     rsi, 10h
                cmp     rdi, 2
                jl      short loc_14020466E
                mov     eax, r14d
                mov     rsi, [rsp+68h+arg_0]
                mov     rdi, [rsp+68h+arg_8]
                add     rsp, 50h
                pop     r14
                pop     r13
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402046A5:                          ; CODE XREF: sub_140204518+78↑j
                cmp     [rsp+68h+arg_18], 0
                jmp     loc_1402045A4
; } // starts at 140204518
sub_140204518   endp

; ---------------------------------------------------------------------------
algn_1402046B2:                         ; DATA XREF: .rdata:0000000140045CD8↑o
                                        ; .pdata:00000001400C9444↑o
                align 20h
; Exported entry 2341. RtlQueryPackageIdentity

; =============== S U B R O U T I N E =======================================


