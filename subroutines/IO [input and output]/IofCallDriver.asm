IofCallDriver   proc near               ; CODE XREF: sub_14024CA90:loc_14024CABF↓p
                                        ; sub_1402A2250+1D2↓p ...

var_18          = qword ptr -18h

; FUNCTION CHUNK AT 000000014042CDD6 SIZE 00000039 BYTES

                sub     rsp, 38h
                mov     eax, cs:dword_140CFC664
                mov     r9, rcx
                test    eax, eax
                jnz     loc_14042CDEF
                dec     byte ptr [rdx+43h]
                movzx   eax, byte ptr [rdx+43h]
                test    al, al
                jle     loc_14042CDD6
                mov     rax, [rdx+0B8h]
                sub     rax, 48h ; 'H'
                mov     [rdx+0B8h], rax
                movzx   r8d, byte ptr [rax]
                mov     [rax+28h], rcx
                cmp     r8b, 16h
                jz      short loc_140235CFB

loc_140235CE4:                          ; CODE XREF: IofCallDriver+63↓j
                mov     rcx, [rcx+8]
                mov     rax, [rcx+r8*8+70h]
                mov     rcx, r9
                call    sub_1404079D0

loc_140235CF5:                          ; CODE XREF: IofCallDriver+1F715A↓j
                                        ; IofCallDriver+1F716A↓j
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140235CFB:                          ; CODE XREF: IofCallDriver+42↑j
                movzx   eax, byte ptr [rax+1]
                sub     al, 2
                cmp     al, 1
                ja      short loc_140235CE4
                mov     rcx, rdx
                call    sub_140398614
                add     rsp, 38h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IofCallDriver   endp

algn_140235D13:                         ; DATA XREF: .rdata:0000000140054B4C↑o
                                        ; .pdata:00000001400CB694↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140235D20   proc near               ; CODE XREF: NtSetInformationFile+4EF↑p
                                        ; sub_140235BA0+18↑p ...

; FUNCTION CHUNK AT 000000014042CE10 SIZE 0000001B BYTES

                sub     rsp, 28h
                mov     eax, cs:dword_140CFC624
                test    eax, eax
                jnz     loc_14042CE10
                call    sub_140235D50

loc_140235D37:                          ; CODE XREF: sub_140235D20+1F70FB↓j
                                        ; sub_140235D20+1F7106↓j
                add     rsp, 28h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
sub_140235D20   endp

byte_140235D3D  db 13h dup(0CCh)        ; DATA XREF: .rdata:0000000140054B68↑o
                                        ; .pdata:00000001400CB6A0↑o

; =============== S U B R O U T I N E =======================================


sub_140235D50   proc near               ; CODE XREF: sub_140235D20+12↑p
                                        ; IoAllocateIrp+1E↓p ...

var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = byte ptr  10h
arg_10          = qword ptr  18h

; FUNCTION CHUNK AT 000000014042CE2C SIZE 00000032 BYTES

                mov     [rsp+arg_10], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                xor     r13b, r13b
                movzx   r15d, r8b
                movzx   esi, dl
                test    rcx, rcx
                jz      short loc_140235D89
                cmp     rcx, 0FFFFFFFFFFFFFFFFh
                jz      short loc_140235D82
                test    dword ptr [rcx+30h], 8000000h
                jz      short loc_140235D89

loc_140235D82:                          ; CODE XREF: sub_140235D50+27↑j
                add     sil, 2
                mov     r13b, 1

loc_140235D89:                          ; CODE XREF: sub_140235D50+21↑j
                                        ; sub_140235D50+30↑j
                mov     rdi, gs:20h
                mov     eax, cs:dword_140C45910
                test    al, 3
                setnz   cl
                test    al, 4
                setnz   al
                test    al, cl
                jz      short loc_140235DE1
                cmp     sil, 14h
                jge     short loc_140235DE1
                movsx   rax, sil
                lea     rcx, [rdi+rax*4]
                inc     dword ptr [rcx+87C0h]
                inc     dword ptr [rdi+8810h]
                mov     ecx, [rcx+87C0h]
                mov     eax, [rdi+rax*4+8814h]
                sub     ecx, eax
                cmp     ecx, cs:dword_140C45B84
                mov     edx, [rdi+8810h]
                ja      loc_140235F8D

loc_140235DE1:                          ; CODE XREF: sub_140235D50+54↑j
                                        ; sub_140235D50+5A↑j ...
                movsx   ecx, byte ptr cs:dword_140C457B8
                xor     ebx, ebx
                movsx   r12, sil
                mov     edx, 0D0h
                movzx   eax, r12w
                mov     [rsp+68h+arg_8], bl
                shl     ax, 3
                mov     [rsp+68h+arg_0], r12
                lea     r14d, [rax+r12]
                movsx   eax, byte ptr cs:dword_140C457BC
                shl     r14w, 3
                add     r14w, dx
                movzx   ebp, r14w
                cmp     sil, cl
                jg      loc_140235EAC
                test    r15b, r15b
                jnz     loc_140235FF3

