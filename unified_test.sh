#!/bin/bash

# test CA client-server setup by first starting the server and then capturing the response from client request


# start server and give a few seconds to actually finish starting
cd ./ca/; sh start.sh &
sleep 4

cd ../client/
# request a signed certificate using the client
sh get_scert.sh
