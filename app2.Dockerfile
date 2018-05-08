#required PORTS: 9999
#required NETS: none
#required external VOLUMES: /data
#required ENV Vars
#teste ipytnhon ijsnotebook com ubuntu
FROM phusion/baseimage:latest
#sudo nao tinha, dei update (trouxe um monte de xenial....)
#curl ja tem 
RUN apt-get update
RUN apt-get install sudo
RUN apt install -y nodejs
RUN sudo apt-get install nodejs-legacy 
RUN sudo apt-get install -y npm 
RUN node -v
RUN npm -v
#######node 4.x #######npm 3.5.2
#ipythoin normal nao funcionou
RUN sudo apt-get install -y ipython3 
RUN sudo apt-get install -y ipython-notebook3
RUN sudo npm install -g ijavascript
RUN sudo ijsinstall --working-dir=/data
VOLUME /data
WORKDIR /data
#usa utilizarios js que ja estao no data
EXPOSE 8086
CMD ijsnotebook --ijs-working-dir=/data
