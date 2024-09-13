i have disassembled the windows kernel file (ntoskrnl.exe ) using ida64 and produced an asm file, i then processed the asm file to extract
out all the subroutines in the file and ended up grouping them in  the would be libraries they were in eg memory mangement functions file system management, and so o 
Here the functions that respond to the windows api functions in the ntdll.dll are cleary visible.
The windows syscall numbers are also clearly visible in the ntdll.dll disasmbly which is also in another folder i have put 
with this one can easily perfom direct syscalls without using the ntdll.dll or kernel32.dll or the user32.dll functions 
EDUCATIONAL PURPOSES ONLY !!!!!!!!!!!!!!
