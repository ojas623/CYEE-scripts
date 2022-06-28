@echo off
setlocal enabledelayedexpansion
net session


net accounts /minpwlen:14
net accounts /maxpwage:30
net accounts /minpwage:10
net accounts /uniquepw:5


echo "done"
echo "REMEMBER: Set 'store passwords with reversible encryption' to NO"
echo "REMEMBER: Set 'Password must meet complexity requirements' to YES"
echo "REMEMBER: Set 'Relax minimum password length limits' to NO"
