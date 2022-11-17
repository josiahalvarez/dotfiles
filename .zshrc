# history 
HISTFILE=~/.config/shell/.histfile
HISTSIZE=1000
SAVEHIST=1000

# vim mode
bindkey -v

# load aliases if existent
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# load zsh-syntax-highlighting: should be last 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
