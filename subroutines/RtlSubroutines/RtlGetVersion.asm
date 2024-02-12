RtlGetVersion   proc near               ; CODE XREF: RtlVerifyVersionInfo+61↑p
                                        ; sub_1403EBC6C+46↑p ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h

; FUNCTION CHUNK AT 0000000140829D74 SIZE 00000015 BYTES

                mov     [rsp+arg_8], rbx
                push    rdi
                sub     rsp, 20h
                xor     edi, edi
                mov     qword ptr [rcx+4], 0Ah
                movzx   eax, word ptr cs:NtBuildNumber
                mov     rbx, rcx
                mov     [rcx+0Ch], eax
                mov     eax, [rcx]
                sub     eax, 11Ch
                mov     [rsp+28h+arg_0], edi
                mov     dword ptr [rcx+10h], 2
                test    eax, 0FFFFFFF7h
                jnz     short loc_14070C91B
                movzx   eax, byte ptr cs:dword_140C4C078+1
                mov     [rcx+114h], ax
                mov     ecx, 0FFh
                movzx   eax, word ptr cs:dword_140C4C078
                and     ax, cx
                mov     [rbx+118h], di
                cmp     cs:dword_140C4C058, edi
                mov     [rbx+116h], ax
                mov     [rbx+11Ah], dil
                jbe     short loc_14070C914
                lea     rcx, [rsp+28h+arg_0]
                call    RtlGetNtProductType
                test    al, al
                jz      short loc_14070C8FC
                mov     al, byte ptr [rsp+28h+arg_0]
                mov     [rbx+11Ah], al

loc_14070C8FC:                          ; CODE XREF: RtlGetVersion+80↑j
                call    RtlGetSuiteMask
                cmp     dword ptr [rbx], 124h
                mov     [rbx+118h], ax
                jz      loc_140829D74

loc_14070C914:                          ; CODE XREF: RtlGetVersion+72↑j
                                        ; RtlGetVersion+11D514↓j
                mov     [rbx+11Bh], dil

loc_14070C91B:                          ; CODE XREF: RtlGetVersion+38↑j
                mov     rbx, [rsp+28h+arg_8]
                xor     eax, eax
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
RtlGetVersion   endp

algn_14070C929:                         ; DATA XREF: .rdata:00000001400850C8↑o
                                        ; .pdata:0000000140105F60↑o
                align 10h
; Exported entry 2185. RtlGetSuiteMask

; =============== S U B R O U T I N E =======================================


