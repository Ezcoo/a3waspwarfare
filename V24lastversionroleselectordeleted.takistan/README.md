# TAKISTAN MAP RELATED RESOURCES
```
Here You will find resources for takistan map
```
## Bundling of missions
```
1) Create a mission folder f.e. "[61]warfarev2_073v48co.takistan"
2) Create "PortedCore" folder;
3) clone master branch in "PortedCore" folder.  
4) Create a fodler for mission related resource. F.e. call it "PortedTaki"
5) clone mission related resources from PortedTaki branch
6) Put all files from "PortedCore" and "PortedTaki" folders in "[61]warfarev2_073v48co.takistan"
```
## GIT WORKFLOW EXAMPLE: Basic Git clone, modify, commit, and push.
```
git clone https://github.com/WASP-Warfare-Missions/ARMA3_warfare.git
cd ARMA3_warfare
git BRANCH -a | grep TEST-1
git checkout -b TEST-1
git status
vim README.md
git status
git add README.md
git status
git commit -m 'TEST-1 exercising git'
git push

make a pull request in the Web UI
post the pull request for peer review
merge the pull request
```
## GIT WORKFLOW EXAMPLE: Keeping up with the master on your branch.
```
you have a branch checked out, and with to update it with changes made on
the master branch.

cd ARMA3_warfare
git status
git pull
git checkout master
git pull
git checkout TEST-1
git merge master
git status
```
## ADDITIONAL TOOLS
```
Poseidon IDE - http://www.armaholic.com/page.php?id=22139
BIS tools	 - https://community.bistudio.com/wiki/BI_Tools_2.5
```
```
## USEFULL LINKS
```
WASP community
http://wasp-team.org/forum