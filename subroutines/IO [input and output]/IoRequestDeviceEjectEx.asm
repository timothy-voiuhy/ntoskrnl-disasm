IoRequestDeviceEjectEx proc near        ; CODE XREF: IoRequestDeviceEject+C↑p
                                        ; DATA XREF: .pdata:00000001400F2DA8↑o

var_28          = qword ptr -28h
arg_0           = qword ptr  8
arg_8           = qword ptr  10h
arg_10          = qword ptr  18h
arg_18          = qword ptr  20h

                mov     rax, rsp
                mov     [rax+8], rbx
                mov     [rax+10h], rbp
                mov     [rax+18h], rsi
                mov     [rax+20h], rdi
                push    r12
                push    r14
                push    r15
                sub     rsp, 30h
                xor     r15d, r15d
                mov     rsi, r9
                mov     rbp, r8
                mov     r14, rdx
                mov     rbx, rcx
                mov     r12d, 2
                test    rcx, rcx
                jz      loc_14050CD29
                mov     rax, [rcx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_14050CC2E
                test    dword ptr [rcx+18Ch], 20000h
                jnz     loc_14050CC2E
                mov     edx, 5D8h
                mov     ecx, 200h
                mov     r8d, 46706E50h
                call    ExAllocatePoolWithTag
                mov     rdi, rax
                test    rax, rax
                jnz     short loc_14050CBB1
                mov     eax, 0C000009Ah

loc_14050CB91:                          ; CODE XREF: IoRequestDeviceEjectEx+119↓j
                mov     rbx, [rsp+48h+arg_0]
                mov     rbp, [rsp+48h+arg_8]
                mov     rsi, [rsp+48h+arg_10]
                mov     rdi, [rsp+48h+arg_18]
                add     rsp, 30h
                pop     r15
                pop     r14
                pop     r12
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_14050CBB1:                          ; CODE XREF: IoRequestDeviceEjectEx+7A↑j
                mov     rax, [rbx+138h]
                lea     rcx, [rdi+40h]
                mov     rbx, [rax+28h]
                mov     [rdi], r14
                mov     [rdi+8], rbp
                movzx   r8d, word ptr [rbx+28h]
                mov     rdx, [rbx+30h]
                call    memmove
                movzx   eax, word ptr [rbx+28h]
                shr     rax, 1
                mov     [rdi+rax*2+40h], r15w
                test    rsi, rsi
                jz      short loc_14050CBF4
                mov     edx, 45706E50h
                mov     rcx, rsi
                call    ObfReferenceObjectWithTag

loc_14050CBF4:                          ; CODE XREF: IoRequestDeviceEjectEx+D5↑j
                lea     rcx, [rdi+20h]
                mov     [rdi+10h], rsi
                mov     [rdi+1D0h], r15d
                lea     rax, sub_1408A1C90
                mov     [rdi+1D4h], r15w
                mov     edx, 1
                mov     [rcx+10h], rax
                mov     [rcx+18h], rdi
                mov     [rcx], r15
                call    ExQueueWorkItem
                xor     eax, eax
                jmp     loc_14050CB91
; ---------------------------------------------------------------------------

loc_14050CC2E:                          ; CODE XREF: IoRequestDeviceEjectEx+49↑j
                                        ; IoRequestDeviceEjectEx+59↑j
                movzx   edx, word ptr [rbx+2]
                mov     rcx, rbx
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                test    rcx, rcx
                jz      short loc_14050CC73
                movsx   edx, word ptr [rcx+2]
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                add     rcx, 38h ; '8'
                cmp     [rcx], r15w
                jz      short loc_14050CC73
                mov     edx, r12d
                call    sub_1403CC478
                mov     rcx, [rbx+8]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478

loc_14050CC73:                          ; CODE XREF: IoRequestDeviceEjectEx+131↑j
                                        ; IoRequestDeviceEjectEx+148↑j
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                test    rcx, rcx
                jz      loc_14050CD29
                mov     edx, 310h
                lea     rdi, [rcx+28h]
                call    sub_1403CC478
                cmp     [rdi], r15w
                jz      short loc_14050CCB2
                mov     edx, r12d
                mov     rcx, rdi
                call    sub_1403CC478
                movzx   edx, word ptr [rdi]
                mov     rcx, [rdi+8]
                call    sub_1403CC478

loc_14050CCB2:                          ; CODE XREF: IoRequestDeviceEjectEx+189↑j
                mov     rdx, [rbx+138h]
                mov     rcx, [rdx+28h]
                add     rcx, 38h ; '8'
                cmp     [rcx], r15w
                jz      short loc_14050CCEE
                mov     edx, r12d
                call    sub_1403CC478
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478
                mov     rdx, [rbx+138h]

loc_14050CCEE:                          ; CODE XREF: IoRequestDeviceEjectEx+1B5↑j
                mov     rax, [rdx+28h]
                mov     rcx, [rax+10h]
                test    rcx, rcx
                jz      short loc_14050CD29
                add     rcx, 38h ; '8'
                cmp     [rcx], r15w
                jz      short loc_14050CD29
                mov     edx, r12d
                call    sub_1403CC478
                mov     rax, [rbx+138h]
                mov     rcx, [rax+28h]
                mov     rcx, [rcx+10h]
                movzx   edx, word ptr [rcx+38h]
                mov     rcx, [rcx+40h]
                call    sub_1403CC478

loc_14050CD29:                          ; CODE XREF: IoRequestDeviceEjectEx+35↑j
                                        ; IoRequestDeviceEjectEx+171↑j ...
                xor     r9d, r9d
                mov     [rsp+48h+var_28], r15
                mov     r8, rbx
                mov     rdx, r12
                mov     ecx, 0CAh
                call    KeBugCheckEx
; ---------------------------------------------------------------------------
                db 0CCh
IoRequestDeviceEjectEx endp
