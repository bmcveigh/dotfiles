# Brian McVeigh's Dotfiles

## Inspired and forked from Ryan Bates Dot Files

Check out his dotfiles. [Ryan's Dotfiles](https://github.com/ryanb/dotfiles)

I am running on Mac OS X, but it will likely work on Linux as well.

Also, feel free to fork my implementation of his dotfiles and customize it to your liking.


## Installation

Run the following commands in your terminal. It will prompt you before it does anything destructive. Check out the [Rakefile](https://github.com/ryanb/dotfiles/blob/custom-bash-zsh/Rakefile) to see exactly what it does.

```terminal
cd && git clone https://github.com/bmcveigh/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
rake install
```

After installing, open a new terminal window to see the effects.

Feel free to customize the .zshrc file to match your preference.

## Uninstall

To remove the dotfile configs, run the following commands. Be certain to double check the contents of the files before removing so you don't lose custom settings.

```
unlink ~/.bin
unlink ~/.gitignore
unlink ~/.gemrc
unlink ~/.gvimrc
unlink ~/.irbrc
unlink ~/.vim
unlink ~/.vimrc
rm ~/.zshrc # careful here
rm ~/.gitconfig
rm -rf ~/.dotfiles
rm -rf ~/.oh-my-zsh
chsh -s /bin/bash # change back to Bash if you want
```

Then open a new terminal window to see the effects.

## Creating custom scripts

Scripts are autoloaded from the tools directory. Simply create a directory and a <your_script_name>.sh file with
your script in that directory. Note that it's important to make sure your file has the .sh suffix or else the
autoloader will not load your script. For example, if I have a tool called foo, I would run the
following commands from this repository's root directory:

```
cd tools
mkdir foo
cd foo
touch foo.sh
```
