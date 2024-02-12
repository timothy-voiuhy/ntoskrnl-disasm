IoSetInformation proc near              ; CODE XREF: sub_140542AD8+17A↑p
                                        ; sub_1408D19E4+12D↓p
                                        ; DATA XREF: ...

var_50          = qword ptr -50h
var_40          = byte ptr -40h
var_3F          = byte ptr -3Fh
var_38          = qword ptr -38h
var_30          = qword ptr -30h
var_28          = xmmword ptr -28h
var_18          = xmmword ptr -18h
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_0           = byte ptr  30h
arg_8           = qword ptr  38h
arg_10          = dword ptr  40h
arg_18          = qword ptr  48h

; FUNCTION CHUNK AT 000000014084E602 SIZE 00000210 BYTES

                mov     [rsp-28h+arg_8], rbx
                mov     [rsp-28h+arg_18], rsi
                mov     [rsp-28h+arg_10], r8d
                push    rbp
                push    rdi
                push    r12
                push    r13
                push    r15
                mov     rbp, rsp
                sub     rsp, 70h
                xorps   xmm0, xmm0
                xor     r15d, r15d
                xor     eax, eax
                mov     [rbp+var_30], r15
                movups  [rbp+var_18], xmm0
                mov     [rbp+var_8], rax
                mov     r13b, r15b
                movups  [rbp+var_28], xmm0
                mov     [rbp+var_40], r15b
                mov     r12, r9
                mov     esi, edx
                mov     rdi, rcx
                call    ObfReferenceObject
                mov     ebx, [rdi+50h]
                xor     r8d, r8d
                test    bl, 2
                jz      loc_14084E636
                mov     rax, gs:188h
                shr     ebx, 2
                and     bl, 1
                dec     word ptr [rax+1E4h]
                lea     rcx, [rdi+80h]
                xor     edx, edx
                call    sub_140244C10
                lea     ecx, [r15+1]
                mov     [rbp+arg_0], r15b
                xchg    ecx, [rdi+74h]
                test    ecx, ecx
                jnz     loc_14084E602
                test    rax, rax
                jz      short loc_14077AEF9
                or      byte ptr [rax+1Ah], 1

loc_14077AEF9:                          ; CODE XREF: IoSetInformation+93↑j
                mov     rcx, rdi
                call    ObfReferenceObject

loc_14077AF01:                          ; CODE XREF: IoSetInformation+D37C1↓j
                lea     rcx, [rdi+98h]
                call    KeResetEvent
                mov     r15b, 1

loc_14077AF10:                          ; CODE XREF: IoSetInformation+D37E5↓j
                mov     rcx, rdi
                mov     [rbp+var_3F], r15b
                call    IoGetRelatedDeviceObject
                mov     [rbp+var_38], rax
                cmp     esi, 38h ; '8'
                jz      loc_14084E64A
                cmp     esi, 42h ; 'B'
                jz      loc_14084E651
                cmp     esi, 39h ; '9'
                jz      loc_14084E658
                cmp     esi, 49h ; 'I'
                jz      loc_14084E65F
                cmp     esi, 4Bh ; 'K'
                jz      loc_14084E66C

loc_14077AF4D:                          ; CODE XREF: IoSetInformation+D3807↓j
                                        ; IoSetInformation+D3815↓j
                mov     r9, [rbp+28h]
                mov     r8b, r15b
                mov     dl, [rax+4Ch]
                xor     r8b, 1
                mov     rcx, rax
                call    sub_140235D20
                mov     rbx, rax
                test    rax, rax
                jz      loc_14084E67A
                mov     [rax+0C0h], rdi
                mov     rax, gs:188h
                mov     [rbx+98h], rax
                mov     byte ptr [rbx+40h], 0
                test    r15b, r15b
                jz      loc_14084E68E
                or      byte ptr [rbx+47h], 2
                xor     eax, eax

loc_14077AF99:                          ; CODE XREF: IoSetInformation+D3839↓j
                mov     [rbx+50h], rax
                lea     rax, [rbp+var_28]
                mov     r15, [rbx+0B8h]
                mov     [rbx+48h], rax
                mov     eax, [rbp+arg_10]
                mov     byte ptr [r15-48h], 6
                mov     [r15-18h], rdi
                or      dword ptr [rbx+10h], 10h
                mov     [rbx+18h], r12
                mov     [r15-40h], eax
                mov     [r15-38h], esi
                test    r13b, r13b
                jnz     loc_14084E69E
                xor     r13d, r13d
                cmp     [rbp+var_40], r13b
                jnz     loc_14084E6AB

loc_14077AFDE:                          ; CODE XREF: IoSetInformation+D3846↓j
                                        ; IoSetInformation+D3850↓j
                mov     rcx, rbx
                call    sub_140245C90
                cmp     esi, 10h
                jz      loc_14084E6B5
                lea     eax, [rsi-0Ah]
                cmp     eax, 3Eh ; '>'
                ja      short loc_14077B00B
                mov     rcx, 4080000000000003h
                bt      rcx, rax
                jb      loc_14084E719

loc_14077B00B:                          ; CODE XREF: IoSetInformation+195↑j
                cmp     esi, 1Fh
                jz      loc_14084E756
                cmp     esi, 45h ; 'E'
                jz      loc_14084E73A

loc_14077B01D:                          ; CODE XREF: IoSetInformation+D390C↓j
                                        ; IoSetInformation+D3928↓j
                mov     rcx, [rbp+var_38]
                mov     rdx, rbx
                call    IofCallDriver
                mov     esi, eax

loc_14077B02B:                          ; CODE XREF: IoSetInformation+D3944↓j
                cmp     [rbp+var_3F], r13b
                jz      loc_14084E7E8
                cmp     esi, 103h
                jz      loc_14084E7A9

loc_14077B041:                          ; CODE XREF: IoSetInformation+D3983↓j
                mov     rcx, rdi
                call    sub_1402481D0

loc_14077B049:                          ; CODE XREF: IoSetInformation+D398E↓j
                                        ; IoSetInformation+D39AD↓j
                mov     rcx, [rbp+var_30]
                test    rcx, rcx
                jnz     short loc_14077B06E

loc_14077B052:                          ; CODE XREF: IoSetInformation+215↓j
                mov     eax, esi

loc_14077B054:                          ; CODE XREF: IoSetInformation+D37D1↓j
                                        ; IoSetInformation+D3829↓j
                lea     r11, [rsp+70h+var_s0]
                mov     rbx, [r11+38h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r13
                pop     r12
                pop     rdi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14077B06E:                          ; CODE XREF: IoSetInformation+1F0↑j
                xor     edx, edx
                call    ObCloseHandle
                jmp     short loc_14077B052
IoSetInformation endp
