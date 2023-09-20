if status is-interactive
   neofetch

   # prompt & greeting
   set -g fish_greeting
   starship init fish | source
end

# opam configuration
source /Users/jasper/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
