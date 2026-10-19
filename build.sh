#!/usr/bin/env bash
set -euo pipefail
mvn --batch-mode clean package
echo "Build finished. Check the target/ directory for the JAR."
