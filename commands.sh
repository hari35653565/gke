apt-get install apt-transport-https ca-certificates gnupg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
apt-get update && apt-get install google-cloud-cli
gcloud auth login
gcloud config set project <Your Project ID>
gcloud config set compute/region us-east1
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
gcloud container clusters get-credentials flask-cluster
kubectl get nodes
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
helm --help