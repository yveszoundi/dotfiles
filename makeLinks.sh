#!/bin/sh
mkdir -p $HOME/.config

for f in $(ls $PWD/.config); do
    ln -sf $PWD/$f $HOME/.config/
done

ln -sf $PWD/.config/readline/inputrc $HOME/.inputrc
ln -sf $PWD/.config/shell/okshrc $HOME/.kshrc
ln -sf $PWD/.config/shell/profile $HOME/.profile
ln -sf $PWD/.config/x11/xsessionrc $HOME/.xsessionrc
ln -sf $PWD/.config/x11/xsession $HOME/.xsession
ln -sf $PWD/.config/x11/xsession $HOME/.initrc

chmod +x $HOME/.xsession
chmod +x $HOME/.xinitrc

