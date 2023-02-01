echo

neofetch

# Prompt
if [[ $EUID -ne 0 ]]; then
	PS1="%F{yellow}%n@%m %F{green}❱%f "
else
	PS1="%F{yellow}%@%m %F{red}❱%f "
fi
