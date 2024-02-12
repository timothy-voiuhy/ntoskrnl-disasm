IoReportDetectedDevice proc near        ; CODE XREF: sub_1407ADE40+74↑p
                                        ; DATA XREF: .rdata:00000001400A4E4C↑o ...

var_2C0         = qword ptr -2C0h
var_2B8         = qword ptr -2B8h
var_2B0         = qword ptr -2B0h
var_2A8         = qword ptr -2A8h
var_2A0         = dword ptr -2A0h
var_298         = qword ptr -298h
var_290         = byte ptr -290h
var_28F         = byte ptr -28Fh
var_28E         = byte ptr -28Eh
var_28D         = byte ptr -28Dh
var_288         = qword ptr -288h
var_280         = dword ptr -280h
var_278         = qword ptr -278h
var_270         = qword ptr -270h
var_268         = qword ptr -268h
var_260         = dword ptr -260h
var_25C         = dword ptr -25Ch
var_258         = qword ptr -258h
var_250         = qword ptr -250h
var_248         = qword ptr -248h
var_240         = qword ptr -240h
var_238         = qword ptr -238h
var_230         = qword ptr -230h
var_228         = qword ptr -228h
var_220         = qword ptr -220h
var_218         = qword ptr -218h
var_210         = xmmword ptr -210h
var_200         = qword ptr -200h
var_1F8         = qword ptr -1F8h
var_1F0         = qword ptr -1F0h
var_1E0         = byte ptr -1E0h
var_50          = qword ptr -50h
arg_20          = qword ptr  30h
arg_28          = qword ptr  38h
arg_30          = byte ptr  40h
arg_38          = qword ptr  48h

; FUNCTION CHUNK AT 0000000140858B02 SIZE 00000611 BYTES

; __unwind { // __GSHandlerCheck
                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-1A8h]
                sub     rsp, 2A8h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+1E0h+var_50], rax
                mov     rax, [rbp+1E0h+arg_28]
                xor     edi, edi
                mov     r14, [rbp+1E0h+arg_20]
                mov     rsi, rcx
                mov     [rbp+1E0h+var_220], rax
                xorps   xmm0, xmm0
                mov     rax, [rbp+1E0h+arg_38]
                mov     ebx, edi
                mov     [rbp+1E0h+var_1F0], rax
                mov     r13d, r8d
                mov     r15, [rsi+30h]
                mov     r12d, edx
                mov     [rbp+1E0h+var_228], rcx
                add     r15, 18h
                mov     rax, [rax]
                lea     rcx, [rbp+1E0h+var_1E0]
                mov     dword ptr [rbp+1E0h+var_248], r9d
                mov     [rsp+2E0h+var_28E], dil
                mov     [rsp+2E0h+var_270], 1900000h
                mov     [rbp+1E0h+var_238], rdi
                mov     [rbp+1E0h+var_25C], edi
                mov     [rbp+1E0h+var_230], rdi
                mov     [rbp+1E0h+var_260], edi
                mov     [rbp+1E0h+var_240], rdi
                mov     [rsp+2E0h+var_28F], dil
                mov     [rsp+2E0h+var_278], rbx
                mov     [rsp+2E0h+var_280], edi
                mov     [rsp+2E0h+var_288], rdi
                mov     [rsp+2E0h+var_268], rcx
                mov     [rbp+1E0h+var_250], rdi
                mov     [rsp+2E0h+var_290], dil
                mov     [rbp+1E0h+var_258], rdi
                mov     [rbp+1E0h+var_218], rdi
                movups  [rbp+1E0h+var_210], xmm0
                test    rax, rax
                jnz     loc_140858B02
                mov     eax, [rsi+10h]
                test    al, 4
                jnz     loc_1407AEA8C

