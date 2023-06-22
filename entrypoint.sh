#!/bin/sh -l
curl -u neuron:$APIKEY -d "target_url=$TARGET" "https://portal.immuniweb.com/client/project/neuron/startstop/"
