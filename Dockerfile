FROM alpine:latest

RUN apt-get update

RUN apt-get install wget apt-transport-https gnupg lsb-release -y

RUN wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor | tee /usr/share/keyrings/trivy.gpg > /dev/null

RUN echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main" | tee -a /etc/apt/sources.list.d/trivy.list

RUN apt-get update

RUN apt-get install trivy -y

RUN trivy

CMD ["localhost"]