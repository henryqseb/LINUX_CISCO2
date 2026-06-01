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

# SECTION 14.1 - Regular Expressions (Basic)
#Regular Expressions (Theory - no commands)

# SECTION 14.2 - Basic Patterns with grep
# Navigate to Documents directory
cd ~/Documents

# Simple literal pattern search
grep sysadmin passwd

# Anchor ^ : lines that start with root
grep 'root' passwd

# Use ^ anchor to match only lines starting with root
grep '^root' /etc/passwd

# View contents of alpha-first.txt
cat alpha-first.txt

# Use $ anchor to match lines ending with 'r'
grep 'r$' alpha-first.txt

# View contents of red.txt
cat red.txt

# Use . (dot) to match any single character
# Pattern r..f = r + any 2 chars + f
grep 'r..f' red.txt

# Pattern r..d = r + any 2 chars + d
grep 'r..d' red.txt

# Match lines with at least 4 characters
grep '....' red.txt

# Search pattern r..t inside /etc/passwd
grep 'r..t' /etc/passwd

# View contents of profile.txt
cat profile.txt

# Use [] to match any digit (0 through 9)
grep '[0-9]' profile.txt

# Use [^] to match lines containing non-numeric characters
grep '[^0-9]' profile.txt

# Use [.] to match lines containing a literal dot
grep '[.]' profile.txt

# Use * to match zero or more occurrences of previous character
# Pattern re*d matches rd, red, reed, reeed, etc.
grep 're*d' red.txt

# Use [] with * to match zero or more of a set of characters
grep 'r[oe]*d' red.txt

# Match lines containing at least one 'e' using ee*
grep 'ee*' red.txt

# Use * with z - matches zero or more z matches every line since z can appear 0 times
grep 'z*' red.txt

# Use * with e - matches zero or more e matches every line since e can appear 0 times
grep 'e*' red.txt

# SECTION 15 - Shutting Down the System (shutdown command)
# Switch to root account (password: netlab123)
su -

# Shut down the system immediately
shutdown now

# Check current system date and time
date

# Schedule shutdown at a specific time
shutdown 01:51

# Schedule shutdown in 1 minute with a custom broadcast message
shutdown +1 "Goodbye World!"

# SECTION 16 - Network Configuration (ifconfig and ping)
# Display all network interface configurations
ifconfig

# Send 4 ping packets to verify connectivity to a host
ping -c 4 192.168.1.2

# Ping a host that does not exist shows Destination Host Unreachable
ping -c 4 192.168.1.3

# Exit root account
exit

# SECTION 17 - Viewing Processes (ps command)
# Display processes running in the current terminal
ps

# Display ALL processes running on the system
ps -e

# Display all processes with full details (user, PID, PPID, command with args)
ps -ef

# SECTION 18 - Package Management (apt-get)
# Update the list of available packages from repositories
sudo apt-get update

# Search for packages related to a keyword
apt-cache search cow

# Install a package cowsay
sudo apt-get install cowsay

# Use the installed cowsay command
cowsay 'NDG Linux Unhatched'

# Update all installed packages
sudo apt-get update
sudo apt-get upgrade

# Remove a package and all its configuration files (purge)
sudo apt-get purge cowsay

# SECTION 19 - Updating User Passwords (passwd command)
# Change the password of the current user (sysadmin)
passwd

# View password status information for a user
passwd -S sysadmin

# Switch to root account to change another user's password
su root

# Change the password of the sysadmin user (as root)
passwd sysadmin

# Exit root account
exit

# SECTION 20 - I/O Redirection
# Navigate to the Documents directory
cd ~/Documents

# Display file content in terminal standard output - STDOUT
cat food.txt

# Redirect STDOUT to a new file overwrites if file exists
cat food.txt > newfile1.txt

# Verify the content was written to the new file
cat newfile1.txt

# Print a string to the terminal using echo
echo "Hello"

# Redirect echo output to a file overwrites existing content
echo "I like food." > newfile1.txt

# Verify the file content was overwritten
cat newfile1.txt

# Append content to an existing file using >>
echo "This food is good." >> newfile1.txt

# Verify both lines exist in the file
cat newfile1.txt

# SECTION 21 - Text Editor (vi/vim)
# Open or create a file with vi
vi newfile.txt

# COMMAND MODE - Movement keys 
# h = left, j = down, k = up, l = right
# w = one word forward, b = one word backward
# ^ = beginning of line, $ = end of line
# 5G = go to line 5, gg = first line, G = last line

# EX MODE - Enter with :
# :w = save file
# :q = quit
# :wq = save and quit
# :q! = quit without saving
# :w filename = save as filename

# INSERT MODE - Enter with:
# a = insert after cursor
# A = insert at end of line
# i = insert before cursor
# I = insert at beginning of line
# o = new line after cursor
# O = new line before cursor
# Press Esc to return to command mode

# COMMAND MODE - Actions 
# dd = delete current line
# 3dd = delete next 3 lines
# dw = delete current word
# yy = yank (copy) current line
# p = put (paste) after cursor
# P = put before cursor

# SECTION 22 - Moving Forward (No commands - course closing section)
# This section provides information about next courses
# - NDG Linux Essentials
# - NDG Linux Series 
# - IT Essentials
