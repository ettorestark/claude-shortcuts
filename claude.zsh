# Claude Code shortcuts: cco/ccs/cch [name] [extra claude flags...]
_cc() {
  local model=$1; shift
  if [[ -n $1 && $1 != -* ]]; then
    local name=$1; shift
    claude --model "$model" --name "$name" "$@"
  else
    claude --model "$model" "$@"
  fi
}
cco() { _cc opus "$@"; }
ccs() { _cc sonnet "$@"; }
cch() { _cc haiku "$@"; }
