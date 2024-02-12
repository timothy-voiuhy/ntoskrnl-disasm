MmProtectMdlSystemAddress proc near     ; DATA XREF: .pdata:00000001400F48FC↑o

var_140         = qword ptr -140h
var_130         = dword ptr -130h
var_12C         = word ptr -12Ch
var_128         = qword ptr -128h
var_120         = qword ptr -120h
var_118         = qword ptr -118h
var_110         = qword ptr -110h
var_100         = byte ptr -100h
var_F8          = dword ptr -0F8h
var_E8          = qword ptr -0E8h
var_40          = qword ptr -40h
arg_10          = qword ptr  20h

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-30h]
                sub     rsp, 130h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+60h+var_40], rax
                mov     ebx, edx
                mov     [rsp+160h+var_110], rcx
                mov     rdi, rcx
                xor     edx, edx
                lea     rcx, [rsp+160h+var_100]
                mov     r8d, 0B8h
                call    memset
                mov     esi, 1
                test    [rdi+0Ah], sil
                jnz     short loc_1405323DB
                mov     eax, 0C0000019h
                jmp     loc_140532937
; ---------------------------------------------------------------------------

loc_1405323DB:                          ; CODE XREF: MmProtectMdlSystemAddress+4F↑j
                mov     r15, [rdi+18h]
                mov     rcx, r15
                call    sub_140260090
                test    eax, eax
                jz      short loc_1405323F5
                mov     eax, 0C00000BBh
                jmp     loc_140532937
; ---------------------------------------------------------------------------

loc_1405323F5:                          ; CODE XREF: MmProtectMdlSystemAddress+69↑j
                mov     ecx, ebx
                call    sub_1402320B0
                mov     r12d, eax
                cmp     eax, 0FFFFFFFFh
                jz      loc_140532932
                mov     edx, eax
                shr     edx, 3
                lea     ecx, [rdx-1]
                cmp     ecx, esi
                jbe     loc_140532932
                cmp     edx, 3
                jnz     short loc_140532427
                test    r12b, 7
                jnz     loc_140532932

loc_140532427:                          ; CODE XREF: MmProtectMdlSystemAddress+9B↑j
                and     eax, 5
                cmp     al, 5
                jz      loc_140532932
                mov     rsi, r15
                mov     rax, 7FFFFFFFF8h
                shr     rsi, 9
                and     rsi, rax
                mov     rax, 0FFFFF68000000000h
                mov     r13d, [rdi+28h]
                mov     rcx, r15
                and     [rsp+160h+var_E8], 0
                add     r13, 0FFFh
                and     r15, 0FFFFFFFFFFFFF000h
                mov     [rsp+160h+var_F8], 14h
                and     ecx, 0FFFh
                mov     [rsp+160h+var_120], r15
                add     r13, rcx
                xor     edi, edi
                shr     r13, 0Ch
                add     rsi, rax
                mov     [rsp+160h+var_118], r13
                mov     r14, r15
                mov     [rsp+160h+var_130], edi
                test    r13, r13
                jz      loc_1405326C9
                mov     r13, 0FFFFFFFFFh

loc_1405324A9:                          ; CODE XREF: MmProtectMdlSystemAddress+343↓j
                mov     rcx, rsi
                call    sub_1402805F0
                mov     r11d, 1
                mov     [rsp+160h+var_128], rax
                mov     rbx, rax
                test    r11b, al
                jz      loc_140532593
                lea     rcx, [rsp+160h+var_128]
                mov     r13d, r11d
                call    sub_1402433C0
                mov     r10d, r13d
                test    eax, eax
                jz      short loc_140532556
                test    cs:dword_140CFC400, 0C00000h
                jz      short loc_140532556
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                cmp     [rcx+390h], r10b
                jz      short loc_140532556
                mov     rdx, rbx
                test    bl, 20h
                jz      short loc_14053250E
                test    bl, 42h
                jnz     short loc_140532556

loc_14053250E:                          ; CODE XREF: MmProtectMdlSystemAddress+187↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                mov     r8, [rcx+788h]
                test    r8, r8
                jnz     short loc_140532531
                mov     rbx, [rsp+160h+var_128]
                jmp     short loc_140532556
; ---------------------------------------------------------------------------

