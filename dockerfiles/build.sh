#!/bin/bash

# Define project directories
PROJECTS=(
  "/home/is/My-Projects/Nexign-Bootcamp/services/ApiGateway"
  "/home/is/My-Projects/Nexign-Bootcamp/services/ConfigServer"
  "/home/is/My-Projects/Nexign-Bootcamp/services/CRMService"
  "/home/is/My-Projects/Nexign-Bootcamp/services/EurekaServer"
  "/home/is/My-Projects/Nexign-Bootcamp/services/HRSService"
  "/home/is/My-Projects/Nexign-Bootcamp/services/CDRService"
  "/home/is/My-Projects/Nexign-Bootcamp/services/BRTService"
)

# Build each project
for project in "${PROJECTS[@]}"; do
  echo "Building $project..."
  mvn -f "$project/pom.xml" clean package -DskipTests
  
  # Check if build succeeded
  if [ $? -eq 0 ]; then
    echo "✅ Build successful for $project"
  else
    echo "❌ Build failed for $project"
    exit 1
  fi
done

echo "All builds completed!"