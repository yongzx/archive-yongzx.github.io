Error with CSS: https://stackoverflow.com/questions/64715686/jekyll-css-not-working-on-github-pages-but-it-works-on-localhost3000

So, instead of letting GitHub build the site for us, we can do it on our own locally by running `bundle exec jekyll build`, and then pushing only the contents of the _site folder to the `gh-pages` branch. This requires that you have two separate branches: one for your Jekyll project (typically called `master` or main), and the `gh-pages` branch that is only used to hold the contents of the _site folder every time you build the site. That’s all there is to it in order to use the latest Jekyll and any theme and plugin you want.

`bash run.sh`.


```
bundle exec jekyll serve -w --baseurl ''


# build and switch to the gh-pages branch
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
```