helm repo add kyverno https://kyverno.github.io/kyverno/
helm repo update
kubectl create namespace kyverno
helm install kyverno kyverno/kyverno -n kyverno 

helm upgrade --install policy-reporter policy-reporter/policy-reporter \
  --create-namespace -n policy-reporter \
  --set ui.enabled=true 

kubectl apply -f .

