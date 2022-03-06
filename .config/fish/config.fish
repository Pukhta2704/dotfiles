if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -U fish_greeting ""
set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
source /usr/share/powerline/bindings/fish/powerline-setup.fish
powerline-setup
#fish_vi_key_bindings
fish_default_key_bindings
