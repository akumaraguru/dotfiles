alias agl='ag --pager="less -R"'
alias fd='fdfind'
alias minicom='minicom --metakey --wrap'
alias tm='tmux attach || tmux'
alias update=$(cat <<-EOM
		sudo apt update -y
		sudo apt upgrade -y
		sudo apt autoclean -y
		sudo apt autoremove -y
EOM
)

alias gsetupstream='git branch -u origin/$(git branch --show-current)'
alias gpushupstream='git push -u origin $(git branch --show-current)'
