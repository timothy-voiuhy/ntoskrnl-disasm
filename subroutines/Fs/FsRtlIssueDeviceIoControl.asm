FsRtlIssueDeviceIoControl proc near     ; CODE XREF: FsRtlVolumeDeviceToCorrelationId+4E↑p
                                        ; FsRtlGetSectorSizeInformation+A2↑p ...

var_68          = qword ptr -68h
var_60          = dword ptr -60h
var_58          = byte ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
var_38          = xmmword ptr -38h
var_28          = xmmword ptr -28h
var_8           = byte ptr -8
arg_20          = dword ptr  28h
arg_28          = qword ptr  30h
arg_30          = dword ptr  38h
arg_38          = qword ptr  40h

; FUNCTION CHUNK AT 000000014082BC76 SIZE 0000000A BYTES

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 80h
                xorps   xmm0, xmm0
                mov     bpl, r8b
                mov     edi, edx
                mov     rsi, rcx
                xor     eax, eax
                lea     rcx, [r11-28h]
                movups  [rsp+88h+var_28], xmm0
                xor     r8d, r8d
                mov     [r11-18h], rax
                xor     edx, edx
                mov     rbx, r9
                movups  [rsp+88h+var_38], xmm0
                call    KeInitializeEvent
                mov     r9d, [rsp+88h+arg_20]
                lea     rax, [rsp+88h+var_38]
                mov     [rsp+88h+var_48], rax
                mov     r8, rbx
                lea     rax, [rsp+88h+var_28]
                mov     rdx, rsi
                mov     [rsp+88h+var_50], rax
                mov     ecx, edi
                mov     eax, [rsp+88h+arg_30]
                mov     [rsp+88h+var_58], 0
                mov     [rsp+88h+var_60], eax
                mov     rax, [rsp+88h+arg_28]
                mov     [rsp+88h+var_68], rax
                call    IoBuildDeviceIoControlRequest
                mov     rdx, rax
                test    rax, rax
                jz      loc_14082BC76
                mov     rax, [rax+0B8h]
                mov     rcx, rsi
                or      [rax-46h], bpl
                call    IofCallDriver
                mov     ecx, eax
                cmp     eax, 103h
                jz      short loc_140712BB8

loc_140712B81:                          ; CODE XREF: FsRtlIssueDeviceIoControl+104↓j
                test    ecx, ecx
                js      short loc_140712B92
                mov     rdx, [rsp+88h+arg_38]
                test    rdx, rdx
                jnz     short loc_140712BAE

loc_140712B92:                          ; CODE XREF: FsRtlIssueDeviceIoControl+B3↑j
                                        ; FsRtlIssueDeviceIoControl+E6↓j
                mov     eax, ecx

loc_140712B94:                          ; CODE XREF: FsRtlIssueDeviceIoControl+1191AB↓j
                lea     r11, [rsp+88h+var_8]
                mov     rbx, [r11+10h]
                mov     rbp, [r11+18h]
                mov     rsi, [r11+20h]
                mov     rsp, r11
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                align 2

loc_140712BAE:                          ; CODE XREF: FsRtlIssueDeviceIoControl+C0↑j
                mov     rax, qword ptr [rsp+88h+var_38+8]
                mov     [rdx], rax
                jmp     short loc_140712B92
; ---------------------------------------------------------------------------

loc_140712BB8:                          ; CODE XREF: FsRtlIssueDeviceIoControl+AF↑j
                and     [rsp+88h+var_68], 0
                lea     rcx, [rsp+88h+var_28]
                xor     r9d, r9d
                xor     r8d, r8d
                xor     edx, edx
                call    KeWaitForSingleObject
                mov     ecx, dword ptr [rsp+88h+var_38]
                jmp     short loc_140712B81
FsRtlIssueDeviceIoControl endp
