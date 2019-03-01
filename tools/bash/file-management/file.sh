##################################################################
# Search recursively within current directory for a specific file
# or directory.
#
# Example: pwrfile something
##################################################################
function findf() {
  find . -iname "$1"
}
