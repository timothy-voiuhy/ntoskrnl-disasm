KeQueryLogicalProcessorRelationship proc near
                                        ; CODE XREF: sub_14060DA00+1E2E↓p
                                        ; DATA XREF: .rdata:0000000140077680↑o ...

var_600         = dword ptr -600h
var_5FC         = dword ptr -5FCh
var_5F8         = qword ptr -5F8h
var_5F0         = qword ptr -5F0h
var_5E8         = dword ptr -5E8h
var_5E4         = dword ptr -5E4h
var_5E0         = dword ptr -5E0h
var_5D8         = qword ptr -5D8h
var_5D0         = xmmword ptr -5D0h
var_5C0         = qword ptr -5C0h
var_5B8         = qword ptr -5B8h
var_5B0         = qword ptr -5B0h
var_5A0         = dword ptr -5A0h
var_59C         = byte ptr -59Ch
var_598         = qword ptr -598h
var_4F0         = dword ptr -4F0h
var_4EC         = byte ptr -4ECh
var_4E8         = byte ptr -4E8h
var_440         = word ptr -440h
var_438         = byte ptr -438h
var_390         = byte ptr -390h
var_38C         = byte ptr -38Ch
var_40          = qword ptr -40h
arg_8           = qword ptr  18h

; FUNCTION CHUNK AT 000000014046DF58 SIZE 00000037 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_8], rbx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                lea     rbp, [rsp-4F0h]
                sub     rsp, 5F0h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+520h+var_40], rax
                mov     rsi, r8
                mov     [rsp+620h+var_5E4], edx
                mov     rbx, rcx
                mov     [rsp+620h+var_5F8], rcx
                mov     r14d, 0A0h
                mov     [rsp+620h+var_5B0], r9
                mov     r8d, r14d
                lea     rcx, [rbp+520h+var_598]
                xor     edx, edx
                mov     rdi, r9
                call    memset
                mov     r8d, r14d
                lea     rcx, [rbp+520h+var_4E8]
                xor     edx, edx
                call    memset
                mov     eax, [rdi]
                xor     r15d, r15d
                xor     r14d, r14d
                mov     dword ptr [rsp+620h+var_5F0], r15d
                mov     [rsp+620h+var_600], eax
                lea     ecx, [r15+1]
                test    rbx, rbx
                jnz     loc_140312740
                mov     eax, cs:dword_140CFC404
                xor     edi, edi
                sub     eax, ecx
                mov     [rsp+620h+var_5FC], edi
                mov     [rsp+620h+var_5E8], eax

loc_1403121D9:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+620↓j
                mov     r13d, 5
                mov     [rsp+620h+var_5E0], edi
                lea     rbx, [rbp+520h+var_38C]
                lea     r12d, [r13-4]

loc_1403121EE:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+D3↓j
                and     [rbx], r14d
                lea     rcx, [rbx+4]
                xor     edx, edx
                mov     dword ptr [rbx-4], 140001h
                mov     r8d, 0A0h
                call    memset
                lea     rbx, [rbx+0A8h]
                sub     r13, r12
                jnz     short loc_1403121EE
                mov     ebx, 0A4h
                mov     [rbp+520h+var_5A0], 140001h
                mov     r8d, ebx
                lea     rcx, [rbp+520h+var_59C]
                xor     edx, edx
                call    memset
                mov     r8d, ebx
                mov     [rbp+520h+var_4F0], 140001h
                xor     edx, edx
                lea     rcx, [rbp+520h+var_4EC]
                call    memset
                lea     rdx, cs:140000000h
                mov     r12d, [rsp+620h+var_5E4]
                xorps   xmm0, xmm0
                movups  [rsp+620h+var_5D0], xmm0
                cmp     edi, [rsp+620h+var_5E8]
                ja      loc_14046DF85
                mov     r13, [rsp+620h+var_5F8]

loc_140312267:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+18E↓j
                mov     eax, edi
                mov     rbx, ds:rva qword_140CFDCC0[rdx+rax*8]
                cmp     r12d, 3
                jz      loc_1403123D3
                cmp     r12d, 0FFFFh
                jz      loc_1403123D3
                xor     r11d, r11d

loc_14031228B:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+326↓j
                                        ; KeQueryLogicalProcessorRelationship+3FF↓j ...
                test    r12d, r12d
                jz      loc_140312672
                cmp     r12d, 0FFFFh
                jz      loc_140312672

loc_1403122A1:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+77E↓j
                mov     ecx, 1

