# Generating CSR and receiving signed certificate
Clone the repo and run `unified_test.sh`. This will start the CA server and respond to a request from the client.

# Client Output File Legend
cert.csr - the only file generated by client that is actually sent to the API. Includes generated keypair info to be sent to the API along with info for ex. like "longview" and the certicate "common name". See csr_client.json for more details.

cert-key.pem - private key returned by the first cfssl call to API 

cert.pem - the actual full certificate returned by the API and parsed by **cfssljson**



## What's Up With The "old" Folder?
that's where I'm housing invalid configuration files for both the client and server. They're from when I was trying to get one **that actually works**.
