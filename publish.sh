#!/bin/bash
cd /Users/dahn/da_projects/d_satcsf/website

echo "Syncing figures..."
mkdir -p d_fig/edgar
rsync -av ../d_fig/edgar/v26.03.25 d_fig/edgar/

echo "Rendering..."
quarto render

echo "Pushing..."
git add .
git commit -m "update $(date '+%Y-%m-%d %H:%M')"
git push

echo "Done!"
