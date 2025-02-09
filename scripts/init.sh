#!/bin/bash
whoami
echo Initialize project
echo What is the name of your project?
read -r PROJECT_NAME

sed -i -E "s/^name: .*/name: $PROJECT_NAME/" ./pubspec.yaml
echo "Updated pubspec.yaml"
