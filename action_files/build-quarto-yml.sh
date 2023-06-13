#!/bin/bash 
WORKFLOW_TEMPLATE=$(cat styles/_quarto.yml)
LIBRARY=$1
GET_STARTED_FILE=$2
echo "generating workflow for ${LIBRARY}"
WORKFLOW=$(echo "${WORKFLOW_TEMPLATE}" | sed "s/{{LIBRARY}}/${LIBRARY}/g" | sed "s,{{GET_STARTED_FILE}},${GET_STARTED_FILE},g")
echo "${WORKFLOW}" > styles/_quarto.yml
