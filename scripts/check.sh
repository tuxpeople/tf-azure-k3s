#!/bin/bash

exit 0

while [ ! -f /var/lib/cloud/instance/boot-finished ]; do
  echo -e "\033[1;36mWaiting for cloud-init to finish..."
  sleep 1
done

while ! kubectl get nodes &> /dev/null
do
  echo -e "\033[1;36mWaiting for k3s to be ready..."
  sleep 1
done

echo "Cluster ready:"
echo ""
kubectl get nodes
echo ""
echo "Applying test workload"
kubectl apply -f https://github.com/paulbouwer/hello-kubernetes/raw/master/yaml/hello-kubernetes.yaml
echo ""
echo "Delete it like this: kubectl apply -f https://github.com/paulbouwer/hello-kubernetes/raw/master/yaml/hello-kubernetes.yaml"