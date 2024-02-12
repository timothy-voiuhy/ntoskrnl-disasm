ObOpenObjectByPointer proc near         ; CODE XREF: sub_1405D28C4+2BB↑p
                                        ; NtOpenThreadTokenEx+278↑p ...

var_258         = qword ptr -258h
var_250         = dword ptr -250h
var_248         = byte ptr -248h
var_240         = qword ptr -240h
var_238         = dword ptr -238h
var_230         = qword ptr -230h
var_228         = qword ptr -228h
var_218         = dword ptr -218h
var_210         = qword ptr -210h
var_208         = qword ptr -208h
var_200         = qword ptr -200h
var_1F8         = qword ptr -1F8h
var_1F0         = qword ptr -1F0h
var_1E8         = qword ptr -1E8h
var_1D8         = byte ptr -1D8h
var_138         = byte ptr -138h
var_58          = qword ptr -58h
var_40          = qword ptr -40h
arg_20          = qword ptr  28h
arg_28          = byte ptr  30h
arg_30          = qword ptr  38h

; FUNCTION CHUNK AT 00000001407FE5A2 SIZE 00000082 BYTES

; __unwind { // __GSHandlerCheck
                push    rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 240h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+278h+var_58], rax
                mov     r14, [rsp+278h+arg_30]
                mov     rbx, r8
                mov     ebp, edx
                mov     [rsp+278h+var_218], r9d
                mov     rsi, rcx
                xor     edx, edx
                mov     r8d, 0E0h
                lea     rcx, [rsp+278h+var_138]
                call    memset
                xor     edx, edx
                lea     rcx, [rsp+278h+var_1D8]
                mov     r8d, 0A0h
                call    memset
                movzx   r15d, [rsp+278h+arg_28]
                xor     r12d, r12d
                mov     rdi, [rsp+278h+arg_20]
                movzx   r9d, r15b
                mov     r8, rdi
                mov     [r14], r12
                xor     edx, edx
                mov     dword ptr [rsp+278h+var_258], 6E48624Fh
                mov     rcx, rsi
                call    ObReferenceObjectByPointerWithTag
                test    eax, eax
                js      loc_14061D073
                test    rdi, rdi
                jz      loc_14061D096

loc_14061CF34:                          ; CODE XREF: ObOpenObjectByPointer+22D↓j
                test    [rdi+48h], ebp
                jnz     loc_1407FE607
                test    byte ptr [rsi-15h], 1
                jnz     loc_14061D153

loc_14061CF47:                          ; CODE XREF: ObOpenObjectByPointer+2C7↓j
                test    rbx, rbx
                jnz     loc_14061D015
                mov     rax, gs:188h
                mov     rbx, gs:188h
; } // starts at 14061CE90

loc_14061CF62:                          ; DATA XREF: .rdata:000000014004E364↑o
                                        ; .rdata:000000014004E378↑o ...
; __unwind { // __GSHandlerCheck
                mov     [rsp+278h+var_40], r13
                mov     [rsp+278h+var_1F8], r12
                mov     r13, [rax+0B8h]
                mov     rax, [r13+440h]
                mov     [rsp+278h+var_1E8], rax
                test    rbx, rbx
                jz      short loc_14061CF9B
                mov     eax, [rbx+510h]
                test    al, 8
                jnz     loc_14061D0C2

loc_14061CF9B:                          ; CODE XREF: ObOpenObjectByPointer+FB↑j
                                        ; ObOpenObjectByPointer+2AC↓j
                mov     [rsp+278h+var_200], r12
                lea     r12, [r13+4B8h]
                mov     rcx, r12
                call    sub_14024C570
                mov     rbx, rax
                test    rax, rax
                jz      loc_14061D16C
                xor     r12d, r12d

loc_14061CFBE:                          ; CODE XREF: ObOpenObjectByPointer+32F↓j
                cmp     cs:dword_140D2D010, 0
                mov     r13, [rsp+278h+var_40]
                mov     [rsp+278h+var_1F0], rbx
                jnz     loc_1407FE5A2
; } // starts at 14061CF62

loc_14061CFDB:                          ; CODE XREF: ObOpenObjectByPointer+1E1737↓j
                                        ; ObOpenObjectByPointer+1E1757↓j ...
