FROM ubuntu:latest

RUN apt-get update && apt-get install -y openssh-server
RUN apt install -y openssl
RUN apt install -y nano && apt install -y mc && apt install -y wget

RUN mkdir /var/run/sshd
RUN echo 'root:toor' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
