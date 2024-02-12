IoReserveDependency proc near           ; DATA XREF: .pdata:000000014011CF10↑o

var_38          = byte ptr -38h
var_28          = dword ptr -28h

                mov     r11, rsp
                push    rbx
                sub     rsp, 50h
                xor     r10d, r10d
                mov     r9, rcx
                mov     [r11-34h], r10d
                mov     [r11-24h], r10d
                mov     [r11-14h], r10d
                test    rcx, rcx
                jz      short loc_14089EFA4
                test    rdx, rdx
                jz      short loc_14089EFA4
                cmp     [rdx], r10w
                jz      short loc_14089EFA4
                test    r8b, 3
                setnz   cl
                test    r8d, 0FFFFFFFCh
                setz    al
                test    al, cl
                jz      short loc_14089EFA4
                mov     [rsp+58h+var_28], 1
                mov     cl, 1
                mov     [r11-20h], rdx
                mov     [r11-18h], r8d
                mov     [r11-38h], r10d
                mov     [r11-30h], r9
                call    sub_140679234
                lea     rdx, [rsp+58h+var_28]
                lea     rcx, [rsp+58h+var_38]
                call    sub_14089F774
                lea     rcx, unk_140C455C0
                mov     ebx, eax
                call    ExReleaseResourceLite
                xor     ecx, ecx
                call    sub_140679140
                jmp     short loc_14089EFA9
; ---------------------------------------------------------------------------

loc_14089EFA4:                          ; CODE XREF: IoReserveDependency+1D↑j
                                        ; IoReserveDependency+22↑j ...
                mov     ebx, 0C000000Dh

loc_14089EFA9:                          ; CODE XREF: IoReserveDependency+82↑j
                mov     eax, ebx
                add     rsp, 50h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoReserveDependency endp
