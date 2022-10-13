#!/bin/bash

echo "installing CRD's, disregard, not necessary to know for this talk (/me whispers, 'nothing to see here...'"
linkerd install --crds | kubectl apply -f -
echo "installing Linkerd to cluster..."
echo ""
echo "using the following command: "
echo ""
echo "linkerd install | kubectl apply -f -"
echo ""
sleep 5

linkerd install | kubectl apply -f -
