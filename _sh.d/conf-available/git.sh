#######
## alias updates
#
alias my-git-save="git add -A && git commit --message \"default autosave\" && git push"
alias my-git-fix="git rm -r --cached . && git add . && git commit --message \"gitignore works now\" && git push"
alias my-git-init=""

function git-ext {
  currentDir=$(pwd)
  gitfilesDir=$HOME/workspace/git-files
  action=$1

  if [ "$action" = "save" ]; then
    git add -A
    git commit --message "autosave"
    git push
    echo "all changes saved!"

  elif [ "$1" = "fix" ]; then
    git rm -r --cached .
    git add -A
    git commit --message "gitignore fixed"
    echo "gitignore fixed!"

  elif [ "$1" = "init" ]; then
    git init
    cp $gitfilesDir/_gitignore $currentDir/.gitignore
    cp $gitfilesDir/_README.md $currentDir/README.md
    cp $gitfilesDir/_LICENSE $currentDir/LICENSE
    git add -A
    git commit --message "initialized"
    echo "directory initialized!"

  else
    echo "usage: git-ext [save|fix|init]"
		return 1
  fi
}
