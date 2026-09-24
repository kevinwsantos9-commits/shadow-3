#!/bin/sh
set -eu
if command -v gradle >/dev/null 2>&1; then
  exec gradle "$@"
fi
echo "Gradle nao esta instalado. No GitHub Actions, use o workflow em .github/workflows/build.yml."
exit 1
