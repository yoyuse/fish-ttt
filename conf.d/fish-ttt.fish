set -q FISH_TTT_COMMAND; or set -U FISH_TTT_COMMAND "cli-ttt"
set -q FISH_TTT_DISABLE_KEYBINDINGS; or set -U FISH_TTT_DISABLE_KEYBINDINGS 0

if test "$FISH_TTT_DISABLE_KEYBINDINGS" -ne 1
    bind \ej '__fish_ttt_do_ttt'

    if bind -M insert >/dev/null 2>/dev/null
        bind -M insert \ej '__fish_ttt_do_ttt'
    end
end

function _fish_ttt_uninstall -e fish_ttt_uninstall
    bind --user \
        | string replace --filter --regex -- "bind (.+)( '?__fish_ttt.*)" 'bind -e $1' \
        | source

    set --names \
        | string replace --filter --regex '(^FISH_TTT)' 'set --erase $1' \
        | source

    functions --erase _fish_ttt_uninstall
end
