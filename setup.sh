apt-get update -y;

apt-get install wget apt-transport-https gnupg lsb-release -y;

# Installing trivy

wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor | tee /usr/share/keyrings/trivy.gpg > /dev/null;

echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | tee -a /etc/apt/sources.list.d/trivy.list;

apt-get update -y;

apt-get install trivy -y

#start of installation of gitleaks

git clone https://github.com/zricethezav/gitleaks.git
cd gitleaks
make build
