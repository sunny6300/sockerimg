FROM ubuntu:latest

WORKDIR /app

ADD setup.sh /app

RUN chmod +x /app/setup.sh

RUN /app/setup.sh

RUN trivy

ENTRYPOINT ["/bin/bash"]