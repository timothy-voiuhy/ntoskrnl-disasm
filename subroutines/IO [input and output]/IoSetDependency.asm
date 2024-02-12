IoSetDependency proc near               ; DATA XREF: .pdata:000000014011CF1C↑o

var_38          = dword ptr -38h
var_34          = dword ptr -34h
var_30          = qword ptr -30h
var_28          = dword ptr -28h
var_24          = dword ptr -24h
var_20          = qword ptr -20h
var_18          = dword ptr -18h
var_14          = dword ptr -14h

                push    rbx
                sub     rsp, 50h
                and     [rsp+58h+var_34], 0
                mov     r9, rdx
                and     [rsp+58h+var_24], 0
                and     [rsp+58h+var_14], 0
                test    rcx, rcx
                jz      loc_14089F064
                test    rdx, rdx
                jz      short loc_14089F064
                test    r8b, 3
                setnz   dl
                test    r8d, 0FFFFFFFCh
                setz    al
                test    al, dl
                jz      short loc_14089F064
                cmp     rcx, r9
                jnz     short loc_14089F007
                mov     eax, 0C0000001h
                jmp     short loc_14089F06B
; ---------------------------------------------------------------------------

loc_14089F007:                          ; CODE XREF: IoSetDependency+3E↑j
                and     [rsp+58h+var_38], 0
                and     [rsp+58h+var_28], 0
                mov     [rsp+58h+var_30], rcx
                mov     cl, 1
                mov     [rsp+58h+var_20], r9
                mov     [rsp+58h+var_18], r8d
                call    sub_140679234
                lea     rdx, [rsp+58h+var_28]
                lea     rcx, [rsp+58h+var_38]
                call    sub_14089F774
                lea     rcx, unk_140C455C0
                mov     ebx, eax
                test    eax, eax
                jns     short loc_14089F051
                call    ExReleaseResourceLite
                xor     ecx, ecx
                call    sub_140679140
                jmp     short loc_14089F069
; ---------------------------------------------------------------------------

loc_14089F051:                          ; CODE XREF: IoSetDependency+81↑j
                call    ExReleaseResourceLite
                xor     ecx, ecx
                call    sub_140679140
                call    sub_14073D7B4
                jmp     short loc_14089F069
; ---------------------------------------------------------------------------

loc_14089F064:                          ; CODE XREF: IoSetDependency+1B↑j
                                        ; IoSetDependency+24↑j ...
                mov     ebx, 0C000000Dh

loc_14089F069:                          ; CODE XREF: IoSetDependency+8F↑j
                                        ; IoSetDependency+A2↑j
                mov     eax, ebx

loc_14089F06B:                          ; CODE XREF: IoSetDependency+45↑j
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoSetDependency endp
