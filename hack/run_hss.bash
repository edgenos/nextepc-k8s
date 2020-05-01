#!/bin/bash

DB_FQDN="localhost"
DB_NAME="nextepc"
DISABLED_IPV6="true"
HSS_DOMAIN="localdomain"
HSS_FQDN="hss.localdomain"

sudo docker run -it \
        --privileged \
        --net=host \
        -d \
        -e DB_FQDN="${DB_FQDN}" \
        -e DB_NAME="${DB_NAME}" \
        -e DISABLED_IPV6="${DISABLED_IPV6}" \
        -e HSS_DOMAIN="${HSS_DOMAIN}" \
        -e HSS_FQDN="${HSS_FQDN}" \
        localhost/ooladmin/ne-hss
