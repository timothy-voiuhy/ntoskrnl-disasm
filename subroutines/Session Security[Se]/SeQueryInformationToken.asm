SeQueryInformationToken proc near       ; CODE XREF: sub_1402A97D8+56↑p
                                        ; sub_1402A97D8+1A2B04↑p ...

var_100         = qword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E8          = qword ptr -0E8h
var_E0          = qword ptr -0E0h
var_D8          = qword ptr -0D8h
var_D0          = qword ptr -0D0h
var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = byte ptr -0B8h
var_B0          = qword ptr -0B0h
var_A0          = byte ptr -0A0h
var_98          = dword ptr -98h
var_94          = dword ptr -94h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = dword ptr -88h
var_84          = dword ptr -84h
var_80          = dword ptr -80h
var_7C          = dword ptr -7Ch
var_78          = xmmword ptr -78h
var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = xmmword ptr -48h
arg_0           = dword ptr  10h
arg_8           = dword ptr  18h
arg_10          = qword ptr  20h
arg_18          = dword ptr  28h

; FUNCTION CHUNK AT 000000014080771E SIZE 00000671 BYTES

                push    rbp
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                lea     rbp, [rsp-27h]
                sub     rsp, 0F0h
                xor     edi, edi
                xorps   xmm0, xmm0
                mov     [rbp+57h+arg_8], edi
                mov     r14, r8
                mov     [rbp+57h+var_98], edi
                mov     ebx, edx
                mov     rsi, rcx
                movups  [rbp+57h+var_78], xmm0
                movups  [rbp+57h+var_68], xmm0
                movups  [rbp+57h+var_58], xmm0
                cmp     edx, 18h
                jnz     short loc_1406529E1

loc_1406529AB:                          ; CODE XREF: SeQueryInformationToken+90↓j
                                        ; DATA XREF: SeQueryInformationToken:jpt_140652A00↓o
                mov     eax, [rsi+0C8h] ; jumptable 0000000140652A00 cases 21,23,26,29,42
                cmp     ebx, 17h
                jz      loc_140653034
                cmp     ebx, 18h
                jnz     loc_140652B88
                shr     eax, 0Ah

loc_1406529C6:                          ; CODE XREF: SeQueryInformationToken+22D↓j
                                        ; SeQueryInformationToken+40D↓j ...
                and     eax, 1
                mov     [r8], eax

loc_1406529CC:                          ; CODE XREF: SeQueryInformationToken+129↓j
                                        ; SeQueryInformationToken+16A↓j ...
                xor     eax, eax

loc_1406529CE:                          ; CODE XREF: SeQueryInformationToken+432↓j
                                        ; SeQueryInformationToken+7AE↓j ...
                add     rsp, 0F0h
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
; ---------------------------------------------------------------------------

loc_1406529E1:                          ; CODE XREF: SeQueryInformationToken+39↑j
                lea     eax, [rdx-1]    ; switch 48 cases
                cmp     eax, 2Fh
                ja      def_140652A00   ; jumptable 0000000140652A00 default case, cases 11,14-17,19,24,27,28,35,36,38-40,43,45,47
                lea     rdx, cs:140000000h
                cdqe
                mov     ecx, ds:(jpt_140652A00 - 140000000h)[rdx+rax*4]
                add     rcx, rdx
                jmp     rcx             ; switch jump
; ---------------------------------------------------------------------------
                db 4 dup(0CCh)
; ---------------------------------------------------------------------------

