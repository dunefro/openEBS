#!/bin/bash

kubectl delete -f deployment.yaml
sleep 5
kubectl delete -f pvc.yaml 
sleep 5
kubectl delete -f pv.yaml
sleep 5
sudo rm -rf /tmp/hostpath
mkdir /tmp/hostpath
kubectl apply -f pv.yaml
kubectl apply -f pvc.yaml
kubectl apply -f deployment.yaml

