FROM jenkins/jenkins:lts
USER root

# Instalar Python3, pip, curl, git y doxygen
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv curl git doxygen graphviz && \
    apt-get clean

# Instalar Flask
RUN pip3 install flask --break-system-packages

USER jenkins