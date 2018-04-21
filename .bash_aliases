# General aliases
alias h="history"
alias l='ls -l'
alias ll="ls -la"
alias ls="ls -G"


# Docker stuff
alias docker-ls="docker run -it docker-ls docker-ls"
alias dc="docker-compose"

# Net / Stat
alias lswifi="nmcli d wifi"
alias lsservices="systemctl list-unit-files --state=enabled"
alias psmem="ps -e -o pid,vsz,comm= | sort -n -k 2"
#alias psmem="ps -eo size,pid,user,command | awk '{ hr=$1/1024 ; printf(\"%13.6f Mb \",hr) } { for ( x=4 ; x<=NF ; x++ ) { printf(\"%s \",$x) } print \"\" }' | sort"
alias noscroll="synclient CoastingSpeed=0"

# Mac specific
# alias clean_pg_pid='rm ~/Library/Application\ Support/Postgres/var-9.4/postmaster.pid'
#alias flushcache="dscacheutil -flushcache"
#alias springclean="brew cleanup --force -s && rvm cleanup all && gem cleanup"
alias startredis="redis-server /usr/local/etc/redis.conf"

# When using sublime text 3 - link this to easily open sublime via command line
#ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime

# Log / system
alias systail='tail -f /var/log/system.log'
alias dus="du -h"
alias dfh="df -h"
# alias top='top -o %CPU'
alias c='clear'

# Network
# Monitor current network traffic
# Instead of breaking the traffic down per protocol or per subnet, like most tools do, it groups bandwidth by process
alias currentnet="sudo nethogs"
# IPTraf is a console-based network statistics utility for Linux.
# It gathers a variety of figures such as TCP connection packet and byte counts,
# interface statistics and activity indicators, TCP/UDP traffic breakdowns,
# and LAN station packet and byte counts.
alias nettraf="sudo iptraf eth0"

# Git
alias gs="git status"
alias gc="git checkout"
alias gce="git commit --no-verify -m"
alias glog="git log --graph --all --decorate --pretty=oneline"

# Elixir
alias mte="mix test --exclude integration"

# PostgreSQL
# alias start_pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
# alias stop_pg='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
# alias tailpg="tail -f ~/Library/Application\ Support/Postgres93/var/pg_log/*"alias startmemcache="memcached -d"
