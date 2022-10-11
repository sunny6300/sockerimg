FROM ubuntu:latest

WORKDIR /app

ADD test.sh /app

RUN chmod +x /app/test.sh

RUN /app/test.sh

RUN trivy

ENTRYPOINT ["/bin/bash"]