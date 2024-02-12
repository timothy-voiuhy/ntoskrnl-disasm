; Segment type: Pure code
; Segment permissions: Read/Execute
RT              segment para public 'CODE' use64
                assume cs:RT
                ;org 18011C000h
                assume es:nothing, ss:nothing, ds:_data, fs:nothing, gs:nothing
                db 10h dup(0CCh)
; Exported entry 735. RtlAllocateMemoryBlockLookaside

; =============== S U B R O U T I N E =======================================


                public RtlAllocateMemoryBlockLookaside
RtlAllocateMemoryBlockLookaside proc near
                                        ; CODE XREF: sub_18010974C+15B↑p
                                        ; sub_18010AC18+10C↑p ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000018011C1AC SIZE 0000004D BYTES

                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r14
                sub     rsp, 20h
                mov     r14, r8
                mov     rdi, rdx
                mov     rsi, rcx
                cmp     rdx, [rcx+20h]
                ja      loc_18011C1AC
                mov     rax, [rcx+18h]
                lea     rbx, [rcx+30h]
                jmp     short loc_18011C049
; ---------------------------------------------------------------------------

loc_18011C042:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+3C↓j
                add     rbx, 20h ; ' '
                add     rax, rax

loc_18011C049:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+30↑j
                cmp     rax, rdi
                jb      short loc_18011C042
                mov     rcx, rbx        ; ListHead
                call    RtlInterlockedPopEntrySList
                mov     rcx, rax
                test    rax, rax
                jz      short loc_18011C0AD
                test    cl, 7
                jnz     loc_18011C1B6
                cmp     [rax+20h], rbx
                jnz     loc_18011C1B6
                mov     rax, [rbx+10h]
                cmp     [rcx+10h], rax
                jnz     loc_18011C1B6

loc_18011C07F:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+1B0↓j
                mov     [rsp+28h+arg_0], rcx
                test    rcx, rcx
                jz      short loc_18011C0B3

loc_18011C089:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+D6↓j
                mov     [rcx+18h], rdi
                lea     rax, [rcx+30h]

loc_18011C091:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+1E4↓j
                mov     [r14], rax
                xor     eax, eax

loc_18011C096:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+107↓j
                                        ; RtlAllocateMemoryBlockLookaside+1A1↓j
                mov     rbx, [rsp+28h+arg_8]
                mov     rsi, [rsp+28h+arg_10]
                mov     rdi, [rsp+28h+arg_18]
                add     rsp, 20h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_18011C0AD:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+4C↑j
                and     [rsp+28h+arg_0], 0

loc_18011C0B3:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+77↑j
                mov     rdx, [rbx+10h]
                lea     r8, [rsp+28h+arg_0]
                mov     rcx, [rsi+10h]
                add     rdx, 40h ; '@'
                call    RtlAllocateMemoryZone
                test    eax, eax
                js      short loc_18011C0E8
                mov     rcx, [rsp+28h+arg_0]
                add     rcx, 0Fh
                and     rcx, 0FFFFFFFFFFFFFFF0h
                mov     [rcx+20h], rbx
                mov     rax, [rbx+10h]
                mov     [rcx+10h], rax
                jmp     short loc_18011C089
; ---------------------------------------------------------------------------

loc_18011C0E8:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+BB↑j
                mov     eax, [rsi+28h]
                add     rsi, 30h ; '0'
                shl     rax, 5
                add     rsi, rax

loc_18011C0F6:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+100↓j
                cmp     rbx, rsi
                jnb     short loc_18011C112
                mov     rcx, rbx        ; ListHead
                call    RtlInterlockedPopEntrySList
                test    rax, rax
                jnz     loc_18011C1C5

loc_18011C10C:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+1D6↓j
                add     rbx, 20h ; ' '
                jmp     short loc_18011C0F6
; ---------------------------------------------------------------------------

loc_18011C112:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+E9↑j
                mov     eax, 0C000009Ah
                jmp     loc_18011C096
RtlAllocateMemoryBlockLookaside endp

; ---------------------------------------------------------------------------
byte_18011C11C  db 14h dup(0CCh)        ; DATA XREF: .rdata:000000018014B7C0↓o
                                        ; .pdata:00000001801804CC↓o
