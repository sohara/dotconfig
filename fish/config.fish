if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user no
set -g theme_hide_hostname yes
# set -g theme_hostname always

# aliases
alias vim nvim

# PATH
set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# Bun
set -gx PATH ~/.local/bin $PATH

# Homebrew
set -gx PATH /opt/homebrew/bin $PATH

# Others
set -gx PATH /usr/local/bin $PATH
set -gx PATH /usr/bin $PATH
set -gx PATH /usr/sbin $PATH

# Bun
set -gx BUN_INSTALL "$HOME/.bun"
set -gx PATH "$BUN_INSTALL/bin" $PATH

# Volta (Node.js version manager)
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

function g
    if count $argv >/dev/null
        git $argv
    else
        git status
    end
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/sohara/miniconda3/bin/conda
    eval /Users/sohara/miniconda3/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/Users/sohara/miniconda3/etc/fish/conf.d/conda.fish"
        . "/Users/sohara/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /Users/sohara/miniconda3/bin $PATH
    end
end
# <<< conda initialize <<<
