# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#-------------------------------------------------------------------------------------------------------
GREEN="\e[0;32m\033[1m"
BLUE="\e[0;34m\033[1m"
YELLOW="\e[0;33m\033[1m"
PURPLE="\e[0;35m\033[1m"
TURQ="\e[0;36m\033[1m"
GRAY="\e[0;37m\033[1m"
RED='\033[0;31m'
NC='\033[0m'
#-------------------------------------------------------------------------------------------------------
#Alias
alias cls="clear"
alias zshc="code ~/.zshrc"
alias zshs="source ~/.zshrc"
alias ll="ls -la"
alias dev="cd ~/Dev"
alias cat="batcat"


#Alias git
alias gs="git status"
alias gcmsg="git commit -m"
alias gpl="git pull"
alias gps="git push"
alias gnew="git checkout -b"
alias gck="git checkout"
alias gad="git add"

#Alias maven
alias mvni="mvn clean install -Dmaven.test.skip"
alias mvnit="mvn clean install"
alias mvnc="mvn clean compile -Dmaven.test.skip"

#Alias kubernetes
alias kubec="kubectl config get-contexts"
alias kubecc="kubectl config current-context"
alias kubeuc="kubectl config use-context"
alias kubei="kubeinfo"
alias kube="kubectl"
alias kubeed="kube edit deployment $1"

kubeinfo ()
{
	echo "$YELLOW ############################################################################### $NC"
	echo "$GREEN [*] $NC Listar pods -->get pods"
	echo "$GREEN [*] $NC Listar namespaces -->get namespaces"
	echo "$GREEN [*] $NC Listar servicios -->get svc"
	echo "$GREEN [*] $NC Listar deployments -->get deployments"
	echo "$GREEN [*] $NC Describe pod -->describe pod {variable}"
	echo "$GREEN [*] $NC Editar servicio -->edit svc {variable}"
	echo "$GREEN [*] $NC Mirar logs de un pod -->logs -f {variable}"
	echo "$GREEN [*] $NC Mirar dentro del pod -->exec -it {variable} bash"
	echo "$YELLOW *********************************************************************************** $NC"
	echo "$GREEN [*] $NC Listar contextos --> $RED kubec $NC" 
	echo "$GREEN [*] $NC Setear current context default --> $RED kubecc $NC"
	echo "$GREEN [*] $NC Usar contexto --> $RED kubeuc dev-env/pre/pre01/pro $NC"  
	echo "$GREEN [*] $NC Editar deployment --> $RED kubeed {variable} $NC "
	echo "$YELLOW ################################################################################# $NC"
}

kubes()
{
		kube $(kubei | fzf | awk -F "-->" '{print$2}')
}

kubegp()
{
	if [[ $1 == "help" || $1 == "h" || -z $1 ]]; then

		echo "$YELLOW***************************$NC"
		echo " $GREEN param1 =$NC nombre proyecto (api-member-external)"
		echo "$YELLOW***************************$NC"
	else
		if [[ ! -z $2 && $2 == "w" || $2 == "W" ]]; then 
			kube get pods -w | grep $1
		else
			kube get pods | grep $1
		fi
	fi
}

kubedp ()
{

	if [[ $1 == "help" || $1 == "-h" || $1 == "h" ]]; then
		echo "$YELLOW***************************$NC"
		echo " $GREEN param1 =$NC nombre proyecto (api-member-external)"
		echo "$YELLOW***************************$NC"
	fi

	if [[ -z $1 ]]; then
		echo " "
		echo "$RED Falta el parametro donde se indica el componente p.e: ms-order $NC"
	else
		result=$(kube get pods | grep $1 | fzf | awk -F " " '{print$1}')
	 	kube delete pod $result
	 	echo "********************************************************"

		if [[ -z $2 ]]; then 
			kubegp $1
			echo "*************************************************"
		else
			kubegp $1 w
		fi

	fi

	 
}


gdep()
{
	if [[ $1 == "help" || -z $1 ]]; then
		echo ""
		echo "$YELLOW***********************************$NC"
		echo " getdeploy $GREEN nombre_servicio $NC"
		echo "$YELLOW***********************************$NC"
	else
		echo ""
		echo "$1:$RED $(kubectl get -o json deployment $1 | grep "$1:" | awk -F ":" '{print$3}' | awk -F "\"" '{print$1}')$NC"
		echo ""	
	fi
}

