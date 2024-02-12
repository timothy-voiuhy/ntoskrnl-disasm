HalReportResourceUsage proc near        ; CODE XREF: sub_140A3CC14+8AD↑p
                                        ; sub_140A3CC14+CBA↑p ...

var_18          = xmmword ptr -18h

                sub     rsp, 38h
                xorps   xmm0, xmm0
                movups  [rsp+38h+var_18], xmm0
                cmp     ecx, 0FFFFFFFFh
                jz      short loc_140A3E3E2
                test    ecx, ecx
                jz      short loc_140A3E3F8
                cmp     ecx, 1
                jnz     short loc_140A3E3F2
                lea     edx, [rcx+1Dh]
                lea     ecx, [rdx-1]
                jmp     short loc_140A3E3EA
; ---------------------------------------------------------------------------

loc_140A3E3E2:                          ; CODE XREF: HalReportResourceUsage+F↑j
                mov     edx, 18h
                lea     ecx, [rdx-1]

loc_140A3E3EA:                          ; CODE XREF: HalReportResourceUsage+20↑j
                xor     r8d, r8d
                call    sub_14099D7A8

loc_140A3E3F2:                          ; CODE XREF: HalReportResourceUsage+18↑j
                                        ; HalReportResourceUsage+62↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                align 8

loc_140A3E3F8:                          ; CODE XREF: HalReportResourceUsage+13↑j
                xor     r8d, r8d
                lea     edx, [r8+1Ch]
                lea     ecx, [rdx-1]
                call    sub_14099D7A8
                lea     rdx, aAcpiX64Platfor ; "ACPI x64 platform"
                lea     rcx, [rsp+38h+var_18]
                call    RtlInitUnicodeString
                lea     rcx, [rsp+38h+var_18]
                call    sub_140A3B2F0
                jmp     short loc_140A3E3F2
HalReportResourceUsage endp
