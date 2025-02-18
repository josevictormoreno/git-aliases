function gst { git status }
function ga { param($file) git add $file }
function gaa { git add * }
function gapa { git add -p }
function gcmsg { param($message) git commit -m "$message" }
function gps { git push }
function gpl { git pull }
function gco { param($branch) git checkout $branch }
function gcb { param($branch) git checkout -b $branch }
function gcl { param($repo) git clone $repo }
function gcp { param($commit) git cherry-pick $commit }
function gcpa { git cherry-pick --abort }
function gcpc { git cherry-pick --continue }
function gb { git branch }
function gd { git diff }
function glg { git log --oneline --graph --decorate --all }
function gf { git fetch }
function gfa { git fetch --all --tags --prune }
function gh { git help }
function gmg { param($branch) git merge $branch }
function gma { git merge --abort }
function gmc { git merge --continue }
function gms { param($branch) git merge --squash $branch }
function gr { param($branch) git rebase $branch }
function gra { git rebase --abort }
function grc { git rebase --continue }
function grs { param($commit) git reset $commit }
function grsh { git reset --hard }
function grst { param($file) git restore $file }
function grsts { param($file) git restore --staged $file }
function grev { param($commit) git revert $commit }
function grm { param($file) git rm $file }
function gs { git stash }
function gsp { git stash pop }
function gsl { git stash list }
function gsc { git stash clear }
function gtag { param($tag) git tag $tag }
