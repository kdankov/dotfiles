# GIT

alias gd="git diff"
alias gs="git status 2>/dev/null"
alias gss="git status --short"

g() {
	if (( $# == 0 )) then
		git status --short
	else
		git $1
	fi
}

gcl() { 
    git clone ssh://git@github.com/"$*" 
}

gcm() {
	git commit -m "$1"
}

gcam() {
	git commit -am "$1"
}

gcamp() {
	git commit -am "$1"
	git push
}
