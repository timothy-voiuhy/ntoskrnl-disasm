_purecall       proc near               ; DATA XREF: .rdata:0000000140009460↑o
                                        ; .rdata:0000000140009468↑o ...
                sub     rsp, 28h
                mov     ecx, 0C0000002h
                call    RtlRaiseStatus
; ---------------------------------------------------------------------------
                db 0CCh
_purecall       endp

byte_1405B74AF  db 9 dup(0CCh)          ; DATA XREF: .pdata:00000001400FA11C↑o

; =============== S U B R O U T I N E =======================================


sub_1405B74B8   proc near               ; CODE XREF: sub_14028EEC0+1B7308↑p
                                        ; std::time_get<wchar_t,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>>>::_Getint(std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,std::istreambuf_iterator<wchar_t,std::char_traits<wchar_t>> &,int,int,int &)+17B7C5↑p ...
                sub     rsp, 28h
                mov     rax, gs:188h
                mov     r9d, ecx
                mov     rcx, [rax+0B8h]
                cmp     r8d, 1
                jz      short loc_1405B74E9
                mov     rax, cs:off_140C04F48
                mov     rcx, cs:qword_140C166D0
                mov     rax, [rax+50h]
                jmp     short loc_1405B7500
; ---------------------------------------------------------------------------

loc_1405B74E9:                          ; CODE XREF: sub_1405B74B8+1B↑j
                mov     rcx, [rcx+888h]
                test    rcx, rcx
                jz      short loc_1405B750B
                mov     rax, cs:off_140C04F48
                mov     rax, [rax+48h]

loc_1405B7500:                          ; CODE XREF: sub_1405B74B8+2F↑j
                mov     r8, rdx
                mov     edx, r9d
                call    sub_1404079D0

loc_1405B750B:                          ; CODE XREF: sub_1405B74B8+3B↑j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_1405B74B8   endp

algn_1405B7511:                         ; DATA XREF: .pdata:00000001400FA128↑o
                align 20h
; Exported entry 325. ExShareAddressSpaceWithDevice

; =============== S U B R O U T I N E =======================================

; Attributes: bp-based frame fpd=57h

