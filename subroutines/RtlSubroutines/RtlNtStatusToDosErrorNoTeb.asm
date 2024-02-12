RtlNtStatusToDosErrorNoTeb proc near    ; CODE XREF: RtlNtStatusToDosError:loc_1406EC1EB↓p
                                        ; DATA XREF: .rdata:000000014007D530↑o ...

arg_0           = qword ptr  8

; FUNCTION CHUNK AT 0000000140477624 SIZE 00000066 BYTES

                mov     [rsp+arg_0], rbx
                xor     r8d, r8d
                test    ecx, ecx
                jnz     short loc_140330A85
                xor     eax, eax

loc_140330A7E:                          ; CODE XREF: RtlNtStatusToDosErrorNoTeb+27↓j
                                        ; RtlNtStatusToDosErrorNoTeb+B6↓j ...
                mov     rbx, [rsp+arg_0]
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140330A85:                          ; CODE XREF: RtlNtStatusToDosErrorNoTeb+A↑j
                cmp     ecx, 103h
                jz      loc_140477624
                mov     eax, ecx
                bt      ecx, 1Dh
                jb      short loc_140330A7E
                and     eax, 0FF0000h
                cmp     eax, 70000h
                jz      loc_14047762E

loc_140330AA9:                          ; CODE XREF: RtlNtStatusToDosErrorNoTeb+146BCB↓j
                mov     eax, ecx
                lea     rbx, cs:140000000h
                mov     edx, ecx
                and     eax, 0F0000000h
                and     edx, 0CFFFFFFFh
                mov     r9d, 134h
                cmp     eax, 0D0000000h
                cmovnz  edx, ecx

loc_140330ACD:                          ; CODE XREF: RtlNtStatusToDosErrorNoTeb+8E↓j
                lea     ecx, [r8+r9]
                mov     r10d, edx
                shr     ecx, 1
                mov     eax, ds:rva dword_140017B10[rbx+rcx*8]
                sub     r10d, eax
                cmp     edx, eax
                jb      short loc_140330AF7
                movzx   eax, ds:rva byte_140017B14[rbx+rcx*8]
                cmp     r10d, eax
                jb      short loc_140330B05
                lea     r8d, [rcx+1]
                jmp     short loc_140330AFB
; ---------------------------------------------------------------------------

loc_140330AF7:                          ; CODE XREF: RtlNtStatusToDosErrorNoTeb+72↑j
                lea     r9d, [rcx-1]

loc_140330AFB:                          ; CODE XREF: RtlNtStatusToDosErrorNoTeb+85↑j
                cmp     r8d, r9d
                jbe     short loc_140330ACD
                jmp     loc_140477649
; ---------------------------------------------------------------------------

loc_140330B05:                          ; CODE XREF: RtlNtStatusToDosErrorNoTeb+7F↑j
                cmp     ds:rva byte_140017B15[rbx+rcx*8], 1
                movzx   eax, ds:rva word_140017B16[rbx+rcx*8]
                jnz     loc_140477669
                add     eax, r10d
                movzx   eax, ds:rva word_1400184C0[rbx+rax*2]
                jmp     loc_140330A7E
RtlNtStatusToDosErrorNoTeb endp
