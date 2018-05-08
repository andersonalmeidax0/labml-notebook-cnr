#required PORTS: 8888
#required NETS: none
#required external VOLUMES: /data
#required ENV Vars
#teste miniconda com debian
#https://hub.docker.com/r/continuumio/miniconda/
#https://github.com/conda/conda-docker/tree/master/miniconda3/debian
#docker run -i -t -p 8888:8888 continuumio/miniconda /bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser"
FROM conda/miniconda3
RUN conda install -y jupyter
RUN conda install nodejs
#npm -v 5.51 #node -v 8.9.3
RUN npm install -g ijavascript --unsafe-perm=true
RUN ijsinstall

VOLUME /data
WORKDIR /data
EXPOSE 8888
CMD ijsnotebook --ijs-working-dir=/data --ip=* --allow-root
