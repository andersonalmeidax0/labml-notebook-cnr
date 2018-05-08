#parameter -d =>   detached mode, ou seja como deamon
#parameter -p HOSTPORT:CONTAINER_PORT
#sudo docker run -p 5984:5984 -d -v /opt/couchdb/data:/opt/couchdb/data --net=netdb --name mycouchdb couchdb 
#sudo docker run -p 8080:8080 -v $PWD:/home -d --net=netdb  --name nodedb node-db-server
sudo docker run -d -p 8888:8888 -v /var/apps/tserv:/data --name labml-notebook-cnr  labml-notebook-img
