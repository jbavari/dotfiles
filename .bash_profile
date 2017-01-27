export PATH=/usr/local/bin:$PATH
source ~/.bashrc
source ~/.git-prompt.sh


# General aliases
alias cd..='cd ..'
alias l='ls -l'
alias ll="ls -la"
alias ls="ls -G"
# alias ebash='subl ~/.bash_profile &'
alias ebash='mate ~/.bash_profile &'
alias reload_bash='source ~/.bash_profile'
alias bash_reload='source ~/.bash_profile'
alias systail='tail -f /var/log/system.log'
alias top='top -o cpu'
alias c='clear'
alias ip='getnet.sh'
alias q="exit"
alias gs="git status"
alias gc="git checkout"
alias gcv="git commit --no-verify"
alias glog="git log --graph --all --decorate --pretty=oneline"
alias be="bundle exec"

# Network
# Monitor current network traffic
# Instead of breaking the traffic down per protocol or per subnet, like most tools do, it groups bandwidth by process
alias currentnet="sudo nethogs"
# IPTraf is a console-based network statistics utility for Linux. 
# It gathers a variety of figures such as TCP connection packet and byte counts, 
# interface statistics and activity indicators, TCP/UDP traffic breakdowns, 
# and LAN station packet and byte counts.
alias nettraf="sudo iptraf eth0"


# PostgreSQL
alias clean_pg_pid='rm ~/Library/Application\ Support/Postgres/var-9.4/postmaster.pid'
alias start_pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stop_pg='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# Rails aliases
alias rtp='rake db:test:prepare'
alias a='autotest -rails' # makes autotesting quicker
alias rt='rake test'
alias rtu='rake test:units'
alias rtf='rake test:functionals'
alias rti='rake test:integration'
alias rst='rake stats'
alias tlog='tail -f log/development.log'
alias rdbm='rake db:migrate'
alias dr='docker run -i -t'
alias netls='lsof -Pnl +M -i4'
