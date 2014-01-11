#!/bin/bash

set -e

echo " * Updating apt-get..."
apt-get update --fix-missing
echo ""

echo " * Installing puppet..."
apt-get install -y puppet rsync
echo ""