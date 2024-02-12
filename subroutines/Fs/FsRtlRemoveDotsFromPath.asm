FsRtlRemoveDotsFromPath proc near       ; CODE XREF: sub_140896930+176↓p
                                        ; DATA XREF: .rdata:000000014009170C↑o ...

arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140840CF0 SIZE 00000119 BYTES

                mov     [rsp+arg_0], rbx
                mov     [rsp+arg_8], rbp
                mov     [rsp+arg_10], rsi
                mov     [rsp+arg_18], rdi
                push    r14
                xor     ebp, ebp
                movzx   r10d, dx
                shr     r10w, 1
                mov     rsi, r8
                mov     rdi, rcx
                movzx   r9d, bp
                cmp     r10w, 3
                jz      loc_140840CF0
                cmp     r10w, 2
                jz      loc_140840D1A
                jbe     short loc_14075C2CC

loc_14075C2C2:                          ; CODE XREF: FsRtlRemoveDotsFromPath+E4A74↓j
                                        ; FsRtlRemoveDotsFromPath+E4A7F↓j ...
                cmp     word ptr [rcx], 2Eh ; '.'
                jz      loc_140840D30

loc_14075C2CC:                          ; CODE XREF: FsRtlRemoveDotsFromPath+40↑j
                                        ; FsRtlRemoveDotsFromPath+E4A9E↓j ...
                movzx   eax, bp
                cmp     bp, r10w
                jnb     short loc_14075C322
                mov     r14d, 2Eh ; '.'
                nop     dword ptr [rax+rax+00h]

loc_14075C2E0:                          ; CODE XREF: FsRtlRemoveDotsFromPath+A0↓j
                test    ax, ax
                jz      short loc_14075C363
                movzx   r11d, r10w
                movzx   edx, ax
                lea     r8d, [r11-1]
                cmp     edx, r8d
                jge     short loc_14075C2FF
                movzx   ecx, ax
                cmp     word ptr [rdi+rcx*2], 5Ch ; '\'
                jz      short loc_14075C356

loc_14075C2FF:                          ; CODE XREF: FsRtlRemoveDotsFromPath+73↑j
                                        ; FsRtlRemoveDotsFromPath+DF↓j
                movzx   ecx, ax
                cmp     [rdi+rcx*2], r14w
                jz      short loc_14075C368

loc_14075C309:                          ; CODE XREF: FsRtlRemoveDotsFromPath+E6↓j
                movzx   ecx, word ptr [rdi+rcx*2]
                movsx   rdx, r9w
                mov     [rdi+rdx*2], cx

loc_14075C315:                          ; CODE XREF: FsRtlRemoveDotsFromPath+113↓j
                inc     r9w

loc_14075C319:                          ; CODE XREF: FsRtlRemoveDotsFromPath+E1↓j
                                        ; FsRtlRemoveDotsFromPath+E4AD8↓j ...
                inc     ax
                cmp     ax, r10w
                jb      short loc_14075C2E0

loc_14075C322:                          ; CODE XREF: FsRtlRemoveDotsFromPath+53↑j
                movzx   eax, r9w
                movzx   ecx, r10w
                add     ax, ax
                mov     [rsi], ax
                movsx   eax, r9w
                cmp     eax, ecx
                jl      loc_140840DEE

loc_14075C33C:                          ; CODE XREF: FsRtlRemoveDotsFromPath+E4B84↓j
                xor     eax, eax

loc_14075C33E:                          ; CODE XREF: FsRtlRemoveDotsFromPath+E4A95↓j
                mov     rbx, [rsp+8+arg_0]
                mov     rbp, [rsp+8+arg_8]
                mov     rsi, [rsp+8+arg_10]
                mov     rdi, [rsp+8+arg_18]
                pop     r14
                retn
; ---------------------------------------------------------------------------
                align 2

loc_14075C356:                          ; CODE XREF: FsRtlRemoveDotsFromPath+7D↑j
                movsxd  rcx, edx
                cmp     word ptr [rdi+rcx*2+2], 5Ch ; '\'
                jnz     short loc_14075C2FF
                jmp     short loc_14075C319
; ---------------------------------------------------------------------------

loc_14075C363:                          ; CODE XREF: FsRtlRemoveDotsFromPath+63↑j
                movzx   ecx, ax
                jmp     short loc_14075C309
; ---------------------------------------------------------------------------

loc_14075C368:                          ; CODE XREF: FsRtlRemoveDotsFromPath+87↑j
                cmp     edx, r8d
                jz      loc_140840D47
                movzx   ecx, word ptr [rdi+rdx*2+2]
                cmp     cx, 5Ch ; '\'
                jz      loc_140840D67
                cmp     cx, r14w
                jz      loc_140840D7B

loc_14075C38A:                          ; CODE XREF: FsRtlRemoveDotsFromPath+E4ACD↓j
                                        ; FsRtlRemoveDotsFromPath+E4AED↓j ...
                movsx   rcx, r9w
                mov     [rdi+rcx*2], r14w
                jmp     short loc_14075C315
FsRtlRemoveDotsFromPath endp
