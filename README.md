linux-shelladdon
================

* (optional) link '\_shelladdonrc' and '\_sh.d' to your $HOME
* execute 'shelladdonrc' somewhere in your shells .rc (e.g.: $HOME/.zshrc)
* available commands
	* `$ shelladdon list`
	* `$ shelladdon enable <addon name>`
	* `$ shelladdon disable <addon name>`
* setup example for zsh
	* `$ ln -s /path/to/git/cloned/repo/_shelladdonrc $HOME/.shelladdonrc`
	* `$ ln -s /path/to/git/cloned/repo/_sh.d $HOME/.sh.d`
	* `$ echo "source \$HOME/.shelladdonrc" | tee -a $HOME/.zshrc`