loc_1403122A6:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+5F0↓j
                                        ; KeQueryLogicalProcessorRelationship+799↓j
                cmp     r12d, 0FFFFh
                jz      loc_140312765
                cmp     r12d, 2
                jz      loc_140312765

loc_1403122BD:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+63F↓j
                                        ; KeQueryLogicalProcessorRelationship+6D5↓j
                add     edi, ecx
                lea     rdx, cs:140000000h
                mov     [rsp+620h+var_5FC], edi
                cmp     edi, [rsp+620h+var_5E8]
                jbe     short loc_140312267
                lea     rdx, cs:140000000h

loc_1403122D7:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+15BE4A↓j
                cmp     r12d, ecx
                jnz     loc_140312544

loc_1403122E0:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+40B↓j
                mov     edi, [rsp+620h+var_5E0]
                xor     r13d, r13d
                movzx   ebx, cs:word_140CFB000
                mov     r9d, r13d
                mov     r12, [rsp+620h+var_5F8]

loc_1403122F6:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+229↓j
                mov     eax, r9d
                mov     rcx, ds:rva qword_140D23380[rdx+rax*8]
                mov     r10, [rcx+88h]
                test    r10, r10
                jz      short loc_14031235C
                movzx   r11d, word ptr [rcx+90h]
                test    r12, r12
                jnz     loc_140312646

loc_14031231E:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+527↓j
                add     r14d, 30h ; '0'
                cmp     r14d, [rsp+620h+var_600]
                ja      loc_140312735
                mov     dword ptr [rsi+4], 30h ; '0'
                mov     eax, 1
                mov     [rsi], eax
                xorps   xmm0, xmm0
                mov     [rsi+8], r9d
                xor     eax, eax
                movups  xmmword ptr [rsi+0Ch], xmm0
                mov     [rsi+1Ch], eax
                movups  xmmword ptr [rsi+20h], xmm0
                mov     [rsi+28h], r11w
                mov     [rsi+20h], r10
                add     rsi, 30h ; '0'

loc_14031235C:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+1CB↑j
                                        ; KeQueryLogicalProcessorRelationship+52D↓j ...
                inc     r9d
                lea     rdx, cs:140000000h
                cmp     r9d, ebx
                jb      short loc_1403122F6
                mov     r12d, [rsp+620h+var_5E4]
                mov     dword ptr [rsp+620h+var_5F0], r15d

loc_140312375:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+414↓j
                cmp     r12d, 4
                jz      loc_140312564
                cmp     r12d, 0FFFFh
                jz      loc_140312559

loc_14031238C:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+41E↓j
                                        ; KeQueryLogicalProcessorRelationship+473↓j ...
                test    r15d, r15d
                jnz     short loc_14031239D
                test    r14d, r14d
                mov     eax, 0C0000001h
                cmovz   r15d, eax

loc_14031239D:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+24F↑j
                mov     rax, [rsp+620h+var_5B0]
                mov     [rax], r14d
                mov     eax, r15d

loc_1403123A8:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+15BE1D↓j
                mov     rcx, [rbp+520h+var_40]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+620h+arg_8]
                add     rsp, 5F0h
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

loc_1403123D3:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+135↑j
                                        ; KeQueryLogicalProcessorRelationship+142↑j
                lea     rcx, [rbp+520h+var_440]
                xor     r8d, r8d
                lea     rax, [rbx+8390h]
                movups  xmm0, xmmword ptr [rax]
                lea     rdx, [rbp+520h+var_440]
                movups  xmm1, xmmword ptr [rax+10h]
                movups  xmmword ptr [rcx], xmm0
                movups  xmm0, xmmword ptr [rax+20h]
                movups  xmmword ptr [rcx+10h], xmm1
                movups  xmm1, xmmword ptr [rax+30h]
                movups  xmmword ptr [rcx+20h], xmm0
                movups  xmm0, xmmword ptr [rax+40h]
                movups  xmmword ptr [rcx+30h], xmm1
                movups  xmm1, xmmword ptr [rax+50h]
                movups  xmmword ptr [rcx+40h], xmm0
                movups  xmm0, xmmword ptr [rax+60h]
                movups  xmmword ptr [rcx+50h], xmm1
                movups  xmm1, xmmword ptr [rax+70h]
                movups  xmmword ptr [rcx+60h], xmm0
                movups  xmm0, xmmword ptr [rax+80h]
                movups  xmmword ptr [rcx+70h], xmm1
                movups  xmm1, xmmword ptr [rax+90h]
                mov     rax, [rax+0A0h]
                movups  xmmword ptr [rcx+80h], xmm0
                movups  xmmword ptr [rcx+90h], xmm1
                mov     [rcx+0A0h], rax
                lea     rcx, [rbp+520h+var_4F0]
                call    KeAndAffinityEx
                xor     r11d, r11d
                test    r13, r13
                jnz     short loc_14031246C
                test    eax, eax
                jnz     loc_14031228B

