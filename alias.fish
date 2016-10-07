#Ruby
alias be='bundle exec'

# Git specific stuff.
alias gpom="git pull origin master"
alias gbranch='git rev-parse --abbrev-ref HEAD' #get current branch name
alias gbust='git reset HEAD^'
alias gs='clear ;and git status'
alias gr='git rebase'
alias gri='git rebase -i'
alias gst='git stash'
alias gsta='git stash apply'
alias gpr='git stash ;and git pull --rebase ;and git stash apply'
alias gunstage='git reset HEAD'
alias yolo="git push --force"

#commit
function gc
  git commit -m "$argv"
end

#checkout
function gco
  git checkout "$argv"
end

#checkout and make branch
function gmb
  git checkout -b "$argv"
end

# add
function ga
  git add $argv
end

#publish
function gpub
  git push -u origin (gbranch)
end
