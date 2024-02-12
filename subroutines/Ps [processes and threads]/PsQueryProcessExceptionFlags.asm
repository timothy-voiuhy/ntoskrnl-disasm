PsQueryProcessExceptionFlags proc near  ; DATA XREF: .pdata:00000001401215B4↑o

var_98          = dword ptr -98h
var_94          = dword ptr -94h
var_90          = dword ptr -90h
var_8C          = dword ptr -8Ch
var_88          = dword ptr -88h
var_80          = qword ptr -80h
var_78          = qword ptr -78h
var_70          = qword ptr -70h
var_68          = qword ptr -68h
var_60          = xmmword ptr -60h
var_50          = xmmword ptr -50h
var_40          = xmmword ptr -40h
var_30          = qword ptr -30h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_18          = qword ptr  20h

; __unwind { // __GSHandlerCheck_SEH
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 90h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+0B8h+var_30], rax
                mov     [rsp+0B8h+var_80], r8
                mov     r15d, edx
                mov     rsi, rcx
                mov     [rsp+0B8h+var_70], rcx
                mov     [rsp+0B8h+var_68], r8
                xorps   xmm0, xmm0
                movups  [rsp+0B8h+var_60], xmm0
                movups  [rsp+0B8h+var_50], xmm0
                movups  [rsp+0B8h+var_40], xmm0
                xor     edi, edi
                test    edx, 0FFFFFFFEh
                jz      short loc_140908C17
                mov     eax, 0C00000F0h
                jmp     loc_140908D9B
; ---------------------------------------------------------------------------

loc_140908C17:                          ; CODE XREF: PsQueryProcessExceptionFlags+5B↑j
                cmp     [rcx+550h], rdi
                jz      loc_140908D96
                and     r15d, 1
                jz      short loc_140908C37
                cmp     [rcx+580h], rdi
                jz      loc_140908D96

loc_140908C37:                          ; CODE XREF: PsQueryProcessExceptionFlags+78↑j
                mov     r14, gs:188h
                mov     [rsp+0B8h+var_78], r14
                mov     r13d, 2
                cmp     [r14+0B8h], rsi
                jz      short loc_140908C5E
                lea     ebx, [r13+1]
                mov     [rsp+0B8h+var_98], ebx
                jmp     short loc_140908C74
; ---------------------------------------------------------------------------

loc_140908C5E:                          ; CODE XREF: PsQueryProcessExceptionFlags+A2↑j
                mov     ebx, edi
                cmp     [r14+220h], rsi
                cmovnz  ebx, r13d
                mov     [rsp+0B8h+var_98], ebx
                cmp     ebx, r13d
                jb      short loc_140908C9E

loc_140908C74:                          ; CODE XREF: PsQueryProcessExceptionFlags+AC↑j
                dec     word ptr [r14+1E4h]
                add     rcx, 458h
                call    sub_14024C840
                test    al, al
                jnz     short loc_140908C9E
                mov     rcx, r14
                call    sub_14021E1F0
                mov     eax, 0C000010Ah
                jmp     loc_140908D9B
; ---------------------------------------------------------------------------

loc_140908C9E:                          ; CODE XREF: PsQueryProcessExceptionFlags+C2↑j
                                        ; PsQueryProcessExceptionFlags+DA↑j
                mov     edx, ebx
                and     edx, 1
                mov     [rsp+0B8h+var_94], edx
                mov     [rsp+0B8h+var_88], edx
                jz      short loc_140908CC0
                lea     r8, [rsp+0B8h+var_60]
                xor     edx, edx
                mov     rcx, rsi
                call    sub_1402D3C90
                mov     edx, [rsp+0B8h+var_94]

loc_140908CC0:                          ; CODE XREF: PsQueryProcessExceptionFlags+FB↑j
                test    r15d, r15d
                jz      short loc_140908CF2
                mov     rax, [rsi+580h]
                test    rax, rax
                jz      short loc_140908CE1
                mov     ecx, 8664h
                cmp     [rax+8], cx
                jnz     short loc_140908CE1
                mov     rax, [rax]
                jmp     short loc_140908CF9