loc_140532531:                          ; CODE XREF: MmProtectMdlSystemAddress+1A8↑j
                lea     rax, [rsp+160h+var_128]
                shr     rax, 3
                and     eax, 1FFh
                mov     rax, [r8+rax*8]
                test    al, 20h
                jz      short loc_14053254E
                mov     rbx, rdx
                or      rbx, 20h

loc_14053254E:                          ; CODE XREF: MmProtectMdlSystemAddress+1C5↑j
                test    al, 42h
                jz      short loc_140532556
                or      rbx, 42h

loc_140532556:                          ; CODE XREF: MmProtectMdlSystemAddress+15A↑j
                                        ; MmProtectMdlSystemAddress+166↑j ...
                mov     rax, 0FFFFFFFFFh
                shr     rbx, 0Ch
                xor     r9d, r9d
                lea     rcx, [rsp+160h+var_100]
                mov     r8, r10
                mov     rdx, r14
                and     rbx, rax
                call    sub_1402882E0
                cmp     r14, r15
                jnz     short loc_1405325ED
                mov     rcx, r15
                call    sub_140260000
                mov     r8d, eax
                mov     [rsp+160h+var_130], eax
                mov     r11, r13
                jmp     short loc_1405325F5
; ---------------------------------------------------------------------------

loc_140532593:                          ; CODE XREF: MmProtectMdlSystemAddress+142↑j
                bt      rbx, 0Bh
                jnb     loc_140532915
                shr     rax, 5
                and     eax, 1Fh
                cmp     al, 18h
                jnz     loc_140532915
                mov     rcx, cs:qword_140C4DDC0
                mov     rax, rbx
                test    rcx, rcx
                jz      short loc_1405325CF
                test    al, 10h
                jnz     short loc_1405325CB
                mov     rbx, rcx
                not     rbx
                and     rbx, rax
                jmp     short loc_1405325CF
; ---------------------------------------------------------------------------

loc_1405325CB:                          ; CODE XREF: MmProtectMdlSystemAddress+23E↑j
                and     rbx, 0FFFFFFFFFFFFFFEFh

loc_1405325CF:                          ; CODE XREF: MmProtectMdlSystemAddress+23A↑j
                                        ; MmProtectMdlSystemAddress+249↑j
                shr     rbx, 0Ch
                and     rbx, r13
                xor     r13d, r13d
                cmp     r14, r15
                jnz     short loc_1405325F0
                test    al, 8
                cmovnz  edi, r11d
                mov     [rsp+160h+var_130], edi
                mov     r8d, edi
                jmp     short loc_1405325F5
; ---------------------------------------------------------------------------

loc_1405325ED:                          ; CODE XREF: MmProtectMdlSystemAddress+1FD↑j
                mov     r11, r13

loc_1405325F0:                          ; CODE XREF: MmProtectMdlSystemAddress+25C↑j
                mov     r8d, [rsp+160h+var_130]

loc_1405325F5:                          ; CODE XREF: MmProtectMdlSystemAddress+211↑j
                                        ; MmProtectMdlSystemAddress+26B↑j
                cmp     r12d, 18h
                jnz     loc_1405326DA
                mov     edx, r12d
                mov     rcx, rbx
                call    sub_1402810E0
                mov     [rsp+160h+var_128], rax
                mov     rdi, rax
                cmp     r8d, r11d
                jnz     short loc_140532625
                cmp     r14, r15
                jnz     short loc_140532625
                or      rdi, 8
                mov     [rsp+160h+var_128], rdi

loc_140532625:                          ; CODE XREF: MmProtectMdlSystemAddress+295↑j
                                        ; MmProtectMdlSystemAddress+29A↑j
                mov     rcx, rsi
                xor     r14d, r14d
                mov     rbx, rdi
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_140532682
                call    sub_140349680
                lea     r13d, [r14+1]
                test    eax, eax
                jz      short loc_140532664
                cmp     byte ptr cs:word_140C4DE88+1, 0
                mov     r14d, r13d
                jnz     short loc_140532688

loc_140532650:                          ; CODE XREF: MmProtectMdlSystemAddress+300↓j
                test    r13b, dil
                jz      short loc_140532688
                mov     rax, 8000000000000000h
                or      rbx, rax
                jmp     short loc_140532688
; ---------------------------------------------------------------------------

loc_140532664:                          ; CODE XREF: MmProtectMdlSystemAddress+2C2↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_140532688
                jmp     short loc_140532650
; ---------------------------------------------------------------------------

