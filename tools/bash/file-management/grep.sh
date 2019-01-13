##################################################################
# Search recursively within current directory for entered in text.
# This will search filenames and text within files.
#
# Example: pwrgrep something
##################################################################
function pwrgrep() {
  find . -type f \( -name '*' -o -name '*.*' -o -name '.*' \) -print0 | xargs -0 grep --color -n "$@"
}
