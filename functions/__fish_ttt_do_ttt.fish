function __fish_ttt_do_ttt
    set -q FISH_TTT_COMMAND
    or set -l FISH_TTT_COMMAND cli-ttt --
    set -l rbuffer (string sub -s (math (commandline -C) + 1) -- (commandline))
    set -l lbuffer (commandline -c | $FISH_TTT_COMMAND)
    set -l cursor (string length -- "$lbuffer")
    commandline -- "$lbuffer$rbuffer"
    commandline -C $cursor
    commandline -f repaint
end
