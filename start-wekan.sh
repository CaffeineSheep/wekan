#!/bin/bash

# If you want to restart even on crash, uncomment while and done lines.
#while true; do
      set -a      # turn on automatic exporting
      source .prod.env
      set +a      # turn off automatic exporting

      cd .build/bundle
      bash -c "ulimit -s 65500; exec node main.js"
      #node main.js
      #---------------------------------------------------------------------
      # & >> ../../wekan.log
      cd ../..
#done