; Exported entry 736. RtlAllocateMemoryZone

; =============== S U B R O U T I N E =======================================


                public RtlAllocateMemoryZone
RtlAllocateMemoryZone proc near         ; CODE XREF: RtlCreateMemoryBlockLookaside+103↑p
                                        ; sub_18010974C+BE↑p ...
                and     qword ptr [r8], 0
                mov     r10, r8
                test    rdx, rdx
                jz      short loc_18011C17F
                lea     r9, [rdx+7]
                mov     rdx, [rcx+30h]
                and     r9, 0FFFFFFFFFFFFFFF8h

loc_18011C148:                          ; CODE XREF: RtlAllocateMemoryZone+46↓j
                test    rdx, rdx
                jz      short loc_18011C178

loc_18011C14D:                          ; CODE XREF: RtlAllocateMemoryZone+3A↓j
                mov     r8, [rdx+10h]
                mov     rax, [rdx+18h]
                sub     rax, r8
                cmp     r9, rax
                ja      short loc_18011C173
                lea     rcx, [r8+r9]
                mov     rax, r8
                lock cmpxchg [rdx+10h], rcx
                jnz     short loc_18011C14D
                mov     [r10], r8
                xor     eax, eax
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_18011C173:                          ; CODE XREF: RtlAllocateMemoryZone+2B↑j
                mov     rdx, [rdx]
                jmp     short loc_18011C148
; ---------------------------------------------------------------------------

loc_18011C178:                          ; CODE XREF: RtlAllocateMemoryZone+1B↑j
                mov     eax, 0C000009Ah
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_18011C17F:                          ; CODE XREF: RtlAllocateMemoryZone+A↑j
                mov     eax, 0C000000Dh
                retn
RtlAllocateMemoryZone endp

; ---------------------------------------------------------------------------
                align 10h
; Exported entry 1026. RtlFreeMemoryBlockLookaside

; =============== S U B R O U T I N E =======================================


                public RtlFreeMemoryBlockLookaside
RtlFreeMemoryBlockLookaside proc near   ; DATA XREF: .rdata:000000018011DDA0↓o
                                        ; .rdata:0000000180121490↓o ...
                sub     rsp, 28h
                lea     rcx, [rdx-30h]
                mov     rdx, rcx        ; ListEntry
                mov     rcx, [rcx+20h]  ; ListHead
                call    RtlInterlockedPushEntrySList_0
                xor     eax, eax
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                align 4
RtlFreeMemoryBlockLookaside endp

; START OF FUNCTION CHUNK FOR RtlAllocateMemoryBlockLookaside

loc_18011C1AC:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+22↑j
                                        ; DATA XREF: .pdata:00000001801804D8↓o ...
                mov     eax, 0C000000Dh
                jmp     loc_18011C096
; ---------------------------------------------------------------------------

loc_18011C1B6:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+51↑j
                                        ; RtlAllocateMemoryBlockLookaside+5B↑j ...
                mov     rcx, rbx        ; ListHead
                call    RtlInitializeSListHead
                xor     ecx, ecx
                jmp     loc_18011C07F
; ---------------------------------------------------------------------------

loc_18011C1C5:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+F6↑j
                test    al, 7
                jnz     short loc_18011C1D9
                cmp     [rax+20h], rbx
                jnz     short loc_18011C1D9
                mov     rcx, [rbx+10h]
                cmp     [rax+10h], rcx
                jz      short loc_18011C1E3

loc_18011C1D9:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+1B7↑j
                                        ; RtlAllocateMemoryBlockLookaside+1BD↑j
                mov     rcx, rbx        ; ListHead
                call    RtlInitializeSListHead
                xor     eax, eax

loc_18011C1E3:                          ; CODE XREF: RtlAllocateMemoryBlockLookaside+1C7↑j
                test    rax, rax
                jz      loc_18011C10C
                mov     [rax+18h], rdi
                add     rax, 30h ; '0'
                jmp     loc_18011C091
; END OF FUNCTION CHUNK FOR RtlAllocateMemoryBlockLookaside
; ---------------------------------------------------------------------------
algn_18011C1F9:                         ; DATA XREF: .pdata:00000001801804E4↓o
                align 20h
                dq 1C0h dup(?)
RT              ends
