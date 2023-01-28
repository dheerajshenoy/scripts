declare -a programs=( "alacritty" "awesome" "dunst" "lf" "nvim" "sxhkd" "vimwiki" "X11" "zsh" "zathura" "networkmanager-dmenu" "neomutt" )

for i in ${programs[@]}
do
    echo "Copying $i"
    \cp -r ~/.config/$i ~/gits/dotfiles/
done

cd ~/gits/dotfiles && git add * && git commit -m 'updated configs'
