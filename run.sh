#!/bin/bash

# Ativa o modo "exit on error"
set -e

echo "🚀 Carregando variáveis de ambiente..."

export $(grep -v '^#' .env | xargs)

echo "🐳 Subindo containers com Docker Compose..."
docker-compose up -d