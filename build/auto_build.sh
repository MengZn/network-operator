#!/bin/bash

kubectl delete -f ~/go/src/github.com/network-operator/deploy/
operator-sdk build quay.io/mengzn/network-operator
docker push quay.io/mengzn/network-operator
kubectl apply -f ~/go/src/github.com/network-operator/deploy/