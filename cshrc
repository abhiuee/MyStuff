# SET umask here, because .login isn't read if you fire up xterms remotely
#umask 022 # allow everyone to read my files, only I can write
#umask 002 # allow only myself & my group to write, others read only
#umask 077  denes all access to group and others
umask 026 # allow only myself to write, group can read,

#SET paths

#if  ( ! $?LD_LIBRARY_PATH ) setenv LD_LIBRARY_PATH

#set path=( /opt/intel/compiler70/ia32/bin $path )
#setenv LD_LIBRARY_PATH "/opt/intel/compiler70/ia32/lib:${LD_LIBRARY_PATH}"
:
#alias section
stty sane
alias h 'history | tail -20'
alias mv mv -i
alias cp cp -i 
alias ls ls -CF
#alias rm /bin/mv \!:1 $HOME/dumpster

setenv ARCH `arch` # test what flavour of unix you are on

# Now platform specific stuff
# get unix flavor
set uname = `uname -a`
set osv = `echo $uname | awk '{print $1 substr($3,1,1)}'`
#echo "operating system = $osv"

#Set the prompts properly
set     red="%{\033[1;31m%}"
set   green="%{\033[0;32m%}"
set  yellow="%{\033[1;33m%}"
set    blue="%{\033[1;34m%}"
set magenta="%{\033[1;35m%}"
set    cyan="%{\033[1;36m%}"
set   white="%{\033[0;37m%}"
set     end="%{\033[0m%}"
set prompt="${green}%n${blue}@%m ${cyan} $PWD:t %t ${green}%%${end} "
alias setprompt 'set prompt="${green}%n${blue}@%m ${cyan} $PWD:t %t ${green}%%${end} "'

#set prompt="\n%{\e[1;36m%}\[`whoami`\@`hostname -s` $PWD:t %t\]$ %{\e[m%}"
#alias setprompt 'set prompt="\n%{\e[1;36m%}\[`whoami`\@`hostname -s` $PWD:t %t\]$ %{\e[m%}"'
alias cd 'chdir \!* && setprompt'
setenv PATH /usr/local/sbin:$PATH
setenv PATH /usr/local/Cellar/:$PATH

#MAC specific aliases
alias ack /usr/local/Cellar/ack/2.18/bin/ack
alias brew /usr/local/bin/brew
alias ctags /usr/local/Cellar/ctags/5.8_1/bin/ctags
alias tmux /usr/local/Cellar/tmux/2.4/bin/tmux 


