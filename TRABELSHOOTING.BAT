@echo off
title revert & pull 

::repo destination
cd C:\

::paths
set troubleshooting=C:\troubleshooting

::repo
set repo_troubleshooting=http://plkwim0te01/TEGit/troubleshooting.git

::czy folder istnieje
if not exist %troubleshooting% git clone %repo_troubleshooting%

::pull & revert
cd %troubleshooting%
call :git

exit

:git
git pull origin master
git reset --hard