loc_140532682:                          ; CODE XREF: MmProtectMdlSystemAddress+2B5↑j
                mov     r13d, 1

loc_140532688:                          ; CODE XREF: MmProtectMdlSystemAddress+2CE↑j
                                        ; MmProtectMdlSystemAddress+2D3↑j ...
                mov     [rsi], rbx
                test    r14d, r14d
                jz      short loc_14053269B
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_140349620

loc_14053269B:                          ; CODE XREF: MmProtectMdlSystemAddress+30E↑j
                mov     edi, [rsp+160h+var_130]

loc_14053269F:                          ; CODE XREF: MmProtectMdlSystemAddress+556↓j
                mov     r14, [rsp+160h+var_120]

loc_1405326A4:                          ; CODE XREF: MmProtectMdlSystemAddress+564↓j
                                        ; MmProtectMdlSystemAddress+572↓j
                add     r14, 1000h
                add     rsi, 8
                sub     [rsp+160h+var_118], r13
                mov     r13, 0FFFFFFFFFh
                mov     [rsp+160h+var_120], r14
                jnz     loc_1405324A9

loc_1405326C9:                          ; CODE XREF: MmProtectMdlSystemAddress+119↑j
                lea     rcx, [rsp+160h+var_100]
                call    sub_14028EDB0
                xor     eax, eax
                jmp     loc_140532937
; ---------------------------------------------------------------------------

loc_1405326DA:                          ; CODE XREF: MmProtectMdlSystemAddress+279↑j
                lea     rcx, [rbx+rbx*2]
                add     rcx, rcx
                mov     rax, 0FFFFFA8000000028h
                mov     rax, [rax+rcx*8]
                mov     rdx, 4000000000000h
                test    rdx, rax
                jz      short loc_140532719
                mov     rax, 0FFFFFA8000000000h
                lea     rdx, [rax+rcx*8]
                mov     ecx, r12d
                call    sub_1402994FC
                jmp     loc_140532826
; ---------------------------------------------------------------------------

loc_140532719:                          ; CODE XREF: MmProtectMdlSystemAddress+37C↑j
                mov     rdi, cr8
                mov     r10d, 2
                mov     cr8, r10
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jz      short loc_140532768
                test    r11b, al
                jz      short loc_140532768
                cmp     dil, 0Fh
                ja      short loc_140532768
                mov     rax, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, dil
                add     ecx, r11d
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 4
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d

loc_140532768:                          ; CODE XREF: MmProtectMdlSystemAddress+3AF↑j
                                        ; MmProtectMdlSystemAddress+3B4↑j ...
                mov     rdx, r11
                mov     rcx, rbx
                call    sub_1402E81F0
                mov     ecx, cs:dword_140CFC660
                mov     r14, rax
                test    ecx, ecx
                jz      short loc_1405327D1
                test    r11b, cl
                jz      short loc_1405327D1
                mov     rcx, cr8
                cmp     cl, 0Fh
                ja      short loc_1405327D1
                cmp     dil, 0Fh
                ja      short loc_1405327D1
                cmp     cl, r10b
                jb      short loc_1405327D1
                mov     r10, gs:20h
                or      rdx, 0FFFFFFFFFFFFFFFFh
                movzx   ecx, dil
                add     ecx, r11d
                shl     rdx, cl
                mov     r9, [r10+84B8h]
                movzx   eax, dx
                not     eax
                mov     r8d, [r9+14h]
                and     r8d, eax
                mov     [r9+14h], r8d
                jnz     short loc_1405327D1
                mov     rcx, r10
                call    sub_1403F2EC4

loc_1405327D1:                          ; CODE XREF: MmProtectMdlSystemAddress+3FE↑j
                                        ; MmProtectMdlSystemAddress+403↑j ...
                movzx   eax, dil
                mov     cr8, rax
                test    r14, r14
                jz      short loc_1405327E4
                mov     ecx, [r14+28h]
                jmp     short loc_14053280F
; ---------------------------------------------------------------------------

loc_1405327E4:                          ; CODE XREF: MmProtectMdlSystemAddress+45C↑j
                mov     rcx, rbx
                call    sub_1402E972C
                test    rax, rax
                jz      loc_1405328F7
                mov     rcx, rbx
                sub     rcx, [rax+28h]
                mov     rax, [rax+30h]
                movzx   eax, word ptr [rax+rcx*2]
                movzx   ecx, ax
                shr     ecx, 0Eh
                mov     [rsp+160h+var_12C], ax

