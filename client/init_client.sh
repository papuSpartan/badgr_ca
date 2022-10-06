#!/bin/bash

csr_conf="csr_client.json"

cfssl genkey $csr_conf | cfssljson -bare certificate
