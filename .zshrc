export PATH="${PATH}:/usr/local/opt/go/libexec/bin:${HOME}/.cargo/bin"
export EDITOR=nvim

# Julia
# If one doesn't exist, none of them do
if [ ! -h "/usr/local/bin/julia-0.6" ]; then
    ln -fhs /Applications/Julia-0.3.12.app/Contents/Resources/julia/bin/julia /usr/local/bin/julia-0.3
    ln -fhs /Applications/Julia-0.4.7.app/Contents/Resources/julia/bin/julia /usr/local/bin/julia-0.4
    ln -fhs /Applications/Julia-0.5.app/Contents/Resources/julia/bin/julia /usr/local/bin/julia-0.5
    ln -fhs /Applications/Julia-0.6.app/Contents/Resources/julia/bin/julia /usr/local/bin/julia-0.6
    ln -fhs ~/Projects/julia/julia /usr/local/bin/julia-0.7
    ln -fhs /Applications/JuliaPro-0.5.0.2.app/Contents/Resources/julia/Contents/Resources/julia/bin/julia /usr/local/bin/juliapro

    # Keep these up to date!
    ln -fhs /usr/local/bin/julia-0.6 /usr/local/bin/julia
    ln -fhs /Applications/Julia-0.6.app/Contents/Resources/julia/include/julia /usr/local/include/julia
    ln -fhs /Applications/Julia-0.6.app/Contents/Resources/julia/lib/libjulia.dylib /usr/local/lib/libjulia.dylib
    ln -fhs /Applications/Julia-0.6.app/Contents/Resources/julia/lib/julia /usr/local/lib/julia
fi

alias juliam="~/Projects/julia/julia"
alias flispjl="~/Projects/julia/src/flisp/flisp"

# Path to your oh-my-zsh installation.
export ZSH=/Users/alex/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="geoffgarside"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx mercurial github)

source $ZSH/oh-my-zsh.sh
