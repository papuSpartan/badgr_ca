#!/bin/bash

config_dir="./config"

cfssl serve -loglevel 0 -profile=main -ca-key ca-key.pem -ca ca.pem -config $config_dir/config_ca.json
