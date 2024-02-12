NtAllocateLocallyUniqueId proc near     ; DATA XREF: .pdata:0000000140104820↑o
                                        ; PAGE:000000014098BCC8↓o

arg_8           = byte ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 00000001407E7F30 SIZE 00000036 BYTES

; __unwind { // __C_specific_handler
                sub     rsp, 38h

loc_1406EB5C4:                          ; DATA XREF: .rdata:000000014007CECC↑o
;   __try { // __except at loc_1406EB640
                mov     rax, gs:188h
                mov     [rsp+38h+arg_18], rax
                movzx   eax, byte ptr [rax+232h]
                mov     [rsp+38h+arg_8], al
                test    al, al
                jz      short loc_1406EB611
                mov     rdx, rcx
                test    cl, 3
                jnz     short loc_1406EB606
                mov     rax, 7FFFFFFF0000h
                cmp     rcx, rax
                jnb     short loc_1406EB60C

loc_1406EB5F8:                          ; CODE XREF: NtAllocateLocallyUniqueId+4F↓j
                movzx   eax, byte ptr [rdx]
                mov     [rdx], al
                movzx   eax, byte ptr [rdx+7]
                mov     [rdx+7], al
                jmp     short loc_1406EB611
; ---------------------------------------------------------------------------

loc_1406EB606:                          ; CODE XREF: NtAllocateLocallyUniqueId+27↑j
                call    ExRaiseDatatypeMisalignment
; ---------------------------------------------------------------------------
                align 4

loc_1406EB60C:                          ; CODE XREF: NtAllocateLocallyUniqueId+36↑j
                mov     rdx, rax
                jmp     short loc_1406EB5F8
; ---------------------------------------------------------------------------

loc_1406EB611:                          ; CODE XREF: NtAllocateLocallyUniqueId+1F↑j
                                        ; NtAllocateLocallyUniqueId+44↑j
                mov     [rsp+38h+arg_10], 0
                mov     rdx, cs:qword_14003AFE0
                mov     rax, rdx
                lock xadd cs:qword_140C12E38, rax
                add     rax, rdx
                mov     [rsp+38h+arg_10], rax
                mov     [rcx], eax
                shr     rax, 20h
                mov     [rcx+4], eax
                jmp     short loc_1406EB642
;   } // starts at 1406EB5C4
; ---------------------------------------------------------------------------

loc_1406EB640:                          ; DATA XREF: .rdata:000000014007CECC↑o
;   __except(loc_1407E7F30) // owned by 1406EB5C4
                jmp     short loc_1406EB644
; ---------------------------------------------------------------------------

loc_1406EB642:                          ; CODE XREF: NtAllocateLocallyUniqueId+7E↑j
                xor     eax, eax

loc_1406EB644:                          ; CODE XREF: NtAllocateLocallyUniqueId:loc_1406EB640↑j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 1406EB5C0
NtAllocateLocallyUniqueId endp
