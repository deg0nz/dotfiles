#!/usr/bin/env bash

echo "Installing starship prompt"
curl -sS https://starship.rs/install.sh | sh

MACHINE_IS_SERVER=$(yes_or_no "Is this machine a server?")

if $MACHINE_IS_SERVER -eq 1 ; then
    
fi