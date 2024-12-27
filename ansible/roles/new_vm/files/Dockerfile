FROM ubuntu:latest

RUN apt-get update && apt-get install -y openssh-server
RUN apt install -y openssl
RUN apt install -y nano && apt install -y mc && apt install -y wget && apt install -y unzip
RUN apt install -y python3


RUN mkdir /var/run/sshd
RUN echo 'root:toor' | chpasswd
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN wget https://releases.hashicorp.com/consul/1.20.1/consul_1.20.1_linux_amd64.zip  
RUN unzip consul_1.20.1_linux_amd64.zip 
RUN mv consul /usr/local/bin/ 
RUN mkdir /etc/consul.d/

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]