loc_140235E2E:                          ; CODE XREF: sub_140235D50+2A9↓j
                mov     [rsp+68h+arg_8], 4
                cmp     sil, 1
                jz      loc_140236018
                cmp     sil, al
                jle     loc_140235FD9
                movzx   eax, cx
                mov     ebx, 20h ; ' '
                shl     ax, 3
                mov     r12d, 820h
                lea     ebp, [rax+rcx]

loc_140235E5B:                          ; CODE XREF: sub_140235D50+29E↓j
                shl     bp, 3
                add     bp, dx

loc_140235E62:                          ; CODE XREF: sub_140235D50+2CE↓j
                mov     r12, [r12+rdi]
                mov     rcx, r12
                mov     [rsp+68h+var_48], rbx
                inc     dword ptr [r12+14h]
                call    ExpInterlockedPopEntrySList
                mov     rbx, rax
                test    rax, rax
                jz      loc_140236023

loc_140235E84:                          ; CODE XREF: sub_140235D50+2F8↓j
                                        ; sub_140235D50+303↓j
                mov     eax, cs:dword_140C45910
                test    al, 3
                jz      short loc_140235EA7
                test    rbx, rbx
                jz      short loc_140235EA7
                mov     rcx, [rbx+38h]
                movzx   eax, r14w
                cmp     rcx, rax
                jb      loc_140236058
                movzx   ebp, cx

loc_140235EA7:                          ; CODE XREF: sub_140235D50+13C↑j
                                        ; sub_140235D50+141↑j
                mov     r12, [rsp+68h+arg_0]

loc_140235EAC:                          ; CODE XREF: sub_140235D50+CF↑j
                                        ; sub_140235D50+2AF↓j
                xor     r14b, r14b
                test    rbx, rbx
                jz      loc_140236067
                test    r15b, r15b
                jnz     loc_140236004

loc_140235EC1:                          ; CODE XREF: sub_140235D50+2BD↓j
                                        ; sub_140235D50+1F70E6↓j
                xor     r15b, r15b

loc_140235EC4:                          ; CODE XREF: sub_140235D50+33F↓j
                movzx   r8d, bp
                xor     edx, edx
                mov     rcx, rbx
                call    memset
                or      r14b, [rsp+68h+arg_8]
                mov     eax, 6
                mov     [rbx+42h], sil
                inc     sil
                mov     [rbx], ax
                mov     [rbx+43h], sil
                mov     [rbx+2], bp
                mov     rax, gs:188h
                movzx   ecx, byte ptr [rax+24Ah]
                lea     rax, [rbx+20h]
                mov     [rbx+46h], cl
                lea     rcx, ds:1Ah[r12*8]
                mov     [rax+8], rax
                add     rcx, r12
                mov     [rax], rax
                lea     rcx, [rbx+rcx*8]
                mov     [rbx+0B8h], rcx
                movzx   eax, word ptr [rdi+24h]
                mov     [rbx+4], ax
                mov     [rbx+47h], r14b
                test    r15b, r15b
                jnz     loc_1402360A0

loc_140235F37:                          ; CODE XREF: sub_140235D50+358↓j
                test    r13b, r13b
                jz      short loc_140235F71
                add     byte ptr [rbx+43h], 0FEh
                lea     rax, [rcx-90h]
                add     byte ptr [rbx+42h], 0FEh
                mov     [rbx+0B8h], rax
                mov     [rbx+0C8h], rax
                mov     eax, cs:dword_140CF49EC
                test    al, 4
                jnz     loc_14042CE3B

loc_140235F67:                          ; CODE XREF: sub_140235D50+1F70F3↓j
                xor     al, al

loc_140235F69:                          ; CODE XREF: sub_140235D50+1F70FB↓j
                test    al, al
                jnz     loc_14042CE50

loc_140235F71:                          ; CODE XREF: sub_140235D50+1EA↑j
                                        ; sub_140235D50+1F7109↓j
                mov     rax, rbx

loc_140235F74:                          ; CODE XREF: sub_140235D50:loc_1402360AD↓j
                mov     rbx, [rsp+68h+arg_10]
                add     rsp, 30h
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
; ---------------------------------------------------------------------------

loc_140235F8D:                          ; CODE XREF: sub_140235D50+8B↑j
                sub     edx, [rdi+8864h]
                cmp     edx, cs:dword_140C45B80
                jbe     loc_140235DE1
                prefetchw byte ptr cs:dword_140C45910
                mov     eax, cs:dword_140C45910

