#!/usr/bin/env sh

# on the macbook keyboard, brings the tilde key up below the ESC where it is supposed to be
# install using `crontab -e` and then insert `@reboot <path-to-script>`

hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000064,"HIDKeyboardModifierMappingDst":0x700000035}]}'

