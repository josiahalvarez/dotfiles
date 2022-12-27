# history 
HISTFILE=~/.config/shell/.histfile
HISTSIZE=1000
SAVEHIST=1000

# vim mode:
bindkey -v
export KEYTIMEOUT=1

# load aliases if existent
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# Basic auto/tab complete:
autoload -U compinit 
zstyle ':completion:*' menu select 
zmodload zsh/complist
compinit
_comp_options+=(globdots)	# include hidden files

# load plugins (should be last) 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null

# prompt
#setopt autocd
PS1="%n@%M %~$%b "
