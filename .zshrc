
# Enable Powerlevel10k instant prompt.
###
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
#
# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git web-search zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
export MANPATH="/usr/local/man:$MANPATH"
export EDITOR='nvim'
export MANPAGER="env MANWIDTH=999 nvim +Man!"

# Java PATH fix (Option A)
export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-17.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

# Aliases
alias shconfig="nvim .zshrc"
alias ohmyzsh="cd ~/.oh-my-zsh"
alias nvimconfig="cd ~/.config/nvim/"
alias configs="cd ~/.config"
alias notes="cd ~/Desktop/vimnotes/ && nvim"
alias projects="cd ~/Desktop/programming\ projects"
alias root="cd ~/"

# Tmux aliases
alias splith="tmux splitw -h"
alias splitv="tmux splitw -v"

# AI Agent instruction initializer
init_ai() {
  mkdir -p ai_instructions

  cat <<EOF > ai_instructions/instructions.md
# AI Agent Instructions

**Author**: Dillon Ansah  
**Context**: Used for initializing agent behavior for CLI-based AI agents  
**Version**: 1.0  
**Last Updated**: $(date +%Y-%m-%d)

---

1. Provide concise answers by default, unless explicitly asked to be verbose.

2. Do not create explanatory documents unless explicitly requested.

3. When asked how code works:
   - Break down key components (e.g., functions, classes, structs).
   - Include a simple example showing data flow through the code.

EOF
}

# GIT SCRIPT
# Simple Git Add Commit Push function 
# ONLY FOR WHEN YOU UPDATE ONE FILE !!!!!!!!!!!!!!!!!!

gacp() {
  if [[ -z "$1" ]]; then
    echo "that file not working man!"
    echo "retype it..."
    return 1
  fi 


  git add $1 &&
  git commit -m "Updated $1" &&
  git push origin main 

}


# syntax highlighting ---
#
# Gruvbox-style zsh-syntax-highlighting colors
typeset -gA ZSH_HIGHLIGHT_STYLES

# Commands
ZSH_HIGHLIGHT_STYLES[command]='fg=223'          # light fg
ZSH_HIGHLIGHT_STYLES[builtin]='fg=223'
ZSH_HIGHLIGHT_STYLES[function]='fg=223'
ZSH_HIGHLIGHT_STYLES[alias]='fg=223'

# Paths / files
ZSH_HIGHLIGHT_STYLES[path]='fg=250'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=250'
ZSH_HIGHLIGHT_STYLES[path_suffix]='fg=250'

# Strings & arguments
ZSH_HIGHLIGHT_STYLES[string]='fg=229'

# Options / flags
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=214'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=214'

# Numbers
ZSH_HIGHLIGHT_STYLES[number]='fg=214'

# Comments
ZSH_HIGHLIGHT_STYLES[comment]='fg=243'

# Errors / unknown tokens
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=167,bold'

# Separators / operators
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=109'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=109'


# Load Powerlevel10k config
 [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
