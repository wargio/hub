#!/bin/bash
set -e

# clone the repo
git clone https://github.com/crowdsecurity/cs-openresty-bouncer.git
cd cs-openresty-bouncer

# tmp until we merge
git checkout waf_integration

# make the release
make release
tar xzvf crowdsec-openresty-bouncer.tgz
cd crowdsec-openresty-bouncer-v*

# install the bouncer
./install.sh -y



