DbgkWerCaptureLiveKernelDump proc near  ; CODE XREF: sub_1403A5EF4+100FCA↑p
                                        ; sub_14056AD4C+108↑p ...

var_38          = byte ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_20          = qword ptr  28h
arg_28          = qword ptr  30h
arg_30          = qword ptr  38h
arg_38          = qword ptr  40h
arg_40          = dword ptr  48h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                xor     ebx, ebx
                mov     r13d, 1
                mov     [rax-38h], r13b
                mov     r14, r9
                mov     [rax-34h], ebx
                mov     r15, r8
                mov     [rax-30h], rbx
                mov     r12d, edx
                mov     rbp, rcx
                mov     rax, cr8
                test    al, al
                jz      short loc_14088A33F
                lea     r8, aDbgkDbgkwercap ; "DBGK: DbgkWerCaptureLiveKernelDump: cal"...
                mov     edx, r13d
                lea     ecx, [rbx+5]
                call    DbgPrintEx
                mov     eax, 0C0000148h
                jmp     loc_14088A4E7
; ---------------------------------------------------------------------------

loc_14088A33F:                          ; CODE XREF: DbgkWerCaptureLiveKernelDump+41↑j
                cmp     cs:byte_140C509C0, bl
                jnz     short loc_14088A365
                lea     r8, aDbgkDbgkwercap_0 ; "DBGK: DbgkWerCaptureLiveKernelDump: cal"...
                mov     edx, r13d
                mov     ecx, 5
                call    DbgPrintEx
                mov     eax, 0C00000A3h
                jmp     loc_14088A4E7
; ---------------------------------------------------------------------------

loc_14088A365:                          ; CODE XREF: DbgkWerCaptureLiveKernelDump+65↑j
                call    sub_14088AD78
                test    al, al
                jz      short loc_14088A38C
                lea     r8, aDbgkFullLiveKe_0 ; "DBGK: Full Live Kernel Dumps are disabl"...
                mov     edx, r13d
                mov     ecx, 5
                call    DbgPrintEx
                mov     eax, 0C0000804h
                jmp     loc_14088A4E7
; ---------------------------------------------------------------------------

loc_14088A38C:                          ; CODE XREF: DbgkWerCaptureLiveKernelDump+8C↑j
                mov     rax, gs:188h
                dec     word ptr [rax+1E4h]
                mov     eax, r13d
                xchg    eax, cs:dword_140C47840
                cmp     eax, r13d
                jnz     short loc_14088A3B4
                mov     edi, 0C000022Dh
                jmp     loc_14088A4E0
; ---------------------------------------------------------------------------

loc_14088A3B4:                          ; CODE XREF: DbgkWerCaptureLiveKernelDump+C8↑j
                mov     edi, 0B8h
                mov     r8d, 57676244h
                mov     edx, edi
                mov     ecx, r13d
                call    ExAllocatePoolWithTag
                mov     rsi, rax
                test    rax, rax
                jnz     short loc_14088A3DB
                mov     edi, 0C000009Ah
                jmp     loc_14088A4DA
; ---------------------------------------------------------------------------

loc_14088A3DB:                          ; CODE XREF: DbgkWerCaptureLiveKernelDump+EF↑j
                mov     r8, rdi
                xor     edx, edx
                mov     rcx, rsi
                call    memset
                xor     r8d, r8d
                mov     rcx, rbp
                lea     r11d, [r8+10h]
                mov     edx, r11d
                call    sub_1402F1E60
                mov     edi, eax
                test    eax, eax
                js      loc_14088A4C5
                mov     r8, rbp
                mov     edx, r11d
                mov     rcx, rsi
                call    sub_140371440
                mov     edi, eax
                test    eax, eax
                js      loc_14088A4C5
                mov     eax, [rsp+58h+arg_40]
                lea     r8, [rsp+58h+var_30]
                mov     ecx, cs:dword_140C4783C
                lea     rdx, [rsp+58h+var_34]
                test    al, 2
                cmovnz  ecx, r13d
                mov     [rsp+58h+var_34], ecx
                mov     rcx, [rsp+58h+arg_20]
                mov     [rsi+38h], rcx
                mov     rcx, [rsp+58h+arg_28]
                mov     [rsi+40h], rcx
                mov     rcx, [rsp+58h+arg_30]
                mov     [rsi+48h], rcx
                mov     rcx, [rsp+58h+arg_38]
                mov     [rsi+50h], rcx
                mov     rcx, rsi
                mov     [rsi+20h], r12d
                mov     [rsi+28h], r15
                mov     [rsi+30h], r14
                mov     [rsi+58h], eax
                call    cs:WerLiveKernelCreateReport
                nop     dword ptr [rax+rax+00h]
                mov     edi, eax
                test    eax, eax
                jns     short loc_14088A4A7
                xor     edx, edx
                lea     r8, aDbgkDbgkwercap_1 ; "DBGK: DbgkWerCaptureLiveKernelDump: Wer"...
                mov     r9d, eax
                lea     ecx, [rdx+5]
                call    DbgPrintEx
                jmp     short loc_14088A4C5
; ---------------------------------------------------------------------------

loc_14088A4A7:                          ; CODE XREF: DbgkWerCaptureLiveKernelDump+1AF↑j
                mov     r8, [rsp+58h+var_30]
                lea     r9, [rsp+58h+var_38]
                mov     edx, [rsp+58h+var_34]
                mov     rcx, rsi
                call    sub_14088AE7C
                mov     edi, eax
                cmp     [rsp+58h+var_38], bl
                jz      short loc_14088A4E0

loc_14088A4C5:                          ; CODE XREF: DbgkWerCaptureLiveKernelDump+11E↑j
                                        ; DbgkWerCaptureLiveKernelDump+136↑j ...
                mov     rcx, rsi
                call    sub_14088A850
                mov     edx, 57676244h
                mov     rcx, rsi
                call    ExFreePoolWithTag

loc_14088A4DA:                          ; CODE XREF: DbgkWerCaptureLiveKernelDump+F6↑j
                xchg    ebx, cs:dword_140C47840

loc_14088A4E0:                          ; CODE XREF: DbgkWerCaptureLiveKernelDump+CF↑j
                                        ; DbgkWerCaptureLiveKernelDump+1E3↑j
                call    KeLeaveCriticalRegion
                mov     eax, edi

loc_14088A4E7:                          ; CODE XREF: DbgkWerCaptureLiveKernelDump+5A↑j
                                        ; DbgkWerCaptureLiveKernelDump+80↑j ...
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rsi, [rsp+58h+arg_10]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
DbgkWerCaptureLiveKernelDump endp