loc_1407AE722:                          ; CODE XREF: IoReportDetectedDevice+485↓j
                lea     rdx, aRoot_0    ; "ROOT\\"
                lea     rcx, [rsp+2E0h+var_270]
                call    RtlAppendUnicodeToString
                test    eax, eax
                js      loc_1407AEA68
                test    byte ptr [rsi+10h], 4
                lea     rdx, [rbp+1E0h+var_210]
                lea     rcx, [rsp+2E0h+var_270]
                cmovz   rdx, r15
                call    RtlAppendUnicodeStringToString
                test    eax, eax
                js      loc_1407AEA68

loc_1407AE759:                          ; CODE XREF: IoReportDetectedDevice+AA4C5↓j
                lea     rcx, [rbp+1E0h+var_218]
                call    sub_1406C91CC
                mov     edi, eax
                mov     eax, 1
                test    edi, edi
                js      loc_1407AEA14
                mov     ecx, eax
                call    sub_14067926C
                test    rbx, rbx
                jnz     loc_1407AEADA
                mov     r9d, [rsi+10h]
                test    r9b, 4
                jnz     loc_1407AEADA
                mov     r8d, dword ptr [rbp+1E0h+var_248]
                lea     r9, [rsp+2E0h+var_278]
                mov     edx, r13d
                mov     ecx, r12d
                call    sub_1407AEDB4
                xor     r13d, r13d
                lea     ecx, [rbx+1]
                mov     edi, eax
                test    eax, eax
                jns     loc_140858B2F

loc_1407AE7B3:                          ; CODE XREF: IoReportDetectedDevice+492↓j
                                        ; IoReportDetectedDevice+AA4EE↓j
                mov     rax, gs:188h
                or      edx, 0FFFFFFFFh
                add     [rax+1E4h], dx
                mov     dl, cl
                lea     rcx, unk_140C44D40
                call    ExAcquireResourceExclusiveLite
                mov     rbx, [rsp+2E0h+var_278]
                mov     esi, 13h
                test    rbx, rbx
                jnz     loc_140858F40
                lea     rdx, qword_1407D4A10
                lea     rcx, [rsp+2E0h+var_270]
                call    RtlAppendUnicodeToString
                mov     edi, eax
                test    eax, eax
                js      loc_1407AEA14
                movzx   eax, word ptr [rsp+2E0h+var_270]
                mov     r12d, 190h
                sub     r12, rax
                mov     [rbp+1E0h+var_200], rax
                mov     ecx, eax
                shr     r12, 1
                shr     rax, 1
                lea     rax, [rbp+rax*2+1E0h+var_1E0]
                mov     [rbp+1E0h+var_1F8], rax

loc_1407AE825:                          ; CODE XREF: IoReportDetectedDevice+AA515↓j
                mov     word ptr [rsp+2E0h+var_270], cx
                lea     r8, [rbp+1E0h+var_248]
                lea     rcx, a04u       ; "%04u"
                mov     dword ptr [rsp+2E0h+var_2B0], r13d
                mov     [rsp+2E0h+var_2B8], rcx
                xor     edi, edi
                mov     rcx, rax
                mov     [rbp+1E0h+var_248], rax
                xor     r9d, r9d
                mov     [rsp+2E0h+var_2C0], rdi
                mov     rdx, r12
                call    sub_14021D28C
                movzx   edx, word ptr [rsp+2E0h+var_270]
                mov     rcx, [rbp+1E0h+var_248]
                mov     eax, edx
                shr     rax, 1
                add     rax, rax
                sub     rcx, rax
                lea     rax, [rbp+1E0h+var_1E0]
                sub     rcx, rax
                sar     rcx, 1
                cmp     ecx, 0FFFFFFFFh
                jz      loc_140858B43
                lea     eax, [rcx+rcx]

