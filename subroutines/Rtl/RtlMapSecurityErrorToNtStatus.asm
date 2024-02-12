RtlMapSecurityErrorToNtStatus proc near ; DATA XREF: .pdata:00000001400D8858↑o

; FUNCTION CHUNK AT 0000000140486E8E SIZE 00000027 BYTES
; FUNCTION CHUNK AT 0000000140486EB9 SIZE 0000006E BYTES

                mov     eax, 80090316h
                mov     edx, ecx
                cmp     ecx, eax
                jle     loc_140486E8E
                cmp     ecx, 80090324h
                jz      short loc_140357049
                cmp     ecx, 80090331h
                jz      short loc_14035703B ; jumptable 0000000140486EB3 cases -2146893054,-2146893046
                cmp     ecx, 8009035Dh
                jz      short loc_140357042 ; jumptable 0000000140486EB3 cases -2146893048,-2146893047

def_140486EB3:                          ; CODE XREF: RtlMapSecurityErrorToNtStatus+30↓j
                                        ; RtlMapSecurityErrorToNtStatus+37↓j ...
                mov     eax, edx        ; jumptable 0000000140486EB3 default case
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14035703B:                          ; CODE XREF: RtlMapSecurityErrorToNtStatus+1D↑j
                                        ; RtlMapSecurityErrorToNtStatus+12FEA3↓j
                                        ; DATA XREF: ...
                mov     edx, 0C00000BBh ; jumptable 0000000140486EB3 cases -2146893054,-2146893046
                jmp     short def_140486EB3 ; jumptable 0000000140486EB3 default case
; ---------------------------------------------------------------------------

loc_140357042:                          ; CODE XREF: RtlMapSecurityErrorToNtStatus+25↑j
                                        ; RtlMapSecurityErrorToNtStatus+12FEA3↓j
                                        ; DATA XREF: ...
                mov     edx, 0C000000Dh ; jumptable 0000000140486EB3 cases -2146893048,-2146893047
                jmp     short def_140486EB3 ; jumptable 0000000140486EB3 default case
; ---------------------------------------------------------------------------

loc_140357049:                          ; CODE XREF: RtlMapSecurityErrorToNtStatus+15↑j
                mov     edx, 0C0000133h
                jmp     short def_140486EB3 ; jumptable 0000000140486EB3 default case
RtlMapSecurityErrorToNtStatus endp
