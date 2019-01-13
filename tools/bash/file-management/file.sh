##################################################################
# Search recursively within current directory for a specific file
# or directory.
#
# Example: pwrfile something
##################################################################
function pwrfile() {
  find . -iname "$1"
}
