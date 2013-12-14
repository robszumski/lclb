from ubuntu
run apt-get update
run apt-get install -qy python-setuptools
run apt-get install -qy curl vim
run easy_install pip
run pip install apache-libcloud requests
run curl -OL https://github.com/coreos/etcd/releases/download/v0.2.0-rc2/etcd-v0.2.0-rc2-Linux-x86_64.tar.gz
run tar -zxvf etcd-v0.2.0-rc2-Linux-x86_64.tar.gz
run mv etcd-v0.2.0-rc2-Linux-x86_64/etcdctl /usr/bin/etcdctl
run mkdir /app/
workdir /app/
add cacert.pem /app/
add config.py /app/
add lclb.py /app/
add run-lclb.sh /app/

# etcdctl -peers 172.17.42.1:8080 exec-watch run-lclb.sh