loc_14031246C:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+322↑j
                lea     r8, [rbp+520h+var_4F0]
                lea     rdx, [rbp+520h+var_440]
                lea     rcx, [rbp+520h+var_4F0]
                call    KeOrAffinityEx
                movzx   r9d, [rbp+520h+var_440]
                xor     r11d, r11d
                movzx   edx, r11w
                cmp     r11w, r9w
                jnb     short loc_1403124BD
                lea     r8, [rbp+520h+var_438]
                mov     r10d, r9d
                lea     edi, [r11+1]

loc_1403124A3:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+377↓j
                cmp     [r8], r11
                movzx   ecx, dx
                lea     r8, [r8+8]
                lea     edx, [rdi+rcx]
                cmovz   dx, cx
                sub     r10, rdi
                jnz     short loc_1403124A3
                mov     edi, [rsp+620h+var_5FC]

loc_1403124BD:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+353↑j
                movzx   eax, dx
                shl     eax, 4
                add     eax, 27h ; '''
                and     eax, 0FFFFFFF8h
                add     r14d, eax
                cmp     r14d, [rsp+620h+var_600]
                ja      loc_140312636
                mov     [rsi+1Eh], dx
                xor     ecx, ecx
                mov     dword ptr [rsi], 3
                xorps   xmm0, xmm0
                mov     [rsi+4], eax
                movzx   edx, r11w
                mov     [rsi+8], r11w
                movups  xmmword ptr [rsi+0Ah], xmm0
                mov     [rsi+1Ah], ecx
                lea     rcx, [rsi+20h]
                cmp     r11w, r9w
                jnb     short loc_14031253C
                lea     r8, [rbp+520h+var_438]
                mov     r15d, 1

loc_140312510:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+3F5↓j
                mov     r10, [r8]
                test    r10, r10
                jz      short loc_140312529
                xorps   xmm0, xmm0
                movups  xmmword ptr [rcx], xmm0
                mov     [rcx+8], dx
                mov     [rcx], r10
                add     rcx, 10h

loc_140312529:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+3D6↑j
                add     dx, r15w
                add     r8, 8
                cmp     dx, r9w
                jb      short loc_140312510
                mov     r15d, dword ptr [rsp+620h+var_5F0]

loc_14031253C:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+3C1↑j
                add     rsi, rax
                jmp     loc_14031228B
; ---------------------------------------------------------------------------

loc_140312544:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+19A↑j
                cmp     r12d, 0FFFFh
                jz      loc_1403122E0
                xor     r13d, r13d
                jmp     loc_140312375
; ---------------------------------------------------------------------------

loc_140312559:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+246↑j
                cmp     [rsp+620h+var_5F8], r13
                jnz     loc_14031238C

loc_140312564:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+239↑j
                movzx   edx, cs:word_140CFB014
                lea     eax, [rdx+rdx*2]
                shl     eax, 4
                add     eax, 27h ; '''
                and     eax, 0FFFFFFF8h
                add     r14d, eax
                mov     [rsp+620h+var_5E0], r14d
                cmp     r14d, [rsp+620h+var_600]
                ja      loc_14031262B
                mov     [rsi+4], eax
                xorps   xmm0, xmm0
                movzx   eax, cs:word_140CFB018
                mov     r12d, r13d
                mov     [rsi+8], ax
                xor     eax, eax
                mov     dword ptr [rsi], 4
                mov     [rsi+0Ah], dx
                movups  xmmword ptr [rsi+0Ch], xmm0
                mov     [rsi+1Ch], eax
                test    edx, edx
                jz      loc_14031238C
                lea     r15d, [rax+1]
                lea     r14, cs:140000000h

