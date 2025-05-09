import os
import sys
import re
from tabulate import tabulate

HOME = str(os.getenv("HOME"))

if len(sys.argv) > 1:
    sxhkd_file_path = sys.argv[1]
else:
    sxhkd_file_path = os.path.join(HOME, ".config/sxhkd/sxhkdrc")

sxhkd_file = os.path.join(sxhkd_file_path)

if not os.path.exists(sxhkd_file):
    print("Cannot find sxhkd config file at", sxhkd_file)


with open(sxhkd_file) as f:
    for mark, line in enumerate(f.readlines()):
        line = line.strip('\n')

        # If line is empty
        if line == "":
            # print("EMPTY", line)
            continue

        # Check if line is a comment
        comment_pattern = re.compile(r"^#+\s*(\w.*)")
        comment_line = re.findall(comment_pattern, line)

        if len(comment_line) > 0:
            comment_text = re.search(comment_pattern, line).group(1)
            print(comment_text)
            # print("COMMENT ", line)
            continue
        
        # Pattern for the "command" line
        command_pattern = re.compile(r"^\s+(\w.*)")
        key_pattern = re.compile(r"(\w.*)")
        command_line = re.findall(command_pattern, line)

        # Check if line is a key or a command. 
        if len(command_line) > 0:
            command_text = re.search(command_pattern, line).group(1)
            print(command_text)
            # print("COMMAND ", line)
        else:
            key_text = re.search(key_pattern, line).group(1)
            print(key_text)
            # print("KEY ", line)

