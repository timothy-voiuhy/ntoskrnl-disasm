KeUpdateThreadTag proc near             ; DATA XREF: .rdata:000000014008A950↑o
                                        ; .pdata:00000001400DA2A4↑o

var_110         = qword ptr -110h
var_108         = qword ptr -108h
var_100         = dword ptr -100h
var_F8          = qword ptr -0F8h
var_F0          = qword ptr -0F0h
var_E0          = dword ptr -0E0h
var_DC          = byte ptr -0DCh
var_30          = qword ptr -30h
arg_8           = dword ptr  18h
arg_10          = qword ptr  20h

; FUNCTION CHUNK AT 000000014048DBC6 SIZE 000000F6 BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp-8+arg_10], rbx
                mov     [rsp-8+arg_8], edx
                push    rbp
                push    rsi
                push    rdi
                push    r12
                push    r14
                lea     rbp, [rsp-10h]
                sub     rsp, 110h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rbp+30h+var_30], rax
                mov     rdi, rcx
                xor     edx, edx
                lea     rcx, [rsp+130h+var_E0]
                mov     r8d, 0A8h
                call    memset
                and     [rsp+130h+var_F8], 0
                and     [rsp+130h+var_F0], 0
                mov     rsi, cr8
                mov     eax, 2
                mov     cr8, rax
                or      r14, 0FFFFFFFFFFFFFFFFh
                lea     r12d, [rax-1]
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14048DBC6

loc_14036BFEE:                          ; CODE XREF: KeUpdateThreadTag+121C49↓j
                                        ; KeUpdateThreadTag+121C53↓j ...
                mov     rbx, gs:20h
                and     [rsp+130h+var_100], 0

loc_14036BFFC:                          ; CODE XREF: KeUpdateThreadTag+266↓j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14048DC09

loc_14036C00C:                          ; CODE XREF: KeUpdateThreadTag+121C8D↓j
                                        ; KeUpdateThreadTag+121C9C↓j ...
                lock bts qword ptr [rdi+40h], 0
                jb      loc_14036C1C3
                movzx   eax, byte ptr [rdi+7Ch]
                cmp     eax, [rbp+30h+arg_8]
                jz      short loc_14036C073
                mov     rax, gs:188h
                cmp     rdi, rax
                jnz     loc_14036C0B5
                mov     rbx, gs:20h
                mov     [rsp+130h+var_F8], rbx
                cli
                xor     r8d, r8d
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_1402CC660
                mov     eax, [rbp+30h+arg_8]
                test    eax, eax
                jz      loc_14036C0F2
                lock bts dword ptr [rdi], 14h

loc_14036C061:                          ; CODE XREF: KeUpdateThreadTag+177↓j
                xor     r8d, r8d
                mov     [rdi+7Ch], al
                mov     rdx, rdi
                mov     rcx, rbx
                call    sub_14028DFE0
                sti

loc_14036C073:                          ; CODE XREF: KeUpdateThreadTag+A0↑j
                                        ; KeUpdateThreadTag+170↓j
                mov     rcx, rdi
                call    sub_1403261B0
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     loc_14048DC57

loc_14036C089:                          ; CODE XREF: KeUpdateThreadTag+121CDA↓j
                                        ; KeUpdateThreadTag+121CE6↓j ...
                movzx   eax, sil
                mov     cr8, rax
                mov     rcx, [rbp+30h+var_30]
                xor     rcx, rsp
                call    __security_check_cookie
                mov     rbx, [rsp+130h+arg_10]
                add     rsp, 110h
                pop     r14
                pop     r12
                pop     rdi
                pop     rsi
                pop     rbp
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14036C0B5:                          ; CODE XREF: KeUpdateThreadTag+AE↑j
                lea     r8, [rsp+130h+var_F0]
                mov     rcx, rdi
                lea     rdx, [rsp+130h+var_F8]
                call    sub_14028DCC0
                cmp     al, 2
                jz      short loc_14036C103
                mov     al, [rdi+71h]
                test    al, al
                jnz     short loc_14036C103
                mov     eax, [rbp+30h+arg_8]
                test    eax, eax
                jz      short loc_14036C0FC
                lock bts dword ptr [rdi], 14h

