# ~/.zshrc
##############################################################################
#
# Interactive Configuration for ZSH Environment
#
##############################################################################

##############################################################################
#
# Source the individual zsh configuration files.
#
zshrc_dirs=(${HOME}/.zsh/zshrc.d)
foreach zshrc_dir in ${zshrc_dirs} ; do
	foreach cfg_file in ${zshrc_dir}/* ; do
		. "${cfg_file}"
	done
done
unset zshrc_dirs

##############################################################################
#
# Typeset -U will eliminate any duplicates in the myrid of directories that
# were set in all of the configuration files!
#
typeset -U path
typeset -U manpath
typeset -U fignore
typeset -U fpath

##############################################################################
# vim: syntax=zsh
##############################################################################
