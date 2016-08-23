@echo off
set USER_HOME="C:\Users\15050107"
set EXPLORER_EXE="explorer.exe"
set SUBLIME_EXE="D:\Program Files (x86)\Sublime Text 3\sublime_text.exe"

doskey open=%EXPLORER_EXE% $*
doskey st=%SUBLIME_EXE% $*
doskey z=j $*
doskey cnpm=npm --registry=https://registry.npm.taobao.org --cache=%USER_HOME%\.npm\.cache\cnpm --disturl=https://npm.taobao.org/dist --userconfig=%USER_HOME%\.cnpmrc $*