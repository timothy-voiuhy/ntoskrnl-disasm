PsCreateSystemThreadEx proc near        ; CODE XREF: sub_1403AB620+220↑p
                                        ; sub_1403CA874+1F9↑p ...

var_320         = qword ptr -320h
var_318         = qword ptr -318h
var_310         = qword ptr -310h
var_308         = qword ptr -308h
var_300         = qword ptr -300h
var_2F8         = dword ptr -2F8h
var_2F0         = qword ptr -2F0h
var_2E8         = qword ptr -2E8h
var_2E0         = qword ptr -2E0h
var_2D0         = qword ptr -2D0h
var_2C8         = dword ptr -2C8h
var_2C0         = xmmword ptr -2C0h
var_2B0         = xmmword ptr -2B0h
var_2A0         = xmmword ptr -2A0h
var_290         = qword ptr -290h
var_288         = qword ptr -288h
var_280         = qword ptr -280h
var_278         = xmmword ptr -278h
var_260         = byte ptr -260h
var_25C         = dword ptr -25Ch
var_164         = dword ptr -164h
var_120         = xmmword ptr -120h
var_50          = qword ptr -50h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = qword ptr  40h
arg_38          = qword ptr  48h
arg_40          = qword ptr  50h

; FUNCTION CHUNK AT 00000001408186C0 SIZE 00000025 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-208h]
                sub     rsp, 308h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+240h+var_50], rax
                mov     rax, [rbp+240h+arg_20]
                mov     r15, r8
                mov     rsi, [rbp+240h+arg_38]
                mov     r13, rcx
                mov     r14, [rbp+240h+arg_40]
                lea     rcx, [rbp+240h+var_260]
                mov     [rbp+240h+var_280], rax
                mov     r8d, 208h
                mov     rax, [rbp+240h+arg_28]
                mov     rbx, r9
                mov     [rbp+240h+var_288], rax
                mov     rax, [rbp+240h+arg_30]
                mov     [rsp+340h+var_2C8], edx
                xor     edx, edx
                mov     [rbp+240h+var_290], rax
                call    memset
                xorps   xmm0, xmm0
                xor     ecx, ecx
                movups  [rbp+240h+var_2C0], xmm0
                mov     [rsp+340h+var_2D0], rcx
                movups  [rbp+240h+var_2B0], xmm0
                movups  [rbp+240h+var_2A0], xmm0
                movups  [rbp+240h+var_278], xmm0
                mov     rax, cr8
                cmp     al, 1
                ja      loc_1408186C0
                mov     r12b, cl
                test    rbx, rbx
                jnz     loc_1406A84BF
                mov     rax, cs:qword_140CFC760
                mov     rbx, [rax+68h]
                mov     [rsp+340h+var_2D0], rbx

loc_1406A83FC:                          ; CODE XREF: PsCreateSystemThreadEx+1C1↓j
                lea     rdi, [rbx+87Ch]
                mov     edx, 1000h
                test    [rdi], edx
                jnz     loc_1406A8544

loc_1406A8410:                          ; CODE XREF: PsCreateSystemThreadEx+26A↓j
                                        ; PsCreateSystemThreadEx+280↓j
                test    r15, r15
                jnz     loc_1406A8515
                xorps   xmm0, xmm0
                mov     dword ptr [rbp+240h+var_2C0], 30h ; '0'
                movdqu  [rbp+240h+var_2A0], xmm0
                mov     qword ptr [rbp+240h+var_2C0+8], rcx
                mov     dword ptr [rbp+240h+var_2B0+8], 200h
                mov     qword ptr [rbp+240h+var_2B0], rcx

loc_1406A8437:                          ; CODE XREF: PsCreateSystemThreadEx+1FF↓j
                mov     eax, [rdi]
                mov     [rsp+340h+var_2E0], rcx
                and     eax, edx
                mov     edx, [rsp+340h+var_2C8]
                neg     eax
                lea     rax, [rbp+240h+var_260]
                sbb     r8, r8
                xor     r9d, r9d
                and     r8, rax
                mov     rax, [rbp+240h+var_290]
                mov     [rsp+340h+var_2E8], rax
                mov     rax, [rbp+240h+var_288]
                mov     [rsp+340h+var_2F0], rax
                mov     rax, [rbp+240h+var_280]
                mov     [rsp+340h+var_2F8], ecx
                mov     [rsp+340h+var_300], rcx
                mov     [rsp+340h+var_308], rcx
                mov     rcx, r13
                mov     [rsp+340h+var_310], rax
                mov     [rsp+340h+var_318], r8
                lea     r8, [rbp+240h+var_2C0]
                mov     [rsp+340h+var_320], rbx
                call    sub_14068B72C
                mov     edi, eax
                test    r12b, r12b
                jnz     short loc_1406A8506

