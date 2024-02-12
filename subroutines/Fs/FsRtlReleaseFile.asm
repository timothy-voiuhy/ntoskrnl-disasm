FsRtlReleaseFile proc near              ; CODE XREF: sub_14021B194+1F2↑p
                                        ; sub_1402604A0+500↑p ...

var_298         = qword ptr -298h
var_290         = byte ptr -290h
var_288         = dword ptr -288h
var_280         = qword ptr -280h
var_278         = byte ptr -278h
var_270         = qword ptr -270h
var_268         = qword ptr -268h
var_238         = byte ptr -238h
var_38          = qword ptr -38h
var_28          = byte ptr -28h
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

; FUNCTION CHUNK AT 0000000140813E78 SIZE 0000008F BYTES

; __unwind { // __GSHandlerCheck
                mov     [rsp+arg_8], rbx
                mov     [rsp+arg_10], rbp
                mov     [rsp+arg_18], rsi
                push    rdi
                push    r12
                push    r13
                push    r14
                push    r15
                sub     rsp, 290h
                mov     rax, cs:__security_cookie
                xor     rax, rsp
                mov     [rsp+2B8h+var_38], rax
                mov     r15, rcx
                xor     edx, edx
                lea     rcx, [rsp+2B8h+var_278]
                mov     r8d, 238h
                call    memset
                xor     r14d, r14d
                lea     rsi, [rsp+2B8h+var_278]
                mov     rcx, r15
                mov     [rsp+2B8h+var_288], r14d
                xor     edi, edi
                xor     r13b, r13b
                call    IoGetRelatedDeviceObject
                mov     rcx, r15
                mov     r12, rax
                call    IoGetBaseFileSystemDeviceObject
                mov     rcx, rax
                mov     [rsp+2B8h+var_280], rax
                mov     rbx, [rax+8]
                mov     rbp, [rbx+50h]
                mov     rbx, [rbx+30h]
                mov     rbx, [rbx+30h]
                test    rbx, rbx
                jz      short loc_14068FB78
                mov     eax, [rbx]
                cmp     eax, 20h ; ' '
                jb      short loc_14068FB69
                cmp     [rbx+18h], rdi
                jnz     loc_140813E78

loc_14068FB69:                          ; CODE XREF: FsRtlReleaseFile+8D↑j
                cmp     eax, 28h ; '('
                jb      short loc_14068FB78
                cmp     [rbx+20h], rdi
                jnz     loc_140813E78

loc_14068FB78:                          ; CODE XREF: FsRtlReleaseFile+86↑j
                                        ; FsRtlReleaseFile+9C↑j ...
                cmp     r12, rcx
                jz      loc_140813E80

loc_14068FB81:                          ; CODE XREF: FsRtlReleaseFile+1843B3↓j
                mov     [rsp+2B8h+var_290], dil
                lea     rcx, [rsp+2B8h+var_278]
                mov     r8, r12
                mov     [rsp+2B8h+var_298], r15
                mov     dl, 0FEh
                call    sub_1402D4EA0
                lea     r9, [rsp+2B8h+var_288]
                xor     r8d, r8d
                xor     edx, edx
                lea     rcx, [rsp+2B8h+var_278]
                call    sub_1402D4B80
                mov     r14d, [rsp+2B8h+var_288]
                mov     edi, eax

loc_14068FBB5:                          ; CODE XREF: FsRtlReleaseFile+1843BB↓j
                test    edi, edi
                js      short loc_14068FC33
                jnz     loc_140813E90
                test    rsi, rsi
                jz      short loc_14068FBD7
                test    [rsp+2B8h+var_238], 4
                mov     r15, [rsp+2B8h+var_268]
                jnz     loc_140813EA2

loc_14068FBD7:                          ; CODE XREF: FsRtlReleaseFile+F2↑j
                mov     r13, [rsp+2B8h+var_280]
                xor     r12b, r12b

loc_14068FBDF:                          ; CODE XREF: FsRtlReleaseFile+1843F2↓j
                test    rbx, rbx
                jz      short loc_14068FBFE
                mov     eax, [rbx]
                cmp     eax, 20h ; ' '
                jb      short loc_14068FBF2
                cmp     qword ptr [rbx+18h], 0
                jnz     short loc_14068FC2A

loc_14068FBF2:                          ; CODE XREF: FsRtlReleaseFile+119↑j
                cmp     eax, 28h ; '('
                jb      short loc_14068FBFE
                cmp     qword ptr [rbx+20h], 0
                jnz     short loc_14068FC2A

loc_14068FBFE:                          ; CODE XREF: FsRtlReleaseFile+112↑j
                                        ; FsRtlReleaseFile+125↑j
                test    rbp, rbp
                jz      loc_140813EC7
                cmp     dword ptr [rbp+0], 68h ; 'h'
                jb      loc_140813EC7
                mov     rax, [rbp+60h]
                test    rax, rax
                jz      loc_140813EC7
                mov     rcx, r15
                call    sub_1404079D0

loc_14068FC26:                          ; CODE XREF: FsRtlReleaseFile+1843FC↓j
                or      r14d, 1

loc_14068FC2A:                          ; CODE XREF: FsRtlReleaseFile+120↑j
                                        ; FsRtlReleaseFile+12C↑j
                test    r12b, r12b
                jnz     loc_140813ED1

loc_14068FC33:                          ; CODE XREF: FsRtlReleaseFile+E7↑j
                                        ; FsRtlReleaseFile+1843CD↓j ...
                cmp     edi, 0C0000010h
                jz      loc_140813EDF

loc_14068FC3F:                          ; CODE XREF: FsRtlReleaseFile+184413↓j
                                        ; FsRtlReleaseFile+184432↓j
                test    rsi, rsi
                jz      short loc_14068FC61
                cmp     word ptr [rsi+4Ah], 0
                jbe     short loc_14068FC57
                mov     edx, edi
                lea     rcx, [rsp+2B8h+var_278]
                call    sub_1402D4AF0

loc_14068FC57:                          ; CODE XREF: FsRtlReleaseFile+179↑j
                lea     rcx, [rsp+2B8h+var_278]
                call    sub_1402D4AD0

loc_14068FC61:                          ; CODE XREF: FsRtlReleaseFile+172↑j
                call    KeLeaveCriticalRegion
                mov     rcx, [rsp+2B8h+var_38]
                xor     rcx, rsp
                call    __security_check_cookie
                lea     r11, [rsp+2B8h+var_28]
                mov     rbx, [r11+38h]
                mov     rbp, [r11+40h]
                mov     rsi, [r11+48h]
                mov     rsp, r11
                pop     r15
                pop     r14
                pop     r13
                pop     r12
                pop     rdi
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; } // starts at 14068FAD0
FsRtlReleaseFile endp
