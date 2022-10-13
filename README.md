### mTLS steps for BSides Idaho Falls 2022


```
kubectl krew install sniff

kind create cluster -n demo

kubectl apply -k github.com/BuoyantIO/emojivoto/kustomize/deployment

kubectl sniff -n emojivoto $(kubectl -n emojivoto get po -o name | grep web | cut -d'/' -f2) -c web-svc -o - | wireshark -i -

linkerd install --crds | kubectl apply -f -

linkerd install | kubectl apply -f -

kubectl get -n emojivoto deploy -o yaml  | linkerd inject - | kubectl apply -f -

kubectl sniff -n emojivoto $(kubectl -n emojivoto get po -o name | grep web | cut -d'/' -f2) -c web-svc -o - | wireshark -i -
```
