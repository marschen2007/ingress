#!/bin/bash

# MetalLB
kubectl create -f /root/yaml/metallb/namespace.yaml
sleep 3
kubectl create -f /root/yaml/metallb/metallb.yaml
kubectl create -f /root/yaml/metallb/configmap.yaml
sleep 3

# Nginx-Plus-KIC
kubectl create -f /root/yaml/nginx-plus-kic/ns-and-sa.yaml
sleep 3
kubectl create -f /root/yaml/nginx-plus-kic/rbac.yaml
kubectl create -f /root/yaml/nginx-plus-kic/ap-rbac.yaml
kubectl create -f /root/yaml/nginx-plus-kic/default-server-secret.yaml
kubectl create -f /root/yaml/nginx-plus-kic/nginx-config.yaml
kubectl create -f /root/yaml/nginx-plus-kic/ingress-class.yaml
kubectl create -f /root/yaml/nginx-plus-kic/crds/k8s.nginx.org_virtualservers.yaml
kubectl create -f /root/yaml/nginx-plus-kic/crds/k8s.nginx.org_virtualserverroutes.yaml
kubectl create -f /root/yaml/nginx-plus-kic/crds/k8s.nginx.org_transportservers.yaml
kubectl create -f /root/yaml/nginx-plus-kic/crds/k8s.nginx.org_policies.yaml
kubectl create -f /root/yaml/nginx-plus-kic/crds/k8s.nginx.org_globalconfigurations.yaml
kubectl create -f /root/yaml/nginx-plus-kic/crds/appprotect.f5.com_aplogconfs.yaml
kubectl create -f /root/yaml/nginx-plus-kic/crds/appprotect.f5.com_appolicies.yaml
kubectl create -f /root/yaml/nginx-plus-kic/crds/appprotect.f5.com_apusersigs.yaml
kubectl create -f /root/yaml/nginx-plus-kic/nginx-plus-ingress.yaml
kubectl create -f /root/yaml/nginx-plus-kic/loadbalancer.yaml
