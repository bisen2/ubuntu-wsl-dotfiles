#! /usr/bin/env bash

# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

EDITOR=vim

PS1='\[\e[34m\]\u@\h\[\e[m\] \[\e[33m\]\W\[\e[m\] \$ '

export XDG_CONFIG_DIRS=~/.config
export XDG_CONFIG_HOME=~/.config
#export RTV_BROWSER='w3m'

# tab complete even with sudo
complete -cf sudo

# environment variables
export CMAKE_GENERATOR="Unix Makefiles"

# aliases
alias ls='ls --color=auto'
alias celar='clear'
alias :q='exit'
alias :e='vim'
alias :h='man'
alias l='ls'
alias la='ls -A'
alias lht='ls -lht'
alias laht='ls -Alht'
alias lahtless='ls -Alht --color=always | \less -r'
alias neofetch='echo && neofetch'
alias nano='nano -m' # adds mouse interactions
alias lsblk='lsblk -o NAME,SIZE,FSTYPE,OWNER,MOUNTPOINT'
alias pgrep='pgrep -fil'
alias df='df -h'
alias mv='mv -iv'
alias cp='cp -iv'
alias chmod='chmod -v'
alias chown='chown -v'
alias dd='dd status=progress'
#alias rm='trash-put'
alias sudo='sudo -E ' # run sudo with user env and aliases
#alias cat='bat'
#alias less='bat'
alias cd..='cd ..'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias devshell.exe="powershell.exe -noe -c \"Import-Module 'C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\Tools\Microsoft.VisualStudio.DevShell.dll'; Enter-VsDevShell 128da1f9 -StartInPath .\""
alias python='python3'

VSPRO='/mnt/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2019/Professional/Common7/IDE/devenv.exe'
VSCOM='/mnt/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio/2019/Community/Common7/IDE/devenv.exe'
if [ -f "$VSPRO" ]; then
	alias vs.exe='$VSPRO'
	alias devshell.exe="powershell.exe -noe -c \"Import-Module 'C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\Common7\Tools\Microsoft.VisualStudio.DevShell.dll'; Enter-VsDevShell 128da1f9 -StartInPath .\""
elif [ -f "$VSCOM" ]; then
	alias vs.exe='$VSCOM'
fi

#if [ "$TERM" != "linux" ] && [ "x${SSH_TTY}" = "x" ]; then
	#powerline-daemon -q
	#POWERLINE_BASH_CONTINUATION=1
	#POWERLINE_BASH_SELECT=1
	# . /usr/share/powerline/bindings/bash/powerline.sh
	#source /usr/share/powerline/bindings/bash/powerline.sh
#fi

