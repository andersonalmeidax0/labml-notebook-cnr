#required PORTS: 9999
#required NETS: none
#required external VOLUMES: /data
#required ENV Vars
FROM debian:stretch
#todo TESTAR com phusion/baseimage:16.04 LTS
#RUN apt-get update
#nao testei sudo aqui
RUN apt-get install sudo
RUN apt install -y curl software-properties-common gnupg
#update personal package architres for node repo
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
#RUN apt install -y build-essential libssl-dev
#deu erro sudo apt-get install nodejs-legacy 
RUN apt install -y nodejs
sudo apt-get install -y npm 
RUN node -v
RUN npm -v
#######node 8.11
#######npm 5.6.0
RUN sudo apt-get install -y ipython 
#######3 ATE AQUI OK #######
RUN sudo apt-get install -y ipython-notebook
#acima nao encontrou!!!!!
RUN sudo npm install -g ijavascript
#acima deu erro de zeromq
#sudo npm install npm --global
RUN sudo ijsinstall --working-dir=/data

#o app eh o diretorio de binarios e fontes, eh interno!!!
#se montar como externo, o COPY nao funcionara
#===> volume nao era DATA????
VOLUME /app
WORKDIR /app
#COPY tserver.js .
#COPY . .
EXPOSE 9999
#para usar redirect, usar a sintaxe como shel nao como json
#CMD ["node","tserver.js > /var/log.txt"]
#shell
#CMD node tserver.js > /data/log.txt
#ijsnotebook --ijs-working-dir=path
