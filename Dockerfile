from ubuntu
run apt-get update
run apt-get install -y python-pip curl
run pip install apache-libcloud requests
run curl -oL /usr/bin/etcdctl https://github.com/coreos/etcdctl/releases/tag/v0.1.2
run mkdir /app/
workdir /app/
add cacert.pem /app/
add config.py /app/
add lclb.py /app/
add run-lclb.sh /app/
