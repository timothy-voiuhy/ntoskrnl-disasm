import os
import subprocess
working_dir  = os.getcwd()
word_change = "Ki"
target_path = "/home/program/Documents/windows/ntoskrnl/"+word_change
if os.path.isdir(target_path):
    pass
else:
    os.makedirs(target_path)
for dir_path, dir_names, filenames in os.walk(working_dir):
    for filename in filenames:
        if filename.startswith(word_change):
            filepath = dir_path+"/"+filename
            cmd = f"mv "+filepath+" /home/program/Documents/windows/ntoskrnl/"+word_change
            subprocess.Popen(cmd, shell=True)