loc_14036C0DE:                          ; CODE XREF: KeUpdateThreadTag+181↓j
                mov     [rdi+7Ch], al

loc_14036C0E1:                          ; CODE XREF: KeUpdateThreadTag+200↓j
                mov     r8, [rsp+130h+var_F0]
                mov     rdx, [rsp+130h+var_F8]
                call    sub_1402B86D0
                jmp     short loc_14036C073
; ---------------------------------------------------------------------------

loc_14036C0F2:                          ; CODE XREF: KeUpdateThreadTag+D6↑j
                lock btr dword ptr [rdi], 14h
                jmp     loc_14036C061
; ---------------------------------------------------------------------------

loc_14036C0FC:                          ; CODE XREF: KeUpdateThreadTag+157↑j
                lock btr dword ptr [rdi], 14h
                jmp     short loc_14036C0DE
; ---------------------------------------------------------------------------

loc_14036C103:                          ; CODE XREF: KeUpdateThreadTag+149↑j
                                        ; KeUpdateThreadTag+150↑j
                mov     ebx, [rdi+218h]
                lea     rcx, [rsp+130h+var_DC]
                xor     edx, edx
                mov     [rsp+130h+var_E0], 140001h
                mov     r8d, 0A4h
                btr     ebx, 1Fh
                call    memset
                mov     edx, ebx
                lea     rcx, [rsp+130h+var_E0]
                call    KeAddProcessorAffinityEx
                mov     rcx, cr8
                mov     eax, 0Ch
                mov     cr8, rax
                mov     eax, cs:dword_140CFC660
                test    eax, eax
                jnz     short loc_14036C18A

loc_14036C14A:                          ; CODE XREF: KeUpdateThreadTag+20D↓j
                                        ; KeUpdateThreadTag+212↓j ...
                and     [rsp+130h+var_108], 0
                lea     rax, [rbp+30h+arg_8]
                mov     r9, rdi
                mov     [rsp+130h+var_110], rax
                lea     r8, sub_14036BF60
                xor     ecx, ecx
                lea     rdx, [rsp+130h+var_E0]
                call    sub_1402B91B0
                mov     rcx, gs:20h

loc_14036C178:                          ; CODE XREF: KeUpdateThreadTag+208↓j
                mov     eax, [rcx+2D80h]
                test    eax, eax
                jz      loc_14036C0E1
                pause
                jmp     short loc_14036C178
; ---------------------------------------------------------------------------

loc_14036C18A:                          ; CODE XREF: KeUpdateThreadTag+1C8↑j
                test    r12b, al
                jz      short loc_14036C14A
                cmp     cl, 0Fh
                ja      short loc_14036C14A
                mov     rax, gs:20h
                mov     rdx, r14
                movzx   ecx, cl
                add     ecx, r12d
                shl     rdx, cl
                mov     r9, [rax+84B8h]
                and     edx, 1FFCh
                mov     r8d, [r9+14h]
                or      r8d, edx
                mov     [r9+14h], r8d
                jmp     short loc_14036C14A
; ---------------------------------------------------------------------------

loc_14036C1C3:                          ; CODE XREF: KeUpdateThreadTag+93↑j
                mov     rcx, [rbx+84B8h]
                test    rcx, rcx
                jnz     loc_14048DC30

loc_14036C1D3:                          ; CODE XREF: KeUpdateThreadTag+264↓j
                                        ; KeUpdateThreadTag+121CB4↓j ...
                lea     rcx, [rsp+130h+var_100]
                call    sub_1402C8C70
                mov     rax, [rdi+40h]
                test    rax, rax
                jnz     short loc_14036C1D3
                jmp     loc_14036BFFC
; } // starts at 14036BF80
KeUpdateThreadTag endp
