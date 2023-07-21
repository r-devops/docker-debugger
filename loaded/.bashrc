# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PS1="
\e[1;32mExit Code = \$? | \$(git config --get remote.origin.url) 
[ \[\e[1;31m\]\u\[\e[m\]@\[\e[1;33m\]\h\[\e[m\] \[\e[1;36m\]\w\[\e[m\] ]\\$ "

cd $HOME 
