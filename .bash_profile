#Aliases for git
alias gco='git checkout'
alias ga='git add'
alias gb='git branch'
alias gcom='git checkout master'
alias gp='git pull'
alias gcob='git checkout branch'
alias glg='git log --graph --oneline --decorate --all'
alias gcm='git commit -m'
alias gpp='git push'
alias gst='git status'
alias sqlchk='mysql -hlocalhost -uroot -p'
function glf() { git log --all --grep="$1"; }

#---------
#Aliases general
alias b='cd ..'
alias lt='ls --human-readable --size -l -S --classify'
alias br='source .bashrc'
alias chk='gcc -Wall -pedantic -Werror -Wextra'
alias mk='chmod u+x'
alias py="cp ~/.config/pytemp "
. ~/.bashrc
set -o vi
#Customize alias
alias vicu='nvim ~/.config/nvim/init.vim'
alias brc='nvim ~/.bashrc'
alias bpc='nvim ~/.bash_profile'
alias bps='source ~/.bashrc'
alias flx='tmux new -t Flex'
alias chk='gcc -Wall -pedantic -Werror -Wextra'
alias nightvim='cp /home/vagrant/.config/nvim/nightinit /home/vagrant/.config/nvim/init.vim'
alias dayvim='cp /home/vagrant/.config/nvim/dayinit /home/vagrant/.config/nvim/init.vim'
alias confbackup='git -C ~/.conf/Config/ add . | git -C ~/.conf/Config/ commit -m "update" | git -C ~/.conf/Config/ push'


#paths
export PATH=$PATH:/home/vagrant/.config/coc/extensions/coc-clangd-data/install/11.0.0/clangd_11.0.0/bin
export PATH=$PATH:/home/vagrant/.config/nvim/dayvim.sh
export PATH=$PATH:/home/vagrant/.config/nvim/nightvim.sh
