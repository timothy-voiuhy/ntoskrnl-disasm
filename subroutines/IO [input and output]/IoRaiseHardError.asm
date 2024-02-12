IoRaiseHardError proc near              ; DATA XREF: .pdata:00000001400F2790↑o

var_A8          = qword ptr -0A8h
var_A0          = qword ptr -0A0h
var_98          = byte ptr -98h
var_90          = qword ptr -90h
var_88          = byte ptr -88h
var_87          = byte ptr -87h
var_84          = dword ptr -84h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = qword ptr -40h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_10], r8
                mov     [rsp+arg_8], rdx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0C8h+var_40], rax
                mov     r12, r8
                mov     r13, rdx
                mov     rdi, rcx
                mov     [rsp+0C8h+var_80], rcx
                xor     r14b, r14b
                mov     rsi, [rcx+98h]
                mov     eax, [rsi+510h]
                test    al, 10h
                jnz     loc_140505FFC
                mov     rcx, [rsi+220h]
                call    sub_140245840
                mov     ebx, eax
                mov     rcx, rsi
                call    sub_140895A4C
                xor     ecx, ecx
                cmp     ebx, 0FFFFFFFFh
                cmovnz  ecx, ebx
                cmp     ecx, eax
                jnz     loc_140505FFC
                mov     rcx, [rdi+0B8h]
                mov     eax, [rdi+10h]
                and     eax, 3FF1FFFFh
                cmp     eax, 43h ; 'C'
                jz      loc_140505EA2
                cmp     byte ptr [rcx], 12h
                jz      loc_140505EA2
                mov     rax, gs:188h
                mov     ecx, [rax+1E4h]
                test    ecx, ecx
                setnz   r14b
                test    ecx, ecx
                jnz     short loc_140505EA2
                lea     edx, [rcx+58h]
                mov     ecx, 200h
                mov     r8d, 4350414Bh
                call    ExAllocatePoolWithTag
                mov     rbx, rax
                test    rax, rax
                jz      loc_140506008
                movsx   r8d, byte ptr [rdi+46h]
                mov     [rsp+0C8h+var_90], rdi
                mov     [rsp+0C8h+var_98], 0
                lea     rax, sub_140893390
                mov     [rsp+0C8h+var_A0], rax
                lea     rax, sub_140892580
                mov     [rsp+0C8h+var_A8], rax
                lea     r9, sub_140718840
                mov     rdx, rsi
                mov     rcx, rbx
                call    KeInitializeApc
                xor     r9d, r9d
                mov     r8, r12
                mov     rdx, r13
                mov     rcx, rbx
                call    KeInsertQueueApc
                jmp     loc_140506012
; ---------------------------------------------------------------------------

loc_140505EA2:                          ; CODE XREF: IoRaiseHardError+8C↑j
                                        ; IoRaiseHardError+95↑j ...
                test    r14b, r14b
                jz      loc_140505FB7
                test    dword ptr [rsi+74h], 400h
                jnz     loc_140505FB7
                mov     bl, 1
                mov     [rsp+0C8h+var_88], bl
                lea     r14, [rsi+4F8h]
                mov     [rsp+0C8h+var_78], r14
                mov     rcx, r14
                call    sub_14024C840
                test    al, al
                jz      loc_140505FB3
                xorps   xmm0, xmm0
                movups  [rsp+0C8h+var_70], xmm0
                movups  [rsp+0C8h+var_60], xmm0
                movups  [rsp+0C8h+var_50], xmm0
                mov     r15, [rsi+0F0h]
                mov     rbx, [rsi+220h]
                mov     rax, gs:188h
                cmp     rbx, [rax+0B8h]
                jz      short loc_140505F25
                mov     sil, 1
                mov     [rsp+0C8h+var_87], sil
                lea     r8, [rsp+0C8h+var_70]
                xor     edx, edx
                mov     rcx, rbx
                call    sub_1402D3C90
                jmp     short loc_140505F2D
; ---------------------------------------------------------------------------