loc_140235FAC:                          ; CODE XREF: sub_140235D50+269↓j
                mov     ecx, eax
                and     ecx, 0FFFFFFFBh
                lock cmpxchg cs:dword_140C45910, ecx
                jnz     short loc_140235FAC
                test    al, 4
                jz      loc_140235DE1
                xor     r8d, r8d
                lea     rcx, unk_140C45CA0
                xor     edx, edx
                call    KeInsertQueueDpc
                jmp     loc_140235DE1
; ---------------------------------------------------------------------------

loc_140235FD9:                          ; CODE XREF: sub_140235D50+F0↑j
                movzx   ebp, ax
                mov     ebx, 10h
                shl     ax, 3
                mov     r12d, 810h
                add     bp, ax
                jmp     loc_140235E5B
; ---------------------------------------------------------------------------

loc_140235FF3:                          ; CODE XREF: sub_140235D50+D8↑j
                cmp     [rdi+2D9Ch], ebx
                jg      loc_140235E2E
                jmp     loc_140235EAC
; ---------------------------------------------------------------------------

loc_140236004:                          ; CODE XREF: sub_140235D50+16B↑j
                mov     eax, cs:dword_140CEC0F8
                cmp     eax, 1
                jle     loc_140235EC1
                jmp     loc_14042CE2C
; ---------------------------------------------------------------------------

loc_140236018:                          ; CODE XREF: sub_140235D50+E7↑j
                mov     r12d, 800h
                jmp     loc_140235E62
; ---------------------------------------------------------------------------

loc_140236023:                          ; CODE XREF: sub_140235D50+12E↑j
                inc     dword ptr [r12+18h]
                mov     rax, [rsp+68h+var_48]
                mov     r12, [rax+rdi+808h]
                mov     rcx, r12
                inc     dword ptr [r12+14h]
                call    ExpInterlockedPopEntrySList
                mov     rbx, rax
                test    rax, rax
                jnz     loc_140235E84
                inc     dword ptr [r12+18h]
                jmp     loc_140235E84
; ---------------------------------------------------------------------------

loc_140236058:                          ; CODE XREF: sub_140235D50+14E↑j
                inc     dword ptr [r12+1Ch]
                xor     edx, edx
                mov     rcx, rbx
                call    ExFreePoolWithTag

loc_140236067:                          ; CODE XREF: sub_140235D50+162↑j
                movzx   edx, bp
                mov     r8d, 20707249h
                test    r15b, r15b
                jnz     short loc_140236094
                mov     ecx, 200h
                call    ExAllocatePoolWithTag

loc_14023607F:                          ; CODE XREF: sub_140235D50+34E↓j
                mov     rbx, rax
                test    rax, rax
                jz      short loc_1402360AD
                mov     r12, [rsp+68h+arg_0]
                xor     r14b, r14b
                jmp     loc_140235EC4
; ---------------------------------------------------------------------------

loc_140236094:                          ; CODE XREF: sub_140235D50+323↑j
                mov     ecx, 208h
                call    ExAllocatePoolWithQuotaTag
                jmp     short loc_14023607F
; ---------------------------------------------------------------------------

loc_1402360A0:                          ; CODE XREF: sub_140235D50+1E1↑j
                or      r14b, 1
                mov     [rbx+47h], r14b
                jmp     loc_140235F37
; ---------------------------------------------------------------------------

loc_1402360AD:                          ; CODE XREF: sub_140235D50+335↑j
                jmp     loc_140235F74
sub_140235D50   endp

; ---------------------------------------------------------------------------
algn_1402360B2:                         ; DATA XREF: .rdata:0000000140054B94↑o
                                        ; .pdata:00000001400CB6AC↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_1402360C0   proc near               ; CODE XREF: NtSetInformationFile+43A↑p
                                        ; sub_1403F1EF0+22↓p ...

arg_0           = dword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 000000014042CE5E SIZE 000000A3 BYTES

                push    rbx
                sub     rsp, 20h
                test    dword ptr [rcx+50h], 4000000h
                mov     rbx, rcx
                jnz     short loc_140236147

loc_1402360D2:                          ; DATA XREF: .rdata:0000000140054BB8↑o
                                        ; .rdata:0000000140054BD0↑o ...
                mov     [rsp+28h+arg_8], rbp
                mov     [rsp+28h+arg_10], rsi
                mov     [rsp+28h+arg_18], rdi
                mov     rdi, cr8
                mov     eax, 2
                mov     cr8, rax
                lea     rsi, [rax-3]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042CE5E

