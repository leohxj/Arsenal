@echo off
set HOME=C:\Users\15050107

npm --registry=https://registry.npm.taobao.org --cache=%HOME%\.npm\.cache\cnpm --disturl=https://npm.taobao.org/dist --userconfig=$HOME/.cnpmrc %*