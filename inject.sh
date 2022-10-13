#!/bin/bash

echo "waiting 15 seconds for the unicorns to do their thing..."
sleep 15

echo ""
echo "injecting Linkerd proxy to the Emojivoto deployment "
echo ""
echo "using this command"
echo ""
echo "kubectl get -n emojivoto deploy -o yaml  | linkerd inject - | kubectl apply -f -"

kubectl get -n emojivoto deploy -o yaml  | linkerd inject - | kubectl apply -f -

sleep 5

echo ""
echo "All done!"