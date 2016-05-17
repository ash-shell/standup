#!/bin/bash

#################################################
# This runs the user through the slack standup flow.
#################################################
Standup__callable_main(){
    Standup__callable_slack
}

#################################################
# This runs the user through the slack standup flow.
#################################################
Standup__callable_slack(){
    Standup_flow Standup_callback_slack
}