loc_140236100:                          ; CODE XREF: sub_1402360C0+1F6DA0↓j
                                        ; sub_1402360C0+1F6DAA↓j ...
                xor     ebp, ebp
                mov     [rsp+28h+arg_0], ebp
                lock bts dword ptr [rbx+98h], 7
                jb      short loc_140236150

loc_140236111:                          ; CODE XREF: sub_1402360C0+AD↓j
                mov     [rbx+9Ch], ebp
                lock and dword ptr [rbx+98h], 0FFFFFF7Fh
                mov     eax, cs:dword_140CFC660
                mov     rbp, [rsp+28h+arg_8]
                test    eax, eax
                jnz     loc_14042CE9F

loc_140236135:                          ; CODE XREF: sub_1402360C0+1F6DE1↓j
                                        ; sub_1402360C0+1F6DED↓j ...
                movzx   eax, dil
                mov     cr8, rax
                mov     rdi, [rsp+28h+arg_18]
                mov     rsi, [rsp+28h+arg_10]

loc_140236147:                          ; CODE XREF: sub_1402360C0+10↑j
                                        ; DATA XREF: .pdata:00000001400CB6D0↑o ...
                add     rsp, 20h
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                align 10h

loc_140236150:                          ; CODE XREF: sub_1402360C0+4F↑j
                                        ; sub_1402360C0+A2↓j ...
                lea     rcx, [rsp+28h+arg_0]
                call    sub_1402C8C70
                mov     eax, [rbx+98h]
                test    al, al
                js      short loc_140236150
                lock bts dword ptr [rbx+98h], 7
                jnb     short loc_140236111
                jmp     short loc_140236150
sub_1402360C0   endp

; ---------------------------------------------------------------------------
algn_140236171:                         ; DATA XREF: .pdata:00000001400CB6E8↑o
                align 20h

; =============== S U B R O U T I N E =======================================


sub_140236180   proc near               ; CODE XREF: sub_1403F21B0+A7↓p
                                        ; sub_1405CD8DC+DE↓p ...
                mov     rax, gs:188h
                mov     r9, rcx
                mov     rcx, [rcx]
                mov     r10, [rdx]
                mov     rax, [rax+0B8h]
                mov     rax, [rax+580h]
                test    rax, rax
                jnz     short loc_1402361A7

locret_1402361A5:                       ; CODE XREF: sub_140236180+3A↓j
                                        ; sub_140236180+57↓j
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402361A7:                          ; CODE XREF: sub_140236180+23↑j
                movzx   r11d, word ptr [rax+8]
                mov     eax, 14Ch
                cmp     r11w, ax
                jnz     short loc_1402361CE

loc_1402361B7:                          ; CODE XREF: sub_140236180+59↓j
                test    r8b, r8b
                jnz     short locret_1402361A5
                mov     ecx, [rcx]
                or      r10, 1
                mov     eax, [rcx]
                mov     [rcx], eax
                mov     [r9], rcx
                mov     [rdx], r10
                retn
; ---------------------------------------------------------------------------
                align 2

loc_1402361CE:                          ; CODE XREF: sub_140236180+35↑j
                mov     eax, 1C4h
                cmp     r11w, ax
                jnz     short locret_1402361A5
                jmp     short loc_1402361B7
sub_140236180   endp

; ---------------------------------------------------------------------------
byte_1402361DB  db 15h dup(0CCh)        ; DATA XREF: .pdata:00000001400CB6F4↑o

; =============== S U B R O U T I N E =======================================


sub_1402361F0   proc near               ; CODE XREF: sub_1406431F0+AEF↓p
                                        ; sub_1406431F0+BD9↓p ...

var_88          = dword ptr -88h
var_68          = qword ptr -68h
var_58          = qword ptr -58h
var_50          = qword ptr -50h
var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_10          = byte ptr  18h
arg_18          = dword ptr  20h

; FUNCTION CHUNK AT 000000014042CF02 SIZE 0000010C BYTES

                mov     [rsp+arg_0], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 50h
                cmp     cs:dword_140C1D15C, 0
                mov     ebx, ecx
                jnz     loc_14042CF02

loc_140236213:                          ; CODE XREF: sub_1402361F0+1F6D2A↓j
                mov     esi, 1
                mov     [rsp+88h+arg_18], esi
                mov     edi, esi
                test    bl, 8
                jnz     loc_14042CF4B

loc_14023622A:                          ; CODE XREF: sub_1402361F0+1F6D67↓j
                mov     rax, gs:188h
                mov     ecx, ebx
                add     ebx, 8
                mov     rbp, [rax+0B8h]
                cmp     rbp, cs:PsInitialSystemProcess
                jz      loc_1402363ED

