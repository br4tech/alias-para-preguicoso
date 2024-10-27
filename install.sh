#!/bin/bash

# Script para instalar aliases do Kubernetes no .bashrc

# Função para adicionar aliases ao .bashrc
function adicionar_aliases {
  echo "# Kubernetes Aliases 🚀" >> ~/.bashrc
  echo "alias k='kubectl'" >> ~/.bashrc
  echo "alias kc='kubectl create -f'" >> ~/.bashrc
  echo "alias kg='kubectl get'" >> ~/.bashrc
  echo "alias kl='kubectl logs'" >> ~/.bashrc
  echo "alias klf='kubectl logs -f'" >> ~/.bashrc
  echo "alias kx='kubectl exec -it -n'" >> ~/.bashrc
  echo "alias kd='kubectl describe'" >> ~/.bashrc
  echo "alias krm='kubectl delete'" >> ~/.bashrc
  echo "alias ka='kubectl apply -fi'" >> ~/.bashrc
  echo "alias kp='kubectl get po'" >> ~/.bashrc
  echo "alias kpf='kubectl port-forward'" >> ~/.bashrc
  echo "alias ksvc='kubectl get svc'" >> ~/.bashrc
  echo "alias kns=\"kubectl config set-context --current --namespace\"" >> ~/.bashrc
  echo "" >> ~/.bashrc
  echo "# Aliases avançados (requerem plugins)" >> ~/.bashrc
  echo "alias kga='kubectl-get_all'" >> ~/.bashrc
  echo "alias kscan='kubectl-kubesec_scan'" >> ~/.bashrc
  echo "alias klogs='kubectl-pod_logs'" >> ~/.bashrc
  echo "alias ksniff='kubectl-sniff'" >> ~/.bashrc
  echo "alias ksudo='kubectl-sudo'" >> ~/.bashrc
  echo "alias kwarp='kubectl-warp'" >> ~/.bashrc
  echo "alias kkrew='kubectl-krew'" >> ~/.bashrc
  echo "alias ktail='kubectl-mtail'" >> ~/.bashrc
  echo "alias krst='kubectl-restart'" >> ~/.bashrc
  echo "alias kssh='kubectl-ssh_jump'" >> ~/.bashrc
  echo "alias kvs='kubectl-view_secret'" >> ~/.bashrc
  echo "alias kw=\"watch -n1 'kubectl get pod | grep -i \$1'\"" >> ~/.bashrc
}

# Verifica se o usuário deseja instalar os aliases
read -p "Deseja instalar os aliases do Kubernetes no seu .bashrc? (s/n) " resposta

# Instala os aliases se a resposta for "s"
if [[ "$resposta" == "s" || "$resposta" == "S" ]]; then
  adicionar_aliases
  echo "Aliases instalados com sucesso! ✨"
  echo "Para usá-los, reinicie seu terminal ou execute: source ~/.bashrc"
else
  echo "Instalação cancelada."
fi