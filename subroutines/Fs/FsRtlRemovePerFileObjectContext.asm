FsRtlRemovePerFileObjectContext proc near
                                        ; DATA XREF: .rdata:000000014007D798↑o
                                        ; .pdata:00000001400D6638↑o

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140477A06 SIZE 0000003E BYTES

                mov     rax, rsp
                mov     [rax+10h], rbx
                mov     [rax+18h], rbp
                mov     [rax+20h], rsi
                push    rdi
                sub     rsp, 20h
                and     qword ptr [rax+8], 0
                mov     rbp, r8
                mov     rsi, rdx
                test    rcx, rcx
                jz      loc_140331383
                xor     r8d, r8d
                lea     rdx, [rax+8]
                call    sub_14033148C
                cmp     [rsp+28h+arg_0], 0
                jz      loc_140331383
                mov     rax, gs:188h
                xor     ebx, ebx
                dec     word ptr [rax+1E4h]
                mov     rdi, [rsp+28h+arg_0]
                xor     edx, edx
                mov     rcx, rdi
                call    ExAcquirePushLockExclusiveEx
                test    rbp, rbp
                jnz     loc_140477A06
                test    rsi, rsi
                jz      loc_140477A2C
                lea     rcx, [rdi+8]
                mov     rax, [rcx]

loc_14033131A:                          ; CODE XREF: FsRtlRemovePerFileObjectContext+DA↓j
                cmp     rax, rcx
                jz      short loc_140331346
                cmp     [rax+10h], rsi
                jnz     short loc_140331377

loc_140331325:                          ; CODE XREF: FsRtlRemovePerFileObjectContext+146779↓j
                mov     rbx, rax

loc_140331328:                          ; CODE XREF: FsRtlRemovePerFileObjectContext+14679F↓j
                test    rbx, rbx
                jz      short loc_140331346
                mov     rax, [rbx]
                cmp     [rax+8], rbx
                jnz     short loc_14033137C
                mov     rcx, [rbx+8]
                cmp     [rcx], rbx
                jnz     short loc_14033137C
                mov     [rcx], rax
                mov     [rax+8], rcx

loc_140331346:                          ; CODE XREF: FsRtlRemovePerFileObjectContext+7D↑j
                                        ; FsRtlRemovePerFileObjectContext+8B↑j ...
                xor     edx, edx
                mov     rcx, rdi
                call    ExReleasePushLockEx
                mov     rcx, gs:188h
                call    sub_14021E1F0
                mov     rax, rbx

loc_140331361:                          ; CODE XREF: FsRtlRemovePerFileObjectContext+E5↓j
                mov     rbx, [rsp+28h+arg_8]
                mov     rbp, [rsp+28h+arg_10]
                mov     rsi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140331377:                          ; CODE XREF: FsRtlRemovePerFileObjectContext+83↑j
                mov     rax, [rax]
                jmp     short loc_14033131A
; ---------------------------------------------------------------------------

loc_14033137C:                          ; CODE XREF: FsRtlRemovePerFileObjectContext+94↑j
                                        ; FsRtlRemovePerFileObjectContext+9D↑j
                mov     ecx, 3
                int     29h             ; Win8: RtlFailFast(ecx)
; ---------------------------------------------------------------------------

loc_140331383:                          ; CODE XREF: FsRtlRemovePerFileObjectContext+22↑j
                                        ; FsRtlRemovePerFileObjectContext+3A↑j
                xor     eax, eax
                jmp     short loc_140331361
FsRtlRemovePerFileObjectContext endp