loc_14023624C:                          ; CODE XREF: sub_1402361F0+1FF↓j
                mov     r8d, 20206F49h
                mov     ecx, ebx
                call    ExAllocatePoolWithTag
                mov     r14, rax
                test    rax, 0FFFh
                jz      loc_1402363F4
                mov     eax, cs:dword_140C19184
                test    eax, eax
                jnz     loc_14042CF5C

loc_140236276:                          ; CODE XREF: sub_1402361F0+1F6D84↓j
                test    bl, 8
                jz      loc_1402363D1
                movzx   ecx, word ptr [r14-0Eh]
                lea     r15, [r14-10h]
                mov     rdx, cs:qword_140CFC9E8
                xor     edi, edi
                mov     rax, rdx
                movzx   r12d, cl
                xor     rax, r15
                shr     cx, 8
                mov     [r15+8], rax
                test    cl, 4
                jz      short loc_1402362C8
                movzx   eax, word ptr [r15]
                mov     rdi, r15
                movzx   ecx, al
                shl     rcx, 4
                sub     rdi, rcx
                xor     rdx, rdi
                movzx   eax, word ptr [rdi+2]
                movzx   r12d, al
                mov     [rdi+8], rdx

loc_1402362C8:                          ; CODE XREF: sub_1402361F0+B6↑j
                shl     r12, 4
                cmp     rbp, cs:PsInitialSystemProcess
                jz      loc_14023638E
                mov     rax, [rbp+568h]
                lea     rdx, byte_140CFCB50
                and     ebx, esi
                mov     r10d, ebx
                mov     [rsp+88h+var_50], r10
                lea     rcx, ds:0[rbx*8]
                shl     rbx, 7
                movzx   r8d, byte ptr [rcx+rdx]
                add     rbx, rax
                mov     [rsp+88h+arg_10], r8b
                mov     [rsp+88h+var_48], rcx
                prefetchw byte ptr [rbx]
                mov     r13, [rbx]
                lock or [rsp+88h+var_88], 0

loc_14023631D:                          ; CODE XREF: sub_1402361F0+157↓j
                mov     rax, [rbx+40h]

loc_140236321:                          ; CODE XREF: sub_1402361F0+277↓j
                mov     [rsp+88h+var_58], rax

loc_140236326:                          ; CODE XREF: sub_1402361F0+2B2↓j
                lea     rdx, [r12+r13]
                cmp     rdx, r13
                jb      loc_14042CF87
                cmp     rdx, rax
                ja      loc_14023643C
                mov     rax, r13
                lock cmpxchg [rbx], rdx
                mov     r13, rax
                jnz     short loc_14023631D
                prefetchw byte ptr [rbx+8]
                mov     rax, [rbx+8]
                cmp     rdx, rax
                ja      loc_140236420

loc_14023635A:                          ; CODE XREF: sub_1402361F0+23C↓j
                                        ; sub_1402361F0+247↓j
                test    r8b, 4
                jz      short loc_14023638E
                mov     rdx, r12
                lea     rax, ds:0[r10*8]
                lock xadd [rax+rbp+470h], rdx
                add     rdx, r12
                prefetchw byte ptr [rbp+r10*8+480h]
                mov     rax, [rbp+r10*8+480h]
                cmp     rdx, rax
                ja      short loc_140236400

loc_14023638E:                          ; CODE XREF: sub_1402361F0+E3↑j
                                        ; sub_1402361F0+16E↑j ...
                mov     rcx, cs:qword_140CFC9E8
                mov     rax, rcx
                xor     rax, r15
                xor     rax, rbp
                mov     [r15+8], rax
                test    rdi, rdi
                jz      short loc_1402363B1
                xor     rcx, rdi
                xor     rcx, rbp
                mov     [rdi+8], rcx

loc_1402363B1:                          ; CODE XREF: sub_1402361F0+1B5↑j
                cmp     cs:dword_140CFB010, 0
                jnz     loc_14042CFC6

loc_1402363BE:                          ; CODE XREF: sub_1402361F0+1F6DED↓j
                lock xadd [rbp-30h], rsi
                inc     rsi
                cmp     rsi, 1
                jle     loc_14042CFE2

loc_1402363D1:                          ; CODE XREF: sub_1402361F0+89↑j
                                        ; sub_1402361F0+207↓j ...
                mov     rax, r14

loc_1402363D4:                          ; CODE XREF: sub_1402361F0+1F6D56↓j
                mov     rbx, [rsp+88h+arg_0]
                add     rsp, 50h
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
; ---------------------------------------------------------------------------

loc_1402363ED:                          ; CODE XREF: sub_1402361F0+56↑j
                mov     ebx, ecx
                jmp     loc_14023624C
; ---------------------------------------------------------------------------

