#!/bin/bash


ssh -T memori <<'EOL'
    cd docker
    docker compose pull memori-ai
    docker compose up -d memori-ai
EOL

