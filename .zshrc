if [[ -o login ]] ; then
    alias x='startx'
    # startx
    return
fi
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)


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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH=$PATH:$HOME/.local/bin:$HOME/.scripts
# set -o vi
bindkey -v 
echo " "
pfetch
# neofetch
# cat ~/.cache/wal/sequences &
alias upgrade='sudo pacman -Syyu --noconfirm; yay -Su --noconfirm;yay -Scc'
alias mpv='devour mpv'
alias zathura='devour zathura'
alias sxiv='devour sxiv'
alias jobs='vi ~/work/jobs/jobs.json'
alias aml="mvn clean install;cd target;sudo docker cp ybaml.war camundapsqldit720:/camunda/webapps;cd ..;"
alias amlpobo="mvn clean install;cd target;sudo docker cp ybamlpobo.war camundapsqldit720:/camunda/webapps;cd ..;"
# alias aml="mvn clean install;cd target;sudo docker cp ybaml.war camundatest:/camunda/webapps;cd ..;"
alias alert="mvn clean install;cd target;sudo docker cp ALERT.war camundapsqldit720:/camunda/webapps;cd ..;"
alias declined="mvn clean install;cd target;sudo docker cp declinedtransaction.war camundapsqldit720:/camunda/webapps;cd ..;"
alias blocked="mvn clean install;cd target;sudo docker cp ybfrmblocksettlement.war camundapsqldit720:/camunda/webapps;cd ..;"
alias risknot="mvn clean install;cd target;sudo docker cp risknotification.war camundapsqldit720:/camunda/webapps;cd ..;"
alias cub="mvn clean install;cd target;sudo docker cp cubrisknotification.war camundapsqldit720:/camunda/webapps;cd ..;"
alias usfb="mvn clean install;cd target;sudo docker cp usfbrisknotification.war camundapsqldit720:/camunda/webapps;cd ..;"
# alias sanctions="mvn clean install;cd target;sudo docker cp sanctions.war camundapsqldit720:/camunda/webapps;cd ..;"
alias sanctions="mvn clean install;cd target;sudo docker cp sanctions.war camundapsqldit720:/camunda/webapps;cd ..;"
alias camunda="sudo docker stop camundapsqldit720;cd ~/work/drona/apps/camunda2/ ;sudo docker-compose up -d"


alias qc="mvn clean install;cd target;sudo docker cp ybqc.war camundapsqldit720:/camunda/webapps;cd ..;"
# alias logs="sudo docker logs camundapsqldit720;"
alias riskymerchant="mvn clean install;cd target;sudo docker cp riskymerchantsettlement.war camundapsqldit720:/camunda/webapps;cd .."

# alias logs2="sudo docker logs camundapsqldit720;"

# alias ct='ctags --exclude=.git --exclude=node_modules --exclude=build -R'

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey '^u' reverse-menu-complete
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export _JAVA_AWT_WM_NONREPARENTING=1

# Default Java environment is already set to 'java-11-openjdk'
# See 'archlinux-java help' to change it
# when you use a non-reparenting window manager,
# set _JAVA_AWT_WM_NONREPARENTING=1 in /etc/profile.d/jre.sh
#
# mvn clean install;sudo docker build -t uiserver:latest .
#
# sudo docker cp bpm-platform.xml camundapsqldit720:/camunda/conf

alias gh='eval "$(ssh-agent -s)";ssh-add ~/.ssh/github'

# export JAVA_HOME=/usr/lib/jvm/java-17-openjdk/bin/java
#
 # export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
#

jt() {
    mvn test -Dtest=$1
}

# 21 maven version=3.8.7
# 17 maven version=3.9.4
#
#
alias logs='sudo docker ps -a --filter "name=camunda" --format "{{.ID}}" | xargs -I{} sudo docker logs -f {}'
