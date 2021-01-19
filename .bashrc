# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
#alias remountSD="$HOME/scripts/remount_SDCARD"
alias msfconsole="msfconsole --quiet -x \"db_connect ${USER}@msf\""
alias sshensimag="ssh gouloisw@pcserveur.ensimag.fr"
alias sshXensimag="ssh -X gouloisw@pcserveur.ensimag.fr"
alias sftpensimag="sftp gouloisw@pcserveur.ensimag.fr"
alias opentrackerdebug="/mnt/DATA/3ASEOC/ProjetReseau/opentracker/opentracker.debug"
alias vuze="cd /mnt/DATA/3ASEOC/ProjetReseau/equipe4/bittorensimag && java -jar /mnt/DATA/3ASEOC/ProjetReseau/vuze/Azureus2.jar --ui=console"
alias torrents="cd /mnt/DATA/3ASEOC/ProjetReseau/equipe4/bittorensimag/src/test/exampleTorrents"
alias ssi="cd /mnt/DATA/3ASEOC/SSI"

alias ..="cd .."
alias config="vim ~/.config/i3/config"

alias f="fuck"

alias awm="cd /mnt/DATA/Documents/2ASEOC/AWM"
alias ll="ls -lhaG"
alias data="cd /mnt/DATA"
alias jcp="cd /mnt/DATA/Documents/JCP"
alias doc="cd /mnt/DATA/Documents"
alias secu="cd /mnt/DATA/Documents/2ASEOC/SDSR"
alias seoc="cd /mnt/DATA/3ASEOC"
alias progra="cd /mnt/DATA/Progra"
alias eni="cd /mnt/DATA/Documents/2ASEOC/ENI"
alias poo="cd /mnt/DATA/Documents/2ASEOC/POO"
alias pdi="cd /mnt/DATA/Documents/2ASEOC/PDI"
alias sepc="cd /mnt/DATA/Documents/2ASEOC/SEPC"
alias pcsef="cd /mnt/DATA/Documents/2ASEOC/PCSEF"
alias pcsea="cd /mnt/DATA/Documents/2ASEOC/PCSEA"
alias dico="cd /mnt/DATA/Documents/2ASEOC/projet-dico"
alias agl="cd /mnt/DATA/Progra/Angular"
alias projetreseau="cd /mnt/DATA/3ASEOC/ProjetReseau"

alias lightpdf="gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf"

#For ProjetGL
alias gl="cd /mnt/DATA/Documents/2ASEOC/gl52"
alias transgl="cd /mnt/DATA/Documents/2ASEOC/GL/doc/stage"
alias docgl="nohup evince /mnt/DATA/Documents/2ASEOC/GL/doc/poly-projet-GL.pdf & exit"

#For john the ripper
alias john="/mnt/DATA/Documents/2ASEOC/SDSR/john/run/john"
#. /mnt/DATA/Documents/2ASEOC/SDSR/john/run/john.bash_completion

#for spotify HiDPi
#alias spotify="spotify --force-device-scale-factor=2"

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/william/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/home/william/anaconda3/etc/profile.d/conda.sh" ]; then
#        . "/home/william/anaconda3/etc/profile.d/conda.sh"
    #else
    #    export PATH="/home/william/anaconda3/bin:$PATH"
   # fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

#Projet Réseau
PATH=/mnt/DATA/3ASEOC/ProjetReseau/equipe4/bittorensimag/src/main/bin:"$PATH"
PATH=/mnt/DATA/3ASEOC/ProjetReseau/equipe4/bittorensimag/src/test/script:"$PATH"


#Projet GL
#PATH=/mnt/DATA/Documents/2ASEOC/GL/bin:"$PATH"
PATH=/mnt/DATA/Documents/2ASEOC/gl52/src/main/bin:"$PATH"
PATH=/mnt/DATA/Documents/2ASEOC/gl52/src/test/script:"$PATH"
PATH=/mnt/DATA/Documents/2ASEOC/gl52/src/test/script/launchers:"$PATH"
PATH=/mnt/DATA/Documents/2ASEOC/gl52/imaaa/bin:"$PATH"
export PATH

#fuck
eval "$(thefuck --alias)"

#PS1="\[\e[1;31m\]\u\[\e[1;34m\]@\[\e[1;32m\]\h\[\e[1;34m\]:\[\e[1;33m\]\w\[\e[0m\]\$ "

#powerline
function _update_ps1() {
    PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

export PATH=$PATH:~/.local/bin:

#SQL Oracle
export ORACLE_HOME=/opt/oracle
export LD_LIBRARY_PATH=$ORACLE_HOME:$ORACLE_HOME/bin:$LD_LIBRARY_PATH
export TNS_ADMIN=$ORACLE_HOME
export CLASSPATH=$CLASSPATH:$ORACLE_HOME/ojdbc6.jar:
export PATH=$ORACLE_HOME:$PATH

export GOPATH=$HOME/go
export PATH=$PATH:$HOME/go/bin

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/jre
export JDK_HOME=/usr/lib/jvm/java-8-openjdk
export PATH=$PATH:$JAVA_HOME/bin

#dev web
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#Dev android
export ANDROID_HOME=$HOME/Android
export ANDROID_SDK_ROOT=$ANDROID_HOME/Sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/emulator:$PATH
export PATH=$ANDROID_HOME/cmdline-tools/tools/bin:$PATH
export REACT_EDITOR=vscode

#Add all scripts
export PATH=$PATH:$HOME/scripts
export PATH=$PATH:$HOME/icons
calc() { awk "BEGIN{print $*}"; }
based () {
  echo "$1" | base64 -d ; echo
}

PATH="/home/william/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/william/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/william/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/william/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/william/perl5"; export PERL_MM_OPT;

export VAGRANT_HOME=/mnt/DATA/Vagrant
