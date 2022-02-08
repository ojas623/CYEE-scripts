@echo off
setlocal enabledelayedexpansion
net session

rem setting password policy and complexity

net accounts /minpwlen:10
net accounts /maxpwage:30
net accounts /minpwage:10
net accounts /uniquepw:5

echo "done. please enable password must meet complexity requirements, and disable reversible encryption"