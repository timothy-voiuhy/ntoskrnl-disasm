
with open("ntdll.asm", "r")as file:
    lines  = file.readlines()
    file.close()

lines_of_interest = []
count  = 0
for line in lines:
    count += 1
    if count == 641516:
        # lines_of_interest.append(line)
        print(line)
    elif count == 641533:
        print(line)
    if count >= 641516 and count <= 641533:
        lines_of_interest.append(line)
        # lines.remove(line)

# for l in lines:
#     if l in lines_of_interest:
#         lines.remove(l)

# with open("ntdll.asm", "w") as ntdll:
#     ntdll.writelines(lines)

with open("_cfg.asm", "a") as rdata_file:
    rdata_file.writelines(lines_of_interest)                