loc_1402363F4:                          ; CODE XREF: sub_1402361F0+72↑j
                test    r14, r14
                jnz     short loc_1402363D1
                jmp     loc_14042CFFB
; ---------------------------------------------------------------------------
                align 20h

loc_140236400:                          ; CODE XREF: sub_1402361F0+19C↑j
                                        ; sub_1402361F0+1F6D8C↓j
                mov     rcx, rax
                lock cmpxchg [rbp+r10*8+480h], rdx
                cmp     rax, rcx
                jz      loc_14023638E
                jmp     loc_14042CF79
; ---------------------------------------------------------------------------
                align 20h

loc_140236420:                          ; CODE XREF: sub_1402361F0+164↑j
                                        ; sub_1402361F0+245↓j
                mov     rcx, rax
                lock cmpxchg [rbx+8], rdx
                cmp     rax, rcx
                jz      loc_14023635A
                cmp     rdx, rax
                ja      short loc_140236420
                jmp     loc_14023635A
; ---------------------------------------------------------------------------

loc_14023643C:                          ; CODE XREF: sub_1402361F0+146↑j
                test    sil, r8b
                jz      loc_14042CF87
                cmp     qword ptr [rbx+50h], 0
                jz      loc_14042CF87
                xor     ecx, ecx
                xchg    rcx, [rbx+48h]
                test    rcx, rcx
                jz      short loc_14023646C
                mov     rax, rcx
                lock xadd [rbx+40h], rax
                add     rax, rcx
                jmp     loc_140236321
; ---------------------------------------------------------------------------

loc_14023646C:                          ; CODE XREF: sub_1402361F0+269↑j
                lea     rax, [rsp+88h+var_58]
                mov     r9, r12
                mov     r8, r13
                mov     [rsp+88h+var_68], rax
                mov     rdx, rbx
                mov     ecx, r10d
                call    sub_140352228
                test    al, al
                jz      loc_14042CF87
                mov     rax, [rsp+88h+var_58]
                mov     r10, [rsp+88h+var_50]
                movzx   r8d, [rsp+88h+arg_10]
                jmp     loc_140236326
sub_1402361F0   endp

; ---------------------------------------------------------------------------
algn_1402364A7:                         ; DATA XREF: .rdata:0000000140054C60↑o
                                        ; .pdata:00000001400CB700↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402364B0   proc near               ; CODE XREF: sub_1402369F0+74B↓p
                                        ; sub_1402E76F0+111↓p ...

var_48          = qword ptr -48h
arg_0           = qword ptr  8
arg_8           = dword ptr  10h
arg_10          = qword ptr  18h
arg_20          = word ptr  28h
arg_28          = byte ptr  30h

; FUNCTION CHUNK AT 000000014042D00E SIZE 0000033B BYTES

                mov     [rsp+arg_10], r8
                mov     [rsp+arg_8], edx
                mov     [rsp+arg_0], rcx
                push    rbx
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 30h
                xor     r14d, r14d
                mov     rax, rcx
                shr     rax, 0Ch
                mov     esi, r9d
                mov     eax, eax
                mov     r13d, r9d
                imul    r12, rax, 9E5Fh
                and     esi, 20h
                mov     [rsp+68h+var_48], r14
                mov     rdi, rcx

loc_1402364F1:                          ; CODE XREF: sub_1402364B0+1F6C74↓j
                                        ; sub_1402364B0+1F6CFD↓j
                mov     rcx, 0FFFFFFFFFFFFFFFFh
                lea     eax, [rcx+3]

loc_1402364FB:                          ; CODE XREF: sub_1402364B0+24E↓j
                mov     rbx, r12
                shr     rbx, 20h
                xor     rbx, r12
                mov     r15, cr8
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042D00E

loc_14023651B:                          ; CODE XREF: sub_1402364B0+1F6B60↓j
                                        ; sub_1402364B0+1F6B6A↓j ...
                test    byte ptr cs:xmmword_140CFC480+6, 21h
                jnz     loc_14042D052
                mov     rdi, gs:20h
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14042D068

loc_140236541:                          ; CODE XREF: sub_1402364B0+1F6BBC↓j
                                        ; sub_1402364B0+1F6BCB↓j ...
                prefetchw byte ptr cs:dword_140C19198
                mov     eax, cs:dword_140C19198
                btr     eax, 1Fh
                lea     ecx, [rax+1]
                lock cmpxchg cs:dword_140C19198, ecx
                jnz     loc_1402367A1

loc_140236563:                          ; CODE XREF: sub_1402364B0+311↓j
                mov     rdi, [rsp+68h+arg_0]

