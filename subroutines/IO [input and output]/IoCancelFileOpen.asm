IoCancelFileOpen proc near              ; CODE XREF: sub_140653C50+1596↑p
                                        ; DATA XREF: .pdata:000000014011C958↑o

var_38          = qword ptr -38h
var_28          = xmmword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h

                mov     r11, rsp
                mov     [r11+8], rbx
                mov     [r11+10h], rbp
                mov     [r11+18h], rdi
                push    r14
                sub     rsp, 50h
                xor     eax, eax
                xorps   xmm0, xmm0
                test    dword ptr [rdx+50h], 40000h
                mov     rbx, rdx
                movups  [rsp+58h+var_28], xmm0
                mov     [r11-18h], rax
                mov     r14, rcx
                jz      short loc_140894DE7
                and     [r11-38h], rax
                mov     r8, rcx
                mov     ecx, 0E8h
                xor     r9d, r9d
                call    KeBugCheckEx
                int     3               ; Trap to Debugger
; ---------------------------------------------------------------------------

loc_140894DE7:                          ; CODE XREF: IoCancelFileOpen+30↑j
                xor     r8d, r8d
                lea     rcx, [rsp+58h+var_28]
                lea     edx, [r8+1]
                call    KeInitializeEvent
                test    dword ptr [rbx+50h], 4000000h
                lea     rbp, [rbx+98h]
                jnz     short loc_140894E10
                mov     rcx, rbp
                call    KeResetEvent

loc_140894E10:                          ; CODE XREF: IoCancelFileOpen+66↑j
                mov     dl, [r14+4Ch]
                mov     rcx, r14
                call    sub_140235BA0
                mov     rdi, rax
                mov     [rax+0C0h], rbx
                mov     rcx, gs:188h
                and     qword ptr [rdi+58h], 0
                mov     [rax+98h], rcx
                lea     rcx, [rdi+30h]
                mov     [rdi+48h], rcx
                mov     rcx, [rdi+0B8h]
                mov     byte ptr [rax+40h], 0
                lea     rax, [rsp+58h+var_28]
                mov     [rdi+50h], rax
                mov     dword ptr [rdi+10h], 404h
                mov     byte ptr [rcx-48h], 12h
                mov     [rcx-18h], rbx
                mov     rcx, rdi
                call    sub_140245C90
                mov     rdx, rdi
                mov     rcx, r14
                call    PoCallDriver
                cmp     eax, 103h
                jnz     short loc_140894E9A
                and     [rsp+58h+var_38], 0
                lea     rcx, [rsp+58h+var_28]
                xor     r9d, r9d
                xor     r8d, r8d
                lea     edx, [r9+6]
                call    KeWaitForSingleObject

loc_140894E9A:                          ; CODE XREF: IoCancelFileOpen+DE↑j
                mov     rcx, rdi
                call    sub_14023FD10
                mov     rcx, rdi
                call    IoFreeIrp
                mov     rcx, rbp
                call    KeResetEvent
                bts     dword ptr [rbx+50h], 15h
                cmp     qword ptr [rbx+0D0h], 0
                jz      short loc_140894EC9
                mov     rcx, rbx
                call    sub_14034ACD8

loc_140894EC9:                          ; CODE XREF: IoCancelFileOpen+11F↑j
                mov     rbx, [rsp+58h+arg_0]
                mov     rbp, [rsp+58h+arg_8]
                mov     rdi, [rsp+58h+arg_10]
                add     rsp, 50h
                pop     r14
                retn
; ---------------------------------------------------------------------------
                db 0CCh
IoCancelFileOpen endp
