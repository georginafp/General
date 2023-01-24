git clone git@gitlab.com:pasquali-lab/coculture.git
git log 
cd coculture/
git log
git remote add secondrepo git@gitlab.com:georginafp/cc_analysis.git
git remote -v
git fetch secondrepo
git remote set-url secondrepo git@gitlab.com:georginafp/cc_analysis.git
git fetch secondrepo
git branch
git status
git log
git branch branchfromsecondrepo secondrepo/master
git merge --allow-unrelated-histories a/master
git merge --allow-unrelated-histories secondrepo/master
git status
git add .
git commit -m "Merging both coculture repositories"
git log
git status
git remote -v
push origin master
