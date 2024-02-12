MmDisableModifiedWriteOfSection proc near
                                        ; CODE XREF: CcInitializeCacheMapEx+754↑p
                                        ; DATA XREF: .rdata:000000014008448C↑o ...

arg_0           = qword ptr  8
arg_8           = byte ptr  10h

; FUNCTION CHUNK AT 00000001404846F8 SIZE 0000007B BYTES

                mov     [rsp+arg_0], rbx
                push    rdi
                sub     rsp, 20h
                lea     r8, [rsp+28h+arg_8]
                mov     [rsp+28h+arg_8], 0
                mov     edx, 1
                mov     bl, 1
                call    sub_1402D48D0
                test    rax, rax
                jz      short loc_14035262B
                cmp     qword ptr [rax+28h], 0
                mov     ecx, [rax+38h]
                jnz     loc_1404846F8
                or      ecx, 8
                mov     [rax+38h], ecx

loc_1403525F9:                          ; CODE XREF: MmDisableModifiedWriteOfSection+132140↓j
                lea     rcx, [rax+48h]
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_140484705

loc_140352610:                          ; CODE XREF: MmDisableModifiedWriteOfSection+132147↓j
                                        ; MmDisableModifiedWriteOfSection+132153↓j
                mov     dil, [rsp+28h+arg_8]

loc_140352615:                          ; CODE XREF: MmDisableModifiedWriteOfSection+132162↓j
                                        ; MmDisableModifiedWriteOfSection+13216A↓j ...
                movzx   ecx, dil
                mov     cr8, rcx
                mov     al, bl

loc_14035261F:                          ; CODE XREF: MmDisableModifiedWriteOfSection:loc_14035262B↓j
                mov     rbx, [rsp+28h+arg_0]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14035262B:                          ; CODE XREF: MmDisableModifiedWriteOfSection+23↑j
                jmp     short loc_14035261F
MmDisableModifiedWriteOfSection endp
