NtDuplicateToken proc near              ; DATA XREF: .rdata:000000014004E62C↑o
                                        ; .pdata:00000001400FDA34↑o ...

var_C8          = qword ptr -0C8h
var_C0          = qword ptr -0C0h
var_B8          = qword ptr -0B8h
var_B0          = qword ptr -0B0h
var_A8          = byte ptr -0A8h
var_A7          = byte ptr -0A7h
var_A6          = byte ptr -0A6h
var_A0          = qword ptr -0A0h
var_98          = qword ptr -98h
var_90          = qword ptr -90h
var_88          = qword ptr -88h
var_80          = byte ptr -80h
var_7C          = dword ptr -7Ch
var_78          = dword ptr -78h
var_70          = xmmword ptr -70h
var_60          = qword ptr -60h
var_50          = byte ptr -50h
var_40          = qword ptr -40h
var_28          = byte ptr -28h
arg_18          = byte ptr  20h
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h

; FUNCTION CHUNK AT 00000001407FE9E0 SIZE 00000023 BYTES

; __unwind { // __C_specific_handler
                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rsi
                mov     [r11+20h], r9b
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 0C0h
                mov     r14, r8
                mov     edi, edx
                mov     rbx, rcx
                xor     eax, eax
                mov     [r11-80h], rax
                mov     [rsp+0E8h+var_78], eax
                mov     [rsp+0E8h+var_A7], al
                mov     [rsp+0E8h+var_A6], al
                xor     r15d, r15d
                mov     [rsp+0E8h+var_88], r15
                mov     [rsp+0E8h+var_90], r15
                xorps   xmm0, xmm0
                movups  [rsp+0E8h+var_70], xmm0
                movups  xmmword ptr [r11-60h], xmm0
                mov     [rsp+0E8h+var_A8], al
                xorps   xmm1, xmm1
                movups  xmmword ptr [r11-50h], xmm1
                movups  xmmword ptr [r11-40h], xmm1
                mov     rax, gs:188h
                movzx   esi, byte ptr [rax+232h]
                test    sil, sil
                jnz     loc_14061DD1E
                mov     r12, [rsp+0E8h+arg_28]
                mov     r13d, [rsp+0E8h+arg_20]

loc_14061DB6D:                          ; CODE XREF: NtDuplicateToken+26F↓j
                lea     r9, [rsp+0E8h+var_80]
                lea     r8, [rsp+0E8h+var_A7]
                movzx   edx, sil
                mov     rcx, r14
                call    sub_14061DF94
                test    eax, eax
                js      loc_14061DD00
                lea     r8, [rsp+0E8h+var_A6]
                movzx   edx, sil
                mov     rcx, r14
                call    sub_14021B5AC
                test    eax, eax
                js      loc_14061DD00
                mov     r8, cs:SeTokenObjectType
                mov     [rsp+0E8h+var_A0], r15
                lea     rax, [rsp+0E8h+var_90]
                mov     [rsp+0E8h+var_C0], rax
                lea     rax, [rsp+0E8h+var_A0]
                mov     [rsp+0E8h+var_C8], rax
                movzx   r9d, sil
                mov     edx, 2
                mov     rcx, rbx
                call    ObReferenceObjectByHandle
                test    eax, eax
                js      loc_14061DD00
                test    edi, edi
                jz      loc_14061DE28
                mov     rax, gs:188h
                mov     rdx, [rax+0B8h]
                mov     rcx, gs:188h
                lea     r8, [rsp+0E8h+var_70]
                call    SeCaptureSubjectContextEx
                mov     rax, [rsp+0E8h+var_60]
                mov     [rsp+0E8h+var_40], rax
                movzx   edx, sil
                lea     rcx, [rsp+0E8h+var_70]
                call    RtlIsSandboxedToken
                test    al, al
                jnz     loc_14061DDA1

loc_14061DC2E:                          ; CODE XREF: NtDuplicateToken+2D4↓j
                mov     r15d, edi

loc_14061DC31:                          ; CODE XREF: NtDuplicateToken+343↓j
                lea     rcx, [rsp+0E8h+var_70]
                call    SeReleaseSubjectContext

loc_14061DC3B:                          ; CODE XREF: NtDuplicateToken+34D↓j
                mov     rdi, [rsp+0E8h+var_A0]
                cmp     [rsp+0E8h+var_A7], 0
                jz      loc_14061DE32
                mov     ecx, [rsp+0E8h+var_7C]

loc_14061DC4F:                          ; CODE XREF: NtDuplicateToken+358↓j
                mov     eax, [rdi+0C0h]
                cmp     eax, 2
                jz      loc_14061DD62

loc_14061DC5E:                          ; CODE XREF: NtDuplicateToken+294↓j
                                        ; NtDuplicateToken+29D↓j ...
                mov     [rsp+0E8h+var_98], 0
                lea     rax, [rsp+0E8h+var_98]
                mov     [rsp+0E8h+var_B0], rax
                mov     byte ptr [rsp+0E8h+var_B8], 0
                mov     byte ptr [rsp+0E8h+var_C0], sil
                mov     dword ptr [rsp+0E8h+var_C8], ecx
                mov     r9d, r13d
                movzx   r8d, [rsp+0E8h+arg_18]
                mov     rdx, r14
                mov     rcx, rdi
                call    sub_14061E3A0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14061DCE5
                lea     rax, [rsp+0E8h+var_88]
                mov     [rsp+0E8h+var_B8], rax
                xor     eax, eax
                mov     [rsp+0E8h+var_C0], rax
                mov     dword ptr [rsp+0E8h+var_C8], eax
                lea     r9d, [rax+1]
                mov     r8d, r15d
                xor     edx, edx
                mov     rcx, [rsp+0E8h+var_98]
                call    sub_14061EFE0
                mov     ebx, eax
                test    eax, eax
                js      short loc_14061DCE5
                cmp     [rsp+0E8h+var_A6], 0
                jnz     short loc_14061DCDB
                mov     rcx, [rsp+0E8h+var_98]
                call    sub_1405CF780

loc_14061DCDB:                          ; CODE XREF: NtDuplicateToken+1EF↑j
                mov     rcx, [rsp+0E8h+var_98]
                call    PsDereferenceSiloContext

loc_14061DCE5:                          ; CODE XREF: NtDuplicateToken+1BA↑j
                                        ; NtDuplicateToken+1E8↑j
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                test    ebx, ebx
                js      short loc_14061DCFE

loc_14061DCF1:                          ; DATA XREF: .rdata:000000014004E608↑o
;   __try { // __except at loc_14061DCFC
                mov     rax, [rsp+0E8h+var_88]
                mov     [r12], rax
                jmp     short loc_14061DCFE
;   } // starts at 14061DCF1
; ---------------------------------------------------------------------------

loc_14061DCFC:                          ; DATA XREF: .rdata:000000014004E608↑o
;   __except(1) // owned by 14061DCF1
                jmp     short loc_14061DD00
; ---------------------------------------------------------------------------

loc_14061DCFE:                          ; CODE XREF: NtDuplicateToken+20F↑j
                                        ; NtDuplicateToken+21A↑j
                mov     eax, ebx

loc_14061DD00:                          ; CODE XREF: NtDuplicateToken+A5↑j
                                        ; NtDuplicateToken+BE↑j ...
                lea     r11, [rsp+0E8h+var_28]
                mov     rbx, [r11+30h]
                mov     rsi, [r11+38h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14061DD1E:                          ; CODE XREF: NtDuplicateToken+77↑j
                                        ; DATA XREF: .rdata:000000014004E618↑o
;   __try { // __except at loc_14061DD60
                mov     r13d, [rsp+0E8h+arg_20]
                lea     eax, [r13-1]
                cmp     eax, 1
                ja      short loc_14061DD59
                mov     r12, [rsp+0E8h+arg_28]
                mov     rcx, r12
                mov     rax, 7FFFFFFF0000h
                cmp     r12, rax
                jnb     short loc_14061DD54

loc_14061DD49:                          ; CODE XREF: NtDuplicateToken+277↓j
                mov     rax, [rcx]
                mov     [rcx], rax
                jmp     loc_14061DB6D
; ---------------------------------------------------------------------------

loc_14061DD54:                          ; CODE XREF: NtDuplicateToken+267↑j
                mov     rcx, rax
                jmp     short loc_14061DD49
; ---------------------------------------------------------------------------

loc_14061DD59:                          ; CODE XREF: NtDuplicateToken+24D↑j
                mov     eax, 0C000000Dh
                jmp     short loc_14061DD00
;   } // starts at 14061DD1E
; ---------------------------------------------------------------------------

loc_14061DD60:                          ; DATA XREF: .rdata:000000014004E618↑o
;   __except(1) // owned by 14061DD1E
                jmp     short loc_14061DD00
; ---------------------------------------------------------------------------

loc_14061DD62:                          ; CODE XREF: NtDuplicateToken+178↑j
                cmp     r13d, 2
                jnz     short loc_14061DD70
                cmp     ecx, [rdi+0C4h]
                jg      short loc_14061DD8F

loc_14061DD70:                          ; CODE XREF: NtDuplicateToken+286↑j
                cmp     r13d, 1
                jnz     loc_14061DC5E
                cmp     eax, 2
                jnz     loc_14061DC5E
                cmp     [rdi+0C4h], eax
                jge     loc_14061DC5E

loc_14061DD8F:                          ; CODE XREF: NtDuplicateToken+28E↑j
                mov     rcx, rdi
                call    PsDereferenceSiloContext
                mov     eax, 0C00000A5h
                jmp     loc_14061DD00
; ---------------------------------------------------------------------------

loc_14061DDA1:                          ; CODE XREF: NtDuplicateToken+148↑j
                movzx   edx, sil
                lea     rcx, [rsp+0E8h+var_50]
                call    RtlIsSandboxedToken
                test    al, al
                jz      loc_14061DC2E
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     dl, 1
                mov     rcx, [rsp+0E8h+var_60]
                mov     rcx, [rcx+30h]
                call    ExAcquireResourceSharedLite
                lea     r8, [rsp+0E8h+var_A8]
                mov     rdx, [rsp+0E8h+var_60]
                mov     rcx, [rsp+0E8h+var_A0]
                call    sub_1406D8F2C
                mov     ecx, eax
                mov     rax, [rsp+0E8h+var_60]
                cmp     [rsp+0E8h+var_A0], rax
                jnz     loc_1407FE9E0

loc_14061DE09:                          ; CODE XREF: NtDuplicateToken+1E0F09↓j
                mov     r15d, edi

loc_14061DE0C:                          ; CODE XREF: NtDuplicateToken+1E0F1E↓j
                mov     rcx, [rax+30h]
                call    ExReleaseResourceLite
                mov     rcx, gs:188h
                call    sub_14021E1F0
                jmp     loc_14061DC31
; ---------------------------------------------------------------------------

loc_14061DE28:                          ; CODE XREF: NtDuplicateToken+FF↑j
                mov     r15d, dword ptr [rsp+0E8h+var_90+4]
                jmp     loc_14061DC3B
; ---------------------------------------------------------------------------

loc_14061DE32:                          ; CODE XREF: NtDuplicateToken+165↑j
                mov     ecx, [rdi+0C4h]
                jmp     loc_14061DC4F
; } // starts at 14061DAE0
NtDuplicateToken endp
