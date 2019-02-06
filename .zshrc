setopt autocd
bindkey -e

for sh in /etc/profile.d/*.sh ; do
	[[ -r "$sh" ]] && . "$sh"
done
for sh in $HOME/.zsh/* ; do
	[[ -r "$sh" ]] && . "$sh"
done
unset sh

if [ -f /etc/bash_aliases ]; then
        . /etc/bash_aliases
fi

[[ -f ~/.aliases ]] && . ~/.aliases

# PATH
test -d $HOME/.local/bin && PATH=$PATH:$HOME/.local/bin
