git add .
git commit -m "update master"
git push origin master

bundle exec jekyll build
git checkout gh-pages

# move all the index html files to current folder
rm -rf *
git checkout master -- _site
mv _site/* .

# commit (remember -am instead of -m)
git commit -am "Updated index.html from master"
git push origin gh-pages

git checkout master