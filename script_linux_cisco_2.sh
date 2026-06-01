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
