function fish_greeting

end

if status is-interactive
	# Commands to run in interactive sessions can go here
end

function attach_tmux_session_if_needed
    set ID (tmux list-sessions 2>/dev/null)
    if test -z "$ID"
		tmux new-session -s 0 
		#tmux new-session -s 0 "banner.sh;fish"
		return
    end

    tmux attach-session -t 0
end

if test -z $TMUX && status --is-login
    attach_tmux_session_if_needed
end


function fish_prompt
	set -l result (~/bin/vpnbash.sh)
	echo (set_color green)"┌──"(set_color green)"  "(set_color green)"﹝"(set_color blue)"fl0wl3ss"(set_color green)"﹞"$result"─["(set_color purple)(prompt_pwd)(set_color green)"]"(set_color cyan)"ඞ"(set_color yellow)"ඞ"(set_color red)"ඞ"
    echo (set_color green)"└─"(set_color blue)"\$ "(set_color normal)
end

## alias
# HackTheBox
alias htb='cd ~/HTB/Box'
alias htb.vpn='cd ~/HTB/vpn'
alias htb.pwn='cd ~/HTB/challenges/pwn'
alias htb.rev='cd ~/HTB/challenges/rev'
alias htb.crypt='cd ~/HTB/challenges/crypt'
alias htb.gamepwn='cd ~/HTB/challenges/gamepwn'

alias htb.kill='sudo killall openvpn'
alias htb.server='cd ~/HTB/tools;python -m http.server '

# TryHackMe
alias thm.vpn='cd ~/THM/vpn'

# shortcut
alias learn='cd ~/CTF/learn' 
alias nightmare='cd ~/CTF/pwn/nightmare/modules'
alias gtfobins='cd /home/fl0wl3ss/Github/GTFOBins.github.io;bundle exec jekyll serve; cd'

# short commands
alias rc='rustc'
alias l='ls -a'

# replace commands
alias gdb='gdb -q'
alias ocat='/usr/bin/cat'
alias cat='ccat'
alias python='ipython3'

# connect pwncollege
alias dojo='ssh hacker@dojo.pwn.college'
