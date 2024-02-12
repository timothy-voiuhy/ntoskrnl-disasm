; Section 8. (virtual address 00185000)
; Virtual size                  : 00000008 (      8.)
; Section size in file          : 00000200 (    512.)
; Offset to raw data for section: 00177C00
; Flags 40000040: Data Readable
; Alignment     : default
; ===========================================================================

; Segment type: Pure data
; Segment permissions: Read
_00cfg          segment para public 'DATA' use64
                assume cs:_00cfg
                ;org 180185000h
__guard_dispatch_icall_fptr dq offset _guard_dispatch_icall_nop
                                        ; DATA XREF: sub_180001340+1D↑r
                                        ; sub_180001458+CC↑r ...
                align 1000h
_00cfg          ends
