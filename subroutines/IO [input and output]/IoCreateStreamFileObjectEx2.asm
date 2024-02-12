IoCreateStreamFileObjectEx2 proc near   ; CODE XREF: IoCreateStreamFileObjectLite+2D↑p
                                        ; IoCreateStreamFileObjectEx+2C↓p ...

var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = dword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = qword ptr -60h
var_58          = qword ptr -58h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = xmmword ptr -30h
var_20          = byte ptr -20h
arg_0           = qword ptr  10h
arg_18          = qword ptr  28h
arg_20          = qword ptr  30h

; FUNCTION CHUNK AT 0000000140816AD8 SIZE 000000B1 BYTES

                mov     rax, rsp
                mov     [rax+10h], rsi
                mov     [rax+18h], rdi
                mov     [rax+20h], r9
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rax-57h]
                sub     rsp, 90h
                movzx   r12d, word ptr [rcx+2]
                xor     r15d, r15d
                mov     r14, [rbp+4Fh+arg_20]
                and     r12w, 2
                mov     [rbp+4Fh+arg_0], r15
                mov     r13, r8
                mov     [rbp+4Fh+var_4C], r15d
                mov     rsi, rcx
                mov     [rbp+4Fh+var_34], r15d
                mov     [rbp+4Fh+var_60], r15
                mov     [r9], r15
                test    r14, r14
                jnz     loc_14069C32D

loc_14069C166:                          ; CODE XREF: IoCreateStreamFileObjectEx2+220↓j
                cmp     word ptr [rcx], 10h
                jnz     loc_140816AD8
                test    r12w, r12w
                jz      short loc_14069C17F
                test    r14, r14
                jnz     loc_140816AFC

loc_14069C17F:                          ; CODE XREF: IoCreateStreamFileObjectEx2+64↑j
                test    rdx, rdx
                jnz     loc_140816AF3
                test    r8, r8
                jz      loc_140816AFC