loc_1406A8499:                          ; CODE XREF: PsCreateSystemThreadEx+1B7↓j
                                        ; PsCreateSystemThreadEx+1D3↓j
                mov     eax, edi
                mov     rcx, [rbp+240h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 308h
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

loc_1406A84BF:                          ; CODE XREF: PsCreateSystemThreadEx+A6↑j
                mov     r8, cs:PsProcessType
                lea     rax, [rsp+340h+var_2D0]
                mov     [rsp+340h+var_308], rcx
                xor     r9d, r9d
                mov     [rsp+340h+var_310], rcx
                mov     rcx, rbx
                mov     [rsp+340h+var_318], rax
                mov     dword ptr [rsp+340h+var_320], 72437350h
                lea     edx, [r9+2]
                call    sub_140645090
                xor     ecx, ecx
                mov     edi, eax
                test    eax, eax
                js      short loc_1406A8499
                mov     rbx, [rsp+340h+var_2D0]
                mov     r12b, 1
                jmp     loc_1406A83FC
; ---------------------------------------------------------------------------

loc_1406A8506:                          ; CODE XREF: PsCreateSystemThreadEx+157↑j
                mov     edx, 72437350h
                mov     rcx, rbx
                call    ObfDereferenceObjectWithTag
                jmp     short loc_1406A8499
; ---------------------------------------------------------------------------

loc_1406A8515:                          ; CODE XREF: PsCreateSystemThreadEx+D3↑j
                movups  xmm1, xmmword ptr [r15+10h]
                movups  xmm0, xmmword ptr [r15]
                movups  [rbp+240h+var_2B0], xmm1
                psrldq  xmm1, 8
                movd    eax, xmm1
                movups  [rbp+240h+var_2C0], xmm0
                movups  xmm0, xmmword ptr [r15+20h]
                bts     eax, 9
                mov     dword ptr [rbp+240h+var_2B0+8], eax
                movups  [rbp+240h+var_2A0], xmm0
                jmp     loc_1406A8437
; ---------------------------------------------------------------------------

loc_1406A8544:                          ; CODE XREF: PsCreateSystemThreadEx+CA↑j
                test    rsi, rsi
                jnz     short loc_1406A8597
                test    r14, r14
                jnz     short loc_1406A8592
                lea     eax, [rsi+1]
                lock xadd cs:dword_140D2D2F0, eax
                inc     eax
                movzx   ebx, ax
                call    KeQueryActiveGroupCount
                movzx   ecx, ax
                lea     rsi, [rbp+240h+var_278]
                mov     eax, ebx
                xor     edx, edx
                div     ecx
                lea     rcx, qword_140CFC848
                movzx   eax, dx
                mov     word ptr [rbp+240h+var_278+8], dx
                mov     edx, 1000h
                mov     rax, [rcx+rax*8]
                xor     ecx, ecx
                mov     rbx, [rsp+340h+var_2D0]
                mov     qword ptr [rbp+240h+var_278], rax

loc_1406A8592:                          ; CODE XREF: PsCreateSystemThreadEx+20C↑j
                test    rsi, rsi
                jz      short loc_1406A85C5

loc_1406A8597:                          ; CODE XREF: PsCreateSystemThreadEx+207↑j
                movups  xmm0, xmmword ptr [rsi]
                mov     eax, edx
                mov     [rbp+240h+var_25C], edx
                movdqu  [rbp+240h+var_120], xmm0

loc_1406A85A7:                          ; CODE XREF: PsCreateSystemThreadEx+288↓j
                test    r14, r14
                jz      loc_1406A8410
                bts     eax, 0Eh
                mov     [rbp+240h+var_25C], eax
                mov     eax, [r14]
                mov     [rbp+240h+var_164], eax
                jmp     loc_1406A8410
; ---------------------------------------------------------------------------

loc_1406A85C5:                          ; CODE XREF: PsCreateSystemThreadEx+255↑j
                mov     eax, [rbp+240h+var_25C]
                jmp     short loc_1406A85A7
; } // starts at 1406A8340
PsCreateSystemThreadEx endp
