# SECTION 11.1 - Copying Files (dd command)
# Navigate back to home directory
cd ~
# Create a 50MB file filled with binary zeros
# if = input file (/dev/zero = unlimited zeros)
# of = output file 
# bs = block size 
# count = number of blocks to copy
dd if=/dev/zero of=/tmp/swapex bs=1M count=50