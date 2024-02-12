IoSteerInterrupt proc near              ; DATA XREF: .pdata:000000014011CEF8↑o

var_18          = qword ptr -18h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rsi
                push    rdi
                sub     rsp, 30h
                mov     rbx, rcx
                mov     r9d, 0C0000001h
                mov     rax, cr8
                xor     esi, esi
                test    al, al
                jz      short loc_14089EAD4
                mov     rax, cr8
                movzx   r8d, al
                lea     edx, [rsi+1]
                xor     r9d, r9d
                mov     [r11-18h], rsi
                mov     ecx, 121h
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14089EAD4:                          ; CODE XREF: IoSteerInterrupt+25↑j
                test    rbx, rbx
                jz      loc_14089EDDC
                test    rdx, rdx
                jz      loc_14089EDDC
                cmp     [rcx], esi
                jz      short loc_14089EAF5

loc_14089EAEA:                          ; CODE XREF: IoSteerInterrupt+70↓j
                                        ; IoSteerInterrupt+7C↓j
                mov     r9d, 0C000000Dh
                jmp     loc_14089EBB6
; ---------------------------------------------------------------------------

loc_14089EAF5:                          ; CODE XREF: IoSteerInterrupt+58↑j
                mov     r10d, [rdx]
                mov     ebp, 2
                cmp     r10d, ebp
                jge     short loc_14089EAEA
                cmp     r10d, 1
                jnz     short loc_14089EB0E
                cmp     [rdx+10h], rsi
                jz      short loc_14089EAEA