loc_140236568:                          ; CODE XREF: sub_1402364B0+1F6BB3↓j
                test    esi, esi
                jnz     loc_140236709
                mov     rdx, cs:qword_140C191B8
                lea     r9, dword_140D23100
                mov     r10, cs:qword_140C191B0

loc_140236585:                          ; CODE XREF: sub_1402364B0+275↓j
                test    rdx, rdx
                jz      loc_14023669F
                movsxd  rax, dword ptr [r9]
                cmp     rax, r10
                jz      loc_14023669F
                lea     rax, [r10-1]
                and     rax, rbx
                mov     eax, eax
                lea     rcx, [rax+rax*2]
                lea     rcx, [rdx+rcx*8]
                lea     rax, [r10+r10*2]
                mov     r8, rcx
                lea     r11, [rdx+rax*8]

loc_1402365B6:                          ; CODE XREF: sub_1402364B0+1E9↓j
                mov     rax, [rcx]
                test    al, 1
                jz      loc_140236685
                lock cmpxchg [rcx], rdi
                jnz     loc_140236685
                mov     eax, [rsp+68h+arg_8]
                movzx   r8d, [rsp+68h+arg_20]
                mov     [rcx+8], eax
                movzx   eax, [rsp+68h+arg_28]
                mov     [rcx+0Ch], al
                mov     eax, r13d
                and     eax, 0FFFh
                shl     r8d, 0Ch
                or      r8d, eax
                mov     eax, [rcx+0Ch]
                movzx   edx, al
                mov     rax, [rsp+68h+arg_10]
                shl     r8d, 8
                or      r8d, edx
                mov     [rcx+10h], rax
                mov     [rcx+0Ch], r8d
                lock inc dword ptr [r9]
                cmp     r14d, 10h
                jnb     loc_14023672A

loc_140236621:                          ; CODE XREF: sub_1402364B0+281↓j
                test    byte ptr cs:xmmword_140CFC480+6, 1
                jnz     loc_14042D297
                lock and cs:dword_140C19198, 0BFFFFFFFh
                lock dec cs:dword_140C19198

loc_140236640:                          ; CODE XREF: sub_1402364B0+1F6DF9↓j
                mov     rcx, gs:20h
                mov     rdx, [rcx+84B8h]
                test    rdx, rdx
                jnz     loc_14042D2AE

loc_140236659:                          ; CODE XREF: sub_1402364B0+1F6E02↓j
                                        ; sub_1402364B0+1F6E11↓j ...
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042D2D2

loc_140236667:                          ; CODE XREF: sub_1402364B0+1F6D80↓j
                                        ; sub_1402364B0+1F6D88↓j ...
                movzx   eax, r15b
                mov     cr8, rax

loc_14023666F:                          ; CODE XREF: sub_1402364B0+2D3↓j
                                        ; sub_1402364B0+2E9↓j
                mov     eax, 1

loc_140236674:                          ; CODE XREF: sub_1402364B0+1F6E94↓j
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbx
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_140236685:                          ; CODE XREF: sub_1402364B0+10B↑j
                                        ; sub_1402364B0+116↑j
                lea     rax, [rcx+18h]
                inc     r14d
                cmp     rax, r11
                mov     rcx, rdx
                cmovb   rcx, rax
                cmp     rcx, r8
                jnz     loc_1402365B6

loc_14023669F:                          ; CODE XREF: sub_1402364B0+D8↑j
                                        ; sub_1402364B0+E4↑j
                lea     rcx, dword_140C19198
                call    ExTryConvertSharedSpinLockExclusive
                test    eax, eax
                jz      loc_14042D0B6
                lea     r8, [rsp+68h+var_48]
                mov     ecx, r13d
                call    sub_140375608
                lea     rcx, dword_140C19198
                mov     ebx, eax
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     ecx, cs:dword_140CFC660
                test    ecx, ecx
                jnz     loc_14042D129

loc_1402366DC:                          ; CODE XREF: sub_1402364B0+1F6C7C↓j
                                        ; sub_1402364B0+1F6C89↓j ...
                movzx   eax, r15b
                mov     cr8, rax
                test    ebx, ebx
                jz      loc_14042D33C
                mov     rbx, [rsp+68h+var_48]
                mov     rcx, 0FFFFFFFFFFFFFFFFh
                lea     eax, [rcx+3]
                test    rbx, rbx
                jz      loc_1402364FB
                jmp     loc_14042D196
; ---------------------------------------------------------------------------

loc_140236709:                          ; CODE XREF: sub_1402364B0+BA↑j
                mov     rax, cs:qword_140C4DC60
                mov     rdx, [rax+3E0h]
                lea     r9, [rax+360h]
                mov     r10, [rax+3E8h]
                jmp     loc_140236585
; ---------------------------------------------------------------------------

