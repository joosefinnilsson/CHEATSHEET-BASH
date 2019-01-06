# Print first pages from all files from a directory
lp -dhp -P1-1 -o media=a4 *

# Prints files
lpr file

# Removes all existing printers
lpstat -p | cut -d' ' -f2 | xargs -I{} lpadmin -x {}

# Removes all existing printers
lpstat -p | cut -d' ' -f2 | xargs -I{} lpadmin -x {}