loc_140505F25:                          ; CODE XREF: IoRaiseHardError+18A↑j
                xor     sil, sil
                mov     [rsp+0C8h+var_87], sil

loc_140505F2D:                          ; CODE XREF: IoRaiseHardError+1A3↑j
                                        ; DATA XREF: .rdata:00000001400B7088↑o
;   __try { // __except at loc_140505F77
                mov     eax, [r15+16B0h]
                mov     [rsp+0C8h+var_84], eax
                mov     rcx, [rbx+580h]
                test    rcx, rcx
                jz      short loc_140505F67
                movzx   edx, word ptr [rcx+8]
                mov     ecx, 14Ch
                cmp     dx, cx
                jz      short loc_140505F5C
                mov     ecx, 1C4h
                cmp     dx, cx
                jnz     short loc_140505F67

loc_140505F5C:                          ; CODE XREF: IoRaiseHardError+1D0↑j
                or      eax, [r15+2F28h]
                mov     [rsp+0C8h+var_84], eax

loc_140505F67:                          ; CODE XREF: IoRaiseHardError+1C2↑j
                                        ; IoRaiseHardError+1DA↑j
                and     al, 10h
                neg     al
                sbb     bl, bl
                and     bl, [rsp+0C8h+var_88]
                mov     [rsp+0C8h+var_88], bl
                jmp     short loc_140505F9A
;   } // starts at 140505F2D
; ---------------------------------------------------------------------------

loc_140505F77:                          ; DATA XREF: .rdata:00000001400B7088↑o
;   __except(1) // owned by 140505F2D
                mov     r12, [rsp+0C8h+arg_10]
                mov     r13, [rsp+0C8h+arg_8]
                mov     bl, [rsp+0C8h+var_88]
                mov     sil, [rsp+0C8h+var_87]
                mov     rdi, [rsp+0C8h+var_80]
                mov     r14, [rsp+0C8h+var_78]

loc_140505F9A:                          ; CODE XREF: IoRaiseHardError+1F5↑j
                test    sil, sil
                jz      short loc_140505FAB
                xor     edx, edx
                lea     rcx, [rsp+0C8h+var_70]
                call    sub_14021E230

loc_140505FAB:                          ; CODE XREF: IoRaiseHardError+21D↑j
                mov     rcx, r14
                call    sub_14024C380

loc_140505FB3:                          ; CODE XREF: IoRaiseHardError+154↑j
                test    bl, bl
                jnz     short loc_140506003

loc_140505FB7:                          ; CODE XREF: IoRaiseHardError+125↑j
                                        ; IoRaiseHardError+132↑j
                mov     edx, 38h ; '8'
                mov     ecx, 200h
                mov     r8d, 72456F49h
                call    ExAllocatePoolWithTag
                test    rax, rax
                jz      short loc_140506008
                lea     rcx, sub_140894600
                mov     [rax+10h], rcx
                mov     [rax+18h], rax
                and     qword ptr [rax], 0
                mov     [rax+20h], rdi
                mov     [rax+28h], r13
                mov     [rax+30h], r12
                xor     edx, edx
                mov     rcx, rax
                call    ExQueueWorkItem
                jmp     short loc_140506012
; ---------------------------------------------------------------------------

loc_140505FFC:                          ; CODE XREF: IoRaiseHardError+4E↑j
                                        ; IoRaiseHardError+74↑j
                mov     eax, [rdi+10h]
                test    al, 40h
                jz      short loc_140506008

loc_140506003:                          ; CODE XREF: IoRaiseHardError+235↑j
                and     qword ptr [rdi+38h], 0

loc_140506008:                          ; CODE XREF: IoRaiseHardError+CD↑j
                                        ; IoRaiseHardError+24F↑j ...
                mov     dl, 1
                mov     rcx, rdi
                call    IofCompleteRequest

loc_140506012:                          ; CODE XREF: IoRaiseHardError+11D↑j
                                        ; IoRaiseHardError+27A↑j
                mov     rcx, [rsp+0C8h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 90h
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
; } // starts at 140505D80
IoRaiseHardError endp
