P@ssw0rd
clear
vi /etc/hosts
reboot
ip a
cd /etc/sysconfig/network-scripts/
ls
cp ifcfg-ens192 ifcfg-ens224
vi ifcfg-ens224 
vi ifcfg-ens192 
systemctl restart network
ip a
ping 192.168.200.1
vi ifcfg-ens224 
vi ifcfg-ens192 
systemctl restart network
ip q
ip a
clear
cd
ping 192.168.199.150
ping 192.168.199.151
ping 192.168.199.152
ping 192.168.200.195
ping 192.168.200.196
ping 192.168.200.197
ping 192.168.201.191
ping 192.168.201.192
ping 192.168.201.193
clear
sed -i --follow-symlinks ‘s/SELINUX=enforcing/SELINUX=disabled/g’ /etc/sysconfig/selinux
sed -ie 's/SELINUX=enforcing/SELINUX=permissive/g' /etc/selinux/config
setenforce 0
modprobe br_netfilter
modprobe overlay
echo ‘1’ > /proc/sys/net/bridge/bridge-nf-call-iptables
echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
swapoff -a
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --permanent --add-port=443/tcp
firewall-cmd --permanent --add-port=6443/tcp
firewall-cmd --permanent --add-port=2379–2380/tcp
firewall-cmd --permanent --add-port=10250/tcp
firewall-cmd --permanent --add-port=10251/tcp
firewall-cmd --permanent --add-port=10252/tcp
firewall-cmd --permanent --add-port=10255/tcp
firewall-cmd --permanent --add-port=8472/udp
firewall-cmd --permanent --add-port=8001/tcp
firewall-cmd --permanent --add-port=9090/tcp
firewall-cmd --permanent --add-port=30000–32767/tcp
firewall-cmd --add-masquerade --permanent
firewall-cmd --permanent --add-port=30000-32767/tcp
firewall-cmd --permanent --add-port=30000--2767/tcp
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce
vi /etc/docker/daemon.json
systemctl daemon-reload
systemctl start docker && systemctl enable docker
cat <<EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

yum install -y kubelet kubeadm kubectl
cat <<EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

cat <<EOF > /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://packages.cloud.google.com/yum/repos/kubernetes-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

yum install kubeadm -y
kubeadm
systemctl start kubelet && systemctl enable kubelet
reboot
clear
kubeadm join 192.168.200.195:6443 --token 58g3w0.o3cc8lrz97ugz6a2     --discovery-token-ca-cert-hash sha256:9ec097b12752cbcc8923d9dc0b03eb2d8cde0e684bee4b28995be32faa10627c
swapoff -a
kubeadm join 192.168.200.195:6443 --token 58g3w0.o3cc8lrz97ugz6a2     --discovery-token-ca-cert-hash sha256:9ec097b12752cbcc8923d9dc0b03eb2d8cde0e684bee4b28995be32faa10627c
clear
vi /etc/fstab 
clear
kubectl get node
kubeadm reset
----
systemctl status docker
kubeadm reset
kubeadm join 192.168.200.195:6443 --token 58g3w0.o3cc8lrz97ugz6a2     --discovery-token-ca-cert-hash sha256:9ec097b12752cbcc8923d9dc0b03eb2d8cde0e684bee4b28995be32faa10627c
systemctl status docker
vi  /etc/docker/daemon.json
kubectl get node
useradd test
passwd test
systemctl status docker
kubeadm reset
kubeadm join 192.168.200.195:6443 --token 58g3w0.o3cc8lrz97ugz6a2     --discovery-token-ca-cert-hash sha256:9ec097b12752cbcc8923d9dc0b03eb2d8cde0e684bee4b28995be32faa10627c
kubeadm reset
--kubeadm reset
cd
kubectl get node
kubeadm reset
kubectl get node
reboot
clear
kubeadm join 192.168.200.195:6443 --token 4a8gq5.l2yqhr5mrv5fbcdd \
clear
yes
kubectl get node
yes
kubectl get node
id
kubectl get node
kubeadm join 192.168.200.195:6443 --token 4a8gq5.l2yqhr5mrv5fbcdd     --discovery-token-ca-cert-hash sha256:3887162f843ab295200307198292d8a2b3c7ae3b5cd0f357fa0b80b85ba5ff77
kubeadm reset
kubectl get node
exit
cd
kubectl get node
kubectl get pod
exit
kubeadm reset
kubeadm join 192.168.200.195:6443 --token 5rv7ag.k4ytylfmnm14wpfs     --discovery-token-ca-cert-hash sha256:c87583a43e1a9bd28fd04a53eb1af49f5f72b9d727fe058a8fcdb28c3b46b9d9
{@ssw0rd
P@ssw0rd
clear
sudo apt install open-iscsi multipath-tools nfs-common
sudo yum install open-iscsi multipath-tools nfs-common
yum update
yum install iscsi-initiator-utils
iscsiadm -m discovery -t st -p 192.168.200.151
iscsiadm -m node -T target_iqn_name -p 192.168.200.151 -l
iscsiadm -m node -T iqn.2010-06.com.purestorage:flasharray.6796a4c0459c7764 -p 192.168.200.151 -l
iscsiadm -m discovery -t st -l
iscsiadm -m discovery -t st -p 192.168.200.151
/etc/init.d/iscsi start
yum install device-mapper-multipath
rpm -qa |grep device-mapper
lsmod |grep dm_multipath
/etc/init.d/multipathd status
multipath -ll
yum -y install device-mapper-multipath
yum install nfs-utils
mkdir /var/nfsshare
chmod -R 755 /var/nfsshare
chown nfsnobody:nfsnobody /var/nfsshare
systemctl enable rpcbind
systemctl enable nfs-server
systemctl enable nfs-lock
systemctl enable nfs-idmap
systemctl start rpcbind
systemctl start nfs-server
systemctl start nfs-lock
systemctl start nfs-idmap
systemctl restart nfs-server
firewall-cmd --permanent --zone=public --add-service=nfs
firewall-cmd --permanent --zone=public --add-service=mountd
firewall-cmd --permanent --zone=public --add-service=rpc-bind