loc_1407AE882:                          ; CODE XREF: IoReportDetectedDevice+AA4FB↓j
                mov     rcx, cs:qword_140CF4378
                lea     r9, [rsp+2E0h+var_288]
                add     dx, ax
                mov     dword ptr [rsp+2E0h+var_2B8], edi
                mov     word ptr [rsp+2E0h+var_270], dx
                lea     rax, [rsp+2E0h+var_28F]
                mov     rdx, [rsp+2E0h+var_268]
                mov     r8d, 0F003Fh
                mov     [rsp+2E0h+var_2C0], rax
                call    sub_14073FF18
                mov     edi, eax
                xor     eax, eax
                test    edi, edi
                js      loc_140858C13
                cmp     [rsp+2E0h+var_28F], al
                jnz     loc_140858B77
                mov     rdx, [rsp+2E0h+var_288]
                lea     rcx, [rsp+2E0h+var_270]
                mov     [rsp+2E0h+var_280], eax
                mov     r9, r14
                lea     rax, [rsp+2E0h+var_280]
                mov     r8, r15
                mov     [rsp+2E0h+var_2C0], rax
                call    sub_1407AEB08
                test    al, al
                jz      loc_140858B50
                mov     edx, 746C6644h
                lea     rcx, [rsp+2E0h+var_270]
                call    sub_14067919C
                xor     r13d, r13d
                mov     [rbp+1E0h+var_258], rax
                mov     r8, rax
                test    rax, rax
                jz      loc_140858B6A
                mov     rax, [rax+138h]
                mov     rbx, [rax+28h]

loc_1407AE922:                          ; CODE XREF: IoReportDetectedDevice+AA522↓j
                mov     [rsp+2E0h+var_278], rbx

loc_1407AE927:                          ; CODE XREF: IoReportDetectedDevice+AA52E↓j
                test    edi, edi
                js      loc_140858C16
                test    rbx, rbx
                jz      loc_140858B83

loc_1407AE938:                          ; CODE XREF: IoReportDetectedDevice+AA8F4↓j
                cmp     [rsp+2E0h+var_280], r13d
                jz      short loc_1407AE968
                mov     rcx, rbx
                call    sub_1402B47C4
                test    eax, eax
                jnz     loc_140858F62
                test    dword ptr [rbx+18Ch], 6000h
                jnz     loc_140858F49

loc_1407AE95F:                          ; CODE XREF: IoReportDetectedDevice+AA90C↓j
                test    r8, r8
                jz      loc_140858F75

loc_1407AE968:                          ; CODE XREF: IoReportDetectedDevice+2ED↑j
                                        ; IoReportDetectedDevice+AA92E↓j
                cmp     [rsp+2E0h+var_288], r13
                jz      loc_140858F83

loc_1407AE973:                          ; CODE XREF: IoReportDetectedDevice+AA8D9↓j
                                        ; IoReportDetectedDevice+AA951↓j
                mov     r15, [rbp+1E0h+var_220]
                test    r14, r14
                jnz     loc_140858FA6
                test    r15, r15
                jnz     loc_140858FA6
                lea     r12d, [r15+1]

loc_1407AE98D:                          ; CODE XREF: IoReportDetectedDevice+AA9AF↓j
                                        ; IoReportDetectedDevice+AA9C5↓j
                cmp     [rbp+1E0h+arg_30], r13b
                jz      loc_1407AEAE7
                mov     edx, 100h
                mov     rcx, rbx
                call    sub_140736ED4
                mov     rcx, [rsp+2E0h+var_288]
                lea     rdx, aNoresourceatin ; "NoResourceAtInitTime"
                call    sub_1407AED5C
                mov     rcx, r14
                call    sub_14074CF5C
                mov     r8d, eax
                mov     rdx, r14
                mov     rcx, rbx
                call    sub_14074BB8C

loc_1407AE9CE:                          ; CODE XREF: IoReportDetectedDevice+4AD↓j
                                        ; IoReportDetectedDevice+AA792↓j ...
                mov     r13b, [rsp+2E0h+var_290]

loc_1407AE9D3:                          ; CODE XREF: IoReportDetectedDevice+AA653↓j
                test    edi, edi
                js      loc_140858C13
                mov     rax, [rbx+10h]
                mov     ecx, [rax+294h]
                mov     [rbx+294h], ecx
                mov     rcx, rbx
                call    sub_1407409A8
                mov     edx, 307h
                mov     rcx, rbx
                call    sub_14036D798
                test    r13b, r13b
                jnz     loc_1408590EA