loc_140652A06:                          ; CODE XREF: SeQueryInformationToken+90↑j
                                        ; DATA XREF: SeQueryInformationToken:jpt_140652A00↓o
                mov     rax, gs:188h    ; jumptable 0000000140652A00 case 1
                dec     word ptr [rax+1E4h]
                mov     rcx, [rsi+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                mov     rax, [rsi+98h]
                mov     r15d, 1
                mov     r8d, 20206553h
                mov     rcx, [rax]
                movzx   eax, byte ptr [rcx+1]
                mov     ecx, r15d
                lea     edi, ds:18h[rax*4]
                mov     edx, edi
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_14080771E
                mov     rdx, [rsi+98h]
                lea     rcx, [rbp+57h+var_A0]
                mov     [rsp+120h+var_F0], rcx
                add     rax, 10h
                lea     rcx, [rbp+57h+var_A0]
                mov     r9, rbx
                mov     [rsp+120h+var_F8], rcx
                mov     r8d, edi
                mov     ecx, r15d
                mov     [rsp+120h+var_100], rax
                call    RtlCopySidAndAttributesArray

loc_140652A88:                          ; CODE XREF: SeQueryInformationToken+393↓j
                                        ; SeQueryInformationToken+5A6↓j ...
                mov     rcx, [rsi+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     [r14], rbx
                jmp     loc_1406529CC
; ---------------------------------------------------------------------------

loc_140652A9E:                          ; CODE XREF: SeQueryInformationToken+90↑j
                                        ; DATA XREF: SeQueryInformationToken:jpt_140652A00↓o
                mov     rax, gs:188h    ; jumptable 0000000140652A00 case 32
                dec     word ptr [rax+1E4h]
                mov     rcx, [rsi+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                mov     rax, [rsi+438h]
                test    rax, rax
                jnz     loc_140652B80

loc_140652AC9:                          ; CODE XREF: SeQueryInformationToken+213↓j
                mov     rcx, [rsi+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     [r14], edi
                jmp     loc_1406529CC
; ---------------------------------------------------------------------------

loc_140652ADF:                          ; CODE XREF: SeQueryInformationToken+90↑j
                                        ; DATA XREF: SeQueryInformationToken:jpt_140652A00↓o
                mov     rdx, r14        ; jumptable 0000000140652A00 case 12
                mov     rcx, rsi
                call    SeQuerySessionIdToken
                jmp     loc_1406529CC
; ---------------------------------------------------------------------------

loc_140652AEF:                          ; CODE XREF: SeQueryInformationToken+90↑j
                                        ; DATA XREF: SeQueryInformationToken:jpt_140652A00↓o
                mov     edx, 4          ; jumptable 0000000140652A00 case 20
                mov     r8d, 20206553h
                lea     ecx, [rdx-3]
                call    ExAllocatePoolWithTag
                mov     r12, rax
                test    rax, rax
                jz      loc_14080772C
                mov     rcx, gs:188h
                dec     word ptr [rcx+1E4h]
                mov     rcx, [rsi+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                mov     r15d, [rsi+7Ch]
                mov     rax, 1120160684h
                test    [rsi+40h], rax
                setnz   bl
                test    r15d, r15d
                jz      short loc_140652B63

loc_140652B43:                          ; CODE XREF: SeQueryInformationToken+1F1↓j
                test    bl, bl
                jnz     short loc_140652B63
                mov     ecx, edi
                shl     rcx, 4
                add     rcx, [rsi+98h]
                call    RtlIsElevatedRid
                inc     edi
                movzx   ebx, al
                cmp     edi, r15d
                jb      short loc_140652B43

loc_140652B63:                          ; CODE XREF: SeQueryInformationToken+1D1↑j
                                        ; SeQueryInformationToken+1D5↑j
                mov     rcx, [rsi+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                movzx   eax, bl
                mov     [r12], eax
                mov     [r14], r12
                jmp     loc_1406529CC
; ---------------------------------------------------------------------------

loc_140652B80:                          ; CODE XREF: SeQueryInformationToken+153↑j
                mov     edi, [rax+28h]
                jmp     loc_140652AC9
; ---------------------------------------------------------------------------

loc_140652B88:                          ; CODE XREF: SeQueryInformationToken+4D↑j
                cmp     ebx, 1Ah
                jz      loc_140652D7A
                cmp     ebx, 1Dh
                jnz     loc_140807D72
                shr     eax, 0Eh
                jmp     loc_1406529C6
; ---------------------------------------------------------------------------

loc_140652BA2:                          ; CODE XREF: SeQueryInformationToken+90↑j
                                        ; DATA XREF: SeQueryInformationToken:jpt_140652A00↓o
                mov     edx, 4          ; jumptable 0000000140652A00 case 18
                mov     r8d, 20206553h
                lea     ecx, [rdx-3]
                call    ExAllocatePoolWithTag
                test    rax, rax
                jz      loc_14080772C
                mov     rcx, [rsi+0D8h]
                mov     edx, [rcx+20h]
                test    dl, 4
                jnz     loc_140652D82
                test    dl, 2
                setnz   dil
                inc     edi
                mov     [rax], edi
                mov     [r14], rax
                jmp     loc_1406529CC
; ---------------------------------------------------------------------------

loc_140652BE4:                          ; CODE XREF: SeQueryInformationToken+90↑j
                                        ; DATA XREF: SeQueryInformationToken:jpt_140652A00↓o
                mov     rax, gs:188h    ; jumptable 0000000140652A00 case 25
                movups  [rbp+57h+var_48], xmm0
                dec     word ptr [rax+1E4h]
                mov     rcx, [rsi+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                lea     rdx, [rbp+57h+var_48]
                mov     rcx, rsi
                call    sub_14021C07C
                mov     rbx, qword ptr [rbp+57h+var_48]
                mov     rcx, rbx
                call    RtlSubAuthorityCountSid
                movzx   ecx, byte ptr [rax]
                test    cl, cl
                jz      short loc_140652C2F
                lea     edx, [rcx-1]
                mov     rcx, rbx
                call    RtlSubAuthoritySid
                mov     edi, [rax]

loc_140652C2F:                          ; CODE XREF: SeQueryInformationToken+2B0↑j
                mov     [r14], edi
                mov     rcx, [rsi+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                jmp     loc_1406529CC
; ---------------------------------------------------------------------------

loc_140652C45:                          ; CODE XREF: SeQueryInformationToken+90↑j
                                        ; DATA XREF: SeQueryInformationToken:jpt_140652A00↓o
                mov     edx, 38h ; '8'  ; jumptable 0000000140652A00 case 10
                mov     r8d, 20206553h
                lea     ecx, [rdx-37h]
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_14080772C
                mov     rax, [rsi+10h]
                mov     [rbx], rax
                mov     rax, [rsi+18h]
                mov     [rbx+8], rax
                mov     eax, [rsi+0C0h]
                mov     [rbx+18h], eax
                mov     eax, [rsi+0C4h]
                mov     [rbx+1Ch], eax
                mov     rax, [rsi+28h]
                mov     [rbx+10h], rax
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     rcx, [rsi+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                mov     eax, [rsi+88h]
                mov     [rbx+20h], eax
                mov     rax, [rsi+0A8h]
                mov     edx, [rsi+88h]
                movzx   ecx, byte ptr [rax+1]
                mov     rax, [rsi+0B8h]
                shl     ecx, 2
                sub     edx, ecx
                sub     edx, 8
                test    rax, rax
                jz      short loc_140652CDC
                movzx   eax, word ptr [rax+2]
                sub     edx, eax

loc_140652CDC:                          ; CODE XREF: SeQueryInformationToken+364↑j
                mov     [rbx+24h], edx
                mov     rcx, rsi
                mov     eax, [rsi+8Ch]
                mov     [rbx+24h], eax
                mov     eax, [rsi+7Ch]
                dec     eax
                mov     [rbx+28h], eax
                call    sub_14030E1F0
                mov     [rbx+2Ch], eax
                mov     rax, [rsi+38h]
                mov     [rbx+30h], rax
                jmp     loc_140652A88
; ---------------------------------------------------------------------------

loc_140652D08:                          ; CODE XREF: SeQueryInformationToken+90↑j
                                        ; DATA XREF: SeQueryInformationToken:jpt_140652A00↓o
                mov     rax, gs:188h    ; jumptable 0000000140652A00 case 31
                dec     word ptr [rax+1E4h]
                mov     rcx, [rsi+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                mov     rbx, [rsi+310h]
                test    rbx, rbx
                jnz     loc_140652E60
                mov     r12d, 8

loc_140652D39:                          ; CODE XREF: SeQueryInformationToken+4FC↓j
                mov     edx, r12d
                mov     ecx, 1
                mov     r8d, 20206553h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_14080771E
                test    rbx, rbx
                jnz     loc_140652E71

loc_140652D61:                          ; CODE XREF: SeQueryInformationToken+519↓j
                                        ; SeQueryInformationToken+1B5322↓j
                mov     [rdi], rbx

loc_140652D64:                          ; CODE XREF: SeQueryInformationToken+4EB↓j
                mov     rcx, [rsi+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                mov     [r14], rdi
                jmp     loc_1406529CC
; ---------------------------------------------------------------------------

loc_140652D7A:                          ; CODE XREF: SeQueryInformationToken+21B↑j
                shr     eax, 0Ch
                jmp     loc_1406529C6
; ---------------------------------------------------------------------------

loc_140652D82:                          ; CODE XREF: SeQueryInformationToken+25B↑j
                mov     dword ptr [rax], 3
                mov     [r14], rax
                jmp     loc_1406529CC
; ---------------------------------------------------------------------------

loc_140652D90:                          ; CODE XREF: SeQueryInformationToken+90↑j
                                        ; DATA XREF: SeQueryInformationToken:jpt_140652A00↓o
                cmp     dword ptr [rsi+0C0h], 2 ; jumptable 0000000140652A00 case 9
                jz      loc_1406531A3

def_140652A00:                          ; CODE XREF: SeQueryInformationToken+77↑j
                                        ; SeQueryInformationToken+90↑j ...
                mov     eax, 0C0000003h ; jumptable 0000000140652A00 default case, cases 11,14-17,19,24,27,28,35,36,38-40,43,45,47
                jmp     loc_1406529CE
; ---------------------------------------------------------------------------

loc_140652DA7:                          ; CODE XREF: SeQueryInformationToken+90↑j
                                        ; DATA XREF: SeQueryInformationToken:jpt_140652A00↓o
                mov     rax, gs:188h    ; jumptable 0000000140652A00 case 30
                dec     word ptr [rax+1E4h]
                mov     rcx, [rsi+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                mov     ecx, [rsi+320h]
                mov     ebx, ecx
                shl     ebx, 4
                add     ebx, 18h
                mov     eax, ebx
                test    ecx, ecx
                jz      short loc_140652DF9
                mov     rdx, [rsi+318h]
                mov     r8d, ecx

loc_140652DE0:                          ; CODE XREF: SeQueryInformationToken+487↓j
                mov     rax, [rdx]
                lea     rdx, [rdx+10h]
                movzx   ecx, byte ptr [rax+1]
                lea     ebx, [rbx+rcx*4]
                add     ebx, 8
                mov     eax, ebx
                sub     r8, 1
                jnz     short loc_140652DE0

loc_140652DF9:                          ; CODE XREF: SeQueryInformationToken+464↑j
                mov     edx, eax
                mov     ecx, 1
                mov     r8d, 20206553h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_14080771E
                mov     eax, [rsi+320h]
                lea     r9, [rdi+8]
                mov     [rdi], eax
                mov     r8d, ebx
                mov     ecx, [rsi+320h]
                lea     rax, [rbp+57h+var_A0]
                mov     [rsp+120h+var_F0], rax
                mov     edx, ecx
                shl     edx, 4
                lea     rax, [rbp+57h+var_A0]
                add     rdx, 18h
                mov     [rsp+120h+var_F8], rax
                add     rdx, rdi
                mov     [rsp+120h+var_100], rdx
                mov     rdx, [rsi+318h]
                call    RtlCopySidAndAttributesArray
                jmp     loc_140652D64
; ---------------------------------------------------------------------------

loc_140652E60:                          ; CODE XREF: SeQueryInformationToken+3BD↑j
                movzx   eax, byte ptr [rbx+1]
                lea     r12d, ds:10h[rax*4]
                jmp     loc_140652D39
; ---------------------------------------------------------------------------

loc_140652E71:                          ; CODE XREF: SeQueryInformationToken+3EB↑j
                mov     r8, [rsi+310h]

loc_140652E78:                          ; CODE XREF: SeQueryInformationToken+1B532F↓j
                lea     rbx, [rax+8]
                mov     rdx, rbx
                lea     ecx, [r12-8]
                call    RtlCopySid
                jmp     loc_140652D61
; ---------------------------------------------------------------------------

loc_140652E8E:                          ; CODE XREF: SeQueryInformationToken+90↑j
                                        ; DATA XREF: SeQueryInformationToken:jpt_140652A00↓o
                test    dword ptr [rsi+0C8h], 4000h ; jumptable 0000000140652A00 case 46
                jz      short loc_140652EAA
                mov     rcx, rsi
                call    sub_140205874
                test    al, al
                jz      loc_140807D5F

loc_140652EAA:                          ; CODE XREF: SeQueryInformationToken+528↑j
                mov     r15d, edi

loc_140652EAD:                          ; CODE XREF: SeQueryInformationToken+1B53F5↓j
                mov     [r14], r15d
                jmp     loc_1406529CC
; ---------------------------------------------------------------------------

loc_140652EB5:                          ; CODE XREF: SeQueryInformationToken+90↑j
                                        ; DATA XREF: SeQueryInformationToken:jpt_140652A00↓o
                mov     rax, gs:188h    ; jumptable 0000000140652A00 case 5
                dec     word ptr [rax+1E4h]
                mov     rcx, [rsi+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                mov     rax, [rsi+0A8h]
                mov     r8d, 20206553h
                movzx   ecx, byte ptr [rax+1]
                lea     edi, ds:10h[rcx*4]
                mov     ecx, 1
                mov     edx, edi
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_14080771E
                lea     rdx, [rax+8]
                mov     [rax], rdx
                lea     ecx, [rdi-8]
                mov     r8, [rsi+0A8h]
                call    RtlCopySid
                jmp     loc_140652A88
; ---------------------------------------------------------------------------

loc_140652F1B:                          ; CODE XREF: SeQueryInformationToken+90↑j
                                        ; DATA XREF: SeQueryInformationToken:jpt_140652A00↓o
                mov     rax, gs:188h    ; jumptable 0000000140652A00 case 22
                mov     [rbp+57h+var_7C], edi
                mov     [rbp+57h+var_80], edi
                mov     [rbp+57h+var_84], edi
                dec     word ptr [rax+1E4h]
                mov     [rbp+57h+var_88], edi
                mov     [rbp+57h+var_8C], edi
                mov     [rbp+57h+var_90], edi
                mov     [rbp+57h+var_94], edi
                mov     [rbp+57h+arg_18], edi
                mov     [rbp+57h+arg_0], edi
                mov     rcx, [rsi+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                lea     rax, [rbp+57h+arg_0]
                xor     r8d, r8d
                mov     [rsp+120h+var_C0], rax
                lea     r9, [rbp+57h+var_98]
                lea     rax, [rbp+57h+arg_18]
                xor     edx, edx
                mov     [rsp+120h+var_C8], rax
                mov     rcx, rsi
                lea     rax, [rbp+57h+var_94]
                mov     [rsp+120h+var_D0], rax
                lea     rax, [rbp+57h+var_90]
                mov     [rsp+120h+var_D8], rax
                lea     rax, [rbp+57h+var_8C]
                mov     [rsp+120h+var_E0], rax
                lea     rax, [rbp+57h+var_88]
                mov     [rsp+120h+var_E8], rax
                lea     rax, [rbp+57h+var_84]
                mov     [rsp+120h+var_F0], rax
                lea     rax, [rbp+57h+var_80]
                mov     [rsp+120h+var_F8], rax
                lea     rax, [rbp+57h+var_7C]
                mov     [rsp+120h+var_100], rax
                call    sub_1406B70B8
                mov     edx, eax
                mov     ecx, 1
                mov     r8d, 20206553h
                mov     r12d, eax
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_14080771E
                mov     eax, [rbp+57h+arg_0]
                mov     r8d, r12d
                mov     r9d, [rbp+57h+var_98]
                mov     rdx, rbx
                mov     [rsp+120h+var_B0], rdi
                mov     rcx, rsi
                mov     [rsp+120h+var_B8], dil
                mov     dword ptr [rsp+120h+var_C0], eax
                mov     eax, [rbp+57h+arg_18]
                mov     dword ptr [rsp+120h+var_C8], eax
                mov     eax, [rbp+57h+var_94]
                mov     dword ptr [rsp+120h+var_D0], eax
                mov     eax, [rbp+57h+var_90]
                mov     dword ptr [rsp+120h+var_D8], eax
                mov     eax, [rbp+57h+var_8C]
                mov     dword ptr [rsp+120h+var_E0], eax
                mov     eax, [rbp+57h+var_88]
                mov     dword ptr [rsp+120h+var_E8], eax
                mov     eax, [rbp+57h+var_84]
                mov     dword ptr [rsp+120h+var_F0], eax
                mov     eax, [rbp+57h+var_80]
                mov     dword ptr [rsp+120h+var_F8], eax
                mov     eax, [rbp+57h+var_7C]
                mov     dword ptr [rsp+120h+var_100], eax
                call    sub_1406B6D30
                jmp     loc_140652A88
; ---------------------------------------------------------------------------

loc_140653034:                          ; CODE XREF: SeQueryInformationToken+44↑j
                bt      eax, 9
                jnb     loc_140807D6A
                mov     r15d, 1

loc_140653044:                          ; CODE XREF: SeQueryInformationToken+1B53FD↓j
                mov     [r8], r15d
                jmp     loc_1406529CC
; ---------------------------------------------------------------------------

loc_14065304C:                          ; CODE XREF: SeQueryInformationToken+90↑j
                                        ; DATA XREF: SeQueryInformationToken:jpt_140652A00↓o
                mov     rax, gs:188h    ; jumptable 0000000140652A00 case 2
                dec     word ptr [rax+1E4h]
                mov     rcx, [rsi+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                mov     ecx, [rsi+7Ch]
                mov     ebx, ecx
                shl     ebx, 4
                add     ebx, 0FFFFFFF8h
                mov     eax, ebx
                cmp     ecx, 1
                jbe     short loc_1406530A1
                mov     rdx, [rsi+98h]
                lea     r8d, [rcx-1]
                add     rdx, 10h

loc_140653088:                          ; CODE XREF: SeQueryInformationToken+72F↓j
                mov     rax, [rdx]
                lea     rdx, [rdx+10h]
                movzx   ecx, byte ptr [rax+1]
                lea     ebx, [rbx+rcx*4]
                add     ebx, 8
                mov     eax, ebx
                sub     r8, 1
                jnz     short loc_140653088

loc_1406530A1:                          ; CODE XREF: SeQueryInformationToken+707↑j
                mov     edx, eax
                mov     ecx, 1
                mov     r8d, 20206553h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jz      loc_14080771E
                mov     eax, [rsi+7Ch]
                lea     r9, [rdi+8]
                dec     eax
                mov     r8d, ebx
                mov     [rdi], eax
                lea     rax, [rbp+57h+var_A0]
                mov     ecx, [rsi+7Ch]
                mov     r10d, ecx
                mov     rdx, [rsi+98h]
                shl     r10d, 4
                add     rdx, 10h
                sub     r10d, 20h ; ' '
                mov     [rsp+120h+var_F0], rax
                add     r10, 18h
                lea     rax, [rbp+57h+var_A0]
                add     r10, rdi
                mov     [rsp+120h+var_F8], rax
                dec     ecx
                mov     [rsp+120h+var_100], r10
                call    RtlCopySidAndAttributesArray
                mov     rcx, [rsi+30h]
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion
                xor     eax, eax
                mov     [r14], rdi
                jmp     loc_1406529CE
; ---------------------------------------------------------------------------

loc_140653123:                          ; CODE XREF: SeQueryInformationToken+90↑j
                                        ; DATA XREF: SeQueryInformationToken:jpt_140652A00↓o
                mov     rax, gs:188h    ; jumptable 0000000140652A00 case 4
                dec     word ptr [rax+1E4h]
                mov     rcx, [rsi+30h]
                mov     dl, 1
                call    ExAcquireResourceSharedLite
                mov     rax, [rsi+98h]
                mov     r8d, 20206553h
                mov     ecx, [rsi+90h]
                add     rcx, rcx
                mov     rcx, [rax+rcx*8]
                movzx   eax, byte ptr [rcx+1]
                mov     ecx, 1
                lea     edi, ds:10h[rax*4]
                mov     edx, edi
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_14080771E
                lea     rdx, [rax+8]
                mov     [rax], rdx
                lea     ecx, [rdi-8]
                mov     eax, [rsi+90h]
                mov     r8, [rsi+98h]
                add     rax, rax
                mov     r8, [r8+rax*8]
                call    RtlCopySid
                jmp     loc_140652A88
; ---------------------------------------------------------------------------

loc_1406531A3:                          ; CODE XREF: SeQueryInformationToken+427↑j
                mov     edx, 4
                mov     r8d, 20206553h
                lea     ecx, [rdx-3]
                call    ExAllocatePoolWithTag
                test    rax, rax
                jz      loc_14080772C
                mov     ecx, [rsi+0C4h]
                mov     [rax], ecx
                mov     [r14], rax
                jmp     loc_1406529CC
; ---------------------------------------------------------------------------
                align 10h
jpt_140652A00   dd offset loc_140652A06 - 140000000h
                                        ; DATA XREF: SeQueryInformationToken+86↑r
                dd offset loc_14065304C - 140000000h ; jump table for switch statement
                dd offset loc_140807736 - 140000000h
                dd offset loc_140653123 - 140000000h
                dd offset loc_140652EB5 - 140000000h
                dd offset loc_140807980 - 140000000h
                dd offset loc_140807A00 - 140000000h
                dd offset loc_140807A2A - 140000000h
                dd offset loc_140652D90 - 140000000h
                dd offset loc_140652C45 - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset loc_140652ADF - 140000000h
                dd offset loc_14080779A - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset loc_140652BA2 - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset loc_140652AEF - 140000000h
                dd offset loc_1406529AB - 140000000h
                dd offset loc_140652F1B - 140000000h
                dd offset loc_1406529AB - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset loc_140652BE4 - 140000000h
                dd offset loc_1406529AB - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset loc_1406529AB - 140000000h
                dd offset loc_140652DA7 - 140000000h
                dd offset loc_140652D08 - 140000000h
                dd offset loc_140652A9E - 140000000h
                dd offset loc_140807A56 - 140000000h
                dd offset loc_140807A56 - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset loc_140807B4C - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset loc_140807C35 - 140000000h
                dd offset loc_1406529AB - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset loc_140807CD1 - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset loc_140652E8E - 140000000h
                dd offset def_140652A00 - 140000000h
                dd offset loc_140807CA4 - 140000000h
SeQueryInformationToken endp
