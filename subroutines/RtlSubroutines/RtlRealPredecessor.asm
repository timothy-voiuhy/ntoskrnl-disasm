RtlRealPredecessor proc near            ; DATA XREF: .pdata:00000001400C9150↑o

; FUNCTION CHUNK AT 000000014041E96E SIZE 0000000D BYTES

                mov     rax, [rcx+8]
                xor     edx, edx
                mov     r8, rcx
                test    rax, rax
                jnz     short loc_140201804

loc_1402017EE:                          ; CODE XREF: RtlRealPredecessor+30↓j
                mov     rcx, [rcx]
                cmp     [rcx+8], r8
                jz      short loc_14020180D
                cmp     [rcx+10h], r8
                cmovz   rdx, rcx
                mov     rax, rdx
                retn
; ---------------------------------------------------------------------------
                align 4

loc_140201804:                          ; CODE XREF: RtlRealPredecessor+C↑j
                mov     rcx, [rax+10h]
                jmp     loc_14041E975
; ---------------------------------------------------------------------------

loc_14020180D:                          ; CODE XREF: RtlRealPredecessor+15↑j
                mov     r8, rcx
                jmp     short loc_1402017EE
RtlRealPredecessor endp
