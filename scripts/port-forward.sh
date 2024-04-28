#!/usr/bin/env bash

MY_IP=$(terragrunt output --terragrunt-working-dir ./terragrunt/ai/server ipv4 | xargs)
echo "ollama: http://localhost:11434"
ssh -N -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -L 11434:127.0.0.1:11434  "devops@$MY_IP"
