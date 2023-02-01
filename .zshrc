echo

neofetch

# Prompt
if [[ $EUID -ne 0 ]]; then
	PS1="%F{yellow}%n@%m %F{green}❱ %F{white}"
else
	PS1="%F{yellow}%@%m %F{red}❱ %F{white}"
fi
