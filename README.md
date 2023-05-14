Error with CSS: https://stackoverflow.com/questions/64715686/jekyll-css-not-working-on-github-pages-but-it-works-on-localhost3000

So, instead of letting GitHub build the site for us, we can do it on our own locally by running `bundle exec jekyll build`, and then pushing only the contents of the _site folder to the `gh-pages` branch. This requires that you have two separate branches: one for your Jekyll project (typically called `master` or main), and the `gh-pages` branch that is only used to hold the contents of the _site folder every time you build the site. That’s all there is to it in order to use the latest Jekyll and any theme and plugin you want.

```
# First switch to the gh-pages branch
git checkout gh-pages

# Next checkout the specific file you wish to add to the gh-pages branch
git checkout master -- <path/to/file/folders/on/master/branch>

# Perfom the commit
git commit -m "Updated index.html from master"

# And push
git push 
```