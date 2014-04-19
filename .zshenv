# ~/.zshenv
##############################################################################
#
# Non-interactive Configuration for ZSH Environment
#
##############################################################################

##############################################################################
#
# Initialize the system variables.  This allows the variables to be appended
# by files within zshenv.d.
#
ld_library_path=()
typeset -T LD_LIBRARY_PATH ld_library_path

manpath=()
# typeset -T unnecessary, manpath is automatically tied MANPATH.

path=()
# typeset -T unnecessary, path is automatically tied to PATH.

##############################################################################
#
# Source the individual zshenv configuration files.
#
zshenv_dirs=(${HOME}/.zsh/zshenv.d)
if [ "$zshenv_dirs" != "" ] ; then
	foreach zshenv_dir in ${zshenv_dirs} ; do
		foreach cfg_file in ${zshenv_dir}/* ; do
			. "${cfg_file}"
		done
	done
fi
unset zshenv_dirs

##############################################################################
#
# Setup of path, manpath, and others is now complete.  Finalize the setup by
# removing duplicates.
#
typeset -U ld_library_path
export LD_LIBRARY_PATH
typeset -U manpath
export MANPATH
typeset -U path
export PATH

##############################################################################
# vim: syntax=zsh
##############################################################################