loc_14089EB0E:                          ; CODE XREF: IoSteerInterrupt+76↑j
                mov     r8, [rcx+10h]
                test    r8, r8
                jz      loc_14089EDC6
                mov     rax, [r8+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_14089EBCF
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_14089EBCF
                mov     ecx, [rbx+8]
                sub     ecx, 1
                jz      short loc_14089EB79
                sub     ecx, 1
                jz      short loc_14089EB68
                sub     ecx, 1
                jz      short loc_14089EB5E
                cmp     ecx, 1
                jz      short loc_14089EB79
                mov     r9d, 0C00000BBh
                jmp     short loc_14089EBB6
; ---------------------------------------------------------------------------

loc_14089EB5E:                          ; CODE XREF: IoSteerInterrupt+BF↑j
                mov     rax, [rbx+18h]
                mov     rcx, [rax+18h]
                jmp     short loc_14089EB7D
; ---------------------------------------------------------------------------

loc_14089EB68:                          ; CODE XREF: IoSteerInterrupt+BA↑j
                mov     rax, [rbx+18h]
                mov     rcx, [rax+128h]
                add     rcx, 70h ; 'p'
                jmp     short loc_14089EB7D
; ---------------------------------------------------------------------------

loc_14089EB79:                          ; CODE XREF: IoSteerInterrupt+B5↑j
                                        ; IoSteerInterrupt+C4↑j
                mov     rcx, [rbx+18h]

loc_14089EB7D:                          ; CODE XREF: IoSteerInterrupt+D6↑j
                                        ; IoSteerInterrupt+E7↑j
                mov     r11, [rcx+180h]
                mov     eax, [rcx+58h]
                cmp     [r11+58h], eax
                jnz     loc_14089EDDC
                cmp     r10d, 1
                jnz     short loc_14089EBA1
                mov     r8, [rdx+10h]
                movzx   edx, word ptr [rdx+8]
                jmp     short loc_14089EBAB
; ---------------------------------------------------------------------------

loc_14089EBA1:                          ; CODE XREF: IoSteerInterrupt+105↑j
                test    r10d, r10d
                jnz     short loc_14089EBB6
                xor     edx, edx
                xor     r8d, r8d

loc_14089EBAB:                          ; CODE XREF: IoSteerInterrupt+10F↑j
                mov     rcx, r11
                call    sub_14052272C
                mov     r9d, eax

loc_14089EBB6:                          ; CODE XREF: IoSteerInterrupt+60↑j
                                        ; IoSteerInterrupt+CC↑j ...
                mov     rbx, [rsp+38h+arg_0]
                mov     eax, r9d
                mov     rbp, [rsp+38h+arg_8]
                mov     rsi, [rsp+38h+arg_10]
                add     rsp, 30h
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14089EBCF:                          ; CODE XREF: IoSteerInterrupt+99↑j
                                        ; IoSteerInterrupt+A9↑j
                test    r8, r8
                jz      loc_14089EDC6
                movzx   edx, word ptr [r8+2]
                mov     rcx, r8
                call    sub_1403CC478
                mov     r8, [rbx+10h]
                mov     rcx, [r8+8]
                test    rcx, rcx
                jz      short loc_14089EC2C
                movsx   edx, word ptr [rcx+2]
                call    sub_1403CC478
                mov     r8, [rbx+10h]
                mov     rcx, [r8+8]
                add     rcx, 38h ; '8'
                cmp     [rcx], si
                jz      short loc_14089EC2C
                mov     edx, ebp
                call    sub_1403CC478
                mov     rax, [rbx+10h]
                mov     rcx, [rax+8]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478
                mov     r8, [rbx+10h]

loc_14089EC2C:                          ; CODE XREF: IoSteerInterrupt+160↑j
                                        ; IoSteerInterrupt+17A↑j
                test    r8, r8
                jz      short loc_14089EC3E
                mov     rax, [r8+138h]
                mov     rcx, [rax+28h]
                jmp     short loc_14089EC41
; ---------------------------------------------------------------------------

loc_14089EC3E:                          ; CODE XREF: IoSteerInterrupt+19F↑j
                mov     rcx, rsi

loc_14089EC41:                          ; CODE XREF: IoSteerInterrupt+1AC↑j
                test    rcx, rcx
                jz      loc_14089EDC6
                test    r8, r8
                jz      short loc_14089EC5C
                mov     rax, [r8+138h]
                mov     rdi, [rax+28h]
                jmp     short loc_14089EC5F
; ---------------------------------------------------------------------------

loc_14089EC5C:                          ; CODE XREF: IoSteerInterrupt+1BD↑j
                mov     rdi, rsi

loc_14089EC5F:                          ; CODE XREF: IoSteerInterrupt+1CA↑j
                test    r8, r8
                jz      short loc_14089EC71
                mov     rax, [r8+138h]
                mov     rcx, [rax+28h]
                jmp     short loc_14089EC74
; ---------------------------------------------------------------------------

loc_14089EC71:                          ; CODE XREF: IoSteerInterrupt+1D2↑j
                mov     rcx, rsi

loc_14089EC74:                          ; CODE XREF: IoSteerInterrupt+1DF↑j
                mov     edx, 310h
                call    sub_1403CC478
                cmp     [rdi+28h], si
                jz      short loc_14089EC9C
                mov     edx, ebp
                lea     rcx, [rdi+28h]
                call    sub_1403CC478
                movzx   edx, word ptr [rdi+28h]
                mov     rcx, [rdi+30h]
                call    sub_1403CC478

loc_14089EC9C:                          ; CODE XREF: IoSteerInterrupt+1F2↑j
                mov     rcx, [rbx+10h]
                test    rcx, rcx
                jz      short loc_14089ECB2
                mov     rax, [rcx+138h]
                mov     rdx, [rax+28h]
                jmp     short loc_14089ECB5
; ---------------------------------------------------------------------------

loc_14089ECB2:                          ; CODE XREF: IoSteerInterrupt+213↑j
                mov     rdx, rsi

loc_14089ECB5:                          ; CODE XREF: IoSteerInterrupt+220↑j
                cmp     [rdx+38h], si
                jz      short loc_14089ED1A
                test    rcx, rcx
                jz      short loc_14089ECCD
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]
                jmp     short loc_14089ECD0
; ---------------------------------------------------------------------------

loc_14089ECCD:                          ; CODE XREF: IoSteerInterrupt+22E↑j
                mov     rcx, rsi

loc_14089ECD0:                          ; CODE XREF: IoSteerInterrupt+23B↑j
                add     rcx, 38h ; '8'
                mov     edx, ebp
                call    sub_1403CC478
                mov     rcx, [rbx+10h]
                test    rcx, rcx
                jz      short loc_14089ECF1
                mov     rax, [rcx+138h]
                mov     rdx, [rax+28h]
                jmp     short loc_14089ECF4