api() {

	if [[ $1 == "help" || $1 == "h" || -z $1 ]]; then

		echo "$YELLOW***************************$NC"
		echo " $GREEN param1 =$NC nombre proyecto (api-member-external)"
		echo " $GREEN param2 =$NC rama (feature/OB-XXXX)"
		echo " $GREEN param3 =$NC public/internal"
		echo "$YELLOW***************************$NC"
	else
		google-chrome http://onebox-api-docs.s3.amazonaws.com/$1/$2/v1/$3/$1-spec.html &
	fi
}

jk() {

	if [[ $1 == "help" || $1 == "h" || -z $1 ]]; then

		echo "$YELLOW***************************$NC"
		echo " $GREEN param1 =$NC nombre proyecto (api-member-external)"
		echo "$YELLOW***************************$NC"
	else
		google-chrome https://jenkins.onebox.services/blue/organizations/jenkins/OneboxTM%20Organization%2F$1/branches &
	fi

}

gh() {
	if [[ -z $1 ]]; then

		echo "$YELLOW***************************$NC"
		echo " $GREEN param1 =$NC nombre proyecto (api-member-external)"
		echo " $GREEN param2 =$NC (pulls || feature/OB-XXXX)"
		echo "$YELLOW***************************$NC"
	else

		if [[ ! -z $2 ]]; then

			if [[ $2 == "pulls" ]]; then 
				google-chrome https://github.com/OneboxTM/$1/$2 &
			fi
			
			if [[ $2 == "feature/OB-"* ]]; then 
				google-chrome https://github.com/OneboxTM/$1/tree/$2
			fi
		else
			if [[ ! -z $1 && $1 == "repo" ]]; then 
				google-chrome https://github.com/orgs/OneboxTM/teams/developers/repositories &
			else
				google-chrome https://github.com/OneboxTM/$1 &
			fi
		fi	 
	fi
}

jira() {

	if [[ $1 == "help" || $1 == "h" ]]; then 
		echo "$YELLOW***************************$NC"
		echo " $GREEN PARAM1 $NC feature/Ob-XXXXX"
		echo "$YELLOW***************************$NC"
	fi

	if [[ $1 == *"OB-"* && ! -z $1 ]]; then
		
		if [[ ! -z $2 && $2 == "print" ]]; then
			echo "https://oneboxtds.atlassian.net/browse/$1"
		else
			google-chrome https://oneboxtds.atlassian.net/browse/$1 &
		fi
		
	else 
		if [[ -z $1 ]]; then
			google-chrome https://oneboxtds.atlassian.net/jira/software/c/projects/OB/boards/133/backlog &
		fi
	fi
}

info() {

	echo "$YELLOW***************************$NC"
	echo " $GREEN gdep $NC te dice que rama hay deployada en ese contexto para ese componente"
	echo " $GREEN api $NC te abre la apidoc"
	echo " $GREEN gh $NC te abre la pagina de github pasandole el componente por parametro"
	echo " $GREEN jk $NC te abre la pagina de jenkins pasandole el componente por parametro"
	echo " $GREEN jira $NC te abre la pagina de jira pasandole la rama o todas las incidencias"
	echo " $GREEN zshp $NC hace push del proyecto configFile"
	echo " $GREEN kubedp $NC elimina pods pasandole el componente por parametro, si le pasas 'w' se queda esperando"
	echo " $GREEN kubegl $NC te muestra los logs de un componente, usa fzf"
	echo " $GREEN kubegpf $NC te muestra los pods de features"
	echo "$YELLOW***************************$NC"
}

zshp () {
	cd ~/Dev/repos/configFiles
	git add ./.zshrc
	git commit -m "Subida del archivo .zshrc"
	git push
}

kubegpf () {
	if [[ -z $1 ]]; then 
		kube get pods -n features
	else
			echo ""
			kube get pods -n features | grep $1
	fi
}

kubegl (){

	if [[ -z $1 || $1 == "help" ]]; then
		echo "$YELLOW***************************$NC"
		echo " $GREEN param1 = componente $NC  te muestra los logs del pod"
		echo "$YELLOW***************************$NC"
	else
		kube logs -f $(kubegp $1 | fzf | awk -F " " '{print$1}')
	fi
}

Kubernetic () {
	~/.AppImages/Kubernetic-4.3.0.AppImage
}

#------------------------------------------------------------------------------------------------------

export KUBE_EDITOR="/usr/bin/nano"
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export XAUTHORITY=/home/ismael/.Xauthority

export XAUTHORITY=/home/ismael/.Xauthority


