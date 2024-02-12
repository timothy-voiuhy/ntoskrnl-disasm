RtlCharToInteger proc near              ; CODE XREF: sub_1403B40A8+7B↑p
                                        ; sub_140A48E5C+138↓p
                                        ; DATA XREF: ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140854B9A SIZE 000000A6 BYTES

; __unwind { // __C_specific_handler
                mov     [rsp+arg_0], rbx
                mov     rbx, r8
                mov     r10d, edx
                mov     r9, rcx
                mov     r11b, [rcx]
                cmp     r11b, 20h ; ' '
                jle     loc_140854B9A

loc_14079CF6B:                          ; CODE XREF: RtlCharToInteger+B7C5E↓j
                inc     r9

loc_14079CF6E:                          ; CODE XREF: RtlCharToInteger+B7C66↓j
                mov     cl, r11b
                lea     eax, [r11-2Bh]
                test    al, 0FDh
                jz      loc_140854BBB

loc_14079CF7D:                          ; CODE XREF: RtlCharToInteger+B7C71↓j
                mov     rax, r9
                test    edx, edx
                jz      loc_140854BC6
                cmp     edx, 10h
                jnz     short loc_14079CFF9
                mov     edx, 4

loc_14079CF92:                          ; CODE XREF: RtlCharToInteger+B4↓j
                                        ; RtlCharToInteger+B7C7F↓j ...
                xor     r8d, r8d

loc_14079CF95:                          ; CODE XREF: RtlCharToInteger+6D↓j
                test    cl, cl
                jz      short loc_14079CFBF
                lea     eax, [rcx-30h]
                cmp     al, 9
                ja      short loc_14079CFDB
                movsx   eax, cl
                sub     eax, 30h ; '0'

loc_14079CFA6:                          ; CODE XREF: RtlCharToInteger+98↓j
                                        ; RtlCharToInteger+A7↓j
                cmp     eax, r10d
                jnb     short loc_14079CFBF
                test    edx, edx
                jz      short loc_14079D006
                mov     ecx, edx
                shl     r8d, cl
                or      r8d, eax

loc_14079CFB7:                          ; CODE XREF: RtlCharToInteger+BD↓j
                mov     cl, [r9]
                inc     r9
                jmp     short loc_14079CF95
; ---------------------------------------------------------------------------

loc_14079CFBF:                          ; CODE XREF: RtlCharToInteger+47↑j
                                        ; RtlCharToInteger+59↑j ...
;   __try { // __except at loc_14079CFD0
                mov     eax, r8d
                neg     eax
                cmp     r11b, 2Dh ; '-'
                cmovnz  eax, r8d
                mov     [rbx], eax
                jmp     short loc_14079CFD2
;   } // starts at 14079CFBF
; ---------------------------------------------------------------------------

loc_14079CFD0:                          ; DATA XREF: .rdata:00000001400A0934↑o
;   __except(1) // owned by 14079CFBF
                jmp     short loc_14079CFD4
; ---------------------------------------------------------------------------

loc_14079CFD2:                          ; CODE XREF: RtlCharToInteger+7E↑j
                xor     eax, eax

loc_14079CFD4:                          ; CODE XREF: RtlCharToInteger:loc_14079CFD0↑j
                                        ; RtlCharToInteger+B7CD7↓j
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14079CFDB:                          ; CODE XREF: RtlCharToInteger+4E↑j
                lea     eax, [rcx-41h]
                cmp     al, 5
                ja      short loc_14079CFEA
                movsx   eax, cl
                sub     eax, 37h ; '7'
                jmp     short loc_14079CFA6
; ---------------------------------------------------------------------------

loc_14079CFEA:                          ; CODE XREF: RtlCharToInteger+90↑j
                lea     eax, [rcx-61h]
                cmp     al, 5
                ja      short loc_14079CFBF
                movsx   eax, cl
                sub     eax, 57h ; 'W'
                jmp     short loc_14079CFA6
; ---------------------------------------------------------------------------

loc_14079CFF9:                          ; CODE XREF: RtlCharToInteger+3B↑j
                cmp     edx, 0Ah
                jnz     loc_140854C18
                xor     edx, edx
                jmp     short loc_14079CF92
; ---------------------------------------------------------------------------

loc_14079D006:                          ; CODE XREF: RtlCharToInteger+5D↑j
                imul    r8d, r10d
                add     r8d, eax
                jmp     short loc_14079CFB7
; } // starts at 14079CF50
RtlCharToInteger endp
