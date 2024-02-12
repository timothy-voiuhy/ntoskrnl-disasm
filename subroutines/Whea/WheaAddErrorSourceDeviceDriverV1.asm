WheaAddErrorSourceDeviceDriverV1 proc near
                                        ; DATA XREF: .pdata:00000001400DEBF4↑o

var_68          = xmmword ptr -68h
var_58          = xmmword ptr -58h
var_48          = qword ptr -48h
var_40          = dword ptr -40h
var_3C          = dword ptr -3Ch
var_38          = dword ptr -38h
var_34          = xmmword ptr -34h
var_24          = xmmword ptr -24h

                sub     rsp, 88h
                cmp     dword ptr [rdx], 1
                jnz     short loc_1403BACC1
                movups  xmm0, xmmword ptr [rdx]
                mov     eax, [rdx+28h]
                movups  xmm1, xmmword ptr [rdx+10h]
                mov     [rsp+88h+var_40], eax
                movaps  [rsp+88h+var_68], xmm0
                movsd   xmm0, qword ptr [rdx+20h]
                lea     rdx, [rsp+88h+var_68]
                movsd   [rsp+88h+var_48], xmm0
                movups  xmm0, cs:xmmword_14001F700
                mov     [rsp+88h+var_3C], r9d
                movaps  [rsp+88h+var_58], xmm1
                movups  xmm1, cs:xmmword_14001F6F0
                mov     [rsp+88h+var_38], 1
                movdqu  [rsp+88h+var_34], xmm0
                mov     dword ptr [rsp+88h+var_68], 2
                movdqu  [rsp+88h+var_24], xmm1
                call    WheaAddErrorSourceDeviceDriver

loc_1403BACB8:                          ; CODE XREF: WheaAddErrorSourceDeviceDriverV1+76↓j
                add     rsp, 88h
                retn
; ---------------------------------------------------------------------------
                db 0CCh
; ---------------------------------------------------------------------------

loc_1403BACC1:                          ; CODE XREF: WheaAddErrorSourceDeviceDriverV1+A↑j
                mov     eax, 0C00000F0h
                jmp     short loc_1403BACB8
WheaAddErrorSourceDeviceDriverV1 endp