; ---------------------------------------------------------------------------

loc_140908CE1:                          ; CODE XREF: PsQueryProcessExceptionFlags+11F↑j
                                        ; PsQueryProcessExceptionFlags+12A↑j
                mov     rcx, rdi
                test    rax, rax
                jz      short loc_140908CEC
                mov     rcx, [rax]

loc_140908CEC:                          ; CODE XREF: PsQueryProcessExceptionFlags+137↑j
                lea     rax, [rcx+28h]
                jmp     short loc_140908CFD
; ---------------------------------------------------------------------------

loc_140908CF2:                          ; CODE XREF: PsQueryProcessExceptionFlags+113↑j
                mov     rax, [rsi+550h]

loc_140908CF9:                          ; CODE XREF: PsQueryProcessExceptionFlags+12F↑j
                add     rax, 50h ; 'P'

loc_140908CFD:                          ; CODE XREF: PsQueryProcessExceptionFlags+140↑j
                                        ; DATA XREF: .rdata:00000001400BF708↑o
;   __try { // __except at loc_140908D0E
                mov     r12d, [rax]
                mov     [rsp+0B8h+var_90], r12d
                mov     r15d, edi
                mov     [rsp+0B8h+var_8C], edi
                jmp     short loc_140908D40
;   } // starts at 140908CFD
; ---------------------------------------------------------------------------

loc_140908D0E:                          ; DATA XREF: .rdata:00000001400BF708↑o
;   __except(1) // owned by 140908CFD
                mov     r15d, eax
                xor     r12d, r12d
                mov     [rsp+0B8h+var_90], r12d
                mov     [rsp+0B8h+var_8C], eax
                xor     edi, edi
                lea     r13d, [r12+2]
                mov     r14, [rsp+0B8h+var_78]
                mov     ebx, [rsp+0B8h+var_98]
                mov     rsi, [rsp+0B8h+var_70]
                mov     r8, [rsp+0B8h+var_68]
                mov     [rsp+0B8h+var_80], r8
                mov     edx, [rsp+0B8h+var_88]

loc_140908D40:                          ; CODE XREF: PsQueryProcessExceptionFlags+15C↑j
                test    edx, edx
                jz      short loc_140908D50
                xor     edx, edx
                lea     rcx, [rsp+0B8h+var_60]
                call    sub_14021E230

loc_140908D50:                          ; CODE XREF: PsQueryProcessExceptionFlags+192↑j
                cmp     ebx, r13d
                jb      short loc_140908D69
                lea     rcx, [rsi+458h]
                call    sub_14024C380
                mov     rcx, r14
                call    sub_14021E1F0

loc_140908D69:                          ; CODE XREF: PsQueryProcessExceptionFlags+1A3↑j
                test    r15d, r15d
                js      short loc_140908D91
                mov     rax, [rsp+0B8h+var_80]
                mov     [rax], edi
                test    r12b, 4
                jz      short loc_140908D86
                mov     dword ptr [rax], 1
                mov     edi, 1

loc_140908D86:                          ; CODE XREF: PsQueryProcessExceptionFlags+1C9↑j
                test    r12b, 8
                jz      short loc_140908D91
                or      edi, r13d
                mov     [rax], edi

loc_140908D91:                          ; CODE XREF: PsQueryProcessExceptionFlags+1BC↑j
                                        ; PsQueryProcessExceptionFlags+1DA↑j
                mov     eax, r15d
                jmp     short loc_140908D9B
; ---------------------------------------------------------------------------

loc_140908D96:                          ; CODE XREF: PsQueryProcessExceptionFlags+6E↑j
                                        ; PsQueryProcessExceptionFlags+81↑j
                mov     eax, 0C00000EFh

loc_140908D9B:                          ; CODE XREF: PsQueryProcessExceptionFlags+62↑j
                                        ; PsQueryProcessExceptionFlags+E9↑j ...
                mov     rcx, [rsp+0B8h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+0B8h+var_28]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140908BB0
PsQueryProcessExceptionFlags endp
