#!/bin/bash
set -e
echo "Running Steps Post Build"
echo "$FIREBASEKEY" | base64 --decode | > ~/firebase-key.json
bundle exec fastlane testlab
