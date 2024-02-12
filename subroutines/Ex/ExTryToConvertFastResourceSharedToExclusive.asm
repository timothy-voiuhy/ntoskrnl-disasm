ExTryToConvertFastResourceSharedToExclusive proc near
                                        ; DATA XREF: .pdata:00000001400F9F0C↑o

var_38          = qword ptr -38h
var_28          = qword ptr -28h
var_20          = qword ptr -20h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r13
                sub     rsp, 50h
                and     qword ptr [rax-18h], 0
                mov     rbx, rdx
                test    byte ptr [rcx+1Ah], 1
                mov     rdi, rcx
                jnz     short loc_1405B49C4
                and     qword ptr [rax-38h], 0
                xor     r9d, r9d
                mov     r8, rcx
                mov     ecx, 1C6h
                lea     edx, [r9+3]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B49C4:                          ; CODE XREF: ExTryToConvertFastResourceSharedToExclusive+28↑j
                mov     rax, cr8
                mov     rcx, gs:188h
                cmp     al, 1
                jbe     short loc_1405B49F0
                and     [rsp+58h+var_38], 0
                xor     edx, edx
                movzx   r8d, al
                mov     ecx, 1C6h
                lea     r9d, [rdx+1]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B49F0:                          ; CODE XREF: ExTryToConvertFastResourceSharedToExclusive+53↑j
                jnb     short loc_1405B4A1F
                test    dword ptr [rcx+74h], 400h
                jnz     short loc_1405B4A1F
                cmp     dword ptr [rcx+1E4h], 0
                jnz     short loc_1405B4A1F
                and     [rsp+58h+var_38], 0
                xor     r9d, r9d
                xor     r8d, r8d
                mov     ecx, 1C6h
                lea     edx, [r9+7]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4A1F:                          ; CODE XREF: ExTryToConvertFastResourceSharedToExclusive:loc_1405B49F0↑j
                                        ; ExTryToConvertFastResourceSharedToExclusive+79↑j ...
                mov     r9, [rdx+20h]
                cmp     r9, rcx
                jz      short loc_1405B4A41
                and     [rsp+58h+var_38], 0
                mov     r8, rbx
                mov     edx, 9
                mov     ecx, 1C6h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4A41:                          ; CODE XREF: ExTryToConvertFastResourceSharedToExclusive+A6↑j
                mov     rax, [rdx+18h]
                cmp     rax, rdi
                jz      short loc_1405B4A65
                mov     r9, rbx
                mov     [rsp+58h+var_38], rax
                mov     r8, rdi
                mov     edx, 8
                mov     ecx, 1C6h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4A65:                          ; CODE XREF: ExTryToConvertFastResourceSharedToExclusive+C8↑j
                movzx   eax, byte ptr [rdx+11h]
                test    al, 1
                jz      short loc_1405B4A88
                and     [rsp+58h+var_38], 0
                xor     r9d, r9d
                mov     r8, rbx
                mov     ecx, 1C6h
                lea     edx, [r9+0Ah]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4A88:                          ; CODE XREF: ExTryToConvertFastResourceSharedToExclusive+EB↑j
                test    al, 4
                jz      short loc_1405B4AB0
                and     [rsp+58h+var_38], 0
                mov     r9, rax
                and     r9d, 4
                mov     r8, rbx
                shl     r9, 0Eh
                mov     edx, 0Bh
                mov     ecx, 1C6h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_1405B4AB0:                          ; CODE XREF: ExTryToConvertFastResourceSharedToExclusive+10A↑j
                cmp     byte ptr [rdx+12h], 0
                jz      loc_1405B4BC9
                lea     rax, [rdx+28h]
                cmp     [rax], rax
                jnz     loc_1405B4BC9
                mov     rsi, cr8
                mov     r13d, 2
                mov     cr8, r13
                mov     eax, cs:dword_140CFC660
                or      rbp, 0FFFFFFFFFFFFFFFFh
                test    eax, eax
                jz      short loc_1405B4B17
                test    al, 1
                jz      short loc_1405B4B17
                cmp     sil, 0Fh
                ja      short loc_1405B4B17
                mov     rax, gs:20h
                mov     rdx, rbp
                movzx   ecx, sil
                inc     ecx
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_1405B4B17:                          ; CODE XREF: ExTryToConvertFastResourceSharedToExclusive+161↑j
                                        ; ExTryToConvertFastResourceSharedToExclusive+165↑j ...
                and     [rsp+58h+var_28], 0
                lea     rdx, [rdi+60h]
                lea     rcx, [rsp+58h+var_28]
                mov     [rsp+58h+var_20], rdx
                call    sub_14024B3F0
                mov     rcx, rdi
                call    sub_1405B9DF8
                lea     rcx, [rsp+58h+var_28]
                mov     dil, al
                call    KeReleaseInStackQueuedSpinLockFromDpcLevel
                test    dil, dil
                jz      short loc_1405B4B4E
                or      byte ptr [rbx+11h], 4

loc_1405B4B4E:                          ; CODE XREF: ExTryToConvertFastResourceSharedToExclusive+1C8↑j
                mov     ecx, cs:dword_140CFC660
                test    ecx, ecx
                jz      short loc_1405B4BA2
                test    cl, 1
                jz      short loc_1405B4BA2
                mov     rax, cr8
                cmp     al, 0Fh
                ja      short loc_1405B4BA2
                cmp     sil, 0Fh
                ja      short loc_1405B4BA2
                cmp     al, r13b
                jb      short loc_1405B4BA2
                mov     r9, gs:20h
                movzx   ecx, sil
                inc     ecx
                shl     rbp, cl
                mov     r8, [r9+84B8h]
                movzx   eax, bp
                not     eax
                mov     edx, [r8+14h]
                and     edx, eax
                mov     [r8+14h], edx
                jnz     short loc_1405B4BA2
                mov     rcx, r9
                call    sub_1403F2EC4

loc_1405B4BA2:                          ; CODE XREF: ExTryToConvertFastResourceSharedToExclusive+1D6↑j
                                        ; ExTryToConvertFastResourceSharedToExclusive+1DB↑j ...
                movzx   eax, sil
                mov     cr8, rax
                mov     rbx, [rsp+58h+arg_0]
                mov     al, dil
                mov     rdi, [rsp+58h+arg_18]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     r13
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1405B4BC9:                          ; CODE XREF: ExTryToConvertFastResourceSharedToExclusive+134↑j
                                        ; ExTryToConvertFastResourceSharedToExclusive+141↑j
                and     [rsp+58h+var_38], 0
                xor     r9d, r9d
                mov     r8, rdi
                mov     ecx, 1C6h
                lea     edx, [r9+13h]
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
ExTryToConvertFastResourceSharedToExclusive endp
