#!/bin/fish
# ~/.config/fish/conf.d

if status is-login
    # To add a key, set -Ua SSH_KEYS_TO_AUTOLOAD keypath
    # To remove a key, set -U --erase 
SSH_KEYS_TO_AUTOLOAD[index_of_key]
    keychain --eval $SSH_KEYS_TO_AUTOLOAD | source
end
