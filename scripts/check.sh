#!/bin/bash

while [ ! -f /var/lib/cloud/instance/boot-finished ]; do
  echo -e "\033[1;36mWaiting for cloud-init..."
  sleep 1
done

echo "Cluster ready:"
echo ""
kubectl get nodes
echo ""
echo "Applying test worload"
kubectl apply -f https://github.com/paulbouwer/hello-kubernetes/raw/master/yaml/hello-kubernetes.yaml
echo ""
echo "Delete it like this: kubectl apply -f https://github.com/paulbouwer/hello-kubernetes/raw/master/yaml/hello-kubernetes.yaml"