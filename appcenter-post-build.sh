#!/bin/bash
set -e
echo "Running Steps Post Build"

echo -e "$FIREBASE_KEY" > ~/firebase-key.json
bundle exec fastlane testlab
