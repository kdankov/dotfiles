# Lazy-load nvm: put the default node on PATH directly, load nvm.sh only on first `nvm` call
export NVM_DIR="$HOME/.nvm"
if [[ -r $NVM_DIR/alias/default ]]; then
  _nvm_default=($NVM_DIR/versions/node/v$(<$NVM_DIR/alias/default)*(N/On[1]))
  [[ -n $_nvm_default ]] && path=($_nvm_default/bin $path)
  unset _nvm_default
fi
nvm() {
  unset -f nvm
  source /opt/homebrew/opt/nvm/nvm.sh
  nvm "$@"
}
