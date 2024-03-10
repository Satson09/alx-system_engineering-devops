#!/usr/bin/env bash
# Script to check if a server is visible in Datadog under a specified hostname

# Hostname to check
HOSTNAME="ubuntu@183311-web-01"

# Datadog API endpoint for getting host information
API_ENDPOINT="https://api.datadoghq.com/api/v1/hosts/${HOSTNAME}"

# Datadog API and application keys (replace placeholders)
API_KEY="e6fcbde64922e4b38728ed32aa539932"
APP_KEY="28e0911113b3df28cbc0992a08e8c155cc0154d0"

# Make API request to Datadog
response=$(curl -sS -X GET -H "Content-Type: application/json" -H "DD-API-KEY: your_datadog_api_key" -H "DD-APPLICATION-KEY: your_datadog_application_key" "${API_ENDPOINT}")

# Check if server information is returned
if [[ ! -z "$response" ]]; then
    echo "Server ${HOSTNAME} is visible in Datadog."
else
    echo "Server ${HOSTNAME} is not visible in Datadog."
fi

