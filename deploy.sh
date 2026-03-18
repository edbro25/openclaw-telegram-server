#!/bin/bash

echo "Updating deployment repo..."
git pull origin main

echo "Restarting OpenClaw..."
cd /root/openclaw
docker compose down
docker compose up -d

echo "Done."