loc_14069C191:                          ; CODE XREF: IoCreateStreamFileObjectEx2+17A9E7↓j
                mov     dl, 1
                mov     rcx, r13
                call    sub_140234540
                mov     rdx, cs:IoFileObjectType
                lea     rax, [rbp+4Fh+arg_20]
                mov     [rsp+0B0h+var_68], rax
                lea     r8, [rbp+4Fh+var_50]
                lea     rax, [rbp+4Fh+arg_0]
                mov     word ptr [rbp+4Fh+arg_20], r15w
                mov     [rsp+0B0h+var_70], rax
                xorps   xmm0, xmm0
                mov     eax, 0D8h
                mov     dword ptr [rsp+0B0h+var_78], r15d
                mov     [rsp+0B0h+var_80], eax
                xor     r9d, r9d
                xor     ecx, ecx
                mov     dword ptr [rsp+0B0h+var_88], eax
                mov     [rbp+4Fh+var_50], 30h ; '0'
                mov     [rbp+4Fh+var_48], r15
                mov     [rbp+4Fh+var_38], 200h
                mov     [rbp+4Fh+var_40], r15
                movdqu  [rbp+4Fh+var_30], xmm0
                mov     byte ptr [rbp+4Fh+arg_20], 1
                call    sub_14061EDD0
                xor     edx, edx
                mov     edi, eax
                test    eax, eax
                js      loc_140816B17
                mov     r15, [rbp+4Fh+arg_0]
                mov     r8d, 0D8h
                mov     rcx, r15
                call    memset
                mov     dword ptr [r15], 0D80005h
                lea     rcx, [r15+98h]
                xor     r8d, r8d
                mov     [r15+8], r13
                mov     dword ptr [r15+50h], 100h
                lea     edx, [r8+1]
                call    KeInitializeEvent
                xor     ecx, ecx
                lea     rax, [r15+0C0h]
                mov     [r15+0B8h], rcx
                mov     [rax+8], rax
                mov     [rax], rax
                test    r12w, r12w
                jz      loc_14069C2E5
                mov     rdx, gs:20h
                mov     r8, [r15-10h]
                mov     rcx, [rdx+840h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jnb     loc_14069C389

loc_14069C284:                          ; CODE XREF: IoCreateStreamFileObjectEx2+28D↓j
                mov     rdx, r8
                call    ExpInterlockedPushEntrySList

loc_14069C28C:                          ; CODE XREF: IoCreateStreamFileObjectEx2+17AA46↓j
                and     qword ptr [r15-10h], 0

loc_14069C291:                          ; CODE XREF: IoCreateStreamFileObjectEx2+200↓j
                mov     r15, [rbp+4Fh+arg_0]
                bts     dword ptr [r15+50h], 12h
                mov     rcx, [r13+38h]
                xor     r13d, r13d
                test    rcx, rcx
                jz      short loc_14069C2AE
                mov     dl, 1
                call    sub_1402F1AB4

loc_14069C2AE:                          ; CODE XREF: IoCreateStreamFileObjectEx2+195↑j
                test    r12w, r12w
                jz      short loc_14069C31B

loc_14069C2B4:                          ; CODE XREF: IoCreateStreamFileObjectEx2+21B↓j
                                        ; IoCreateStreamFileObjectEx2+234↓j
                cmp     [rsi+8], r13
                jnz     loc_14069C349

loc_14069C2BE:                          ; CODE XREF: IoCreateStreamFileObjectEx2+274↓j
                mov     rax, [rbp+4Fh+arg_18]
                mov     [rax], r15

loc_14069C2C5:                          ; CODE XREF: IoCreateStreamFileObjectEx2+17AA16↓j
                                        ; IoCreateStreamFileObjectEx2+17AA6B↓j
                mov     eax, edi

loc_14069C2C7:                          ; CODE XREF: IoCreateStreamFileObjectEx2+17A9DE↓j
                                        ; IoCreateStreamFileObjectEx2+17AA02↓j ...
                lea     r11, [rsp+0B0h+var_20]
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
                db 0CCh
; ---------------------------------------------------------------------------

loc_14069C2E5:                          ; CODE XREF: IoCreateStreamFileObjectEx2+14A↑j
                lea     rax, [rbp+4Fh+var_60]
                xor     edx, edx
                mov     qword ptr [rsp+0B0h+var_80], rax
                lea     rax, [rbp+4Fh+arg_0]
                mov     [rsp+0B0h+var_88], rax
                mov     dword ptr [rsp+0B0h+var_90], ecx
                mov     rcx, r15
                lea     r9d, [rdx+1]
                mov     r8d, r9d
                call    sub_14061EFE0
                mov     edi, eax
                test    eax, eax
                jns     loc_14069C291
                jmp     loc_140816B34
; ---------------------------------------------------------------------------

loc_14069C31B:                          ; CODE XREF: IoCreateStreamFileObjectEx2+1A2↑j
                test    r14, r14
                jnz     short loc_14069C335
                mov     rcx, [rbp+4Fh+var_60]
                xor     edx, edx
                call    ObCloseHandle
                jmp     short loc_14069C2B4
; ---------------------------------------------------------------------------

loc_14069C32D:                          ; CODE XREF: IoCreateStreamFileObjectEx2+50↑j
                mov     [r14], r15
                jmp     loc_14069C166
; ---------------------------------------------------------------------------

loc_14069C335:                          ; CODE XREF: IoCreateStreamFileObjectEx2+20E↑j
                mov     rax, [rbp+4Fh+var_60]
                mov     rcx, r15
                mov     [r14], rax
                call    PsDereferenceSiloContext
                jmp     loc_14069C2B4
; ---------------------------------------------------------------------------

loc_14069C349:                          ; CODE XREF: IoCreateStreamFileObjectEx2+1A8↑j
                mov     edx, 1
                mov     [rsp+0B0h+var_88], r13
                lea     rax, [rbp+4Fh+var_58]
                mov     [rbp+4Fh+var_58], r13
                mov     r9b, 1
                mov     [rsp+0B0h+var_90], rax
                mov     rcx, r15
                lea     r8d, [rdx+1Fh]
                call    sub_14021B078
                mov     edi, eax
                test    eax, eax
                js      loc_140816B5B
                mov     rax, [rbp+4Fh+var_58]
                mov     rcx, [rsi+8]
                mov     [rax], rcx
                jmp     loc_14069C2BE
; ---------------------------------------------------------------------------

loc_14069C389:                          ; CODE XREF: IoCreateStreamFileObjectEx2+16E↑j
                inc     dword ptr [rcx+20h]
                mov     rcx, [rdx+848h]
                inc     dword ptr [rcx+1Ch]
                movzx   eax, word ptr [rcx+10h]
                cmp     [rcx], ax
                jb      loc_14069C284
                jmp     loc_140816B46
IoCreateStreamFileObjectEx2 endp