; ---------------------------------------------------------------------------

loc_14089ECF1:                          ; CODE XREF: IoSteerInterrupt+252↑j
                mov     rdx, rsi

loc_14089ECF4:                          ; CODE XREF: IoSteerInterrupt+25F↑j
                test    rcx, rcx
                jz      short loc_14089ED06
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]
                jmp     short loc_14089ED09
; ---------------------------------------------------------------------------

loc_14089ED06:                          ; CODE XREF: IoSteerInterrupt+267↑j
                mov     rcx, rsi

loc_14089ED09:                          ; CODE XREF: IoSteerInterrupt+274↑j
                movzx   edx, word ptr [rdx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478
                mov     rcx, [rbx+10h]

loc_14089ED1A:                          ; CODE XREF: IoSteerInterrupt+229↑j
                test    rcx, rcx
                jz      short loc_14089ED2C
                mov     rax, [rcx+138h]
                mov     rdx, [rax+28h]
                jmp     short loc_14089ED2F
; ---------------------------------------------------------------------------

loc_14089ED2C:                          ; CODE XREF: IoSteerInterrupt+28D↑j
                mov     rdx, rsi

loc_14089ED2F:                          ; CODE XREF: IoSteerInterrupt+29A↑j
                mov     r8, rcx
                cmp     [rdx+10h], rsi
                jz      loc_14089EDC6
                test    rcx, rcx
                jz      short loc_14089ED4E
                mov     rax, [rcx+138h]
                mov     rax, [rax+28h]
                jmp     short loc_14089ED51
; ---------------------------------------------------------------------------

loc_14089ED4E:                          ; CODE XREF: IoSteerInterrupt+2AF↑j
                mov     rax, rsi

loc_14089ED51:                          ; CODE XREF: IoSteerInterrupt+2BC↑j
                mov     rax, [rax+10h]
                cmp     [rax+38h], si
                jz      short loc_14089EDC6
                test    rcx, rcx
                jz      short loc_14089ED6D
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]
                jmp     short loc_14089ED70
; ---------------------------------------------------------------------------

loc_14089ED6D:                          ; CODE XREF: IoSteerInterrupt+2CE↑j
                mov     rcx, rsi

loc_14089ED70:                          ; CODE XREF: IoSteerInterrupt+2DB↑j
                mov     rcx, [rcx+10h]
                mov     edx, ebp
                add     rcx, 38h ; '8'
                call    sub_1403CC478
                mov     rcx, [rbx+10h]
                test    rcx, rcx
                jz      short loc_14089ED95
                mov     rax, [rcx+138h]
                mov     rdx, [rax+28h]
                jmp     short loc_14089ED98
; ---------------------------------------------------------------------------

loc_14089ED95:                          ; CODE XREF: IoSteerInterrupt+2F6↑j
                mov     rdx, rsi

loc_14089ED98:                          ; CODE XREF: IoSteerInterrupt+303↑j
                test    rcx, rcx
                jz      short loc_14089EDAA
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]
                jmp     short loc_14089EDAD
; ---------------------------------------------------------------------------

loc_14089EDAA:                          ; CODE XREF: IoSteerInterrupt+30B↑j
                mov     rcx, rsi

loc_14089EDAD:                          ; CODE XREF: IoSteerInterrupt+318↑j
                mov     rax, [rdx+10h]
                mov     rcx, [rcx+10h]
                movzx   edx, word ptr [rax+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478
                mov     r8, [rbx+10h]

loc_14089EDC6:                          ; CODE XREF: IoSteerInterrupt+85↑j
                                        ; IoSteerInterrupt+142↑j ...
                xor     r9d, r9d
                mov     [rsp+38h+var_18], rsi
                mov     rdx, rbp
                mov     ecx, 0CAh
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_14089EDDC:                          ; CODE XREF: IoSteerInterrupt+47↑j
                                        ; IoSteerInterrupt+50↑j ...
                mov     ecx, 5
                int     29h             ; Win8: RtlFailFast(ecx)
IoSteerInterrupt endp
