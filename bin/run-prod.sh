#!/usr/bin/env bash

echo "Running production server"
gunicorn -w 4 homepage.wsgi -b 0.0.0.0:8080
