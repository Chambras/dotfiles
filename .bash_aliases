# bash commands
  alias c='clear'
  alias sau='sudo apt update; sudo apt list --upgradable'
  alias sai='sudo apt upgrade'
  alias rld='source ~/.bashrc; source ~/.bash_aliases; source ~/.profile'
  alias tsync='sudo hwclock -s'

# terraform
  alias tfo='terraform output'
  alias tfp='terraform plan -out run.plan'
  alias tfpr='terraform plan'
  alias tfi='terraform init'
  alias tfiu='terraform init -upgrade'
  alias tfa='terraform  apply --auto-approve  run.plan'
  alias tfar='terraform apply --auto-approve'
  alias tfd='terraform destroy --auto-approve'
  alias tfv='terraform validate'
  alias tff='terraform fmt'
  alias tfr='terraform refresh'
  alias tfs='terraform show'
  alias tver='clear; echo -e "Terraform version:"; terraform -v; echo "Local providers:"; echo -e "azurerm:"; tv; echo -e "aws:"; tv aws; echo -e "google:"; tv google; echo -e "others:"; tv "null|temp|rand|loc"'
  alias tfh='terraform -help'
  alias tfpr='terraform providers'
  alias tfg='terraform graph'
  alias tch='clear; echo -e "formatting..."; tff; echo -e "validating..."; tfv; echo -e "tflinting..."; tflint'
  alias tsl='terraform state list'
  alias tss='terraform state show'
  alias tft='terraform taint'

# function to get last 5 terraform providers
tv() {
  ls -1t ~/.terraform.d/plugin-cache/linux_amd64/ | grep -E "$1" | head -5
}

# packer
  alias pv='packer validate'
  alias pb='packer build'
  alias pver='packer -v'

# chef tools kitchen, foodcritic, cookstyle
  alias kc='kitchen create'
  alias kls='kitchen list'
  alias kd='kitchen destroy'
  alias kl='kitchen login'
  alias kv='kitchen verify'
  alias kt='kitchen test'
  alias kcv='kitchen converge'

  alias fc='foodcritic .'
  alias cs='cookstyle .'

# az cli for gitbash in windows. Not ideal, but most of the commands work.
# az() {
#          "az.cmd" "$@"
#  }
#  export -f az

# Azure
  alias agl='az group list -o table'
  alias aal='az account list -o table'
  alias aall='az account list-locations -o table'
  alias acl='az cloud list -o table'
  alias avl='az vm list -o table'
  alias arl='az resource list -o table -g '

# Docker
  alias dcl='docker context list'
  alias dcls='docker container ls --all'
  alias dcr='docker container rm'
  alias di='docker images'
  alias dir='docker image rm'
  alias db='docker build'
  alias dr='docker run -it --rm'
  alias drm='docker run -it --rm --name personaldev --mount type=bind,source=/c/Repos,target=/Repos'
  alias drd='docker run -it --rm --name personaldev --mount type=bind,source=/c/Repos/Spark2021,target=/Repos'
  #Purging All Unused or Dangling Images, Containers, Volumes, and Networks. Be careful when to use it.
  alias dsp='docker system prune -a'
  alias dver='docker -v; docker version'
  alias dinf='docker info'

# kubernetes
  alias k='kubectl'

# Personal
  alias gorepos='cd ~/Repos/'
  alias sa='cat ~/.bash_aliases'
  alias ea='vi ~/.bash_aliases'
  alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
  alias myip2='wget http://ipecho.net/plain -O - -q ; echo'
  
# Ansible
  alias aps='ansible-playbook --syntax-check'
  alias ap='ansible-playbook'
  alias aver='ansible --version'

# DataBricks
  alias dbpl='cat ~/.databrickscfg'
  alias dbwls='databricks workspace ls'
  alias dbwlsu='databricks workspace ls /Users'
  alias dblls='databricks libraries -l'
  alias dbcl='databricks clusters list'
  alias dbcc='databricks clusters create --json-file'
  alias dbcg='databricks clusters get --cluster-id'
  alias dbcd='databricks clusters delete --cluster-id'
  alias dbcs='databricks clusters start --cluster-id'
  alias dbcr='databricks clusters restart --cluster-id'
  alias dbcpd='databricks clusters permanent-delete --cluster-id'
  alias dbver='databricks -v'

# tmux
  alias tls='tmux ls'
  alias tn='tmux new -s'
  alias ta='tmux a -t'
  alias tk='tmux kill-ses -t'

# GitHub CLI
  alias grc='gh repo create '

# All Versions
  alias v='echo "***Terraform***"; tver; echo -e "\n***tflint***"; tflint -v; echo -e "\n***Packer***"; pver; echo -e "\n***Docker***"; dver; echo -e "\n***AZ CLI***"; az -v; echo -e "\n***Databricks CLI***"; dbver; echo -e "\n***Maven***"; mvn -version; echo -e "\n***Java***"; java -version; echo -e "\n***Python2***"; python --version; echo -e "\n***Python3***"; python3 --version; echo -e "\n***pip***"; pip --version; echo -e "\n***DotNet Core***"; dotnet --version; echo -e "\n***go***"; go version; echo -e "\n***Node npm and nvm***"; node -v; npm -v; nvm -v; echo -e "\n***Git***"; git --version; echo -e "\n***GitHub CLI***"; gh --version; echo -e "\n***Ansible***"; aver; echo -e "\n***Chef***"; chef -v; echo -e "\n***Kubectl***"; kubectl version; echo -e "\n***Helm***"; helm version; echo -e "\n"'
