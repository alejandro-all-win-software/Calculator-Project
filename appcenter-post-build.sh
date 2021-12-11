#!/bin/bash
set -e
echo "Running Steps Post Build"

bundle exec fastlane testlab
