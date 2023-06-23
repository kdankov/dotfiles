# GIT
# Do this: git config --global url.ssh://git@github.com/.insteadOf https://github.com
alias g="git status --short"
alias gd="git diff"
alias gs="git status 2>/dev/null"
function gc() { git clone ssh://git@github.com/"$*" }
function gg() { git commit -m "$*" }
function g() {
	if (( $# == 0 )) then
		git status
	else
		git $1
	fi
}

function gcam() {
	git commit -am "$1"
	git push
}