loc_14023672A:                          ; CODE XREF: sub_1402364B0+16B↑j
                shr     r10, 2
                cmp     [r9], r10d
                jbe     loc_140236621
                lea     rcx, dword_140C19198
                call    ExTryConvertSharedSpinLockExclusive
                cmp     eax, 1
                jnz     loc_14042D21C
                lea     r8, [rsp+68h+var_48]
                mov     ecx, r13d
                call    sub_140375608
                lea     rcx, dword_140C19198
                call    ExReleaseSpinLockExclusiveFromDpcLevel
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14042D1B2

loc_140236773:                          ; CODE XREF: sub_1402364B0+1F6D04↓j
                                        ; sub_1402364B0+1F6D10↓j ...
                movzx   eax, r15b
                mov     cr8, rax
                mov     rbx, [rsp+68h+var_48]
                test    rbx, rbx
                jz      loc_14023666F

loc_140236789:                          ; CODE XREF: sub_1402364B0+2EF↓j
                mov     rcx, rbx
                xor     edx, edx
                mov     rbx, [rbx]
                call    ExFreePoolWithTag
                test    rbx, rbx
                jz      loc_14023666F
                jmp     short loc_140236789
; ---------------------------------------------------------------------------

loc_1402367A1:                          ; CODE XREF: sub_1402364B0+AD↑j
                mov     rcx, [rdi+84B8h]
                test    rcx, rcx
                jnz     loc_14042D08F

loc_1402367B1:                          ; CODE XREF: sub_1402364B0+1F6BE3↓j
                                        ; sub_1402364B0+1F6BF2↓j ...
                movzx   edx, r15b
                lea     rcx, dword_140C19198
                call    sub_140329420
                jmp     loc_140236563
sub_1402364B0   endp

; ---------------------------------------------------------------------------
algn_1402367C6:                         ; DATA XREF: .rdata:0000000140054C88↑o
                                        ; .pdata:00000001400CB70C↑o
                align 10h

; =============== S U B R O U T I N E =======================================


sub_1402367D0   proc near               ; CODE XREF: sub_14023A280+28F↓p
                                        ; sub_140316EF8+65↓p ...

arg_0           = qword ptr  8

                movzx   eax, word ptr [r8+2]
                lea     r9, [r8+100Fh]
                movzx   r10d, word ptr cs:xmmword_140C1DC20+2
                and     r9, 0FFFFFFFFFFFFF000h
                mov     [rsp+arg_0], rcx
                mov     r11, rdx
                mov     ecx, r8d
                mov     rdx, r9
                shr     ecx, 10h
                sub     rdx, r8
                xor     eax, ecx
                xor     eax, r10d
                mov     ecx, eax
                shl     rcx, 4
                cmp     rdx, rcx
                jnb     loc_1402368B5
                add     r9, 0FFFFFFFFFFFFFFE0h
                mov     ecx, r8d
                shr     ecx, 10h
                xorps   xmm0, xmm0
                mov     rdx, r9
                sub     rdx, r8
                sar     rdx, 4
                xor     cx, dx
                sub     eax, edx
                xor     cx, r10w
                mov     [r8+2], cx
                movups  xmmword ptr [r9], xmm0
                mov     r8d, eax
                movups  xmmword ptr [r9+10h], xmm0
                mov     [r9+2], ax
                mov     [r9+4], dx
                mov     rcx, [r9]
                xor     rcx, qword ptr cs:xmmword_140C1DC20
                xor     rcx, r9
                shl     r8, 4
                mov     [r9], rcx
                add     r8, r9
                movzx   ecx, word ptr [r11+20h]
                add     rcx, 3
                shl     rcx, 4
                add     rcx, r11
                cmp     r8, rcx
                jnb     short loc_1402368B0
                mov     rdx, qword ptr cs:xmmword_140C1DC20
                movzx   ecx, ax
                mov     [rsp+arg_0], 0
                mov     dword ptr [rsp+arg_0+4], ecx
                mov     rcx, [rsp+arg_0]
                shr     rcx, 20h
                shr     rdx, 20h
                xor     dx, cx
                mov     rcx, r8
                shr     rcx, 20h
                xor     dx, cx
                mov     [r8+4], dx

loc_1402368B0:                          ; CODE XREF: sub_1402367D0+A8↑j
                mov     rax, r9
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1402368B5:                          ; CODE XREF: sub_1402367D0+3D↑j
                xor     eax, eax
                retn
sub_1402367D0   endp

; ---------------------------------------------------------------------------
                db 0CCh
algn_1402368B9:                         ; DATA XREF: .pdata:00000001400CB718↑o
                align 20h
; Exported entry 188. ExAllocatePoolWithTagPriority

; =============== S U B R O U T I N E =======================================


