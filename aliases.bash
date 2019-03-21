alias dbuild-ssh='docker build --build-arg SSH_PRIVATE_KEY="$(cat ~/.ssh/id_rsa)"'
alias dcbuild-ssh='docker-compose build --build-arg SSH_PRIVATE_KEY="$(cat ~/.ssh/id_rsa)"'
alias docker-stop-all='docker stop $(docker ps -aq)'
alias brewup='brew update ; brew upgrade; brew cleanup ; brew doctor'

alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
alias vcode='/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron'
alias houndci-check='flake8-diff --flake8-options --config .flake8.ini'

alias beta-db-ssh-tunel='gcloud compute ssh beta-web-1 --ssh-flag "-L 9000:beta-main-db:5432"'

alias k-switch-hero='kube-switch-context heroes-cluster'
alias k-switch-cluster-1='kube-switch-context cluster-1'
alias k-context='kubectl config current-context'
alias kg="kubectl get"

alias k='kubectl'

alias k-pod='kubectl get pods | grep '



function dbuild-push() {
    dbuild-ssh -t $1 .
    docker push $1
}

function knm() {
    kubectl get $1 -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}' | /usr/bin/grep $2 | head -n 1
}

function kd() {
    kubectl describe $1 $(knm $1 $2)
}

function k-switch-context() {
    kubectl config use-context "gke_green-talent-125811_europe-west1-d_$1"
}

function k-login() {
    kubectl exec -ti $(knm pod $1) bash
}

function k-logs() {
    kubectl logs $(knm pod $1) "${@:2}"
}

function k-events() {
    kube-pod $1
    kd pod $1 | sed -ne '/^Events/,$p'
}
