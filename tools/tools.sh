export TOOLS_ROOT=$DOTFILES_ROOT/tools;

# Autoload in all of the sh automatically
# instead of manually listing all the sh
# files.
for file in $(pwd)/tools/*/*.sh
do
    source "$file";
done
