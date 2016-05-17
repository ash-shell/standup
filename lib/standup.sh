#################################################
# This runs the user through the standup flow.
#
# @param $1: A callback function that expects
#   three parameters, `yesterday`, `today`, and
#   `blockers`
#################################################
Standup_flow(){
    local yesterday=""
    local today=""
    local blockers=""

    Logger__prompt "What did you do yesterday?"; echo; read yesterday; echo
    Logger__prompt "What will you do today?"; echo; read today; echo
    Logger__prompt "What are you blocked by?"; echo; read blockers; echo

    "$1" "$yesterday" "$today" "$blockers"
}

#################################################
# This is a callback handler for Standup_flow
# that formats the standup in Slack Markdown
#
# This is copied to the clipboard if you have
# pbcopy.  If you don't have pbcopy, this is simply
# echoed out for you to manually copy.
#
# @param $1: User response to `What did you do yesterday?`
# @param $2: User response to `What will you do today?`
# @param $3: User response to `What are you blocked by?`
#################################################
Standup_callback_slack(){
    local output=""
    read -d '' output <<____EOF
*What I did yesterday:*
> $1
*What I’m doing today:*
> $2
*I am blocked by:*
> $3
____EOF

    # Outputting to cliboard, if we can
    if [[ $(which pbcopy) != "" ]]; then
        echo "$output" | pbcopy
        Logger__warning "Standup copied to clipboard!"
    else
        echo "$output"
    fi
}
