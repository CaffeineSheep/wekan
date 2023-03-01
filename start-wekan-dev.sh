#!/bin/bash
# If you want to restart even on crash, uncomment while and done lines.
#while true; do
      set -a      # turn on automatic exporting
      source .dev.env
      set +a      # turn off automatic exporting
      meteor run --exclude-archs web.browser.legacy,web.cordova --port $PORT
#done
