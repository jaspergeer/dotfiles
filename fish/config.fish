if status is-interactive
   neofetch

   # prompt & greeting
   set -g fish_greeting
   starship init fish | source
end
