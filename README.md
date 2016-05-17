# Standup

Standup is an [Ash](https://github.com/ash-shell/ash) module that allows you to run through a standup flow in a terminal.

## Getting started

You're going to have to install [Ash](https://github.com/ash-shell/ash) to use this module.

After you have Ash installed, run either one of these two commands depending on your git clone preference:

- `ash apm:install https://github.com/ash-shell/standup.git`
- `ash apm:install git@github.com:ash-shell/standup.git`

You can optionally install this globally by adding `--global` to the end of the command.

## Usage

> Currently, there is formatting support for Slack (which is the only use case I need).  If you'd like additional formatting / output options please file an issue!

After you have this project installed simply run `ash standup` and follow through the prompts.

After you are done a formatted standup should be copied to your clipboard (assuming you have pbcopy installed).  If you don't have pbcopy, it will be echoed out, and will be your responsibility to copy.

## License

[MIT](LICENSE.md)
