# SECTION 11.1 - Copying Files (dd command)
# Navigate back to home directory
cd ~
# Create a 50MB file filled with binary zeros
# if = input file (/dev/zero = unlimited zeros)
# of = output file 
# bs = block size 
# count = number of blocks to copy
dd if=/dev/zero of=/tmp/swapex bs=1M count=50
# SECTION 12 - Moving Files (mv command)
# Navigate to the Documents directory
cd ~/Documents

# Move a file to a directory
mv people.csv Work

# Verify the file was moved
ls Work

# Move multiple files to a directory at once
mv numbers.txt letters.txt alpha.txt School

# Verify the files were moved
ls School

# Rename a file by moving it within the same directory
mv animals.txt zoo.txt

# Verify the rename
ls

# SECTION 13 - Removing Files (rm command)

# Navigate to the Documents directory
cd ~/Documents

# Remove a regular file permanently
rm linux.txt

# Verify the file was removed
ls linux.txt

# Try to remove a directory without options (this will fail)
rm Work

# Remove a directory and all its contents recursively
rm -r Work

# Verify the directory was removed
ls Work

# SECTION 14 - Filtering Input (grep command)
# Navigate to the Documents directory
cd ~/Documents

# Copy /etc/passwd to current directory (required for grep examples)
cp /etc/passwd .

# Search for a specific user pattern in the passwd file
grep sysadmin passwd
