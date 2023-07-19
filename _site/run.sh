git checkout master
rm -rf _site
rm -rf index.html
bundle exec jekyll build

git add .
git commit -m "update master"
git push origin master

git checkout gh-pages

# move all the index html files to current folder
rm -rf *
git checkout master -- _site
mv _site/* .

# commit (remember -am instead of -m)
git commit -am "Updated index.html from master"
git push origin gh-pages

echo "Done"
git checkout -f master
