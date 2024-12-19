#!/bin/bash

# Create directory structure
echo "Creating directory structure..."
mkdir -p data/{raw,processed}
mkdir -p notebooks
mkdir -p src

# Create Python files
touch src/__init__.py
touch src/process.py
touch src/analyze.py

# Create base Python files content
echo "# Data processing functions" > src/process.py
echo "# Analysis functions" > src/analyze.py

# Create Jupyter notebook
echo "Creating Jupyter notebook..."
cat > notebooks/analysis.ipynb << EOF
{
 "cells": [],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 4
}
EOF

# Create README
echo "Creating README..."
cat > README.md << EOF
# Common Crawl Domain Analysis

## Overview
Analysis of domain data from the Common Crawl dataset.

## Structure
- \`data/\`: Raw and processed data
- \`notebooks/\`: Analysis notebooks
- \`src/\`: Source code

## Setup
1. Install requirements: \`pip install -r requirements.txt\`
2. Run Jupyter notebook: \`jupyter notebook notebooks/analysis.ipynb\`

## Usage
[Add usage instructions here]
EOF

# Create requirements.txt
echo "Creating requirements.txt..."
cat > requirements.txt << EOF
numpy
pandas
jupyter
matplotlib
seaborn
requests
EOF

# Create .gitignore
echo "Creating .gitignore..."
cat > .gitignore << EOF
# Python
__pycache__/
*.py[cod]
*$py.class
.ipynb_checkpoints

# Data
data/raw/*
data/processed/*
!data/raw/.gitkeep
!data/processed/.gitkeep

# Environment
.env
.venv
env/
venv/
ENV/
EOF

# Create .gitkeep files to track empty directories
touch data/raw/.gitkeep
touch data/processed/.gitkeep

echo "Project setup complete! Directory structure created:"
tree -a

echo "
Next steps:
1. cd $PROJECT_NAME
2. Create a virtual environment: python -m venv venv
3. Activate the environment: source venv/bin/activate
4. Install requirements: pip install -r requirements.txt
5. Start working in notebooks/analysis.ipynb"