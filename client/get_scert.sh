#!/bin/bash
config_dir="./config"

#we have to pass the output of the first cfssl call to cfssljson in order to also output the certificate and not just the cert privkey
cfssl gencert -loglevel 0 -config $config_dir/config.json -profile clientprof $config_dir/csr_client.json | cfssljson -bare

printf "PRINTING RESULTS:%n"
sleep 3
# print details of API signed cert to console to quickly evaluate results
openssl x509 -text -noout -in cert.pem | less
