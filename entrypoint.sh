#!/bin/bash
set -e

/opt/fahclient/FAHClient \
    --user="${FAH_USER}" \
    --team="${FAH_TEAM}" \
    --passkey="${FAH_PASSKEY}" \
    --gpu="${FAH_ENABLE_GPU}" \
    --smp="${FAH_ENABLE_SMP}" \
    --power=full \
    --gui-enabled=false \
    --data-directory=/fah-data \
    --core-dir=/fah-cores \
    --cpu-affinity=true \
    --allow=0/0 \
    --web-allow=0/0 \
    --command-allow-no-pass=0/0
    "${@}"