loc_1403125C4:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+4DA↓j
                mov     ebx, r12d
                movzx   ecx, r12w
                lea     rdi, [rbx+rbx*2]
                add     rdi, rdi
                call    KeQueryMaximumProcessorCountEx
                movzx   ecx, r12w
                mov     [rsi+rdi*8+20h], al
                call    KeQueryActiveProcessorCountEx
                mov     [rsi+rdi*8+21h], al
                xorps   xmm0, xmm0
                mov     rax, ds:rva qword_140CFC848[r14+rbx*8]
                add     r12d, r15d
                mov     [rsi+rdi*8+48h], rax
                xor     eax, eax
                movups  xmmword ptr [rsi+rdi*8+22h], xmm0
                movups  xmmword ptr [rsi+rdi*8+32h], xmm0
                mov     [rsi+rdi*8+42h], eax
                mov     [rsi+rdi*8+46h], ax
                movzx   eax, cs:word_140CFB014
                cmp     r12d, eax
                jb      short loc_1403125C4
                mov     r14d, [rsp+620h+var_5E0]
                mov     r15d, dword ptr [rsp+620h+var_5F0]
                jmp     loc_14031238C
; ---------------------------------------------------------------------------

loc_14031262B:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+444↑j
                mov     r15d, 0C0000004h
                jmp     loc_14031238C
; ---------------------------------------------------------------------------

loc_140312636:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+391↑j
                mov     r15d, 0C0000004h
                mov     dword ptr [rsp+620h+var_5F0], r15d
                jmp     loc_14031228B
; ---------------------------------------------------------------------------

loc_140312646:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+1D8↑j
                mov     edx, ds:rva dword_140D010D0[rdx+rdi*4]
                mov     r8, r10
                mov     ecx, edx
                shr     edx, 6
                and     ecx, 3Fh
                shr     r8, cl
                mov     ecx, r13d
                cmp     edx, r11d
                setz    cl
                test    ecx, r8d
                jnz     loc_14031231E
                jmp     loc_14031235C
; ---------------------------------------------------------------------------

loc_140312672:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+14E↑j
                                        ; KeQueryLogicalProcessorRelationship+15B↑j
                mov     rax, [rbx+8458h]
                lea     rdx, [rsp+620h+var_5D0]
                movzx   r13d, byte ptr [rbx+0D0h]
                lea     rcx, [rbp+520h+var_5A0]
                xor     r8d, r8d
                mov     word ptr [rsp+620h+var_5D0+8], r13w
                mov     [rsp+620h+var_5D8], rax
                mov     qword ptr [rsp+620h+var_5D0], rax
                call    KeAndGroupAffinityEx
                xor     r11d, r11d
                cmp     [rsp+620h+var_5F8], r11
                jnz     short loc_1403126B4
                test    eax, eax
                jnz     loc_1403128B9

loc_1403126B4:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+56A↑j
                cmp     word ptr [rbp+520h+var_5A0], r13w
                jbe     loc_14046DF62

loc_1403126BF:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+15BE2E↓j
                mov     rcx, [rsp+620h+var_5D8]
                or      [rbp+r13*8+520h+var_598], rcx
                cmp     [rbx+0C8h], rcx
                mov     ecx, 1
                mov     r13, [rsp+620h+var_5F8]
                setnz   al
                add     r14d, 30h ; '0'
                cmp     r14d, [rsp+620h+var_600]
                ja      loc_1403128CE
                mov     [rsi+8], al
                xorps   xmm0, xmm0
                mov     [rsi], r11d
                mov     dword ptr [rsi+4], 30h ; '0'
                mov     al, [rbx+81B8h]
                mov     [rsi+9], al
                xor     eax, eax
                mov     [rsi+1Eh], cx
                movups  xmmword ptr [rsi+0Ah], xmm0
                mov     [rsi+1Ah], eax
                movups  xmmword ptr [rsi+20h], xmm0
                movzx   eax, byte ptr [rbx+0D0h]
                mov     [rsi+28h], ax
                mov     rax, [rbx+8458h]
                mov     [rsi+20h], rax
                add     rsi, 30h ; '0'
                jmp     loc_1403122A6
; ---------------------------------------------------------------------------

loc_140312735:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+1E7↑j
                mov     r15d, 0C0000004h
                jmp     loc_14031235C
; ---------------------------------------------------------------------------

loc_140312740:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+81↑j
                mov     rcx, rbx
                call    KeGetProcessorIndexFromNumber
                mov     edi, eax
                mov     [rsp+620h+var_5FC], eax
                mov     eax, cs:dword_140CFC404
                cmp     edi, eax
                jnb     loc_14046DF58
                mov     [rsp+620h+var_5E8], edi
                jmp     loc_1403121D9
; ---------------------------------------------------------------------------

