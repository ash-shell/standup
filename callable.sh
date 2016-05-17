#!/bin/bash

#################################################
#
#################################################
Standup__callable_main(){
    local yesterday=""
    local today=""
    local blockers=""

    Logger__prompt "What did you do yesterday?"; echo; read yesterday; echo
    Logger__prompt "What will you do today?"; echo; read today; echo
    Logger__prompt "Do you have any blockers?"; echo; read blockers; echo

    read -d '' output <<____EOF
*What I did yesterday*
> $yesterday
*What I’m doing today*
> $today
*Am I blocked*
> $blockers
____EOF
    echo "$output" | pbcopy

    Logger__warning "Standup copied to clipboard!"
}