loc_14053280F:                          ; CODE XREF: MmProtectMdlSystemAddress+462↑j
                mov     eax, r12d
                and     eax, 7
                test    ecx, ecx
                jz      short loc_140532823
                cmp     ecx, 2
                jnz     short loc_140532826
                or      eax, 18h
                jmp     short loc_140532826
; ---------------------------------------------------------------------------

loc_140532823:                          ; CODE XREF: MmProtectMdlSystemAddress+497↑j
                or      eax, 8

loc_140532826:                          ; CODE XREF: MmProtectMdlSystemAddress+394↑j
                                        ; MmProtectMdlSystemAddress+49C↑j ...
                or      eax, 0A0000000h
                mov     rdx, rbx
                mov     r8d, eax
                mov     rcx, rsi
                call    sub_140280E60
                mov     r10d, 1
                mov     [rsp+160h+var_128], rax
                mov     rdi, rax
                mov     rcx, rsi
                cmp     r13d, r10d
                jnz     short loc_140532859
                mov     rdx, rax
                call    sub_1402A6830
                jmp     short loc_1405328C9
; ---------------------------------------------------------------------------

loc_140532859:                          ; CODE XREF: MmProtectMdlSystemAddress+4CD↑j
                xor     r14d, r14d
                mov     rbx, rdi
                call    sub_1402433C0
                test    eax, eax
                jz      short loc_1405328B6
                call    sub_140349680
                test    eax, eax
                jz      short loc_140532883
                cmp     byte ptr cs:word_140C4DE88+1, 0
                lea     eax, [r14+1]
                mov     r14d, eax
                jnz     short loc_1405328B6
                jmp     short loc_1405328A4
; ---------------------------------------------------------------------------

loc_140532883:                          ; CODE XREF: MmProtectMdlSystemAddress+4EF↑j
                mov     rax, gs:188h
                mov     rcx, [rax+0B8h]
                test    dword ptr [rcx+87Ch], 1000h
                jz      short loc_1405328B6
                mov     eax, 1

loc_1405328A4:                          ; CODE XREF: MmProtectMdlSystemAddress+501↑j
                test    al, dil
                jz      short loc_1405328B6
                mov     rax, 8000000000000000h
                or      rbx, rax

loc_1405328B6:                          ; CODE XREF: MmProtectMdlSystemAddress+4E6↑j
                                        ; MmProtectMdlSystemAddress+4FF↑j ...
                mov     [rsi], rbx
                test    r14d, r14d
                jz      short loc_1405328C9
                mov     rdx, rbx
                mov     rcx, rsi
                call    sub_140349620

loc_1405328C9:                          ; CODE XREF: MmProtectMdlSystemAddress+4D7↑j
                                        ; MmProtectMdlSystemAddress+53C↑j
                mov     edi, [rsp+160h+var_130]
                mov     r13d, 1
                cmp     edi, r13d
                jnz     loc_14053269F
                mov     r14, [rsp+160h+var_120]
                cmp     r14, r15
                jnz     loc_1405326A4
                mov     rcx, r15
                call    sub_1402E8264
                jmp     loc_1405326A4
; ---------------------------------------------------------------------------

loc_1405328F7:                          ; CODE XREF: MmProtectMdlSystemAddress+46F↑j
                and     [rsp+160h+var_140], 0
                mov     r9d, 1
                mov     r8, rbx
                mov     edx, 61949h
                lea     ecx, [r9+19h]
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140532915:                          ; CODE XREF: MmProtectMdlSystemAddress+218↑j
                                        ; MmProtectMdlSystemAddress+227↑j
                mov     r8, [rsp+160h+var_110]
                mov     r9, rsi
                mov     edx, 1235h
                mov     [rsp+160h+var_140], rbx
                mov     ecx, 1Ah
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140532932:                          ; CODE XREF: MmProtectMdlSystemAddress+82↑j
                                        ; MmProtectMdlSystemAddress+92↑j ...
                mov     eax, 0C0000045h

loc_140532937:                          ; CODE XREF: MmProtectMdlSystemAddress+56↑j
                                        ; MmProtectMdlSystemAddress+70↑j ...
                mov     rcx, [rbp+60h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+160h+arg_10]
                add     rsp, 130h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 140532380
MmProtectMdlSystemAddress endp
