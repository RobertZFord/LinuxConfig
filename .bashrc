# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias google='w3m google.com'
alias wikipedia='w3m en.wikipedia.org'
alias forums='w3m forums.somethingawful.com'
alias suspend='systemctl suspend ; exit'
