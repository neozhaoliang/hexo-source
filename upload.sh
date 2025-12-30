git add .
git commit -m "save"
git push

hexo g
cp ads.txt ./public
hexo d
