RtlCreateSystemVolumeInformationFolder proc near
                                        ; DATA XREF: .rdata:000000014008B6C0↑o
                                        ; .pdata:0000000140108138↑o

var_C0          = qword ptr -0C0h
var_B8          = dword ptr -0B8h
var_B0          = dword ptr -0B0h
var_A8          = dword ptr -0A8h
var_A0          = dword ptr -0A0h
var_98          = qword ptr -98h
var_90          = dword ptr -90h
var_80          = xmmword ptr -80h
var_70          = xmmword ptr -70h
var_60          = xmmword ptr -60h
var_50          = dword ptr -50h
var_4C          = dword ptr -4Ch
var_48          = qword ptr -48h
var_40          = qword ptr -40h
var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = qword ptr -28h
arg_0           = qword ptr  10h
arg_8           = qword ptr  18h
arg_10          = qword ptr  20h
arg_18          = qword ptr  28h

; FUNCTION CHUNK AT 0000000140833B72 SIZE 000000B8 BYTES

                mov     [rsp-8+arg_18], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r14
                push    r15
                lea     rbp, [rsp-37h]
                sub     rsp, 0C0h
                xor     r14d, r14d
                lea     rdx, aSystemVolumeIn ; "System Volume Information"
                xorps   xmm0, xmm0
                mov     [rbp+57h+arg_10], r14
                mov     rbx, rcx
                mov     [rbp+57h+arg_8], r14
                xorps   xmm1, xmm1
                mov     [rbp+57h+var_4C], r14d
                lea     rcx, [rbp+57h+var_70]
                mov     [rbp+57h+var_34], r14d
                movups  [rbp+57h+var_70], xmm0
                mov     [rbp+57h+arg_0], r14
                movups  [rbp+57h+var_80], xmm1
                movups  [rbp+57h+var_60], xmm0
                call    RtlInitUnicodeString
                movzx   eax, word ptr [rbx]
                movzx   edi, word ptr [rbp+57h+var_70]
                lea     edx, [rdi+rax]
                mov     word ptr [rbp+57h+var_80], dx
                cmp     dx, ax
                jb      loc_140833C20
                cmp     dx, di
                jb      loc_140833C20
                mov     ecx, eax
                lea     r15d, [r14+5Ch]
                mov     rax, [rbx+8]
                shr     rcx, 1
                movzx   esi, word ptr [rax+rcx*2-2]
                cmp     si, r15w
                jnz     loc_140833B72

loc_1407310B0:                          ; CODE XREF: RtlCreateSystemVolumeInformationFolder+102B5A↓j
                add     dx, 2
                mov     ecx, 1
                movzx   edx, dx
                mov     r8d, 536C6F56h
                mov     word ptr [rbp+57h+var_80+2], dx
                call    ExAllocatePoolWithTag
                mov     qword ptr [rbp+57h+var_80+8], rax
                test    rax, rax
                jz      loc_140833B7F
                movzx   r8d, word ptr [rbx]
                mov     rcx, rax
                mov     rdx, [rbx+8]
                call    memmove
                movzx   eax, word ptr [rbx]
                mov     word ptr [rbp+57h+var_80], ax
                cmp     si, r15w
                jnz     loc_140833B89

loc_1407310F9:                          ; CODE XREF: RtlCreateSystemVolumeInformationFolder+102B84↓j
                mov     rdx, qword ptr [rbp+57h+var_70+8]
                mov     r8, rdi
                movzx   ecx, ax
                add     rcx, qword ptr [rbp+57h+var_80+8]
                call    memmove
                movzx   eax, word ptr [rbp+57h+var_80]
                lea     rdx, [rbp+57h+arg_8]
                add     ax, di
                movzx   ecx, ax
                mov     word ptr [rbp+57h+var_80], ax
                mov     rax, qword ptr [rbp+57h+var_80+8]
                shr     rcx, 1
                mov     [rax+rcx*2], r14w
                lea     rcx, [rbp+57h+arg_10]
                call    sub_14073125C
                mov     ebx, eax
                test    eax, eax
                js      loc_140833BA9
                mov     rdi, [rbp+57h+arg_10]
                lea     rax, [rbp+57h+var_80]
                mov     [rsp+0E0h+var_90], r14d
                lea     r9, [rbp+57h+var_60]
                mov     [rsp+0E0h+var_98], r14
                lea     r8, [rbp+57h+var_50]
                mov     [rsp+0E0h+var_A0], 201060h
                lea     rcx, [rbp+57h+arg_0]
                mov     [rsp+0E0h+var_A8], 1
                mov     esi, 7
                mov     [rsp+0E0h+var_B0], esi
                mov     edx, 10000h
                mov     [rsp+0E0h+var_B8], r14d
                mov     [rsp+0E0h+var_C0], r14
                mov     [rbp+57h+var_50], 30h ; '0'
                mov     [rbp+57h+var_48], r14
                mov     [rbp+57h+var_38], 240h
                mov     [rbp+57h+var_40], rax
                mov     [rbp+57h+var_30], rdi
                mov     [rbp+57h+var_28], r14
                call    NtCreateFile
                test    eax, eax
                jns     loc_140833BB2

loc_1407311AE:                          ; CODE XREF: RtlCreateSystemVolumeInformationFolder+102B9C↓j
                mov     [rsp+0E0h+var_90], r14d
                lea     r9, [rbp+57h+var_60]
                mov     [rsp+0E0h+var_98], r14
                lea     r8, [rbp+57h+var_50]
                mov     r15d, 21h ; '!'
                lea     rcx, [rbp+57h+arg_0]
                mov     [rsp+0E0h+var_A0], r15d
                mov     edx, 1E0000h
                mov     [rsp+0E0h+var_A8], 3
                mov     [rsp+0E0h+var_B0], esi
                mov     [rsp+0E0h+var_B8], 6
                mov     [rsp+0E0h+var_C0], r14
                call    NtCreateFile
                mov     ebx, eax
                test    eax, eax
                js      loc_140833BC1

loc_1407311FC:                          ; CODE XREF: RtlCreateSystemVolumeInformationFolder+102BEA↓j
                mov     rcx, qword ptr [rbp+57h+var_80+8]
                xor     edx, edx
                call    ExFreePoolWithTag
                xor     edx, edx
                test    ebx, ebx
                js      loc_140833C0F
                mov     rcx, rdi
                call    ExFreePoolWithTag
                mov     rdx, [rbp+57h+arg_8]
                mov     rcx, [rbp+57h+arg_0]
                call    sub_1407313B8
                mov     rcx, [rbp+57h+arg_0]
                mov     ebx, eax
                call    NtClose
                mov     rcx, [rbp+57h+arg_8]

loc_140731235:                          ; CODE XREF: RtlCreateSystemVolumeInformationFolder+102B8D↓j
                                        ; RtlCreateSystemVolumeInformationFolder+102BFB↓j
                xor     edx, edx
                call    ExFreePoolWithTag
                mov     eax, ebx

loc_14073123E:                          ; CODE XREF: RtlCreateSystemVolumeInformationFolder+102B64↓j
                                        ; RtlCreateSystemVolumeInformationFolder+102C05↓j
                mov     rbx, [rsp+0E0h+arg_18]
                add     rsp, 0C0h
                pop     r15
                pop     r14
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlCreateSystemVolumeInformationFolder endp
