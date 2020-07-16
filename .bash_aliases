# bash commands
  alias c='clear'
  alias sau='sudo apt update; sudo apt list --upgradable'
  alias sai='sudo apt upgrade'
  alias rld='source ~/.bashrc ~/.bash_aliases ~/.profile'

# terraform
  alias tfo='terraform output'
  alias tfp='terraform plan -out run.plan'
  alias tfi='terraform init'
  alias tfa='terraform  apply --auto-approve  run.plan'
  alias tfd='terraform destroy --force'
  alias tfv='terraform validate'
  alias tff='terraform fmt'
  alias tfr='terraform refresh'
  alias tfs='terraform show'
  alias tver='clear; echo -e "Terraform version:"; terraform -v; echo "Local providers:"; la -1 ~/.terraform.d/plugin-cache/linux_amd64/'
  alias tfh='terraform -help'
  alias tfpr='terraform providers'
  alias tfg='terraform graph'
  alias tch='clear; echo -e; tff; tfv'

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

# Docker
  alias dcls='docker container ls --all'
  alias di='docker images'
  alias dils='docker images list'
  alias db='docker build'
  alias drm='docker run -it --rm --name personaldev --mount type=bind,source=/c/Repos,target=/Repos'
  #Purging All Unused or Dangling Images, Containers, Volumes, and Networks. Be careful when to use it.
  alias dsp='docker system prune -a'
  alias dver='docker -v'

# kubernetes
  alias k='kubectl'

# Personal
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

# All tools Versions
  alias v='echo "***Terraform***"; tver; echo -e "\n***Ansible***"; aver; echo -e "\n***Packer***"; pver; echo -e "\n***Databricks CLI***"; dbver; echo -e "\n***Docker***"; dver; echo -e "\n***AZ CLI***"; az -v; echo -e "\n***Java***"; java -version; echo -e "\n***Git***"; git --version; echo -e "\n***Chef***"; chef -v; echo -e "\n***go***"; go version; echo -e "\n***GitHub CLI***"; gh --version'
