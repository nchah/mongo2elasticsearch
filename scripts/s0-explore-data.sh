#!/bin/sh
# A collection of quick shell scripts to explore the data
# - always a good step in a data intensive operation


# The number of files in a directory:
# Adjust "." to thd desired directory
find . -type f | wc -l

# The size of all files in a directory
# Adjust the directory
du -ch 'dir' | tail -n 1

# Print out the directory structure
# if available on your system
tree

