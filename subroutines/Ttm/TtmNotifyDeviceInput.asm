TtmNotifyDeviceInput proc near          ; DATA XREF: .pdata:0000000140120BA0↑o

var_20          = byte ptr -20h
var_18          = byte ptr -18h
var_10          = qword ptr -10h
var_8           = qword ptr -8
var_s0          = byte ptr  0
arg_0           = qword ptr  30h
arg_8           = qword ptr  38h
arg_10          = qword ptr  40h
arg_18          = qword ptr  48h

                mov     [rsp-28h+arg_0], rbx
                mov     [rsp-28h+arg_8], rsi
                mov     [rsp-28h+arg_10], rdi
                push    rbp
                push    r12
                push    r13
                push    r14
                push    r15
                mov     rbp, rsp
                sub     rsp, 40h
                xor     ebx, ebx
                mov     r13d, ecx
                lea     rcx, [rbp+arg_18]
                mov     [rbp+var_10], rbx
                mov     [rbp+arg_18], rbx
                mov     sil, bl
                mov     [rbp+var_8], rbx
                mov     r14b, bl
                movzx   edi, bl
                mov     r15d, r8d
                mov     r12, rdx
                call    sub_1409006B4
                test    eax, eax
                jns     short loc_1408FD768
                or      r9d, 0FFFFFFFFh
                lea     rcx, aTtmnotifydevic_1 ; "TtmNotifyDeviceInput"
                mov     r8d, eax
                mov     edx, 2F9h
                call    sub_1409041B4

loc_1408FD714:                          ; CODE XREF: TtmNotifyDeviceInput+126↓j
                mov     rbx, [rbp+arg_18]

loc_1408FD718:                          ; CODE XREF: TtmNotifyDeviceInput+DE↓j
                                        ; TtmNotifyDeviceInput+17F↓j
                mov     [rsp+40h+var_18], dil
                mov     r9b, sil
                mov     r8d, r15d
                mov     [rsp+40h+var_20], r14b
                mov     rdx, r12
                mov     ecx, r13d
                call    sub_140903930
                test    rbx, rbx
                jz      short loc_1408FD749
                lea     rcx, unk_140C1E080
                call    ExReleaseResourceLite
                call    KeLeaveCriticalRegion

loc_1408FD749:                          ; CODE XREF: TtmNotifyDeviceInput+86↑j
                lea     r11, [rsp+40h+var_s0]
                mov     rbx, [r11+30h]
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
                align 8

loc_1408FD768:                          ; CODE XREF: TtmNotifyDeviceInput+4A↑j
                mov     rbx, [rbp+arg_18]
                mov     eax, [rbx+4]
                test    al, 4
                jz      short loc_1408FD790
                mov     edx, 301h
                mov     r8d, 0C0000455h

loc_1408FD77E:                          ; CODE XREF: TtmNotifyDeviceInput+104↓j
                                        ; TtmNotifyDeviceInput+148↓j
                or      r9d, 0FFFFFFFFh
                lea     rcx, aTtmnotifydevic_1 ; "TtmNotifyDeviceInput"
                call    sub_1409041B4
                jmp     short loc_1408FD718
; ---------------------------------------------------------------------------

loc_1408FD790:                          ; CODE XREF: TtmNotifyDeviceInput+C1↑j
                lea     r9, [rbp+var_10]
                mov     r8, r12
                mov     edx, r13d
                mov     rcx, rbx
                call    sub_1408FE438
                mov     sil, al
                test    al, al
                jnz     short loc_1408FD7B6
                mov     edx, 312h
                mov     r8d, 0C0000225h
                jmp     short loc_1408FD77E
; ---------------------------------------------------------------------------

loc_1408FD7B6:                          ; CODE XREF: TtmNotifyDeviceInput+F7↑j
                mov     rax, ds:0FFFFF78000000008h
                mov     r10, [rbp+var_10]
                mov     [r10+260h], rax
                mov     r8d, [r10+254h]
                cmp     r8d, 0FFFFFFFFh
                jz      loc_1408FD714
                mov     rbx, [rbp+arg_18]
                lea     rcx, [rbp+var_8]
                mov     rdx, rbx
                call    sub_1408FEECC
                test    eax, eax
                jns     short loc_1408FD7FA
                mov     r8d, eax
                mov     edx, 325h
                jmp     short loc_1408FD77E
; ---------------------------------------------------------------------------

loc_1408FD7FA:                          ; CODE XREF: TtmNotifyDeviceInput+13E↑j
                mov     ecx, 1
                test    cl, r15b
                jz      short loc_1408FD80F
                test    byte ptr [r10+258h], 80h
                cmovnz  edi, ecx

loc_1408FD80F:                          ; CODE XREF: TtmNotifyDeviceInput+152↑j
                mov     rdx, [rbp+var_8]
                mov     r9d, 54544941h
                mov     r8d, 4
                mov     [rsp+40h+var_20], dil
                mov     rcx, rbx
                call    sub_1408FEFD8
                mov     r14b, al
                jmp     loc_1408FD718
TtmNotifyDeviceInput endp
