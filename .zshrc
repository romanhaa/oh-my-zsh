# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

################################################################################
# Choose if this file is on the cluster or local
################################################################################

# machine="cluster"
# machine="local_mac"

POWERLEVEL9K_INSTALLATION_PATH=~/.oh-my-zsh/custom/themes/powerlevel9k/powerlevel9k.zsh-theme

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git, zsh-autosuggestions, zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

DEFAULT_USER=$(whoami)

export LANG="C.UTF-8"

alias ..='cd ..' # move up one directory through ..
alias ...='cd ../..' # move up two directories through ...
alias ....='cd ../../..' # move up three directories through ....

if [ "$machine" = "cluster" ]; then
  
  alias ls='ls --color=always -alh' # force colors for ls command
  alias chipseq='python2.7 /data/PGP/rhillje/code/ChIP_seq/ChIPSeq_pipeline_main.py' # load ChIPseq pipeline using python 2.7

  export LSCOLORS=ExFxBxDxCxegedabagacad

  export C_INCLUDE_PATH=/usr/include
  export CPLUS_INCLUDE_PATH=/usr/include
  export CPATH=/usr/include

  export PATH=/data/PGP/rhillje/Tools/SICER:$PATH # SICER
  export PATH=/data/PGP/rhillje/Tools/:$PATH # wigToBigWig and bedToBigBed
  export PATH=/data/PGP/rhillje/Tools/HOMER:$PATH # HOMER
  export PATH=/data/PGP/rhillje/tools/bowtie2-2.3.2:$PATH # bowtie2
  export LD_LIBRARY_PATH=/data/PGP/rhillje/tools/tbb40_233oss/build/linux_intel64_gcc_cc6.3.0_libc2.24_kernel3.2.0_release:$LD_LIBRARY_PATH # TBB library
  export PATH=/data/PGP/rhillje/tools/tophat-2.1.1.Linux_x86_64:$PATH # TopHat
  export PATH=/data/PGP/rhillje/tools/cufflinks-2.2.1.Linux_x86_64:$PATH # cufflinks
  export PATH=/data/PGP/rhillje/tools/seqtk-master:$PATH # seqtk
  export PATH=/data/PGP/rhillje/tools/gmap-2017-05-08/bin:$PATH # GSNAP
  export PATH=/data/PGP/rhillje/tools/Salmon-0.8.2_linux_x86_64/bin:$PATH # salmon

elif [ "$machine" = "local_mac" ]; then
  
  alias ls='ls -alh'

fi