loc_140312765:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+16D↑j
                                        ; KeQueryLogicalProcessorRelationship+177↑j
                movzx   eax, byte ptr [rbx+0D0h]
                mov     word ptr [rsp+620h+var_5D0+8], ax
                mov     eax, r11d
                mov     dword ptr [rsp+620h+var_5D8], eax
                cmp     [rbx+8314h], r11d
                jbe     loc_1403122BD
                movzx   r12d, word ptr [rsp+620h+var_5D0+8]
                mov     rdi, [rsp+620h+var_5F8]

loc_140312790:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+6C0↓j
                mov     r8, [rbx+0C8h]
                mov     edx, eax
                mov     [rsp+620h+var_5C0], rdx
                mov     rcx, [rbx+rdx*8+8470h]
                mov     [rsp+620h+var_5F0], rcx
                test    rcx, rcx
                jz      loc_14031283D
                imul    rax, rdx, 0A8h
                mov     [rsp+620h+var_5B8], rcx
                lea     r13, [rbp+520h+var_390]
                add     r13, rax
                mov     qword ptr [rsp+620h+var_5D0], rcx
                mov     rcx, r13
                lea     rdx, [rsp+620h+var_5D0]
                xor     r8d, r8d
                call    KeAndGroupAffinityEx
                xor     r11d, r11d
                test    rdi, rdi
                jnz     short loc_14031281A
                test    eax, eax
                jz      short loc_14031281A

loc_1403127EB:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+774↓j
                mov     eax, dword ptr [rsp+620h+var_5D8]

loc_1403127EF:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+789↓j
                mov     ecx, 1
                add     eax, ecx
                mov     dword ptr [rsp+620h+var_5D8], eax
                cmp     eax, [rbx+8314h]
                jb      short loc_140312790
                mov     edi, [rsp+620h+var_5FC]
                mov     r12d, [rsp+620h+var_5E4]
                mov     r13, [rsp+620h+var_5F8]
                mov     dword ptr [rsp+620h+var_5F0], r15d
                jmp     loc_1403122BD
; ---------------------------------------------------------------------------

loc_14031281A:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+6A5↑j
                                        ; KeQueryLogicalProcessorRelationship+6A9↑j
                cmp     [r13+0], r12w
                jbe     loc_14046DF73

loc_140312825:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+15BE40↓j
                mov     rcx, [rsp+620h+var_5F0]
                or      [r13+r12*8+8], rcx
                mov     eax, dword ptr [rsp+620h+var_5D8]
                mov     rdx, [rsp+620h+var_5C0]
                mov     r8, [rsp+620h+var_5B8]

loc_14031283D:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+66E↑j
                add     r14d, 38h ; '8'
                cmp     r14d, [rsp+620h+var_600]
                ja      short loc_1403128C3
                mov     dword ptr [rsi], 2
                lea     rcx, [rdx+rdx*2]
                mov     dword ptr [rsi+4], 38h ; '8'
                xorps   xmm0, xmm0
                mov     al, [rbx+rcx*4+82D8h]
                mov     [rsi+8], al
                mov     al, [rbx+rcx*4+82D9h]
                mov     [rsi+9], al
                movzx   eax, word ptr [rbx+rcx*4+82DAh]
                mov     [rsi+0Ah], ax
                mov     eax, [rbx+rcx*4+82DCh]
                mov     [rsi+0Ch], eax
                lea     rax, [rdx+rdx*2]
                mov     ecx, [rbx+rax*4+82E0h]
                xor     eax, eax
                mov     [rsi+10h], ecx
                movups  xmmword ptr [rsi+14h], xmm0
                mov     [rsi+24h], eax
                movups  xmmword ptr [rsi+28h], xmm0
                movzx   eax, byte ptr [rbx+0D0h]
                mov     [rsi+30h], ax
                mov     [rsi+28h], r8
                add     rsi, 38h ; '8'
                jmp     loc_1403127EB
; ---------------------------------------------------------------------------

loc_1403128B9:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+56E↑j
                mov     r13, [rsp+620h+var_5F8]
                jmp     loc_1403122A1
; ---------------------------------------------------------------------------

loc_1403128C3:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+706↑j
                mov     r15d, 0C0000004h
                jmp     loc_1403127EF
; ---------------------------------------------------------------------------

loc_1403128CE:                          ; CODE XREF: KeQueryLogicalProcessorRelationship+5A6↑j
                mov     r15d, 0C0000004h
                mov     dword ptr [rsp+620h+var_5F0], r15d
                jmp     loc_1403122A6
; } // starts at 140312140
KeQueryLogicalProcessorRelationship endp
