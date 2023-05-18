# d-eck

### Generate self signed Certs
`openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout kibana.key -out kibana.crt`

### Create Kube secrets using self-signed Certs
`kubectl create secret tls custom-kibana-tls-secret --key kibana.key --cert kibana.crt`


### With CA
    openssl req -x509 -sha256 -nodes -newkey rsa:4096 -days 365 -subj "/CN=elk.jackson.com" -addext "subjectAltName=DNS:*.elk.jackson.com" -keyout tls.key -out tls.crt
    kubectl -n test create secret generic custom-tls-secret --from-file=ca.crt=tls.crt --from-file=tls.crt=tls.crt --from-file=tls.key=tls.key
    