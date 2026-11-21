# Claude Code shortcuts: cco/ccs/cch [name] [extra claude flags...]
function _cc
    set -l model $argv[1]
    set -e argv[1]
    if test (count $argv) -gt 0; and not string match -q -- '-*' $argv[1]
        set -l name $argv[1]
        set -e argv[1]
        claude --model $model --name $name $argv
    else
        claude --model $model $argv
    end
end

function cco; _cc opus $argv; end
function ccs; _cc sonnet $argv; end
function cch; _cc haiku $argv; end