; __unwind { // __GSHandlerCheck
                mov     r9d, [rsp+278h+var_218]
                lea     rax, [rdi+4Ch]
                lea     r8, [rsp+278h+var_138]
                mov     [rsp+278h+var_258], rax
                lea     rdx, [rsp+278h+var_1D8]
                lea     rcx, [rsp+278h+var_200]
                call    sub_14024C690
                mov     ebx, eax
                test    eax, eax
                js      loc_1407FE5F3
                lea     rbx, [rsp+278h+var_1D8]

loc_14061D015:                          ; CODE XREF: ObOpenObjectByPointer+BA↑j
                mov     [rsp+278h+var_228], r14
                xor     r8d, r8d
                mov     [rsp+278h+var_230], r12
                mov     r9, rbx
                mov     [rsp+278h+var_238], r12d
                mov     rdx, rsi
                mov     [rsp+278h+var_240], r12
                mov     [rsp+278h+var_248], r15b
                lea     ecx, [r8+1]
                mov     [rsp+278h+var_250], ebp
                mov     dword ptr [rsp+278h+var_258], r12d
                call    sub_14064A9E0
                mov     edi, eax
                test    eax, eax
                js      loc_14061D141

loc_14061D053:                          ; CODE XREF: ObOpenObjectByPointer+2BE↓j
                lea     rax, [rsp+278h+var_1D8]
                cmp     rbx, rax
                jnz     short loc_14061D071
                mov     rcx, rbx
                call    sub_14024C4F0
                lea     rcx, [rbx+20h]
                call    SeReleaseSubjectContext

loc_14061D071:                          ; CODE XREF: ObOpenObjectByPointer+1CE↑j
                mov     eax, edi

loc_14061D073:                          ; CODE XREF: ObOpenObjectByPointer+95↑j
                                        ; ObOpenObjectByPointer+1E1772↓j ...
                mov     rcx, [rsp+278h+var_58]
                xor     rcx, rsp
                call    __security_check_cookie
                add     rsp, 240h
                pop     r15
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14061D096:                          ; CODE XREF: ObOpenObjectByPointer+9E↑j
                lea     rax, [rsi-30h]
                shr     rax, 8
                lea     rdi, qword_140CFCE60
                movzx   ecx, al
                movzx   eax, byte ptr [rsi-18h]
                xor     rcx, rax
                movzx   eax, byte ptr cs:dword_140CFC728
                xor     rcx, rax
                mov     rdi, [rdi+rcx*8]
                jmp     loc_14061CF34
; } // starts at 14061CFDB
; ---------------------------------------------------------------------------

loc_14061D0C2:                          ; CODE XREF: ObOpenObjectByPointer+105↑j
                                        ; DATA XREF: .pdata:00000001400FD944↑o ...
; __unwind { // __GSHandlerCheck
                mov     rax, gs:188h
                mov     [rsp+278h+var_208], rax
                dec     word ptr [rax+1E4h]
                lea     rcx, [rbx+500h]
                xor     edx, edx
                mov     [rsp+278h+var_210], rcx
                call    ExAcquirePushLockSharedEx
                mov     eax, [rbx+510h]
                test    al, 8
                jz      short loc_14061D117
                mov     r12, [rbx+4A8h]
                and     r12, 0FFFFFFFFFFFFFFF8h
                mov     rcx, r12
                call    ObfReferenceObject
                mov     eax, [rbx+4A8h]
                and     eax, 3
                mov     dword ptr [rsp+278h+var_1F8], eax

loc_14061D117:                          ; CODE XREF: ObOpenObjectByPointer+262↑j
                mov     rbx, [rsp+278h+var_210]
                mov     eax, 11h
                xor     ecx, ecx
                lock cmpxchg [rbx], rcx
                jnz     short loc_14061D162

loc_14061D12A:                          ; CODE XREF: ObOpenObjectByPointer+2DA↓j
                mov     rcx, rbx
                call    sub_140243660
                mov     rcx, [rsp+278h+var_208]
                call    sub_14021E1F0
                jmp     loc_14061CF9B
; } // starts at 14061D0C2
; ---------------------------------------------------------------------------

loc_14061D141:                          ; CODE XREF: ObOpenObjectByPointer+1BD↑j
                                        ; DATA XREF: .pdata:00000001400FD950↑o ...
; __unwind { // __GSHandlerCheck
                mov     edx, 6E48624Fh
                mov     rcx, rsi
                call    ObfDereferenceObjectWithTag
                jmp     loc_14061D053
; ---------------------------------------------------------------------------

loc_14061D153:                          ; CODE XREF: ObOpenObjectByPointer+B1↑j
                cmp     [rsi-10h], r12
                jz      loc_14061CF47
                jmp     loc_1407FE607
; } // starts at 14061D141
; ---------------------------------------------------------------------------

loc_14061D162:                          ; CODE XREF: ObOpenObjectByPointer+298↑j
                                        ; DATA XREF: .pdata:00000001400FD95C↑o ...
; __unwind { // __GSHandlerCheck
                mov     rcx, rbx
                call    ExfReleasePushLockShared
                jmp     short loc_14061D12A
; ---------------------------------------------------------------------------

loc_14061D16C:                          ; CODE XREF: ObOpenObjectByPointer+125↑j
                mov     rax, gs:188h
                mov     [rsp+278h+var_208], rax
                dec     word ptr [rax+1E4h]
                add     r13, 438h
                xor     edx, edx
                mov     rcx, r13
                call    ExAcquirePushLockSharedEx
                mov     rcx, r12
                call    sub_14021AEA8
                mov     rbx, rax
                xor     r12d, r12d
                mov     eax, 11h
                lock cmpxchg [r13+0], r12
                jnz     short loc_14061D1C4

loc_14061D1AD:                          ; CODE XREF: ObOpenObjectByPointer+33C↓j
                mov     rcx, r13
                call    sub_140243660
                mov     rcx, [rsp+278h+var_208]
                call    sub_14021E1F0
                jmp     loc_14061CFBE
; ---------------------------------------------------------------------------

loc_14061D1C4:                          ; CODE XREF: ObOpenObjectByPointer+31B↑j
                mov     rcx, r13
                call    ExfReleasePushLockShared
                jmp     short loc_14061D1AD
; } // starts at 14061D162
ObOpenObjectByPointer endp
