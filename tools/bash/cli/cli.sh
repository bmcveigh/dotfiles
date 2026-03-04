# -------------------------------------------------------
# Aliases and functions for Built in UNIX/Linux commands.
# -------------------------------------------------------

# View all aliases.
alias a='alias'

# Find and open files using FZF.
alias f='file=$(fzf --style full --preview "fzf-preview.sh {}") && [ -n "$file" ] && nvim "$file"'

# List all files in a directory, including private files.
alias l='eza -l --icons --long --all'