loc_1407AEA09:                          ; CODE XREF: IoReportDetectedDevice+AAAA8↓j
                mov     rcx, [rbp+1E0h+var_1F0]
                mov     rax, [rbx+20h]
                mov     [rcx], rax

loc_1407AEA14:                          ; CODE XREF: IoReportDetectedDevice+11B↑j
                                        ; IoReportDetectedDevice+1AC↑j ...
                lea     rcx, unk_140C44D40
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     ecx, 1
                call    sub_140679140
                mov     rcx, [rbp+1E0h+var_250]
                test    rcx, rcx
                jnz     loc_1408590FD

loc_1407AEA3C:                          ; CODE XREF: IoReportDetectedDevice+AAAB3↓j
                mov     rcx, [rbp+1E0h+var_240]
                test    rcx, rcx
                jnz     loc_140859108

loc_1407AEA49:                          ; CODE XREF: IoReportDetectedDevice+AAABE↓j
                mov     rcx, [rsp+2E0h+var_288]
                test    rcx, rcx
                jz      short loc_1407AEA58
                call    ZwClose

loc_1407AEA58:                          ; CODE XREF: IoReportDetectedDevice+401↑j
                mov     rcx, [rbp+1E0h+var_218]
                test    rcx, rcx
                jz      short loc_1407AEA66
                call    sub_1406CDB1C

loc_1407AEA66:                          ; CODE XREF: IoReportDetectedDevice+40F↑j
                mov     eax, edi

loc_1407AEA68:                          ; CODE XREF: IoReportDetectedDevice+E5↑j
                                        ; IoReportDetectedDevice+103↑j ...
                mov     rcx, [rbp+1E0h+var_50]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 2A8h
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
                align 4

loc_1407AEA8C:                          ; CODE XREF: IoReportDetectedDevice+CC↑j
                movzx   ecx, word ptr [r15]
                mov     rdx, [r15+8]
                shr     rcx, 1
                dec     rcx
                lea     rcx, [rdx+rcx*2]
                jmp     short loc_1407AEAAA
; ---------------------------------------------------------------------------

loc_1407AEAA0:                          ; CODE XREF: IoReportDetectedDevice+45D↓j
                cmp     word ptr [rcx], 5Ch ; '\'
                jz      short loc_1407AEAB4
                sub     rcx, 2

loc_1407AEAAA:                          ; CODE XREF: IoReportDetectedDevice+44E↑j
                cmp     rcx, rdx
                jnz     short loc_1407AEAA0
                jmp     loc_140858B25
; ---------------------------------------------------------------------------

loc_1407AEAB4:                          ; CODE XREF: IoReportDetectedDevice+454↑j
                add     rcx, 2
                mov     qword ptr [rbp+1E0h+var_210+8], rcx
                sub     ecx, [r15+8]
                movzx   eax, word ptr [r15]
                sar     rcx, 1
                add     cx, cx
                sub     ax, cx
                mov     word ptr [rbp+1E0h+var_210], ax
                mov     word ptr [rbp+1E0h+var_210+2], ax
                jmp     loc_1407AE722
; ---------------------------------------------------------------------------

loc_1407AEADA:                          ; CODE XREF: IoReportDetectedDevice+12B↑j
                                        ; IoReportDetectedDevice+139↑j
                mov     ecx, 1
                xor     r13d, r13d
                jmp     loc_1407AE7B3
; ---------------------------------------------------------------------------

loc_1407AEAE7:                          ; CODE XREF: IoReportDetectedDevice+344↑j
                test    r14, r14
                jnz     loc_140859023

loc_1407AEAF0:                          ; CODE XREF: IoReportDetectedDevice+AA9D6↓j
                                        ; IoReportDetectedDevice+AA9E0↓j
                mov     edx, 100h
                mov     rcx, rbx
                call    sub_140736ED4
                jmp     loc_1407AE9CE
; } // starts at 1407AE650
IoReportDetectedDevice endp
