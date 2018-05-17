#!/bin/bash
set -e
set -u
export BASE_DIR=/vagrant
export PROVISION_DIR=${BASE_DIR}/provision
ls -1 ${PROVISION_DIR}/???.*.sh | xargs -n1 bash
exit 0