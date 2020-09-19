#!/bin/bash
if ( cat vars/vault.yaml | grep -q "\$ANSIBLE_VAULT;" ); then
      exit 0
else
make encrypt
exit 0
fi
