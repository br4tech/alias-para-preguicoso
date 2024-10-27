# Kubernetes Aliases for your .bashrc

Este README fornece uma descrição dos aliases do Kubernetes projetados para simplificar suas interações com o `kubectl`. Adicione-os ao seu arquivo `.bashrc` para aumentar sua produtividade!

## Basic kubectl Aliases

| Alias | Comando                           | Descrição                                     |
|-------|-----------------------------------|-----------------------------------------------|
| `k`   | `kubectl`                         | Abrevia o comando base                        |
| `kc`  | `kubectl create -f`               | Cria recursos a partir de um arquivo         |
| `kg`  | `kubectl get`                     | Obtém recursos                               |
| `kl`  | `kubectl logs`                    | Recupera logs de um contêiner                |
| `klf` | `kubectl logs -f`                 | Recupera logs de um contêiner e os transmite |
| `kx`  | `kubectl exec -it -n`             | Executa um comando em um contêiner           |
| `kd`  | `kubectl describe`                | Descreve um recurso                          |
| `krm` | `kubectl delete`                  | Deleta recursos                              |
| `ka`  | `kubectl apply -f`                | Aplica configuração a partir de um arquivo   |
| `kp`  | `kubectl get po`                  | Obtém pods                                   |
| `kpf` | `kubectl port-forward`            | Redireciona uma porta local para um pod      |
| `ksvc`| `kubectl get svc`                 | Obtém serviços                               |
| `kns` | `kubectl config set-context --current --namespace` | Define o namespace atual  |

## Advanced kubectl Aliases

Esses aliases utilizam plugins do `kubectl` para funcionalidades avançadas. Certifique-se de que esses plugins estão instalados antes de usá-los.

| Alias | Comando                          | Descrição                                           |
|-------|----------------------------------|-----------------------------------------------------|
| `kga` | `kubectl-get_all`                | Obtém todos os recursos em todos os namespaces      |
| `kscan`| `kubectl-kubesec_scan`          | Verifica vulnerabilidades de segurança em recursos  |
| `klogs`| `kubectl-pod_logs`              | Recupera logs de múltiplos pods                     |
| `ksniff`| `kubectl-sniff`                | Monitora tráfego de rede em um pod                  |
| `ksudo`| `kubectl-sudo`                  | Executa comandos como root em um contêiner          |
| `kwarp`| `kubectl-warp`                  | Redireciona porta para um pod com um único comando  |
| `kkrew`| `kubectl-krew`                  | Gerencia plugins do `kubectl`                       |
| `ktail`| `kubectl-mtail`                 | Exibe logs de múltiplos pods                        |
| `krst`| `kubectl-restart`                | Reinicia implantações                               |
| `kssh`| `kubectl-ssh_jump`               | Acessa um pod via SSH com jump host                 |
| `kvs` | `kubectl-view_secret`            | Visualiza segredos                                  |
| `kw`  | `watch -n1 'kubectl get pod | grep -i $1'` | Monitora continuamente os pods específicos           |

## Instalacao manual

1. Copie os aliases deste README.
2. Cole-os no seu arquivo `~/.bashrc`.
3. Fonte o arquivo `.bashrc`: `source ~/.bashrc`.

## Instalacao por script

1. Dê permissão de execução ao script: `chmod +x install.sh`.
2. Execute o script: `./install.sh`.
3. Este script adiciona os aliases ao final do seu arquivo `.bashrc`: `source ~/.bashrc`.

> **Nota:** Estes aliases assumem que você tem `kubectl` instalado e configurado corretamente.
> **Nota:** Instale os plugins `kubectl` necessários para os aliases avançados.

Aproveite o fluxo de trabalho simplificado com Kubernetes!
