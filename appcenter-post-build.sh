#!/bin/bash
set -e
echo "Running Steps Post Build"

echo "$FIREBASE_KEY" | base64 --decode | > ~/firebase-key.json
bundle exec fastlane testlab
