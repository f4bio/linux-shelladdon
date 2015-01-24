#######
## alias updates
#
alias git-save="git add -A && git commit --message \"default autosave\" && git push"
alias git-fix-gitignore="git rm -r --cached . && git add . && git commit --message \"gitignore works now\" && git push"