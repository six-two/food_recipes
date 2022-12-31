#!/bin/bash
# This script is used to build the documentation (for the vercel hosted website)
# Thus I didn't bother setting up stuff like venv here ;)

# The "python3 -m" prefixes are required to properly work on my Mac

# Switch to the directory of this file
cd "$( dirname "${BASH_SOURCE[0]}" )"

# install the dependencies
python3 -m pip install -r requirements.txt

# Vercel prefers outputs to be in public/
python3 -m mkdocs build -d public
