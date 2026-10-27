#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
./run.sh > /tmp/proxy-bridge-java-lab-output-$$.txt
trap 'rm -f /tmp/proxy-bridge-java-lab-output-$$.txt' EXIT
diff -u expected-output.txt /tmp/proxy-bridge-java-lab-output-$$.txt
printf 'PASS: all 6 task outputs match expected-output.txt\n'
